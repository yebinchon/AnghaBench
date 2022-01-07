
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int nitrox_register_aeads () ;
 int nitrox_register_skciphers () ;
 int nitrox_unregister_skciphers () ;

int nitrox_crypto_register(void)
{
 int err;

 err = nitrox_register_skciphers();
 if (err)
  return err;

 err = nitrox_register_aeads();
 if (err) {
  nitrox_unregister_skciphers();
  return err;
 }

 return 0;
}
