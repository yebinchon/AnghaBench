
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct talitos_private {int features; } ;


 int CONFIG_CRYPTO_DEV_TALITOS1 ;
 int CONFIG_CRYPTO_DEV_TALITOS2 ;
 int IS_ENABLED (int ) ;
 int TALITOS_FTR_SEC1 ;

__attribute__((used)) static inline bool has_ftr_sec1(struct talitos_private *priv)
{
 if (IS_ENABLED(CONFIG_CRYPTO_DEV_TALITOS1) &&
     IS_ENABLED(CONFIG_CRYPTO_DEV_TALITOS2))
  return priv->features & TALITOS_FTR_SEC1;

 return IS_ENABLED(CONFIG_CRYPTO_DEV_TALITOS1);
}
