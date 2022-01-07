
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint8_t ;
typedef int u8 ;
struct helene_priv {scalar_t__ xtal; TYPE_1__* i2c; } ;
typedef int rdata ;
typedef int data ;
typedef int cdata ;
struct TYPE_2__ {int dev; } ;


 int EIO ;
 scalar_t__ SONY_HELENE_XTAL_16000 ;
 int dev_err (int *,char*,int) ;
 int dev_info (int *,char*) ;
 int helene_read_reg (struct helene_priv*,int,int*) ;
 int helene_read_regs (struct helene_priv*,int,int*,int) ;
 int helene_write_reg (struct helene_priv*,int,int) ;
 int helene_write_regs (struct helene_priv*,int,int*,int) ;
 int msleep (int) ;

__attribute__((used)) static int helene_x_pon(struct helene_priv *priv)
{


 u8 dataT[] = { 0x06, 0x00, 0x02, 0x00 };

 u8 dataS[] = { 0x05, 0x06 };
 u8 cdata[] = {0x7A, 0x01};
 u8 data[20];
 u8 rdata[2];


 helene_write_reg(priv, 0x01, 0x00);

 helene_write_reg(priv, 0x67, dataT[3]);
 helene_write_reg(priv, 0x43, dataS[1]);
 helene_write_regs(priv, 0x5E, dataT, 3);
 helene_write_reg(priv, 0x0C, dataS[0]);


 helene_write_regs(priv, 0x99, cdata, sizeof(cdata));


 if (priv->xtal == SONY_HELENE_XTAL_16000)
  data[0] = 0x10;
 else
  data[0] = 0x18;
 data[1] = (uint8_t)(0x80 | (0x04 & 0x1F));
 data[2] = (uint8_t)(0x80 | (0x26 & 0x7F));
 data[3] = 0x80;
 data[4] = 0x00;
 data[5] = 0x00;
 data[6] = 0xC4;
 data[7] = 0x40;
 data[8] = 0x10;


 data[9] = 0x00;
 data[10] = 0x45;
 data[11] = 0x75;

 data[12] = 0x07;


 data[13] = 0x1C;
 data[14] = 0x3F;
 data[15] = 0x02;
 data[16] = 0x10;
 data[17] = 0x20;
 data[18] = 0x0A;
 data[19] = 0x00;

 helene_write_regs(priv, 0x81, data, sizeof(data));


 helene_write_reg(priv, 0x9B, 0x00);

 msleep(20);


 helene_read_regs(priv, 0x1A, rdata, sizeof(rdata));

 if (rdata[0] != 0x00) {
  dev_err(&priv->i2c->dev,
    "HELENE tuner CPU error 0x%x\n", rdata[0]);
  return -EIO;
 }


 cdata[0] = 0x90;
 cdata[1] = 0x06;
 helene_write_regs(priv, 0x17, cdata, sizeof(cdata));
 msleep(20);
 helene_read_reg(priv, 0x19, data);
 helene_write_reg(priv, 0x95, (uint8_t)((data[0] >> 4) & 0x0F));


 helene_write_reg(priv, 0x74, 0x02);


 helene_write_reg(priv, 0x88, 0x00);


 helene_write_reg(priv, 0x87, 0xC0);


 helene_write_reg(priv, 0x80, 0x01);


 cdata[0] = 0x07;
 cdata[1] = 0x00;
 helene_write_regs(priv, 0x41, cdata, sizeof(cdata));

 dev_info(&priv->i2c->dev,
   "HELENE tuner x_pon done\n");

 return 0;
}
