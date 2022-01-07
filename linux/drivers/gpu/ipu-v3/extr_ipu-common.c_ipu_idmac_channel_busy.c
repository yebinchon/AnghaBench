
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ipu_soc {int dummy; } ;


 int IDMAC_CHA_BUSY (unsigned int) ;
 int idma_mask (unsigned int) ;
 int ipu_idmac_read (struct ipu_soc*,int ) ;

bool ipu_idmac_channel_busy(struct ipu_soc *ipu, unsigned int chno)
{
 return (ipu_idmac_read(ipu, IDMAC_CHA_BUSY(chno)) & idma_mask(chno));
}
