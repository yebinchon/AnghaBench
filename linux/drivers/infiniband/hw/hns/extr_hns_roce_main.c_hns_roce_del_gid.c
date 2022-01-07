
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ u8 ;
struct ib_gid_attr {scalar_t__ port_num; int index; int device; } ;
struct TYPE_3__ {scalar_t__ num_ports; } ;
struct hns_roce_dev {TYPE_2__* hw; TYPE_1__ caps; } ;
struct TYPE_4__ {int (* set_gid ) (struct hns_roce_dev*,scalar_t__,int ,int *,struct ib_gid_attr*) ;} ;


 int EINVAL ;
 int stub1 (struct hns_roce_dev*,scalar_t__,int ,int *,struct ib_gid_attr*) ;
 struct hns_roce_dev* to_hr_dev (int ) ;
 int zgid ;

__attribute__((used)) static int hns_roce_del_gid(const struct ib_gid_attr *attr, void **context)
{
 struct hns_roce_dev *hr_dev = to_hr_dev(attr->device);
 struct ib_gid_attr zattr = { };
 u8 port = attr->port_num - 1;
 int ret;

 if (port >= hr_dev->caps.num_ports)
  return -EINVAL;

 ret = hr_dev->hw->set_gid(hr_dev, port, attr->index, &zgid, &zattr);

 return ret;
}
