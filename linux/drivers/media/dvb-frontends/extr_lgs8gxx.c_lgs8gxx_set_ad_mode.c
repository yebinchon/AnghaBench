
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct lgs8gxx_state {struct lgs8gxx_config* config; } ;
struct lgs8gxx_config {scalar_t__ if_freq; scalar_t__ prod; scalar_t__ ext_adc; scalar_t__ if_neg_edge; scalar_t__ adc_signed; scalar_t__ if_neg_center; } ;


 scalar_t__ LGS8GXX_PROD_LGS8G52 ;
 int lgs8gxx_write_reg (struct lgs8gxx_state*,int,int) ;

__attribute__((used)) static int lgs8gxx_set_ad_mode(struct lgs8gxx_state *priv)
{
 const struct lgs8gxx_config *config = priv->config;
 u8 if_conf;

 if_conf = 0x10;

 if_conf |=
  ((config->ext_adc) ? 0x80 : 0x00) |
  ((config->if_neg_center) ? 0x04 : 0x00) |
  ((config->if_freq == 0) ? 0x08 : 0x00) |
  ((config->adc_signed) ? 0x02 : 0x00) |
  ((config->if_neg_edge) ? 0x01 : 0x00);

 if (config->ext_adc &&
  (config->prod == LGS8GXX_PROD_LGS8G52)) {
  lgs8gxx_write_reg(priv, 0xBA, 0x40);
 }

 lgs8gxx_write_reg(priv, 0x07, if_conf);

 return 0;
}
