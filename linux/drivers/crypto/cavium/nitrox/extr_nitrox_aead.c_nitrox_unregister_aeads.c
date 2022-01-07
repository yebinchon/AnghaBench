
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ARRAY_SIZE (int ) ;
 int crypto_unregister_aeads (int ,int ) ;
 int nitrox_aeads ;

void nitrox_unregister_aeads(void)
{
 crypto_unregister_aeads(nitrox_aeads, ARRAY_SIZE(nitrox_aeads));
}
