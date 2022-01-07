
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct crypto_tfm {int dummy; } ;
struct TYPE_2__ {int session_count; } ;


 int atomic_dec (int *) ;
 TYPE_1__ iproc_priv ;

__attribute__((used)) static void generic_cra_exit(struct crypto_tfm *tfm)
{
 atomic_dec(&iproc_priv.session_count);
}
