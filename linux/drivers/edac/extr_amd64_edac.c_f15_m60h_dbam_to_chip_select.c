
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef size_t u8 ;
typedef int u32 ;
struct amd64_pvt {scalar_t__ dram_type; TYPE_1__* csels; } ;
struct TYPE_2__ {int* csmasks; } ;


 scalar_t__ MEM_DDR4 ;
 scalar_t__ MEM_LRDDR3 ;
 int WARN_ON (int) ;
 int ddr3_cs_size (unsigned int,int) ;
 int ddr3_lrdimm_cs_size (unsigned int,unsigned int) ;
 int ddr4_cs_size (unsigned int) ;

__attribute__((used)) static int f15_m60h_dbam_to_chip_select(struct amd64_pvt *pvt, u8 dct,
     unsigned cs_mode, int cs_mask_nr)
{
 int cs_size;
 u32 dcsm = pvt->csels[dct].csmasks[cs_mask_nr];

 WARN_ON(cs_mode > 12);

 if (pvt->dram_type == MEM_DDR4) {
  if (cs_mode > 9)
   return -1;

  cs_size = ddr4_cs_size(cs_mode);
 } else if (pvt->dram_type == MEM_LRDDR3) {
  unsigned rank_multiply = dcsm & 0xf;

  if (rank_multiply == 3)
   rank_multiply = 4;
  cs_size = ddr3_lrdimm_cs_size(cs_mode, rank_multiply);
 } else {

  if (cs_mode == 0x1)
   return -1;

  cs_size = ddr3_cs_size(cs_mode, 0);
 }

 return cs_size;
}
