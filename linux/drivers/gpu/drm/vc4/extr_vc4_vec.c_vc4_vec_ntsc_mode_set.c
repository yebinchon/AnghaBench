
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vc4_vec {int dummy; } ;


 int VEC_CONFIG0 ;
 int VEC_CONFIG0_NTSC_STD ;
 int VEC_CONFIG0_PDEN ;
 int VEC_CONFIG1 ;
 int VEC_CONFIG1_C_CVBS_CVBS ;
 int VEC_WRITE (int ,int) ;

__attribute__((used)) static void vc4_vec_ntsc_mode_set(struct vc4_vec *vec)
{
 VEC_WRITE(VEC_CONFIG0, VEC_CONFIG0_NTSC_STD | VEC_CONFIG0_PDEN);
 VEC_WRITE(VEC_CONFIG1, VEC_CONFIG1_C_CVBS_CVBS);
}
