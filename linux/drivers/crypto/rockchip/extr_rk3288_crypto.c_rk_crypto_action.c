
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rk_crypto_info {int rst; } ;


 int reset_control_assert (int ) ;

__attribute__((used)) static void rk_crypto_action(void *data)
{
 struct rk_crypto_info *crypto_info = data;

 reset_control_assert(crypto_info->rst);
}
