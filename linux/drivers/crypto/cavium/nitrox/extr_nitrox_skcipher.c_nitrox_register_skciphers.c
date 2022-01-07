
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ARRAY_SIZE (int ) ;
 int crypto_register_skciphers (int ,int ) ;
 int nitrox_skciphers ;

int nitrox_register_skciphers(void)
{
 return crypto_register_skciphers(nitrox_skciphers,
      ARRAY_SIZE(nitrox_skciphers));
}
