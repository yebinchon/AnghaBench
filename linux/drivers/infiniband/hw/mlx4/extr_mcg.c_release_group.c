
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct mlx4_ib_demux_ctx {int mcg_table_lock; int mcg_table; int port; int dev; } ;
struct TYPE_4__ {int attr; } ;
struct TYPE_3__ {int mgid; } ;
struct mcast_group {scalar_t__ state; int lock; int mgid0_list; int node; int pending_list; TYPE_2__ dentry; TYPE_1__ rec; int refcount; int timeout_work; struct mlx4_ib_demux_ctx* demux; } ;


 scalar_t__ MCAST_IDLE ;
 scalar_t__ atomic_dec_and_test (int *) ;
 int atomic_inc (int *) ;
 int cancel_delayed_work (int *) ;
 int del_sysfs_port_mcg_attr (int ,int ,int *) ;
 int kfree (struct mcast_group*) ;
 int list_del_init (int *) ;
 int list_empty (int *) ;
 int mcg_warn_group (struct mcast_group*,char*) ;
 int memcmp (int *,int *,int) ;
 int mgid0 ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int rb_erase (int *,int *) ;

__attribute__((used)) static int release_group(struct mcast_group *group, int from_timeout_handler)
{
 struct mlx4_ib_demux_ctx *ctx = group->demux;
 int nzgroup;

 mutex_lock(&ctx->mcg_table_lock);
 mutex_lock(&group->lock);
 if (atomic_dec_and_test(&group->refcount)) {
  if (!from_timeout_handler) {
   if (group->state != MCAST_IDLE &&
       !cancel_delayed_work(&group->timeout_work)) {
    atomic_inc(&group->refcount);
    mutex_unlock(&group->lock);
    mutex_unlock(&ctx->mcg_table_lock);
    return 0;
   }
  }

  nzgroup = memcmp(&group->rec.mgid, &mgid0, sizeof mgid0);
  if (nzgroup)
   del_sysfs_port_mcg_attr(ctx->dev, ctx->port, &group->dentry.attr);
  if (!list_empty(&group->pending_list))
   mcg_warn_group(group, "releasing a group with non empty pending list\n");
  if (nzgroup)
   rb_erase(&group->node, &ctx->mcg_table);
  list_del_init(&group->mgid0_list);
  mutex_unlock(&group->lock);
  mutex_unlock(&ctx->mcg_table_lock);
  kfree(group);
  return 1;
 } else {
  mutex_unlock(&group->lock);
  mutex_unlock(&ctx->mcg_table_lock);
 }
 return 0;
}
