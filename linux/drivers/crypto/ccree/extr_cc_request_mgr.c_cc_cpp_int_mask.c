
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef enum cc_cpp_alg { ____Placeholder_cc_cpp_alg } cc_cpp_alg ;


 int CC_CPP_NUM_ALGS ;
 int CC_CPP_NUM_SLOTS ;
 int array_index_nospec (int,int ) ;
 int ** cc_cpp_int_masks ;

__attribute__((used)) static inline u32 cc_cpp_int_mask(enum cc_cpp_alg alg, int slot)
{
 alg = array_index_nospec(alg, CC_CPP_NUM_ALGS);
 slot = array_index_nospec(slot, CC_CPP_NUM_SLOTS);

 return cc_cpp_int_masks[alg][slot];
}
