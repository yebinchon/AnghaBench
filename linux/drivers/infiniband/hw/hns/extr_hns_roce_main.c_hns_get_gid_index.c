
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct TYPE_2__ {int num_ports; } ;
struct hns_roce_dev {TYPE_1__ caps; } ;



int hns_get_gid_index(struct hns_roce_dev *hr_dev, u8 port, int gid_index)
{
 return gid_index * hr_dev->caps.num_ports + port;
}
