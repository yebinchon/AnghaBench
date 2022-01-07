
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dc_link {scalar_t__ connector_signal; } ;
struct dc {int link_count; struct dc_link** links; } ;


 scalar_t__ SIGNAL_TYPE_EDP ;

__attribute__((used)) static struct dc_link *get_edp_link(struct dc *dc)
{
 int i;


 for (i = 0; i < dc->link_count; i++) {
  if (dc->links[i]->connector_signal == SIGNAL_TYPE_EDP)
   return dc->links[i];
 }
 return ((void*)0);
}
