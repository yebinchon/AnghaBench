
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 size_t CAAM_CMD_SZ ;
 int HDR_START_IDX_SHIFT ;
 int init_sh_desc (int* const,int) ;

__attribute__((used)) static inline void init_sh_desc_pdb(u32 * const desc, u32 options,
        size_t pdb_bytes)
{
 u32 pdb_len = (pdb_bytes + CAAM_CMD_SZ - 1) / CAAM_CMD_SZ;

 init_sh_desc(desc, (((pdb_len + 1) << HDR_START_IDX_SHIFT) + pdb_len) |
       options);
}
