
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sii8620 {int dummy; } ;


 int BIT_PWD_SRST_CBUS_RST ;
 int BIT_PWD_SRST_CBUS_RST_SW_EN ;
 int REG_PWD_SRST ;
 int sii8620_write (struct sii8620*,int ,int) ;
 int usleep_range (int,int) ;

__attribute__((used)) static void sii8620_cbus_reset(struct sii8620 *ctx)
{
 sii8620_write(ctx, REG_PWD_SRST, BIT_PWD_SRST_CBUS_RST
        | BIT_PWD_SRST_CBUS_RST_SW_EN);
 usleep_range(10000, 20000);
 sii8620_write(ctx, REG_PWD_SRST, BIT_PWD_SRST_CBUS_RST_SW_EN);
}
