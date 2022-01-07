
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct era {scalar_t__ metadata_dev; int ti; scalar_t__ origin_dev; scalar_t__ wq; scalar_t__ md; } ;


 int destroy_workqueue (scalar_t__) ;
 int dm_put_device (int ,scalar_t__) ;
 int kfree (struct era*) ;
 int metadata_close (scalar_t__) ;

__attribute__((used)) static void era_destroy(struct era *era)
{
 if (era->md)
  metadata_close(era->md);

 if (era->wq)
  destroy_workqueue(era->wq);

 if (era->origin_dev)
  dm_put_device(era->ti, era->origin_dev);

 if (era->metadata_dev)
  dm_put_device(era->ti, era->metadata_dev);

 kfree(era);
}
