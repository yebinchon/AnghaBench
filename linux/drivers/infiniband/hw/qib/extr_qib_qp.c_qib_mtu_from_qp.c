
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct rvt_qp {int dummy; } ;
struct rvt_dev_info {int dummy; } ;


 int ib_mtu_enum_to_int (int ) ;

u32 qib_mtu_from_qp(struct rvt_dev_info *rdi, struct rvt_qp *qp, u32 pmtu)
{
 return ib_mtu_enum_to_int(pmtu);
}
