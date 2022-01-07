
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ARRAY_SIZE (int ) ;
 int algs ;
 int crypto_register_algs (int ,int ) ;

__attribute__((used)) static inline int cav_register_algs(void)
{
 int err = 0;

 err = crypto_register_algs(algs, ARRAY_SIZE(algs));
 if (err)
  return err;

 return 0;
}
