
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int disable; } ;
struct TYPE_7__ {int irq; TYPE_1__ f30_data; } ;
struct TYPE_6__ {char* proto_name; int * ops; TYPE_3__ pdata; int dev; } ;
struct rmi_data {int device_flags; size_t input_report_size; size_t output_report_size; TYPE_2__ xport; int rmi_irq; int page_mutex; int wait; void* writeReport; void* readReport; struct hid_device* hdev; int reset_work; } ;
struct hid_report {int dummy; } ;
struct hid_device_id {int driver_data; } ;
struct TYPE_8__ {int parent; } ;
struct hid_device {TYPE_4__ dev; int quirks; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int HID_CONNECT_DEFAULT ;
 int HID_FEATURE_REPORT ;
 int HID_INPUT_REPORT ;
 int HID_OUTPUT_REPORT ;
 int HID_QUIRK_NO_INIT_REPORTS ;
 int HID_QUIRK_NO_INPUT_SYNC ;
 int INIT_WORK (int *,int ) ;
 int RMI_ATTN_REPORT_ID ;
 int RMI_DEVICE ;
 int RMI_DEVICE_HAS_PHYS_BUTTONS ;
 int RMI_SET_RMI_MODE_REPORT_ID ;
 int RMI_WRITE_REPORT_ID ;
 void* devm_kzalloc (TYPE_4__*,size_t,int ) ;
 int hid_dbg (struct hid_device*,char*) ;
 int hid_err (struct hid_device*,char*) ;
 int hid_hw_start (struct hid_device*,int ) ;
 int hid_parse (struct hid_device*) ;
 void* hid_report_len (struct hid_report*) ;
 int hid_rmi_ops ;
 int hid_set_drvdata (struct hid_device*,struct rmi_data*) ;
 int init_waitqueue_head (int *) ;
 int mutex_init (int *) ;
 int rmi_check_valid_report_id (struct hid_device*,int ,int ,struct hid_report**) ;
 TYPE_3__ rmi_hid_pdata ;
 int rmi_reset_work ;
 int rmi_setup_irq_domain (struct hid_device*) ;

__attribute__((used)) static int rmi_probe(struct hid_device *hdev, const struct hid_device_id *id)
{
 struct rmi_data *data = ((void*)0);
 int ret;
 size_t alloc_size;
 struct hid_report *input_report;
 struct hid_report *output_report;
 struct hid_report *feature_report;

 data = devm_kzalloc(&hdev->dev, sizeof(struct rmi_data), GFP_KERNEL);
 if (!data)
  return -ENOMEM;

 INIT_WORK(&data->reset_work, rmi_reset_work);
 data->hdev = hdev;

 hid_set_drvdata(hdev, data);

 hdev->quirks |= HID_QUIRK_NO_INIT_REPORTS;
 hdev->quirks |= HID_QUIRK_NO_INPUT_SYNC;

 ret = hid_parse(hdev);
 if (ret) {
  hid_err(hdev, "parse failed\n");
  return ret;
 }

 if (id->driver_data)
  data->device_flags = id->driver_data;





 if (!rmi_check_valid_report_id(hdev, HID_FEATURE_REPORT,
     RMI_SET_RMI_MODE_REPORT_ID, &feature_report)) {
  hid_dbg(hdev, "device does not have set mode feature report\n");
  goto start;
 }

 if (!rmi_check_valid_report_id(hdev, HID_INPUT_REPORT,
     RMI_ATTN_REPORT_ID, &input_report)) {
  hid_dbg(hdev, "device does not have attention input report\n");
  goto start;
 }

 data->input_report_size = hid_report_len(input_report);

 if (!rmi_check_valid_report_id(hdev, HID_OUTPUT_REPORT,
     RMI_WRITE_REPORT_ID, &output_report)) {
  hid_dbg(hdev,
   "device does not have rmi write output report\n");
  goto start;
 }

 data->output_report_size = hid_report_len(output_report);

 data->device_flags |= RMI_DEVICE;
 alloc_size = data->output_report_size + data->input_report_size;

 data->writeReport = devm_kzalloc(&hdev->dev, alloc_size, GFP_KERNEL);
 if (!data->writeReport) {
  hid_err(hdev, "failed to allocate buffer for HID reports\n");
  return -ENOMEM;
 }

 data->readReport = data->writeReport + data->output_report_size;

 init_waitqueue_head(&data->wait);

 mutex_init(&data->page_mutex);

 ret = rmi_setup_irq_domain(hdev);
 if (ret) {
  hid_err(hdev, "failed to allocate IRQ domain\n");
  return ret;
 }

 if (data->device_flags & RMI_DEVICE_HAS_PHYS_BUTTONS)
  rmi_hid_pdata.f30_data.disable = 1;

 data->xport.dev = hdev->dev.parent;
 data->xport.pdata = rmi_hid_pdata;
 data->xport.pdata.irq = data->rmi_irq;
 data->xport.proto_name = "hid";
 data->xport.ops = &hid_rmi_ops;

start:
 ret = hid_hw_start(hdev, HID_CONNECT_DEFAULT);
 if (ret) {
  hid_err(hdev, "hw start failed\n");
  return ret;
 }

 return 0;
}
