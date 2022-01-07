
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;


 int OPA_LID_PERMISSIVE ;
 int OPA_MCAST_NR ;
 scalar_t__ be32_to_cpu (int ) ;
 scalar_t__ opa_get_mcast_base (int ) ;

__attribute__((used)) static inline bool hfi1_check_mcast(u32 lid)
{
 return ((lid >= opa_get_mcast_base(OPA_MCAST_NR)) &&
  (lid != be32_to_cpu(OPA_LID_PERMISSIVE)));
}
