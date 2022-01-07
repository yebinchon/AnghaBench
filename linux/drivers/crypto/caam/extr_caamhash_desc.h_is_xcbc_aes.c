
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 int OP_ALG_AAI_MASK ;
 int OP_ALG_AAI_XCBC_MAC ;
 int OP_ALG_ALGSEL_AES ;
 int OP_ALG_ALGSEL_MASK ;

__attribute__((used)) static inline bool is_xcbc_aes(u32 algtype)
{
 return (algtype & (OP_ALG_ALGSEL_MASK | OP_ALG_AAI_MASK)) ==
        (OP_ALG_ALGSEL_AES | OP_ALG_AAI_XCBC_MAC);
}
