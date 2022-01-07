
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef union ib_gid {int dummy; } ib_gid ;
struct mlx4_port_gid_table {TYPE_1__* gids; } ;
struct mlx4_ib_iboe {int lock; struct mlx4_port_gid_table* gids; } ;
struct mlx4_ib_dev {struct mlx4_ib_iboe iboe; } ;
struct ib_gid_attr {int port_num; int device; } ;
struct gid_entry {int gid_type; int gid; } ;
struct gid_cache_context {unsigned int real_index; int refcount; } ;
struct TYPE_2__ {int gid_type; int gid; struct gid_entry* ctx; } ;


 int EINVAL ;
 int ENOMEM ;
 int GFP_ATOMIC ;
 int MLX4_MAX_PORTS ;
 int MLX4_MAX_PORT_GIDS ;
 int kfree (struct gid_entry*) ;
 struct gid_entry* kmalloc_array (int,int,int ) ;
 int memcpy (int *,int *,int) ;
 int memset (int *,int ,int) ;
 int mlx4_ib_update_gids (struct gid_entry*,struct mlx4_ib_dev*,int) ;
 int rdma_cap_roce_gid_table (int ,int) ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;
 struct mlx4_ib_dev* to_mdev (int ) ;

__attribute__((used)) static int mlx4_ib_del_gid(const struct ib_gid_attr *attr, void **context)
{
 struct gid_cache_context *ctx = *context;
 struct mlx4_ib_dev *ibdev = to_mdev(attr->device);
 struct mlx4_ib_iboe *iboe = &ibdev->iboe;
 struct mlx4_port_gid_table *port_gid_table;
 int ret = 0;
 int hw_update = 0;
 struct gid_entry *gids = ((void*)0);

 if (!rdma_cap_roce_gid_table(attr->device, attr->port_num))
  return -EINVAL;

 if (attr->port_num > MLX4_MAX_PORTS)
  return -EINVAL;

 port_gid_table = &iboe->gids[attr->port_num - 1];
 spin_lock_bh(&iboe->lock);
 if (ctx) {
  ctx->refcount--;
  if (!ctx->refcount) {
   unsigned int real_index = ctx->real_index;

   memset(&port_gid_table->gids[real_index].gid, 0,
          sizeof(port_gid_table->gids[real_index].gid));
   kfree(port_gid_table->gids[real_index].ctx);
   port_gid_table->gids[real_index].ctx = ((void*)0);
   hw_update = 1;
  }
 }
 if (!ret && hw_update) {
  int i;

  gids = kmalloc_array(MLX4_MAX_PORT_GIDS, sizeof(*gids),
         GFP_ATOMIC);
  if (!gids) {
   ret = -ENOMEM;
  } else {
   for (i = 0; i < MLX4_MAX_PORT_GIDS; i++) {
    memcpy(&gids[i].gid,
           &port_gid_table->gids[i].gid,
           sizeof(union ib_gid));
    gids[i].gid_type =
        port_gid_table->gids[i].gid_type;
   }
  }
 }
 spin_unlock_bh(&iboe->lock);

 if (!ret && hw_update) {
  ret = mlx4_ib_update_gids(gids, ibdev, attr->port_num);
  kfree(gids);
 }
 return ret;
}
