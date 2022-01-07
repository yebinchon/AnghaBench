
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int mutex; int alloc; } ;
struct TYPE_3__ {int num_mgms; int num_amgms; } ;
struct mthca_dev {TYPE_2__ mcg_table; TYPE_1__ limits; } ;


 int mthca_alloc_init (int *,int,int,int ) ;
 int mutex_init (int *) ;

int mthca_init_mcg_table(struct mthca_dev *dev)
{
 int err;
 int table_size = dev->limits.num_mgms + dev->limits.num_amgms;

 err = mthca_alloc_init(&dev->mcg_table.alloc,
          table_size,
          table_size - 1,
          dev->limits.num_mgms);
 if (err)
  return err;

 mutex_init(&dev->mcg_table.mutex);

 return 0;
}
