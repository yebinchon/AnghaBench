
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int hpd_source; } ;
struct dce110_link_encoder {TYPE_1__ base; } ;
typedef enum hpd_source_id { ____Placeholder_hpd_source_id } hpd_source_id ;


 int DIG_BE_CNTL ;
 int DIG_HPD_SELECT ;
 int REG_UPDATE (int ,int ,int) ;

__attribute__((used)) static void hpd_initialize(
 struct dce110_link_encoder *enc110)
{

 enum hpd_source_id hpd_source = enc110->base.hpd_source;

 REG_UPDATE(DIG_BE_CNTL, DIG_HPD_SELECT, hpd_source);
}
