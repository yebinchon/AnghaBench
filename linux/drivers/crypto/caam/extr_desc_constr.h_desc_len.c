
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 int HDR_DESCLEN_MASK ;
 int caam32_to_cpu (int ) ;

__attribute__((used)) static inline int desc_len(u32 * const desc)
{
 return caam32_to_cpu(*desc) & HDR_DESCLEN_MASK;
}
