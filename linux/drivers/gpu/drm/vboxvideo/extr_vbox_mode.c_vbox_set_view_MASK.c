#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct vbva_infoview {int view_index; scalar_t__ max_screen_size; scalar_t__ view_size; scalar_t__ view_offset; } ;
struct vbox_private {int /*<<< orphan*/  guest_pool; scalar_t__ available_vram_size; } ;
struct vbox_crtc {int crtc_id; scalar_t__ fb_offset; } ;
struct drm_crtc {TYPE_1__* dev; } ;
struct TYPE_2__ {struct vbox_private* dev_private; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  HGSMI_CH_VBVA ; 
 int /*<<< orphan*/  VBVA_INFO_VIEW ; 
 int VBVA_MIN_BUFFER_SIZE ; 
 struct vbva_infoview* FUNC0 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,struct vbva_infoview*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,struct vbva_infoview*) ; 
 struct vbox_crtc* FUNC3 (struct drm_crtc*) ; 

__attribute__((used)) static int FUNC4(struct drm_crtc *crtc)
{
	struct vbox_crtc *vbox_crtc = FUNC3(crtc);
	struct vbox_private *vbox = crtc->dev->dev_private;
	struct vbva_infoview *p;

	/*
	 * Tell the host about the view.  This design originally targeted the
	 * Windows XP driver architecture and assumed that each screen would
	 * have a dedicated frame buffer with the command buffer following it,
	 * the whole being a "view".  The host works out which screen a command
	 * buffer belongs to by checking whether it is in the first view, then
	 * whether it is in the second and so on.  The first match wins.  We
	 * cheat around this by making the first view be the managed memory
	 * plus the first command buffer, the second the same plus the second
	 * buffer and so on.
	 */
	p = FUNC0(vbox->guest_pool, sizeof(*p),
			       HGSMI_CH_VBVA, VBVA_INFO_VIEW);
	if (!p)
		return -ENOMEM;

	p->view_index = vbox_crtc->crtc_id;
	p->view_offset = vbox_crtc->fb_offset;
	p->view_size = vbox->available_vram_size - vbox_crtc->fb_offset +
		       vbox_crtc->crtc_id * VBVA_MIN_BUFFER_SIZE;
	p->max_screen_size = vbox->available_vram_size - vbox_crtc->fb_offset;

	FUNC2(vbox->guest_pool, p);
	FUNC1(vbox->guest_pool, p);

	return 0;
}