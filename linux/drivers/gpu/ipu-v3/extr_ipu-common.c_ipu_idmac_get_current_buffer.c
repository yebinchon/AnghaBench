
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ipuv3_channel {unsigned int num; struct ipu_soc* ipu; } ;
struct ipu_soc {int dummy; } ;


 int IPU_CHA_CUR_BUF (unsigned int) ;
 int idma_mask (unsigned int) ;
 int ipu_cm_read (struct ipu_soc*,int ) ;

int ipu_idmac_get_current_buffer(struct ipuv3_channel *channel)
{
 struct ipu_soc *ipu = channel->ipu;
 unsigned int chno = channel->num;

 return (ipu_cm_read(ipu, IPU_CHA_CUR_BUF(chno)) & idma_mask(chno)) ? 1 : 0;
}
