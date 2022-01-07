
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u16 ;
struct mlx5_ib_dev {int dummy; } ;
struct mlx5_ib_counters {int set_id; } ;


 struct mlx5_ib_counters* get_counters (struct mlx5_ib_dev*,int ) ;

u16 mlx5_ib_get_counters_id(struct mlx5_ib_dev *dev, u8 port_num)
{
 const struct mlx5_ib_counters *cnts = get_counters(dev, port_num);

 return cnts->set_id;
}
