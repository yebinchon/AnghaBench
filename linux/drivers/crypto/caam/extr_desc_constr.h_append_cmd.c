
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;


 scalar_t__ caam32_to_cpu (scalar_t__) ;
 scalar_t__ cpu_to_caam32 (scalar_t__) ;
 scalar_t__* desc_end (scalar_t__* const) ;

__attribute__((used)) static inline void append_cmd(u32 * const desc, u32 command)
{
 u32 *cmd = desc_end(desc);

 *cmd = cpu_to_caam32(command);

 (*desc) = cpu_to_caam32(caam32_to_cpu(*desc) + 1);
}
