
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct ib_port_modify {int dummy; } ;
struct ib_device {int dummy; } ;



__attribute__((used)) static int hns_roce_modify_port(struct ib_device *ib_dev, u8 port_num, int mask,
    struct ib_port_modify *props)
{
 return 0;
}
