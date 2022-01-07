
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dmz_reclaim {int * kc; int work; int wq; int kc_throttle; int atime; struct dmz_metadata* metadata; struct dmz_dev* dev; } ;
struct dmz_metadata {int dummy; } ;
struct dmz_dev {int name; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int INIT_DELAYED_WORK (int *,int ) ;
 scalar_t__ IS_ERR (int *) ;
 int PTR_ERR (int *) ;
 int WQ_MEM_RECLAIM ;
 int alloc_ordered_workqueue (char*,int ,int ) ;
 int * dm_kcopyd_client_create (int *) ;
 int dm_kcopyd_client_destroy (int *) ;
 int dmz_reclaim_work ;
 int jiffies ;
 int kfree (struct dmz_reclaim*) ;
 struct dmz_reclaim* kzalloc (int,int ) ;
 int queue_delayed_work (int ,int *,int ) ;

int dmz_ctr_reclaim(struct dmz_dev *dev, struct dmz_metadata *zmd,
      struct dmz_reclaim **reclaim)
{
 struct dmz_reclaim *zrc;
 int ret;

 zrc = kzalloc(sizeof(struct dmz_reclaim), GFP_KERNEL);
 if (!zrc)
  return -ENOMEM;

 zrc->dev = dev;
 zrc->metadata = zmd;
 zrc->atime = jiffies;


 zrc->kc = dm_kcopyd_client_create(&zrc->kc_throttle);
 if (IS_ERR(zrc->kc)) {
  ret = PTR_ERR(zrc->kc);
  zrc->kc = ((void*)0);
  goto err;
 }


 INIT_DELAYED_WORK(&zrc->work, dmz_reclaim_work);
 zrc->wq = alloc_ordered_workqueue("dmz_rwq_%s", WQ_MEM_RECLAIM,
       dev->name);
 if (!zrc->wq) {
  ret = -ENOMEM;
  goto err;
 }

 *reclaim = zrc;
 queue_delayed_work(zrc->wq, &zrc->work, 0);

 return 0;
err:
 if (zrc->kc)
  dm_kcopyd_client_destroy(zrc->kc);
 kfree(zrc);

 return ret;
}
