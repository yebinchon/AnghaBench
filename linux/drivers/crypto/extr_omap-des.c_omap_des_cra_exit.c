
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct crypto_tfm {int dummy; } ;


 int pr_debug (char*) ;

__attribute__((used)) static void omap_des_cra_exit(struct crypto_tfm *tfm)
{
 pr_debug("enter\n");
}
