
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 int CMD_SHARED_DESC_HDR ;
 int PRINT_POS ;
 int init_desc (int* const,int) ;

__attribute__((used)) static inline void init_sh_desc(u32 * const desc, u32 options)
{
 PRINT_POS;
 init_desc(desc, CMD_SHARED_DESC_HDR | options);
}
