
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dc_sink {int dummy; } ;
struct dc_link {struct dc_sink* local_sink; } ;


 int dc_sink_release (struct dc_sink*) ;

__attribute__((used)) static void link_disconnect_remap(struct dc_sink *prev_sink, struct dc_link *link)
{
 dc_sink_release(link->local_sink);
 link->local_sink = prev_sink;
}
