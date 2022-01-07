
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ib_device {int dummy; } ;
typedef enum ib_mtu { ____Placeholder_ib_mtu } ib_mtu ;


 scalar_t__ OPA_MTU_10240 ;
 int OPA_MTU_8192 ;
 int ib_mtu_enum_to_int (int) ;
 int opa_mtu_enum_to_int (int) ;

__attribute__((used)) static inline int verbs_mtu_enum_to_int(struct ib_device *dev, enum ib_mtu mtu)
{
 int val;


 if (mtu == (enum ib_mtu)OPA_MTU_10240)
  mtu = OPA_MTU_8192;
 val = opa_mtu_enum_to_int((int)mtu);
 if (val > 0)
  return val;
 return ib_mtu_enum_to_int(mtu);
}
