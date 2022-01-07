
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint8_t ;
typedef int uint32_t ;
struct link_encoder {TYPE_1__* funcs; } ;
struct encoder_set_dp_phy_pattern_param {int dp_phy_pattern; int dp_panel_mode; int custom_pattern_size; int * custom_pattern; int member_0; } ;
struct dc_link {struct link_encoder* link_enc; } ;
typedef enum dp_test_pattern { ____Placeholder_dp_test_pattern } dp_test_pattern ;
struct TYPE_2__ {int (* dp_set_phy_pattern ) (struct link_encoder*,struct encoder_set_dp_phy_pattern_param*) ;} ;


 int dp_get_panel_mode (struct dc_link*) ;
 int stub1 (struct link_encoder*,struct encoder_set_dp_phy_pattern_param*) ;

void dp_set_hw_test_pattern(
 struct dc_link *link,
 enum dp_test_pattern test_pattern,
 uint8_t *custom_pattern,
 uint32_t custom_pattern_size)
{
 struct encoder_set_dp_phy_pattern_param pattern_param = {0};
 struct link_encoder *encoder = link->link_enc;

 pattern_param.dp_phy_pattern = test_pattern;
 pattern_param.custom_pattern = custom_pattern;
 pattern_param.custom_pattern_size = custom_pattern_size;
 pattern_param.dp_panel_mode = dp_get_panel_mode(link);

 encoder->funcs->dp_set_phy_pattern(encoder, &pattern_param);
}
