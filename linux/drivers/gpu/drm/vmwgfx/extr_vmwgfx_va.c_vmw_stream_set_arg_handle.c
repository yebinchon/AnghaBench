
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct drm_vmw_stream_arg {int stream_id; } ;



__attribute__((used)) static void vmw_stream_set_arg_handle(void *data, u32 handle)
{
 struct drm_vmw_stream_arg *arg = (struct drm_vmw_stream_arg *)data;

 arg->stream_id = handle;
}
