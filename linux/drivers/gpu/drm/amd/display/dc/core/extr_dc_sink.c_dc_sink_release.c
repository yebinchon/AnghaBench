
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dc_sink {int refcount; } ;


 int dc_sink_free ;
 int kref_put (int *,int ) ;

void dc_sink_release(struct dc_sink *sink)
{
 kref_put(&sink->refcount, dc_sink_free);
}
