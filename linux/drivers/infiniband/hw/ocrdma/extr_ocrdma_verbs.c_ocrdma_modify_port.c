
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct ib_port_modify {int dummy; } ;
struct ib_device {int dummy; } ;



int ocrdma_modify_port(struct ib_device *ibdev, u8 port, int mask,
         struct ib_port_modify *props)
{
 return 0;
}
