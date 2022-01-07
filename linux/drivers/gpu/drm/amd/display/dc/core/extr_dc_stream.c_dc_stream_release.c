
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dc_stream_state {int refcount; } ;


 int dc_stream_free ;
 int kref_put (int *,int ) ;

void dc_stream_release(struct dc_stream_state *stream)
{
 if (stream != ((void*)0)) {
  kref_put(&stream->refcount, dc_stream_free);
 }
}
