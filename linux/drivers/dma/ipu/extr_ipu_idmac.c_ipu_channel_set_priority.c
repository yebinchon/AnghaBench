
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned long u32 ;
struct ipu {int dummy; } ;
typedef enum ipu_channel { ____Placeholder_ipu_channel } ipu_channel ;


 int IDMAC_CHA_PRI ;
 int dump_idmac_reg (struct ipu*) ;
 unsigned long idmac_read_icreg (struct ipu*,int ) ;
 int idmac_write_icreg (struct ipu*,unsigned long,int ) ;

__attribute__((used)) static void ipu_channel_set_priority(struct ipu *ipu, enum ipu_channel channel,
         bool prio)
{
 u32 reg = idmac_read_icreg(ipu, IDMAC_CHA_PRI);

 if (prio)
  reg |= 1UL << channel;
 else
  reg &= ~(1UL << channel);

 idmac_write_icreg(ipu, reg, IDMAC_CHA_PRI);

 dump_idmac_reg(ipu);
}
