
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;


 int IB_MULTICAST_LID_BASE ;
 int OPA_MCAST_NR ;




 int be16_to_cpu (int ) ;
 int hfi1_check_mcast (int) ;
 int opa_get_mcast_base (int ) ;

__attribute__((used)) static inline u32 __opa_get_lid(u32 lid, u8 format)
{
 bool is_mcast = hfi1_check_mcast(lid);

 switch (format) {
 case 129:
 case 131:
  if (is_mcast)
   return (lid - opa_get_mcast_base(OPA_MCAST_NR) +
    0xF0000);
  return lid & 0xFFFFF;
 case 130:
  if (is_mcast)
   return (lid - opa_get_mcast_base(OPA_MCAST_NR) +
    0xF00000);
  return lid & 0xFFFFFF;
 case 128:
  if (is_mcast)
   return (lid -
    opa_get_mcast_base(OPA_MCAST_NR) +
    be16_to_cpu(IB_MULTICAST_LID_BASE));
  else
   return lid & 0xFFFF;
 default:
  return lid;
 }
}
