
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tda998x_priv {int dummy; } ;


 int CEC_ENAMODS_EN_CEC ;
 int CEC_ENAMODS_EN_CEC_CLK ;
 int cec_enamods (struct tda998x_priv*,int,int) ;
 int tda998x_cec_calibration (struct tda998x_priv*) ;

__attribute__((used)) static int tda998x_cec_hook_open(void *data)
{
 struct tda998x_priv *priv = data;

 cec_enamods(priv, CEC_ENAMODS_EN_CEC_CLK | CEC_ENAMODS_EN_CEC, 1);
 tda998x_cec_calibration(priv);

 return 0;
}
