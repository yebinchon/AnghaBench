
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ib_other_headers {int* bth; } ;


 int OPA_BTH_MIG_REQ ;
 int cpu_to_be32 (int ) ;

__attribute__((used)) static inline bool opa_bth_is_migration(struct ib_other_headers *ohdr)
{
 return ohdr->bth[1] & cpu_to_be32(OPA_BTH_MIG_REQ);
}
