
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_18__ TYPE_9__ ;
typedef struct TYPE_17__ TYPE_5__ ;
typedef struct TYPE_16__ TYPE_3__ ;
typedef struct TYPE_15__ TYPE_2__ ;
typedef struct TYPE_14__ TYPE_1__ ;
typedef struct TYPE_13__ TYPE_11__ ;


struct TYPE_17__ {int of_node; } ;
struct platform_device {TYPE_5__ dev; } ;
struct amd_mp2_dev {TYPE_2__* pci_dev; int probed; } ;
struct TYPE_13__ {int of_node; TYPE_5__* parent; } ;
struct TYPE_16__ {int name; TYPE_11__ dev; int timeout; struct amd_i2c_dev* algo_data; int * quirks; int * algo; int owner; } ;
struct TYPE_18__ {int bus_id; int i2c_speed; int reqcmd; int * resume; int * suspend; int * cmd_completion; struct amd_mp2_dev* mp2_dev; } ;
struct amd_i2c_dev {TYPE_3__ adap; int cmd_complete; TYPE_9__ common; struct platform_device* pdev; } ;
struct TYPE_14__ {char* unique_id; } ;
struct acpi_device {TYPE_1__ pnp; } ;
typedef int acpi_handle ;
struct TYPE_15__ {int dev; } ;


 int ACPI_COMPANION (TYPE_5__*) ;
 int ACPI_COMPANION_SET (TYPE_11__*,int ) ;
 int ACPI_HANDLE (TYPE_5__*) ;
 int AMD_I2C_TIMEOUT ;
 int DL_FLAG_AUTOREMOVE_CONSUMER ;
 int EINVAL ;
 int ENODEV ;
 int ENOMEM ;
 int EPROBE_DEFER ;
 int GFP_KERNEL ;
 int THIS_MODULE ;
 scalar_t__ acpi_bus_get_device (int ,struct acpi_device**) ;
 int amd_i2c_dev_quirks ;
 struct amd_mp2_dev* amd_mp2_find_device () ;
 int amd_mp2_pm_runtime_get (struct amd_mp2_dev*) ;
 int amd_mp2_pm_runtime_put (struct amd_mp2_dev*) ;
 scalar_t__ amd_mp2_register_cb (TYPE_9__*) ;
 int dev_dbg (TYPE_5__*,char*,int) ;
 int dev_err (TYPE_5__*,char*,...) ;
 int device_link_add (TYPE_5__*,int *,int ) ;
 struct amd_i2c_dev* devm_kzalloc (TYPE_5__*,int,int ) ;
 int i2c_add_adapter (TYPE_3__*) ;
 int i2c_amd_algorithm ;
 int i2c_amd_cmd_completion ;
 scalar_t__ i2c_amd_enable_set (struct amd_i2c_dev*,int) ;
 int i2c_amd_get_bus_speed (struct platform_device*) ;
 int i2c_amd_resume ;
 int i2c_amd_suspend ;
 int i2c_none ;
 int i2c_set_adapdata (TYPE_3__*,struct amd_i2c_dev*) ;
 int init_completion (int *) ;
 int platform_set_drvdata (struct platform_device*,struct amd_i2c_dev*) ;
 int snprintf (int ,int,char*,int) ;
 scalar_t__ strcmp (char const*,char*) ;

__attribute__((used)) static int i2c_amd_probe(struct platform_device *pdev)
{
 int ret;
 struct amd_i2c_dev *i2c_dev;
 acpi_handle handle = ACPI_HANDLE(&pdev->dev);
 struct acpi_device *adev;
 struct amd_mp2_dev *mp2_dev;
 const char *uid;

 if (acpi_bus_get_device(handle, &adev))
  return -ENODEV;





 mp2_dev = amd_mp2_find_device();
 if (!mp2_dev || !mp2_dev->probed)

  return -EPROBE_DEFER;

 i2c_dev = devm_kzalloc(&pdev->dev, sizeof(*i2c_dev), GFP_KERNEL);
 if (!i2c_dev)
  return -ENOMEM;

 i2c_dev->common.mp2_dev = mp2_dev;
 i2c_dev->pdev = pdev;
 platform_set_drvdata(pdev, i2c_dev);

 i2c_dev->common.cmd_completion = &i2c_amd_cmd_completion;





 uid = adev->pnp.unique_id;
 if (!uid) {
  dev_err(&pdev->dev, "missing UID/bus id!\n");
  return -EINVAL;
 } else if (strcmp(uid, "0") == 0) {
  i2c_dev->common.bus_id = 0;
 } else if (strcmp(uid, "1") == 0) {
  i2c_dev->common.bus_id = 1;
 } else {
  dev_err(&pdev->dev, "incorrect UID/bus id \"%s\"!\n", uid);
  return -EINVAL;
 }
 dev_dbg(&pdev->dev, "bus id is %u\n", i2c_dev->common.bus_id);


 amd_mp2_pm_runtime_get(mp2_dev);

 i2c_dev->common.reqcmd = i2c_none;
 if (amd_mp2_register_cb(&i2c_dev->common))
  return -EINVAL;
 device_link_add(&i2c_dev->pdev->dev, &mp2_dev->pci_dev->dev,
   DL_FLAG_AUTOREMOVE_CONSUMER);

 i2c_dev->common.i2c_speed = i2c_amd_get_bus_speed(pdev);


 i2c_dev->adap.owner = THIS_MODULE;
 i2c_dev->adap.algo = &i2c_amd_algorithm;
 i2c_dev->adap.quirks = &amd_i2c_dev_quirks;
 i2c_dev->adap.dev.parent = &pdev->dev;
 i2c_dev->adap.algo_data = i2c_dev;
 i2c_dev->adap.timeout = AMD_I2C_TIMEOUT;
 ACPI_COMPANION_SET(&i2c_dev->adap.dev, ACPI_COMPANION(&pdev->dev));
 i2c_dev->adap.dev.of_node = pdev->dev.of_node;
 snprintf(i2c_dev->adap.name, sizeof(i2c_dev->adap.name),
   "AMD MP2 i2c bus %u", i2c_dev->common.bus_id);
 i2c_set_adapdata(&i2c_dev->adap, i2c_dev);

 init_completion(&i2c_dev->cmd_complete);


 if (i2c_amd_enable_set(i2c_dev, 1))
  dev_err(&pdev->dev, "initial bus enable failed\n");


 ret = i2c_add_adapter(&i2c_dev->adap);

 amd_mp2_pm_runtime_put(mp2_dev);

 if (ret < 0)
  dev_err(&pdev->dev, "i2c add adapter failed = %d\n", ret);

 return ret;
}
