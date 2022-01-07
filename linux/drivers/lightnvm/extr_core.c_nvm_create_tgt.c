
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct request_queue {void* queuedata; } ;
struct nvm_tgt_type {int flags; int (* exit ) (void*,int) ;int owner; scalar_t__ (* sysfs_init ) (struct gendisk*) ;int (* capacity ) (void*) ;void* (* init ) (struct nvm_tgt_dev*,struct gendisk*,int ) ;int make_rq; } ;
struct nvm_tgt_dev {int dummy; } ;
struct nvm_target {int list; struct nvm_tgt_dev* dev; struct gendisk* disk; struct nvm_tgt_type* type; } ;
struct nvm_ioctl_create_extended {int lun_end; int lun_begin; int op; } ;
struct TYPE_8__ {int lun_end; int lun_begin; } ;
struct TYPE_5__ {int type; struct nvm_ioctl_create_extended e; TYPE_4__ s; } ;
struct nvm_ioctl_create {int flags; int tgtname; int tgttype; TYPE_1__ conf; } ;
struct TYPE_7__ {int dom; int csecs; scalar_t__ mdts; } ;
struct nvm_dev {int mlock; int targets; TYPE_3__ geo; TYPE_2__* q; } ;
struct gendisk {struct request_queue* queue; void* private_data; int * fops; scalar_t__ first_minor; scalar_t__ major; int flags; int disk_name; } ;
struct TYPE_6__ {int node; } ;


 int EINVAL ;
 int ENOMEM ;
 int GENHD_FL_EXT_DEVT ;
 int GFP_KERNEL ;
 scalar_t__ IS_ERR (void*) ;


 int NVM_MAX_VLBA ;
 int NVM_RSP_L2P ;
 int NVM_TARGET_DEFAULT_OP ;
 int NVM_TGT_F_HOST_L2P ;
 int PTR_ERR (void*) ;
 int __module_get (int ) ;
 int __nvm_config_extended (struct nvm_dev*,struct nvm_ioctl_create_extended*) ;
 int __nvm_config_simple (struct nvm_dev*,TYPE_4__*) ;
 int add_disk (struct gendisk*) ;
 struct gendisk* alloc_disk (int ) ;
 struct request_queue* blk_alloc_queue_node (int ,int ) ;
 int blk_cleanup_queue (struct request_queue*) ;
 int blk_queue_make_request (struct request_queue*,int ) ;
 int blk_queue_max_hw_sectors (struct request_queue*,unsigned int) ;
 int kfree (struct nvm_target*) ;
 struct nvm_target* kmalloc (int,int ) ;
 int list_add_tail (int *,int *) ;
 unsigned int min_t (int ,scalar_t__,int) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 struct nvm_tgt_dev* nvm_create_tgt_dev (struct nvm_dev*,int ,int ,int ) ;
 struct nvm_tgt_type* nvm_find_target_type (int ) ;
 int nvm_fops ;
 int nvm_release_luns_err (struct nvm_dev*,int ,int ) ;
 int nvm_remove_tgt_dev (struct nvm_tgt_dev*,int ) ;
 int nvm_reserve_luns (struct nvm_dev*,int ,int ) ;
 scalar_t__ nvm_target_exists (int ) ;
 int pr_err (char*,...) ;
 int put_disk (struct gendisk*) ;
 int set_capacity (struct gendisk*,int ) ;
 int strlcpy (int ,int ,int) ;
 void* stub1 (struct nvm_tgt_dev*,struct gendisk*,int ) ;
 int stub2 (void*) ;
 scalar_t__ stub3 (struct gendisk*) ;
 int stub4 (void*,int) ;
 int u32 ;

