
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mt_report_data {scalar_t__ is_mt_collection; } ;
struct mt_device {int dummy; } ;
struct hid_usage {int dummy; } ;
struct hid_input {int dummy; } ;
struct hid_field {int report; } ;
struct hid_device {int dummy; } ;


 struct mt_device* hid_get_drvdata (struct hid_device*) ;
 struct mt_report_data* mt_find_report_data (struct mt_device*,int ) ;

__attribute__((used)) static int mt_input_mapped(struct hid_device *hdev, struct hid_input *hi,
  struct hid_field *field, struct hid_usage *usage,
  unsigned long **bit, int *max)
{
 struct mt_device *td = hid_get_drvdata(hdev);
 struct mt_report_data *rdata;

 rdata = mt_find_report_data(td, field->report);
 if (rdata && rdata->is_mt_collection) {

  return -1;
 }


 return 0;
}
