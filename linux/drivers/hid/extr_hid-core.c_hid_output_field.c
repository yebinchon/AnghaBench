
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hid_field {unsigned int report_count; unsigned int report_offset; unsigned int report_size; scalar_t__ logical_minimum; int * value; } ;
struct hid_device {int dummy; } ;
typedef int __u8 ;


 int implement (struct hid_device const*,int *,unsigned int,unsigned int,int ) ;
 int s32ton (int ,unsigned int) ;

__attribute__((used)) static void hid_output_field(const struct hid_device *hid,
        struct hid_field *field, __u8 *data)
{
 unsigned count = field->report_count;
 unsigned offset = field->report_offset;
 unsigned size = field->report_size;
 unsigned n;

 for (n = 0; n < count; n++) {
  if (field->logical_minimum < 0)
   implement(hid, data, offset + n * size, size,
      s32ton(field->value[n], size));
  else
   implement(hid, data, offset + n * size, size,
      field->value[n]);
 }
}
