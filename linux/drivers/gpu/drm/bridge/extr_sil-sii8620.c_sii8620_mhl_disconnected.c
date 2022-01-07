
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sii8620 {int dummy; } ;


 int BIT_CBUS_MSC_COMPAT_CTRL_XDEVCAP_EN ;
 int REG_CBUS_MSC_COMPAT_CTRL ;
 int REG_DISC_CTRL4 ;
 int VAL_DISC_CTRL4 (int ,int ) ;
 int VAL_PUP_20K ;
 int VAL_PUP_OFF ;
 int sii8620_disconnect (struct sii8620*) ;
 int sii8620_write_seq_static (struct sii8620*,int ,int ,int ,int ) ;

__attribute__((used)) static void sii8620_mhl_disconnected(struct sii8620 *ctx)
{
 sii8620_write_seq_static(ctx,
  REG_DISC_CTRL4, VAL_DISC_CTRL4(VAL_PUP_OFF, VAL_PUP_20K),
  REG_CBUS_MSC_COMPAT_CTRL,
   BIT_CBUS_MSC_COMPAT_CTRL_XDEVCAP_EN
 );
 sii8620_disconnect(ctx);
}
