
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;


 int BDW_GMCH_GGMS_MASK ;
 int BDW_GMCH_GGMS_SHIFT ;

__attribute__((used)) static unsigned int gen8_get_total_gtt_size(u16 bdw_gmch_ctl)
{
 bdw_gmch_ctl >>= BDW_GMCH_GGMS_SHIFT;
 bdw_gmch_ctl &= BDW_GMCH_GGMS_MASK;
 if (bdw_gmch_ctl)
  bdw_gmch_ctl = 1 << bdw_gmch_ctl;







 return bdw_gmch_ctl << 20;
}
