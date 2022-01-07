
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dc_stream_state {int refcount; } ;


 int kref_get (int *) ;

void dc_stream_retain(struct dc_stream_state *stream)
{
 kref_get(&stream->refcount);
}
