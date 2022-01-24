#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_5__ ;
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct seq_file {struct drm_connector* private; } ;
struct TYPE_10__ {int /*<<< orphan*/  mutex; int /*<<< orphan*/  connection_mutex; } ;
struct drm_device {TYPE_5__ mode_config; } ;
struct drm_crtc {int /*<<< orphan*/  mutex; int /*<<< orphan*/ * state; } ;
struct TYPE_9__ {unsigned int bpc; } ;
struct drm_connector {TYPE_4__ display_info; TYPE_1__* state; struct drm_device* dev; } ;
struct dm_crtc_state {TYPE_3__* stream; } ;
struct TYPE_7__ {int display_color_depth; } ;
struct TYPE_8__ {TYPE_2__ timing; } ;
struct TYPE_6__ {struct drm_crtc* crtc; } ;

/* Variables and functions */
#define  COLOR_DEPTH_101010 132 
#define  COLOR_DEPTH_121212 131 
#define  COLOR_DEPTH_161616 130 
#define  COLOR_DEPTH_666 129 
#define  COLOR_DEPTH_888 128 
 int ENODEV ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct seq_file*,char*,unsigned int) ; 
 struct dm_crtc_state* FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC6(struct seq_file *m, void *data)
{
	struct drm_connector *connector = m->private;
	struct drm_device *dev = connector->dev;
	struct drm_crtc *crtc = NULL;
	struct dm_crtc_state *dm_crtc_state = NULL;
	int res = -ENODEV;
	unsigned int bpc;

	FUNC2(&dev->mode_config.mutex);
	FUNC0(&dev->mode_config.connection_mutex, NULL);

	if (connector->state == NULL)
		goto unlock;

	crtc = connector->state->crtc;
	if (crtc == NULL)
		goto unlock;

	FUNC0(&crtc->mutex, NULL);
	if (crtc->state == NULL)
		goto unlock;

	dm_crtc_state = FUNC5(crtc->state);
	if (dm_crtc_state->stream == NULL)
		goto unlock;

	switch (dm_crtc_state->stream->timing.display_color_depth) {
	case COLOR_DEPTH_666:
		bpc = 6;
		break;
	case COLOR_DEPTH_888:
		bpc = 8;
		break;
	case COLOR_DEPTH_101010:
		bpc = 10;
		break;
	case COLOR_DEPTH_121212:
		bpc = 12;
		break;
	case COLOR_DEPTH_161616:
		bpc = 16;
		break;
	default:
		goto unlock;
	}

	FUNC4(m, "Current: %u\n", bpc);
	FUNC4(m, "Maximum: %u\n", connector->display_info.bpc);
	res = 0;

unlock:
	if (crtc)
		FUNC1(&crtc->mutex);

	FUNC1(&dev->mode_config.connection_mutex);
	FUNC3(&dev->mode_config.mutex);

	return res;
}