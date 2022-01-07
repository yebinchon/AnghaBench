
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ipuv3_channel {unsigned int num; struct ipu_soc* ipu; } ;
struct ipu_soc {int dummy; } ;


 int IPU_CHA_CUR_BUF (unsigned int) ;
 int idma_mask (unsigned int) ;
 int ipu_cm_write (struct ipu_soc*,int ,int ) ;

__attribute__((used)) static void __ipu_idmac_reset_current_buffer(struct ipuv3_channel *channel)
{
 struct ipu_soc *ipu = channel->ipu;
 unsigned int chno = channel->num;

 ipu_cm_write(ipu, idma_mask(chno), IPU_CHA_CUR_BUF(chno));
}
