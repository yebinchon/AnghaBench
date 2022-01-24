#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  void* u32 ;
struct drm_mode_create_dumb {int bpp; int /*<<< orphan*/  handle; int /*<<< orphan*/  pitch; void* height; void* width; } ;
struct drm_gem_object {int dummy; } ;
struct drm_format_info {int* cpp; } ;
struct drm_device {int dummy; } ;
struct drm_client_dev {int /*<<< orphan*/  file; struct drm_device* dev; } ;
struct drm_client_buffer {struct drm_gem_object* gem; int /*<<< orphan*/  pitch; int /*<<< orphan*/  handle; struct drm_client_dev* client; } ;

/* Variables and functions */
 int ENOENT ; 
 int ENOMEM ; 
 struct drm_client_buffer* FUNC0 (int) ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC1 (struct drm_client_buffer*) ; 
 struct drm_format_info* FUNC2 (void*) ; 
 struct drm_gem_object* FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC4 (struct drm_device*,struct drm_mode_create_dumb*,int /*<<< orphan*/ ) ; 
 struct drm_client_buffer* FUNC5 (int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static struct drm_client_buffer *
FUNC6(struct drm_client_dev *client, u32 width, u32 height, u32 format)
{
	const struct drm_format_info *info = FUNC2(format);
	struct drm_mode_create_dumb dumb_args = { };
	struct drm_device *dev = client->dev;
	struct drm_client_buffer *buffer;
	struct drm_gem_object *obj;
	int ret;

	buffer = FUNC5(sizeof(*buffer), GFP_KERNEL);
	if (!buffer)
		return FUNC0(-ENOMEM);

	buffer->client = client;

	dumb_args.width = width;
	dumb_args.height = height;
	dumb_args.bpp = info->cpp[0] * 8;
	ret = FUNC4(dev, &dumb_args, client->file);
	if (ret)
		goto err_delete;

	buffer->handle = dumb_args.handle;
	buffer->pitch = dumb_args.pitch;

	obj = FUNC3(client->file, dumb_args.handle);
	if (!obj)  {
		ret = -ENOENT;
		goto err_delete;
	}

	buffer->gem = obj;

	return buffer;

err_delete:
	FUNC1(buffer);

	return FUNC0(ret);
}