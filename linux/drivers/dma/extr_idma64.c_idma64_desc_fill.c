
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct idma64_lli {int ctllo; } ;
struct idma64_hw_desc {scalar_t__ len; int llp; struct idma64_lli* lli; } ;
struct idma64_desc {unsigned int ndesc; int length; int direction; struct idma64_hw_desc* hw; } ;
struct dma_slave_config {int dummy; } ;
struct idma64_chan {struct dma_slave_config config; } ;


 int IDMA64C_CTLL_INT_EN ;
 int IDMA64C_CTLL_LLP_D_EN ;
 int IDMA64C_CTLL_LLP_S_EN ;
 int idma64_hw_desc_fill (struct idma64_hw_desc*,struct dma_slave_config*,int ,int ) ;

__attribute__((used)) static void idma64_desc_fill(struct idma64_chan *idma64c,
  struct idma64_desc *desc)
{
 struct dma_slave_config *config = &idma64c->config;
 unsigned int i = desc->ndesc;
 struct idma64_hw_desc *hw = &desc->hw[i - 1];
 struct idma64_lli *lli = hw->lli;
 u64 llp = 0;


 do {
  hw = &desc->hw[--i];
  idma64_hw_desc_fill(hw, config, desc->direction, llp);
  llp = hw->llp;
  desc->length += hw->len;
 } while (i);


 lli->ctllo |= IDMA64C_CTLL_INT_EN;


 lli->ctllo &= ~(IDMA64C_CTLL_LLP_S_EN | IDMA64C_CTLL_LLP_D_EN);
}