__attribute__((used)) static int nvm_create_tgt(struct nvm_dev *dev, struct nvm_ioctl_create *create)
{
 struct nvm_ioctl_create_extended e;
 struct request_queue *tqueue;
 struct gendisk *tdisk;
 struct nvm_tgt_type *tt;
 struct nvm_target *t;
 struct nvm_tgt_dev *tgt_dev;
 void *targetdata;
 unsigned int mdts;
 int ret;

 switch (create->conf.type) {
 case 128:
  ret = __nvm_config_simple(dev, &create->conf.s);
  if (ret)
   return ret;

  e.lun_begin = create->conf.s.lun_begin;
  e.lun_end = create->conf.s.lun_end;
  e.op = NVM_TARGET_DEFAULT_OP;
  break;
 case 129:
  ret = __nvm_config_extended(dev, &create->conf.e);
  if (ret)
   return ret;

  e = create->conf.e;
  break;
 default:
  pr_err("config type not valid\n");
  return -EINVAL;
 }

 tt = nvm_find_target_type(create->tgttype);
 if (!tt) {
  pr_err("target type %s not found\n", create->tgttype);
  return -EINVAL;
 }

 if ((tt->flags & NVM_TGT_F_HOST_L2P) != (dev->geo.dom & NVM_RSP_L2P)) {
  pr_err("device is incompatible with target L2P type.\n");
  return -EINVAL;
 }

 if (nvm_target_exists(create->tgtname)) {
  pr_err("target name already exists (%s)\n",
       create->tgtname);
  return -EINVAL;
 }

 ret = nvm_reserve_luns(dev, e.lun_begin, e.lun_end);
 if (ret)
  return ret;

 t = kmalloc(sizeof(struct nvm_target), GFP_KERNEL);
 if (!t) {
  ret = -ENOMEM;
  goto err_reserve;
 }

 tgt_dev = nvm_create_tgt_dev(dev, e.lun_begin, e.lun_end, e.op);
 if (!tgt_dev) {
  pr_err("could not create target device\n");
  ret = -ENOMEM;
  goto err_t;
 }

 tdisk = alloc_disk(0);
 if (!tdisk) {
  ret = -ENOMEM;
  goto err_dev;
 }

 tqueue = blk_alloc_queue_node(GFP_KERNEL, dev->q->node);
 if (!tqueue) {
  ret = -ENOMEM;
  goto err_disk;
 }
 blk_queue_make_request(tqueue, tt->make_rq);

 strlcpy(tdisk->disk_name, create->tgtname, sizeof(tdisk->disk_name));
 tdisk->flags = GENHD_FL_EXT_DEVT;
 tdisk->major = 0;
 tdisk->first_minor = 0;
 tdisk->fops = &nvm_fops;
 tdisk->queue = tqueue;

 targetdata = tt->init(tgt_dev, tdisk, create->flags);
 if (IS_ERR(targetdata)) {
  ret = PTR_ERR(targetdata);
  goto err_init;
 }

 tdisk->private_data = targetdata;
 tqueue->queuedata = targetdata;

 mdts = (dev->geo.csecs >> 9) * NVM_MAX_VLBA;
 if (dev->geo.mdts) {
  mdts = min_t(u32, dev->geo.mdts,
    (dev->geo.csecs >> 9) * NVM_MAX_VLBA);
 }
 blk_queue_max_hw_sectors(tqueue, mdts);

 set_capacity(tdisk, tt->capacity(targetdata));
 add_disk(tdisk);

 if (tt->sysfs_init && tt->sysfs_init(tdisk)) {
  ret = -ENOMEM;
  goto err_sysfs;
 }

 t->type = tt;
 t->disk = tdisk;
 t->dev = tgt_dev;

 mutex_lock(&dev->mlock);
 list_add_tail(&t->list, &dev->targets);
 mutex_unlock(&dev->mlock);

 __module_get(tt->owner);

 return 0;
err_sysfs:
 if (tt->exit)
  tt->exit(targetdata, 1);
err_init:
 blk_cleanup_queue(tqueue);
 tdisk->queue = ((void*)0);
err_disk:
 put_disk(tdisk);
err_dev:
 nvm_remove_tgt_dev(tgt_dev, 0);
err_t:
 kfree(t);
err_reserve:
 nvm_release_luns_err(dev, e.lun_begin, e.lun_end);
 return ret;
}
