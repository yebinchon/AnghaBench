
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ARRAY_SIZE (int ) ;
 int crypto_unregister_skciphers (int ,int ) ;
 int nitrox_skciphers ;

void nitrox_unregister_skciphers(void)
{
 crypto_unregister_skciphers(nitrox_skciphers,
        ARRAY_SIZE(nitrox_skciphers));
}
