
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef void* u32 ;
struct TYPE_3__ {void* dev_flags; void* dev_devwidth; void* dev_tsize; scalar_t__ dev_intpolarity; scalar_t__ dev_intlevel; int dev_physaddr; void* dev_id; } ;
typedef TYPE_1__ dbdev_tab_t ;


 int CPHYSADDR (void*) ;

__attribute__((used)) static void auide_init_dbdma_dev(dbdev_tab_t *dev, u32 dev_id, u32 tsize,
     u32 devwidth, u32 flags, u32 regbase)
{
 dev->dev_id = dev_id;
 dev->dev_physaddr = CPHYSADDR(regbase);
 dev->dev_intlevel = 0;
 dev->dev_intpolarity = 0;
 dev->dev_tsize = tsize;
 dev->dev_devwidth = devwidth;
 dev->dev_flags = flags;
}
