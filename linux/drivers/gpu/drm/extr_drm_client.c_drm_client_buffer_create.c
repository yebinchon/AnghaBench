
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef void* u32 ;
struct drm_mode_create_dumb {int bpp; int handle; int pitch; void* height; void* width; } ;
struct drm_gem_object {int dummy; } ;
struct drm_format_info {int* cpp; } ;
struct drm_device {int dummy; } ;
struct drm_client_dev {int file; struct drm_device* dev; } ;
struct drm_client_buffer {struct drm_gem_object* gem; int pitch; int handle; struct drm_client_dev* client; } ;


 int ENOENT ;
 int ENOMEM ;
 struct drm_client_buffer* ERR_PTR (int) ;
 int GFP_KERNEL ;
 int drm_client_buffer_delete (struct drm_client_buffer*) ;
 struct drm_format_info* drm_format_info (void*) ;
 struct drm_gem_object* drm_gem_object_lookup (int ,int ) ;
 int drm_mode_create_dumb (struct drm_device*,struct drm_mode_create_dumb*,int ) ;
 struct drm_client_buffer* kzalloc (int,int ) ;

__attribute__((used)) static struct drm_client_buffer *
drm_client_buffer_create(struct drm_client_dev *client, u32 width, u32 height, u32 format)
{
 const struct drm_format_info *info = drm_format_info(format);
 struct drm_mode_create_dumb dumb_args = { };
 struct drm_device *dev = client->dev;
 struct drm_client_buffer *buffer;
 struct drm_gem_object *obj;
 int ret;

 buffer = kzalloc(sizeof(*buffer), GFP_KERNEL);
 if (!buffer)
  return ERR_PTR(-ENOMEM);

 buffer->client = client;

 dumb_args.width = width;
 dumb_args.height = height;
 dumb_args.bpp = info->cpp[0] * 8;
 ret = drm_mode_create_dumb(dev, &dumb_args, client->file);
 if (ret)
  goto err_delete;

 buffer->handle = dumb_args.handle;
 buffer->pitch = dumb_args.pitch;

 obj = drm_gem_object_lookup(client->file, dumb_args.handle);
 if (!obj) {
  ret = -ENOENT;
  goto err_delete;
 }

 buffer->gem = obj;

 return buffer;

err_delete:
 drm_client_buffer_delete(buffer);

 return ERR_PTR(ret);
}
