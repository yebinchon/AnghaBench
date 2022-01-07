
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t uint32_t ;
struct gamma_coefficients {int * user_gamma; int * a3; int * a2; int * a1; int * a0; } ;
struct fixed31_32 {int dummy; } ;


 struct fixed31_32 translate_to_linear_space (struct fixed31_32,int ,int ,int ,int ,int ) ;

__attribute__((used)) static inline struct fixed31_32 translate_to_linear_space_ex(
 struct fixed31_32 arg,
 struct gamma_coefficients *coeff,
 uint32_t color_index)
{
 return translate_to_linear_space(
  arg,
  coeff->a0[color_index],
  coeff->a1[color_index],
  coeff->a2[color_index],
  coeff->a3[color_index],
  coeff->user_gamma[color_index]);
}
