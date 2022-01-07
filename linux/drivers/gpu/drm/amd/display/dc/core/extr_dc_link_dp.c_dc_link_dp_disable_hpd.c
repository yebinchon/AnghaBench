
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct link_encoder {TYPE_1__* funcs; } ;
struct dc_link {struct link_encoder* link_enc; } ;
struct TYPE_2__ {int (* disable_hpd ) (struct link_encoder*) ;int * enable_hpd; } ;


 int stub1 (struct link_encoder*) ;

void dc_link_dp_disable_hpd(const struct dc_link *link)
{
 struct link_encoder *encoder = link->link_enc;

 if (encoder != ((void*)0) && encoder->funcs->enable_hpd != ((void*)0))
  encoder->funcs->disable_hpd(encoder);
}
