
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 int HDR_ONE ;
 int cpu_to_caam32 (int) ;

__attribute__((used)) static inline void init_desc(u32 * const desc, u32 options)
{
 *desc = cpu_to_caam32((options | HDR_ONE) + 1);
}
