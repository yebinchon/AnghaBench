
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dc_sink_init_data {int dummy; } ;
struct dc_sink {int refcount; } ;


 int GFP_KERNEL ;
 int construct (struct dc_sink*,struct dc_sink_init_data const*) ;
 int kfree (struct dc_sink*) ;
 int kref_init (int *) ;
 struct dc_sink* kzalloc (int,int ) ;

struct dc_sink *dc_sink_create(const struct dc_sink_init_data *init_params)
{
 struct dc_sink *sink = kzalloc(sizeof(*sink), GFP_KERNEL);

 if (((void*)0) == sink)
  goto alloc_fail;

 if (0 == construct(sink, init_params))
  goto construct_fail;

 kref_init(&sink->refcount);

 return sink;

construct_fail:
 kfree(sink);

alloc_fail:
 return ((void*)0);
}
