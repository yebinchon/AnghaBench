
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct ipu {int dummy; } ;
typedef enum ipu_channel { ____Placeholder_ipu_channel } ipu_channel ;


 int IC_CONF ;
 int IC_CONF_PRPENC_EN ;
 int IC_CONF_RWS_EN ;


 int idmac_read_icreg (struct ipu*,int ) ;
 int idmac_write_icreg (struct ipu*,int,int ) ;

__attribute__((used)) static void ipu_ic_enable_task(struct ipu *ipu, enum ipu_channel channel)
{
 uint32_t ic_conf, mask;

 switch (channel) {
 case 129:
  mask = IC_CONF_PRPENC_EN;
  break;
 case 128:
  mask = IC_CONF_RWS_EN | IC_CONF_PRPENC_EN;
  break;
 default:
  return;
 }
 ic_conf = idmac_read_icreg(ipu, IC_CONF) | mask;
 idmac_write_icreg(ipu, ic_conf, IC_CONF);
}
