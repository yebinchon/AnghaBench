
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int nitrox_unregister_aeads () ;
 int nitrox_unregister_skciphers () ;

void nitrox_crypto_unregister(void)
{
 nitrox_unregister_aeads();
 nitrox_unregister_skciphers();
}
