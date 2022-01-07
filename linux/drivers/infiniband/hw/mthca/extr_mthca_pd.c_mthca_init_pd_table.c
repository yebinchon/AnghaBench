
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int reserved_pds; int num_pds; } ;
struct TYPE_3__ {int alloc; } ;
struct mthca_dev {TYPE_2__ limits; TYPE_1__ pd_table; } ;


 int mthca_alloc_init (int *,int ,int,int ) ;

int mthca_init_pd_table(struct mthca_dev *dev)
{
 return mthca_alloc_init(&dev->pd_table.alloc,
    dev->limits.num_pds,
    (1 << 24) - 1,
    dev->limits.reserved_pds);
}
