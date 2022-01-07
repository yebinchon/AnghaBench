
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct mlx4_ib_dev {int bond_next_port; int num_ports; } ;



__attribute__((used)) static inline u8 mlx4_ib_bond_next_port(struct mlx4_ib_dev *dev)
{
 dev->bond_next_port = (dev->bond_next_port + 1) % dev->num_ports;

 return dev->bond_next_port + 1;
}
