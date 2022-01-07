
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct hubp {int dummy; } ;
struct dcn20_hubp {int dummy; } ;
typedef enum hubp_ind_block_size { ____Placeholder_hubp_ind_block_size } hubp_ind_block_size ;


 int DCSURF_SURFACE_CONTROL ;
 int PRIMARY_SURFACE_DCC_EN ;
 int PRIMARY_SURFACE_DCC_IND_64B_BLK ;
 int REG_UPDATE_4 (int ,int ,int,int ,int,int ,int,int ,int) ;
 int SECONDARY_SURFACE_DCC_EN ;
 int SECONDARY_SURFACE_DCC_IND_64B_BLK ;
 struct dcn20_hubp* TO_DCN20_HUBP (struct hubp*) ;

void hubp2_dcc_control(struct hubp *hubp, bool enable,
  enum hubp_ind_block_size independent_64b_blks)
{
 uint32_t dcc_en = enable ? 1 : 0;
 uint32_t dcc_ind_64b_blk = independent_64b_blks ? 1 : 0;
 struct dcn20_hubp *hubp2 = TO_DCN20_HUBP(hubp);

 REG_UPDATE_4(DCSURF_SURFACE_CONTROL,
   PRIMARY_SURFACE_DCC_EN, dcc_en,
   PRIMARY_SURFACE_DCC_IND_64B_BLK, dcc_ind_64b_blk,
   SECONDARY_SURFACE_DCC_EN, dcc_en,
   SECONDARY_SURFACE_DCC_IND_64B_BLK, dcc_ind_64b_blk);
}
