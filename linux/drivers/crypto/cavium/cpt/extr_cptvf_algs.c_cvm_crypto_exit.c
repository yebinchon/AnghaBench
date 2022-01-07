
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u32 ;
struct TYPE_2__ {scalar_t__ dev_count; } ;


 int cav_unregister_algs () ;
 TYPE_1__ dev_handle ;

void cvm_crypto_exit(void)
{
 u32 dev_count;

 dev_count = --dev_handle.dev_count;
 if (!dev_count)
  cav_unregister_algs();
}
