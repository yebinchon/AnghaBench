
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ccp_unregister_algs () ;

__attribute__((used)) static void ccp_crypto_exit(void)
{
 ccp_unregister_algs();
}
