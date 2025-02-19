
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct wacom_features {int quirks; } ;
struct wacom_wac {unsigned int* serial; unsigned int* id; int pen_fifo; struct wacom_features features; } ;
struct wacom {struct wacom_wac wacom_wac; } ;
struct hid_usage {int hid; } ;
struct hid_report {int maxfield; struct hid_field** field; } ;
struct hid_field {int maxusage; unsigned int report_offset; unsigned int report_size; struct hid_usage* usage; } ;
struct hid_device {int dummy; } ;
typedef int __u64 ;


 unsigned int HID_DG_INRANGE ;



 int WACOM_QUIRK_TOOLSERIAL ;
 unsigned int hid_field_extract (struct hid_device*,int *,unsigned int,unsigned int) ;
 struct wacom* hid_get_drvdata (struct hid_device*) ;
 unsigned int wacom_equivalent_usage (int ) ;
 int wacom_wac_queue_flush (struct hid_device*,int *) ;
 int wacom_wac_queue_insert (struct hid_device*,int *,int *,int) ;

__attribute__((used)) static int wacom_wac_pen_serial_enforce(struct hid_device *hdev,
  struct hid_report *report, u8 *raw_data, int report_size)
{
 struct wacom *wacom = hid_get_drvdata(hdev);
 struct wacom_wac *wacom_wac = &wacom->wacom_wac;
 struct wacom_features *features = &wacom_wac->features;
 bool flush = 0;
 bool insert = 0;
 int i, j;

 if (wacom_wac->serial[0] || !(features->quirks & WACOM_QUIRK_TOOLSERIAL))
  return 0;


 for (i = 0; i < report->maxfield; i++) {
  for (j = 0; j < report->field[i]->maxusage; j++) {
   struct hid_field *field = report->field[i];
   struct hid_usage *usage = &field->usage[j];
   unsigned int equivalent_usage = wacom_equivalent_usage(usage->hid);
   unsigned int offset;
   unsigned int size;
   unsigned int value;

   if (equivalent_usage != HID_DG_INRANGE &&
       equivalent_usage != 130 &&
       equivalent_usage != 129 &&
       equivalent_usage != 128)
    continue;

   offset = field->report_offset;
   size = field->report_size;
   value = hid_field_extract(hdev, raw_data+1, offset + j * size, size);


   if (equivalent_usage == HID_DG_INRANGE)
    value = !value;

   if (value) {
    flush = 1;
    switch (equivalent_usage) {
    case 130:
     wacom_wac->serial[0] = value;
     break;

    case 129:
     wacom_wac->serial[0] |= ((__u64)value) << 32;
     break;

    case 128:
     wacom_wac->id[0] = value;
     break;
    }
   }
   else {
    insert = 1;
   }
  }
 }

 if (flush)
  wacom_wac_queue_flush(hdev, &wacom_wac->pen_fifo);
 else if (insert)
  wacom_wac_queue_insert(hdev, &wacom_wac->pen_fifo,
           raw_data, report_size);

 return insert && !flush;
}
