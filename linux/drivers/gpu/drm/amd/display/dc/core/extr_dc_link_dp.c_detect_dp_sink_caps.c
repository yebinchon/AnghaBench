
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dc_link {int dummy; } ;


 int retrieve_link_cap (struct dc_link*) ;

bool detect_dp_sink_caps(struct dc_link *link)
{
 return retrieve_link_cap(link);
}
