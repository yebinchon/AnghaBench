
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct link_training_settings {int dummy; } ;
struct link_encoder {TYPE_1__* funcs; } ;
struct dc_link {struct link_encoder* link_enc; } ;
struct TYPE_2__ {int (* dp_set_lane_settings ) (struct link_encoder*,struct link_training_settings const*) ;} ;


 int stub1 (struct link_encoder*,struct link_training_settings const*) ;

void dp_set_hw_lane_settings(
 struct dc_link *link,
 const struct link_training_settings *link_settings)
{
 struct link_encoder *encoder = link->link_enc;


 encoder->funcs->dp_set_lane_settings(encoder, link_settings);
}
