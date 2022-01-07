
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ARRAY_SIZE (int ) ;
 int algs ;
 int crypto_unregister_algs (int ,int ) ;

__attribute__((used)) static inline void cav_unregister_algs(void)
{
 crypto_unregister_algs(algs, ARRAY_SIZE(algs));
}
