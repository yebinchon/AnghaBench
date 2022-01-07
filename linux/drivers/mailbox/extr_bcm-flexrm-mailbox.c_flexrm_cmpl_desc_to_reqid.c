
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
typedef int u32 ;


 int CMPL_OPAQUE_MASK ;

__attribute__((used)) static u32 flexrm_cmpl_desc_to_reqid(u64 cmpl_desc)
{
 return (u32)(cmpl_desc & CMPL_OPAQUE_MASK);
}
