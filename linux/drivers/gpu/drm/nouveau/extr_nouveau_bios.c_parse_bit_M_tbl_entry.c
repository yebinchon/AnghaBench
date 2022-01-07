
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nvbios {int * data; void* ram_restrict_tbl_ptr; int ram_restrict_group_count; } ;
struct drm_device {int dummy; } ;
struct bit_entry {int length; int version; int offset; } ;


 void* ROM16 (int ) ;

__attribute__((used)) static int
parse_bit_M_tbl_entry(struct drm_device *dev, struct nvbios *bios,
        struct bit_entry *bitentry)
{
 if (bitentry->length < 0x5)
  return 0;

 if (bitentry->version < 2) {
  bios->ram_restrict_group_count = bios->data[bitentry->offset + 2];
  bios->ram_restrict_tbl_ptr = ROM16(bios->data[bitentry->offset + 3]);
 } else {
  bios->ram_restrict_group_count = bios->data[bitentry->offset + 0];
  bios->ram_restrict_tbl_ptr = ROM16(bios->data[bitentry->offset + 1]);
 }

 return 0;
}
