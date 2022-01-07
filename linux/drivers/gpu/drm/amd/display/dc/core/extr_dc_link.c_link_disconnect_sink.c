
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dc_link {scalar_t__ dpcd_sink_count; int * local_sink; } ;


 int dc_sink_release (int *) ;

__attribute__((used)) static void link_disconnect_sink(struct dc_link *link)
{
 if (link->local_sink) {
  dc_sink_release(link->local_sink);
  link->local_sink = ((void*)0);
 }

 link->dpcd_sink_count = 0;
}
