
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct tda998x_priv {int dummy; } ;


 int CEC_CAL_XOSC_CTRL1_ENA_CAL ;
 int CEC_CLK_FRO ;
 int CEC_DES_FREQ2_DIS_AUTOCAL ;
 int CEC_ENAMODS_DIS_FRO ;
 int REG_CEC_CAL_XOSC_CTRL1 ;
 int REG_CEC_CLK ;
 int REG_CEC_DES_FREQ2 ;
 int cec_enamods (struct tda998x_priv*,int ,int) ;
 int cec_read (struct tda998x_priv*,int) ;
 int cec_write (struct tda998x_priv*,int,int) ;

__attribute__((used)) static void tda998x_cec_set_calibration(struct tda998x_priv *priv, bool enable)
{
 if (enable) {
  u8 val;

  cec_write(priv, 0xf3, 0xc0);
  cec_write(priv, 0xf4, 0xd4);


  val = cec_read(priv, REG_CEC_DES_FREQ2);
  val &= ~CEC_DES_FREQ2_DIS_AUTOCAL;
  cec_write(priv, REG_CEC_DES_FREQ2, val);


  cec_write(priv, REG_CEC_CLK, CEC_CLK_FRO);
  cec_enamods(priv, CEC_ENAMODS_DIS_FRO, 0);

  cec_write(priv, REG_CEC_CAL_XOSC_CTRL1,
     CEC_CAL_XOSC_CTRL1_ENA_CAL);
 } else {
  cec_write(priv, REG_CEC_CAL_XOSC_CTRL1, 0);
 }
}
