
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
struct TYPE_3__ {struct mlx4_ib_demux_ctx* demux; } ;
struct mlx4_ib_dev {TYPE_1__ sriov; } ;
struct mlx4_ib_demux_ctx {int mcg_wq; int mcg_table_lock; } ;
struct TYPE_4__ {int method; int tid; } ;
struct ib_sa_mad {TYPE_2__ mad_hdr; scalar_t__ data; } ;
struct mcast_group {int lock; int refcount; int work; int state; int prev_state; struct ib_sa_mad response_sa_mad; } ;
struct ib_sa_mcmember_data {int mgid; } ;
struct ib_device {int dummy; } ;
typedef int __be64 ;
 int IS_ERR (struct mcast_group*) ;
 int MCAST_RESP_READY ;
 struct mcast_group* acquire_group (struct mlx4_ib_demux_ctx*,int *,int ) ;
 int atomic_inc (int *) ;
 int mcg_warn (char*,int,int const) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int queue_work (int ,int *) ;
 int release_group (struct mcast_group*,int ) ;
 int safe_atomic_dec (int *) ;
 struct mcast_group* search_relocate_mgid0_group (struct mlx4_ib_demux_ctx*,int ,int *) ;
 struct mlx4_ib_dev* to_mdev (struct ib_device*) ;

int mlx4_ib_mcg_demux_handler(struct ib_device *ibdev, int port, int slave,
         struct ib_sa_mad *mad)
{
 struct mlx4_ib_dev *dev = to_mdev(ibdev);
 struct ib_sa_mcmember_data *rec = (struct ib_sa_mcmember_data *)mad->data;
 struct mlx4_ib_demux_ctx *ctx = &dev->sriov.demux[port - 1];
 struct mcast_group *group;

 switch (mad->mad_hdr.method) {
 case 133:
 case 130:
  mutex_lock(&ctx->mcg_table_lock);
  group = acquire_group(ctx, &rec->mgid, 0);
  mutex_unlock(&ctx->mcg_table_lock);
  if (IS_ERR(group)) {
   if (mad->mad_hdr.method == 133) {
    __be64 tid = mad->mad_hdr.tid;
    *(u8 *)(&tid) = (u8)slave;
    group = search_relocate_mgid0_group(ctx, tid, &rec->mgid);
   } else
    group = ((void*)0);
  }

  if (!group)
   return 1;

  mutex_lock(&group->lock);
  group->response_sa_mad = *mad;
  group->prev_state = group->state;
  group->state = MCAST_RESP_READY;

  atomic_inc(&group->refcount);
  if (!queue_work(ctx->mcg_wq, &group->work))
   safe_atomic_dec(&group->refcount);
  mutex_unlock(&group->lock);
  release_group(group, 0);
  return 1;
 case 132:
 case 129:
 case 128:
 case 131:
  return 0;
 default:
  mcg_warn("In demux, port %d: unexpected MCMember method: 0x%x, dropping\n",
   port, mad->mad_hdr.method);
  return 1;
 }
}
