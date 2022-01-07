
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int hpd_source; } ;
struct dcn10_link_encoder {TYPE_1__ base; } ;
typedef enum hpd_source_id { ____Placeholder_hpd_source_id } hpd_source_id ;


 int AUX_CONTROL ;
 int AUX_DPHY_RX_CONTROL0 ;
 int AUX_HPD_SEL ;
 int AUX_LS_READ_EN ;
 int AUX_REG_UPDATE (int ,int ,int ) ;
 int AUX_REG_UPDATE_2 (int ,int ,int,int ,int ) ;
 int AUX_RX_RECEIVE_WINDOW ;

void dcn10_aux_initialize(struct dcn10_link_encoder *enc10)
{
 enum hpd_source_id hpd_source = enc10->base.hpd_source;

 AUX_REG_UPDATE_2(AUX_CONTROL,
   AUX_HPD_SEL, hpd_source,
   AUX_LS_READ_EN, 0);


 AUX_REG_UPDATE(AUX_DPHY_RX_CONTROL0,
   AUX_RX_RECEIVE_WINDOW, 0);
}
