
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vmw_stream {int stream_id; } ;
struct vmw_resource {struct vmw_private* dev_priv; } ;
struct vmw_private {int dummy; } ;


 int WARN_ON_ONCE (int) ;
 int vmw_overlay_unref (struct vmw_private*,int ) ;
 struct vmw_stream* vmw_stream (struct vmw_resource*) ;

__attribute__((used)) static void vmw_stream_hw_destroy(struct vmw_resource *res)
{
 struct vmw_private *dev_priv = res->dev_priv;
 struct vmw_stream *stream = vmw_stream(res);
 int ret;

 ret = vmw_overlay_unref(dev_priv, stream->stream_id);
 WARN_ON_ONCE(ret != 0);
}
