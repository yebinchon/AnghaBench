
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef size_t uint32_t ;
struct gamma_coefficients {int * user_gamma; int * a3; int * a2; int * a1; int * a0; } ;
struct fixed31_32 {int dummy; } ;
struct TYPE_3__ {int gamma; int a3; int a2; int a1; int a0; struct fixed31_32 arg; } ;


 TYPE_1__ scratch_gamma_args ;
 struct fixed31_32 translate_from_linear_space (TYPE_1__*) ;

__attribute__((used)) static struct fixed31_32 translate_from_linear_space_ex(
 struct fixed31_32 arg,
 struct gamma_coefficients *coeff,
 uint32_t color_index)
{
 scratch_gamma_args.arg = arg;
 scratch_gamma_args.a0 = coeff->a0[color_index];
 scratch_gamma_args.a1 = coeff->a1[color_index];
 scratch_gamma_args.a2 = coeff->a2[color_index];
 scratch_gamma_args.a3 = coeff->a3[color_index];
 scratch_gamma_args.gamma = coeff->user_gamma[color_index];

 return translate_from_linear_space(&scratch_gamma_args);
}
