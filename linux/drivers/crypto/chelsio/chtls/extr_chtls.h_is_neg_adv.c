
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned int CPL_ERR_KEEPALV_NEG_ADVICE ;
 unsigned int CPL_ERR_PERSIST_NEG_ADVICE ;
 unsigned int CPL_ERR_RTX_NEG_ADVICE ;

__attribute__((used)) static inline int is_neg_adv(unsigned int status)
{
 return status == CPL_ERR_RTX_NEG_ADVICE ||
        status == CPL_ERR_KEEPALV_NEG_ADVICE ||
        status == CPL_ERR_PERSIST_NEG_ADVICE;
}
