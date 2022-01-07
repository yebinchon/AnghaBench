
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 int OP_ALG_ALGSEL_MASK ;
 int OP_ALG_ALGSEL_SUBMASK ;
 int OP_ALG_CHA_MDHA ;

__attribute__((used)) static inline bool is_mdha(u32 algtype)
{
 return (algtype & OP_ALG_ALGSEL_MASK & ~OP_ALG_ALGSEL_SUBMASK) ==
        OP_ALG_CHA_MDHA;
}
