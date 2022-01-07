
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nvbios {int dummy; } ;
struct nouveau_drm {int dummy; } ;
struct drm_device {int dummy; } ;
struct bit_entry {int length; int offset; } ;


 int EINVAL ;
 int NV_ERROR (struct nouveau_drm*,char*) ;
 struct nouveau_drm* nouveau_drm (struct drm_device*) ;
 int parse_script_table_pointers (struct nvbios*,int ) ;

__attribute__((used)) static int parse_bit_init_tbl_entry(struct drm_device *dev, struct nvbios *bios, struct bit_entry *bitentry)
{





 struct nouveau_drm *drm = nouveau_drm(dev);

 if (bitentry->length < 14) {
  NV_ERROR(drm, "Do not understand init table\n");
  return -EINVAL;
 }

 parse_script_table_pointers(bios, bitentry->offset);
 return 0;
}
