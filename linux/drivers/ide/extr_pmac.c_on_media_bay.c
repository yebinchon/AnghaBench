
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {TYPE_1__* mdev; } ;
typedef TYPE_2__ pmac_ide_hwif_t ;
struct TYPE_4__ {int * media_bay; } ;



__attribute__((used)) static int on_media_bay(pmac_ide_hwif_t *pmif)
{
 return pmif->mdev && pmif->mdev->media_bay != ((void*)0);
}
