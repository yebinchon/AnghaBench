
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vmw_stream {int stream_id; } ;
struct vmw_resource {int dev_priv; } ;


 int vmw_overlay_claim (int ,int *) ;
 struct vmw_stream* vmw_stream (struct vmw_resource*) ;

__attribute__((used)) static int vmw_stream_init(struct vmw_resource *res, void *data)
{
 struct vmw_stream *stream = vmw_stream(res);

 return vmw_overlay_claim(res->dev_priv, &stream->stream_id);
}
