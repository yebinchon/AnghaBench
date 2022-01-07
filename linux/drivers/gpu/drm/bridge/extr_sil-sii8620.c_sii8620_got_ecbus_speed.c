
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sii8620 {int dummy; } ;


 int CURR_ECBUS_MODE ;
 int MHL_RAP_CBUS_MODE_UP ;
 int MHL_XDS_ECBUS_S ;
 int MHL_XDS_REG (int ) ;
 int MHL_XDS_SLOT_MODE_8BIT ;
 int sii8620_ecbus_up ;
 int sii8620_mt_rap (struct sii8620*,int ) ;
 int sii8620_mt_set_cont (struct sii8620*,int ) ;
 int sii8620_mt_write_stat (struct sii8620*,int ,int) ;

__attribute__((used)) static void sii8620_got_ecbus_speed(struct sii8620 *ctx, int ret)
{
 if (ret < 0)
  return;

 sii8620_mt_write_stat(ctx, MHL_XDS_REG(CURR_ECBUS_MODE),
         MHL_XDS_ECBUS_S | MHL_XDS_SLOT_MODE_8BIT);
 sii8620_mt_rap(ctx, MHL_RAP_CBUS_MODE_UP);
 sii8620_mt_set_cont(ctx, sii8620_ecbus_up);
}
