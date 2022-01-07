
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct ib_port_attr {scalar_t__ gid_tbl_len; } ;
struct ib_device {int dummy; } ;


 int mlx5_query_port_roce (struct ib_device*,int ,struct ib_port_attr*) ;

__attribute__((used)) static int mlx5_ib_rep_query_port(struct ib_device *ibdev, u8 port,
      struct ib_port_attr *props)
{
 int ret;




 ret = mlx5_query_port_roce(ibdev, port, props);
 if (ret || !props)
  return ret;


 props->gid_tbl_len = 0;

 return ret;
}
