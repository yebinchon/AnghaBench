
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef scalar_t__ u16 ;
struct rvt_dev_info {int dummy; } ;
struct ib_device {int dummy; } ;


 int EINVAL ;
 struct rvt_dev_info* ib_to_rvt (struct ib_device*) ;
 int ibport_num_to_idx (struct ib_device*,int ) ;
 scalar_t__ rvt_get_npkeys (struct rvt_dev_info*) ;
 scalar_t__ rvt_get_pkey (struct rvt_dev_info*,int,scalar_t__) ;

__attribute__((used)) static int rvt_query_pkey(struct ib_device *ibdev, u8 port_num, u16 index,
     u16 *pkey)
{






 struct rvt_dev_info *rdi = ib_to_rvt(ibdev);
 int port_index;

 port_index = ibport_num_to_idx(ibdev, port_num);
 if (port_index < 0)
  return -EINVAL;

 if (index >= rvt_get_npkeys(rdi))
  return -EINVAL;

 *pkey = rvt_get_pkey(rdi, port_index, index);
 return 0;
}
