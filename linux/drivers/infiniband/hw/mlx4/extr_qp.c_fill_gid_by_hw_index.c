
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef union ib_gid {int dummy; } ib_gid ;
typedef int u8 ;
struct mlx4_port_gid_table {TYPE_1__* gids; } ;
struct mlx4_ib_iboe {int lock; struct mlx4_port_gid_table* gids; } ;
struct mlx4_ib_dev {struct mlx4_ib_iboe iboe; } ;
typedef enum ib_gid_type { ____Placeholder_ib_gid_type } ib_gid_type ;
struct TYPE_2__ {int gid_type; int gid; } ;


 int ENOENT ;
 int memcpy (union ib_gid*,int *,int) ;
 scalar_t__ rdma_is_zero_gid (union ib_gid*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static int fill_gid_by_hw_index(struct mlx4_ib_dev *ibdev, u8 port_num,
    int index, union ib_gid *gid,
    enum ib_gid_type *gid_type)
{
 struct mlx4_ib_iboe *iboe = &ibdev->iboe;
 struct mlx4_port_gid_table *port_gid_table;
 unsigned long flags;

 port_gid_table = &iboe->gids[port_num - 1];
 spin_lock_irqsave(&iboe->lock, flags);
 memcpy(gid, &port_gid_table->gids[index].gid, sizeof(*gid));
 *gid_type = port_gid_table->gids[index].gid_type;
 spin_unlock_irqrestore(&iboe->lock, flags);
 if (rdma_is_zero_gid(gid))
  return -ENOENT;

 return 0;
}
