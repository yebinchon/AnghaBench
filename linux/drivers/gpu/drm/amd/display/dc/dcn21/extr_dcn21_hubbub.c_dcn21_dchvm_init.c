
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hubbub {int dummy; } ;
struct dcn20_hubbub {int dummy; } ;


 int DCHVM_CLK_CTRL ;
 int DCHVM_CTRL0 ;
 int DCHVM_RIOMMU_CTRL0 ;
 int DCHVM_RIOMMU_STAT0 ;
 int HOSTVM_INIT_REQ ;
 int HOSTVM_POWERSTATUS ;
 int HOSTVM_PREFETCH_DONE ;
 int HOSTVM_PREFETCH_REQ ;
 int HVM_DCFCLK_G_GATE_DIS ;
 int HVM_DCFCLK_R_GATE_DIS ;
 int HVM_DISPCLK_G_GATE_DIS ;
 int HVM_DISPCLK_R_GATE_DIS ;
 int REG_UPDATE (int ,int ,int) ;
 int REG_UPDATE_4 (int ,int ,int ,int ,int ,int ,int ,int ,int ) ;
 int REG_WAIT (int ,int ,int,int,int) ;
 int RIOMMU_ACTIVE ;
 struct dcn20_hubbub* TO_DCN20_HUBBUB (struct hubbub*) ;

void dcn21_dchvm_init(struct hubbub *hubbub)
{
 struct dcn20_hubbub *hubbub1 = TO_DCN20_HUBBUB(hubbub);


 REG_UPDATE(DCHVM_CTRL0, HOSTVM_INIT_REQ, 1);



 REG_WAIT(DCHVM_RIOMMU_STAT0, RIOMMU_ACTIVE, 1, 5, 100);


 REG_UPDATE(DCHVM_RIOMMU_CTRL0, HOSTVM_POWERSTATUS, 1);


 REG_UPDATE(DCHVM_RIOMMU_CTRL0, HOSTVM_PREFETCH_REQ, 1);


 REG_UPDATE_4(DCHVM_CLK_CTRL,
     HVM_DISPCLK_R_GATE_DIS, 0,
     HVM_DISPCLK_G_GATE_DIS, 0,
     HVM_DCFCLK_R_GATE_DIS, 0,
     HVM_DCFCLK_G_GATE_DIS, 0);



 REG_WAIT(DCHVM_RIOMMU_STAT0, HOSTVM_PREFETCH_DONE, 1, 5, 100);
}
