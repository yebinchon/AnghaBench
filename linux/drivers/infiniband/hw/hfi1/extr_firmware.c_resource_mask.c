
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
typedef scalar_t__ u32 ;


 int CR_DYN_SHIFT ;

__attribute__((used)) static inline u64 resource_mask(u32 hfi1_id, u32 resource)
{
 return ((u64)resource) << (hfi1_id ? CR_DYN_SHIFT : 0);
}
