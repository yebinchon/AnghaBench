
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef enum mem_type { ____Placeholder_mem_type } mem_type ;


 int MEM_DDR ;
 int MEM_DDR2 ;
 int MEM_RDDR ;
 int MEM_RDDR2 ;
 int MEM_UNKNOWN ;


 int SDRAM_MCOPT1_DDR_TYPE_MASK ;
 int SDRAM_MCOPT1_RDEN ;
 int SDRAM_MCOPT1_RDEN_MASK ;

__attribute__((used)) static enum mem_type ppc4xx_edac_get_mtype(u32 mcopt1)
{
 bool rden = ((mcopt1 & SDRAM_MCOPT1_RDEN_MASK) == SDRAM_MCOPT1_RDEN);

 switch (mcopt1 & SDRAM_MCOPT1_DDR_TYPE_MASK) {
 case 128:
  return rden ? MEM_RDDR2 : MEM_DDR2;
 case 129:
  return rden ? MEM_RDDR : MEM_DDR;
 default:
  return MEM_UNKNOWN;
 }
}
