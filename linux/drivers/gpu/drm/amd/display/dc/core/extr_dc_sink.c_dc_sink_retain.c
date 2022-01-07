
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dc_sink {int refcount; } ;


 int kref_get (int *) ;

void dc_sink_retain(struct dc_sink *sink)
{
 kref_get(&sink->refcount);
}
