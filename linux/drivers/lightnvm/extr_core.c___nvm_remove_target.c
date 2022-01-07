
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct request_queue {int dummy; } ;
struct nvm_tgt_type {int owner; int (* exit ) (int ,int) ;int (* sysfs_exit ) (struct gendisk*) ;} ;
struct nvm_target {int list; struct nvm_tgt_type* type; int dev; struct gendisk* disk; } ;
struct gendisk {int private_data; struct request_queue* queue; } ;


 int blk_cleanup_queue (struct request_queue*) ;
 int del_gendisk (struct gendisk*) ;
 int kfree (struct nvm_target*) ;
 int list_del (int *) ;
 int module_put (int ) ;
 int nvm_remove_tgt_dev (int ,int) ;
 int put_disk (struct gendisk*) ;
 int stub1 (struct gendisk*) ;
 int stub2 (int ,int) ;

__attribute__((used)) static void __nvm_remove_target(struct nvm_target *t, bool graceful)
{
 struct nvm_tgt_type *tt = t->type;
 struct gendisk *tdisk = t->disk;
 struct request_queue *q = tdisk->queue;

 del_gendisk(tdisk);
 blk_cleanup_queue(q);

 if (tt->sysfs_exit)
  tt->sysfs_exit(tdisk);

 if (tt->exit)
  tt->exit(tdisk->private_data, graceful);

 nvm_remove_tgt_dev(t->dev, 1);
 put_disk(tdisk);
 module_put(t->type->owner);

 list_del(&t->list);
 kfree(t);
}
