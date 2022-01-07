
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 int caam32_to_cpu (int ) ;
 int cpu_to_caam32 (int) ;
 int desc_len (int * const) ;

__attribute__((used)) static inline void set_jump_tgt_here(u32 * const desc, u32 *jump_cmd)
{
 *jump_cmd = cpu_to_caam32(caam32_to_cpu(*jump_cmd) |
      (desc_len(desc) - (jump_cmd - desc)));
}
