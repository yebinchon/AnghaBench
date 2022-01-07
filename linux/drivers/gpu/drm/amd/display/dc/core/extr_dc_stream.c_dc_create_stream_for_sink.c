
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dc_stream_state {int refcount; } ;
struct dc_sink {int dummy; } ;


 int GFP_KERNEL ;
 int construct (struct dc_stream_state*,struct dc_sink*) ;
 int kref_init (int *) ;
 struct dc_stream_state* kzalloc (int,int ) ;

struct dc_stream_state *dc_create_stream_for_sink(
  struct dc_sink *sink)
{
 struct dc_stream_state *stream;

 if (sink == ((void*)0))
  return ((void*)0);

 stream = kzalloc(sizeof(struct dc_stream_state), GFP_KERNEL);
 if (stream == ((void*)0))
  return ((void*)0);

 construct(stream, sink);

 kref_init(&stream->refcount);

 return stream;
}
