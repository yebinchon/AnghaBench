
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ busy; } ;
typedef TYPE_1__ ide_hwif_t ;



__attribute__((used)) static inline void ide_unlock_port(ide_hwif_t *hwif)
{
 hwif->busy = 0;
}
