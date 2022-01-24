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
struct drm_crtc {TYPE_3__* dev; } ;
struct dm_crtc_state {struct dc_stream_state* stream; } ;
struct dc_stream_state {TYPE_1__* ctx; } ;
struct TYPE_5__ {int /*<<< orphan*/  dc_lock; } ;
struct amdgpu_device {TYPE_2__ dm; } ;
typedef  enum amdgpu_dm_pipe_crc_source { ____Placeholder_amdgpu_dm_pipe_crc_source } amdgpu_dm_pipe_crc_source ;
struct TYPE_6__ {struct amdgpu_device* dev_private; } ;
struct TYPE_4__ {int /*<<< orphan*/  dc; } ;

/* Variables and functions */
 int /*<<< orphan*/  DITHER_OPTION_DEFAULT ; 
 int /*<<< orphan*/  DITHER_OPTION_TRUN8 ; 
 int EINVAL ; 
 int FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,struct dc_stream_state*,int,int) ; 
 int /*<<< orphan*/  FUNC2 (struct dc_stream_state*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

int FUNC7(struct drm_crtc *crtc,
					struct dm_crtc_state *dm_crtc_state,
					enum amdgpu_dm_pipe_crc_source source)
{
	struct amdgpu_device *adev = crtc->dev->dev_private;
	struct dc_stream_state *stream_state = dm_crtc_state->stream;
	bool enable = FUNC0(source);
	int ret = 0;

	/* Configuration will be deferred to stream enable. */
	if (!stream_state)
		return 0;

	FUNC5(&adev->dm.dc_lock);

	/* Enable CRTC CRC generation if necessary. */
	if (FUNC3(source)) {
		if (!FUNC1(stream_state->ctx->dc,
					     stream_state, enable, enable)) {
			ret = -EINVAL;
			goto unlock;
		}
	}

	/* Configure dithering */
	if (!FUNC4(source))
		FUNC2(stream_state, DITHER_OPTION_TRUN8);
	else
		FUNC2(stream_state,
					    DITHER_OPTION_DEFAULT);

unlock:
	FUNC6(&adev->dm.dc_lock);

	return ret;
}