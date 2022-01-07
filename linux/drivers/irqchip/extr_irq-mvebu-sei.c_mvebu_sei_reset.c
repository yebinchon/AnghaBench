
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct mvebu_sei {scalar_t__ base; } ;


 scalar_t__ GICP_SECR (scalar_t__) ;
 scalar_t__ GICP_SEMR (scalar_t__) ;
 scalar_t__ SEI_IRQ_REG_COUNT ;
 int writel_relaxed (int,scalar_t__) ;

__attribute__((used)) static void mvebu_sei_reset(struct mvebu_sei *sei)
{
 u32 reg_idx;


 for (reg_idx = 0; reg_idx < SEI_IRQ_REG_COUNT; reg_idx++) {
  writel_relaxed(0xFFFFFFFF, sei->base + GICP_SECR(reg_idx));
  writel_relaxed(0xFFFFFFFF, sei->base + GICP_SEMR(reg_idx));
 }
}
