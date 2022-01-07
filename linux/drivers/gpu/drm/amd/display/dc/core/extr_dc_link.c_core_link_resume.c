
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dc_link {scalar_t__ connector_signal; } ;


 scalar_t__ SIGNAL_TYPE_VIRTUAL ;
 int program_hpd_filter (struct dc_link*) ;

void core_link_resume(struct dc_link *link)
{
 if (link->connector_signal != SIGNAL_TYPE_VIRTUAL)
  program_hpd_filter(link);
}
