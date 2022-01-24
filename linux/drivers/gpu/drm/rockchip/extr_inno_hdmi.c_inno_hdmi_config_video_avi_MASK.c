#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {scalar_t__ colorspace; } ;
union hdmi_infoframe {TYPE_2__ avi; } ;
struct TYPE_3__ {scalar_t__ enc_out_format; } ;
struct inno_hdmi {TYPE_1__ hdmi_data; int /*<<< orphan*/  connector; } ;
struct drm_display_mode {int dummy; } ;

/* Variables and functions */
 scalar_t__ HDMI_COLORSPACE_RGB ; 
 scalar_t__ HDMI_COLORSPACE_YUV422 ; 
 scalar_t__ HDMI_COLORSPACE_YUV444 ; 
 int /*<<< orphan*/  INFOFRAME_AVI ; 
 int FUNC0 (TYPE_2__*,int /*<<< orphan*/ *,struct drm_display_mode*) ; 
 int FUNC1 (struct inno_hdmi*,int,union hdmi_infoframe*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC2(struct inno_hdmi *hdmi,
				      struct drm_display_mode *mode)
{
	union hdmi_infoframe frame;
	int rc;

	rc = FUNC0(&frame.avi,
						      &hdmi->connector,
						      mode);

	if (hdmi->hdmi_data.enc_out_format == HDMI_COLORSPACE_YUV444)
		frame.avi.colorspace = HDMI_COLORSPACE_YUV444;
	else if (hdmi->hdmi_data.enc_out_format == HDMI_COLORSPACE_YUV422)
		frame.avi.colorspace = HDMI_COLORSPACE_YUV422;
	else
		frame.avi.colorspace = HDMI_COLORSPACE_RGB;

	return FUNC1(hdmi, rc, &frame, INFOFRAME_AVI, 0, 0, 0);
}