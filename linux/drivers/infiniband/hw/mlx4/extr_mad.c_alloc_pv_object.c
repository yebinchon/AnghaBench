
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mlx4_ib_dev {int ib_dev; } ;
struct mlx4_ib_demux_pv_ctx {int port; int slave; int * ib_dev; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 struct mlx4_ib_demux_pv_ctx* kzalloc (int,int ) ;

__attribute__((used)) static int alloc_pv_object(struct mlx4_ib_dev *dev, int slave, int port,
          struct mlx4_ib_demux_pv_ctx **ret_ctx)
{
 struct mlx4_ib_demux_pv_ctx *ctx;

 *ret_ctx = ((void*)0);
 ctx = kzalloc(sizeof (struct mlx4_ib_demux_pv_ctx), GFP_KERNEL);
 if (!ctx)
  return -ENOMEM;

 ctx->ib_dev = &dev->ib_dev;
 ctx->port = port;
 ctx->slave = slave;
 *ret_ctx = ctx;
 return 0;
}
