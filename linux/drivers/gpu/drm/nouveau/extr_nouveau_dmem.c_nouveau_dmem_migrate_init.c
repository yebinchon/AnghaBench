
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int oclass; } ;
struct TYPE_8__ {int chan; TYPE_1__ copy; } ;
struct nouveau_drm {TYPE_4__ ttm; TYPE_3__* dmem; } ;
struct TYPE_6__ {int chan; int copy_func; } ;
struct TYPE_7__ {TYPE_2__ migrate; } ;


 int ENODEV ;




 int nvc0b5_migrate_copy ;

__attribute__((used)) static int
nouveau_dmem_migrate_init(struct nouveau_drm *drm)
{
 switch (drm->ttm.copy.oclass) {
 case 131:
 case 130:
 case 128:
 case 129:
  drm->dmem->migrate.copy_func = nvc0b5_migrate_copy;
  drm->dmem->migrate.chan = drm->ttm.chan;
  return 0;
 default:
  break;
 }
 return -ENODEV;
}
