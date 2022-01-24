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
struct TYPE_4__ {int /*<<< orphan*/  status; } ;
struct TYPE_5__ {TYPE_1__ iec; } ;
struct TYPE_6__ {TYPE_2__ codec_params; } ;
struct mtk_hdmi {TYPE_3__ aud_param; } ;
struct drm_display_mode {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct mtk_hdmi*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct mtk_hdmi*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct mtk_hdmi*) ; 
 int /*<<< orphan*/  FUNC3 (struct mtk_hdmi*,struct drm_display_mode*) ; 
 int /*<<< orphan*/  FUNC4 (struct mtk_hdmi*) ; 
 int /*<<< orphan*/  FUNC5 (struct mtk_hdmi*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct mtk_hdmi*) ; 
 int /*<<< orphan*/  FUNC7 (int,int) ; 

__attribute__((used)) static int FUNC8(struct mtk_hdmi *hdmi,
				      struct drm_display_mode *display_mode)
{
	FUNC4(hdmi);
	FUNC0(hdmi, false);

	FUNC2(hdmi);
	FUNC3(hdmi, display_mode);
	FUNC5(hdmi,
			hdmi->aud_param.codec_params.iec.status);

	FUNC7(50, 100);

	FUNC1(hdmi, true);
	FUNC0(hdmi, true);
	FUNC6(hdmi);
	return 0;
}