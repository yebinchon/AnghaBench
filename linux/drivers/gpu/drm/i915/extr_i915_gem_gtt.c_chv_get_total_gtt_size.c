
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;


 int SNB_GMCH_GGMS_MASK ;
 int SNB_GMCH_GGMS_SHIFT ;

__attribute__((used)) static unsigned int chv_get_total_gtt_size(u16 gmch_ctrl)
{
 gmch_ctrl >>= SNB_GMCH_GGMS_SHIFT;
 gmch_ctrl &= SNB_GMCH_GGMS_MASK;

 if (gmch_ctrl)
  return 1 << (20 + gmch_ctrl);

 return 0;
}
