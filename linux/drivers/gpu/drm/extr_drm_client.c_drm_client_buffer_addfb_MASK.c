#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  void* u32 ;
struct drm_mode_fb_cmd {int bpp; int /*<<< orphan*/  fb_id; int /*<<< orphan*/  pitch; int /*<<< orphan*/  handle; void* height; void* width; int /*<<< orphan*/  depth; } ;
struct drm_format_info {int* cpp; int /*<<< orphan*/  depth; } ;
struct drm_client_dev {int /*<<< orphan*/  name; int /*<<< orphan*/  file; int /*<<< orphan*/  dev; } ;
struct drm_client_buffer {TYPE_1__* fb; struct drm_client_dev* client; int /*<<< orphan*/  pitch; int /*<<< orphan*/  handle; } ;
struct TYPE_3__ {int /*<<< orphan*/  comm; } ;

/* Variables and functions */
 int ENOENT ; 
 int /*<<< orphan*/  TASK_COMM_LEN ; 
 scalar_t__ FUNC0 (int) ; 
 struct drm_format_info* FUNC1 (void*) ; 
 TYPE_1__* FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 int FUNC4 (int /*<<< orphan*/ ,struct drm_mode_fb_cmd*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC6(struct drm_client_buffer *buffer,
				   u32 width, u32 height, u32 format)
{
	struct drm_client_dev *client = buffer->client;
	struct drm_mode_fb_cmd fb_req = { };
	const struct drm_format_info *info;
	int ret;

	info = FUNC1(format);
	fb_req.bpp = info->cpp[0] * 8;
	fb_req.depth = info->depth;
	fb_req.width = width;
	fb_req.height = height;
	fb_req.handle = buffer->handle;
	fb_req.pitch = buffer->pitch;

	ret = FUNC4(client->dev, &fb_req, client->file);
	if (ret)
		return ret;

	buffer->fb = FUNC2(client->dev, buffer->client->file, fb_req.fb_id);
	if (FUNC0(!buffer->fb))
		return -ENOENT;

	/* drop the reference we picked up in framebuffer lookup */
	FUNC3(buffer->fb);

	FUNC5(buffer->fb->comm, client->name, TASK_COMM_LEN);

	return 0;
}