
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct TYPE_2__ {int nports; } ;
struct rvt_dev_info {TYPE_1__ dparms; } ;
struct ib_device {int dummy; } ;


 int EINVAL ;
 struct rvt_dev_info* ib_to_rvt (struct ib_device*) ;

__attribute__((used)) static inline int ibport_num_to_idx(struct ib_device *ibdev, u8 port_num)
{
 struct rvt_dev_info *rdi = ib_to_rvt(ibdev);
 int port_index;

 port_index = port_num - 1;
 if ((port_index < 0) || (port_index >= rdi->dparms.nports))
  return -EINVAL;

 return port_index;
}
