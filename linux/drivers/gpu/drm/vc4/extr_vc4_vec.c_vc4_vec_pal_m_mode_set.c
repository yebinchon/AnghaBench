
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vc4_vec {int dummy; } ;


 int VEC_CONFIG0 ;
 int VEC_CONFIG0_PAL_BDGHI_STD ;
 int VEC_CONFIG1 ;
 int VEC_CONFIG1_CUSTOM_FREQ ;
 int VEC_CONFIG1_C_CVBS_CVBS ;
 int VEC_FREQ1_0 ;
 int VEC_FREQ3_2 ;
 int VEC_WRITE (int ,int) ;

__attribute__((used)) static void vc4_vec_pal_m_mode_set(struct vc4_vec *vec)
{
 VEC_WRITE(VEC_CONFIG0, VEC_CONFIG0_PAL_BDGHI_STD);
 VEC_WRITE(VEC_CONFIG1,
    VEC_CONFIG1_C_CVBS_CVBS | VEC_CONFIG1_CUSTOM_FREQ);
 VEC_WRITE(VEC_FREQ3_2, 0x223b);
 VEC_WRITE(VEC_FREQ1_0, 0x61d1);
}
