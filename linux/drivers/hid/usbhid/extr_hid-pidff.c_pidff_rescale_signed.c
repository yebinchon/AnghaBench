
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hid_field {int logical_maximum; int logical_minimum; } ;



__attribute__((used)) static int pidff_rescale_signed(int i, struct hid_field *field)
{
 return i == 0 ? 0 : i >
     0 ? i * field->logical_maximum / 0x7fff : i *
     field->logical_minimum / -0x8000;
}
