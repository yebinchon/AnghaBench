
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dc_link {int sync_lt_in_progress; int connector_signal; } ;


 int dp_disable_link_phy (struct dc_link*,int ) ;
 int dp_set_fec_ready (struct dc_link*,int) ;

bool dc_link_dp_sync_lt_end(struct dc_link *link, bool link_down)
{



 if (link_down == 1) {
  dp_disable_link_phy(link, link->connector_signal);



 }

 link->sync_lt_in_progress = 0;
 return 1;
}
