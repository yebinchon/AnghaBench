
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef void* u32 ;
struct drm_mode_fb_cmd {int bpp; int fb_id; int pitch; int handle; void* height; void* width; int depth; } ;
struct drm_format_info {int* cpp; int depth; } ;
struct drm_client_dev {int name; int file; int dev; } ;
struct drm_client_buffer {TYPE_1__* fb; struct drm_client_dev* client; int pitch; int handle; } ;
struct TYPE_3__ {int comm; } ;


 int ENOENT ;
 int TASK_COMM_LEN ;
 scalar_t__ WARN_ON (int) ;
 struct drm_format_info* drm_format_info (void*) ;
 TYPE_1__* drm_framebuffer_lookup (int ,int ,int ) ;
 int drm_framebuffer_put (TYPE_1__*) ;
 int drm_mode_addfb (int ,struct drm_mode_fb_cmd*,int ) ;
 int strscpy (int ,int ,int ) ;

__attribute__((used)) static int drm_client_buffer_addfb(struct drm_client_buffer *buffer,
       u32 width, u32 height, u32 format)
{
 struct drm_client_dev *client = buffer->client;
 struct drm_mode_fb_cmd fb_req = { };
 const struct drm_format_info *info;
 int ret;

 info = drm_format_info(format);
 fb_req.bpp = info->cpp[0] * 8;
 fb_req.depth = info->depth;
 fb_req.width = width;
 fb_req.height = height;
 fb_req.handle = buffer->handle;
 fb_req.pitch = buffer->pitch;

 ret = drm_mode_addfb(client->dev, &fb_req, client->file);
 if (ret)
  return ret;

 buffer->fb = drm_framebuffer_lookup(client->dev, buffer->client->file, fb_req.fb_id);
 if (WARN_ON(!buffer->fb))
  return -ENOENT;


 drm_framebuffer_put(buffer->fb);

 strscpy(buffer->fb->comm, client->name, TASK_COMM_LEN);

 return 0;
}
