#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct udl_framebuffer {TYPE_3__* obj; int /*<<< orphan*/  active_16; } ;
struct drm_framebuffer {int /*<<< orphan*/  dev; } ;
struct drm_file {int dummy; } ;
struct drm_clip_rect {scalar_t__ y1; scalar_t__ y2; scalar_t__ x1; scalar_t__ x2; } ;
struct TYPE_5__ {TYPE_1__* import_attach; } ;
struct TYPE_6__ {TYPE_2__ base; } ;
struct TYPE_4__ {int /*<<< orphan*/  dmabuf; } ;

/* Variables and functions */
 int /*<<< orphan*/  DMA_FROM_DEVICE ; 
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 struct udl_framebuffer* FUNC4 (struct drm_framebuffer*) ; 
 int FUNC5 (struct udl_framebuffer*,scalar_t__,scalar_t__,scalar_t__,scalar_t__) ; 

__attribute__((used)) static int FUNC6(struct drm_framebuffer *fb,
				      struct drm_file *file,
				      unsigned flags, unsigned color,
				      struct drm_clip_rect *clips,
				      unsigned num_clips)
{
	struct udl_framebuffer *ufb = FUNC4(fb);
	int i;
	int ret = 0;

	FUNC2(fb->dev);

	if (!ufb->active_16)
		goto unlock;

	if (ufb->obj->base.import_attach) {
		ret = FUNC0(ufb->obj->base.import_attach->dmabuf,
					       DMA_FROM_DEVICE);
		if (ret)
			goto unlock;
	}

	for (i = 0; i < num_clips; i++) {
		ret = FUNC5(ufb, clips[i].x1, clips[i].y1,
				  clips[i].x2 - clips[i].x1,
				  clips[i].y2 - clips[i].y1);
		if (ret)
			break;
	}

	if (ufb->obj->base.import_attach) {
		ret = FUNC1(ufb->obj->base.import_attach->dmabuf,
					     DMA_FROM_DEVICE);
	}

 unlock:
	FUNC3(fb->dev);

	return ret;
}