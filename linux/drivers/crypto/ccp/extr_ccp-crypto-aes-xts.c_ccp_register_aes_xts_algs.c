
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct list_head {int dummy; } ;


 int ARRAY_SIZE (int *) ;
 int * aes_xts_algs ;
 int ccp_register_aes_xts_alg (struct list_head*,int *) ;

int ccp_register_aes_xts_algs(struct list_head *head)
{
 int i, ret;

 for (i = 0; i < ARRAY_SIZE(aes_xts_algs); i++) {
  ret = ccp_register_aes_xts_alg(head, &aes_xts_algs[i]);
  if (ret)
   return ret;
 }

 return 0;
}
