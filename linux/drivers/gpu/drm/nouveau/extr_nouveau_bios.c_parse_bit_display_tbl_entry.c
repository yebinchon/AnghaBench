
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int fptablepointer; } ;
struct nvbios {int * data; TYPE_1__ fp; } ;
struct nouveau_drm {int dummy; } ;
struct drm_device {int dummy; } ;
struct bit_entry {int length; int offset; } ;


 int EINVAL ;
 int NV_ERROR (struct nouveau_drm*,char*) ;
 int ROM16 (int ) ;
 struct nouveau_drm* nouveau_drm (struct drm_device*) ;

__attribute__((used)) static int parse_bit_display_tbl_entry(struct drm_device *dev, struct nvbios *bios, struct bit_entry *bitentry)
{
 struct nouveau_drm *drm = nouveau_drm(dev);

 if (bitentry->length != 4) {
  NV_ERROR(drm, "Do not understand BIT display table\n");
  return -EINVAL;
 }

 bios->fp.fptablepointer = ROM16(bios->data[bitentry->offset + 2]);

 return 0;
}
