
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int busy; } ;
typedef TYPE_1__ ide_hwif_t ;



__attribute__((used)) static inline int ide_lock_port(ide_hwif_t *hwif)
{
 if (hwif->busy)
  return 1;

 hwif->busy = 1;

 return 0;
}
