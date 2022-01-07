
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct i3c_ibi_slot {int work; } ;
struct TYPE_6__ {TYPE_2__* master; } ;
struct i3c_dev_desc {TYPE_3__ common; TYPE_1__* ibi; } ;
struct TYPE_5__ {int wq; } ;
struct TYPE_4__ {int pending_ibis; } ;


 int atomic_inc (int *) ;
 int queue_work (int ,int *) ;

void i3c_master_queue_ibi(struct i3c_dev_desc *dev, struct i3c_ibi_slot *slot)
{
 atomic_inc(&dev->ibi->pending_ibis);
 queue_work(dev->common.master->wq, &slot->work);
}
