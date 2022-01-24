#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int uint32_t ;
struct psb_intel_sdvo_tv_format {int dummy; } ;
struct TYPE_7__ {int /*<<< orphan*/  base; } ;
struct TYPE_8__ {TYPE_3__ base; } ;
struct psb_intel_sdvo_connector {int format_supported_num; int* tv_format_supported; int /*<<< orphan*/  tv_format; TYPE_4__ base; } ;
struct TYPE_5__ {struct drm_device* dev; } ;
struct TYPE_6__ {TYPE_1__ base; } ;
struct psb_intel_sdvo {size_t tv_format_index; TYPE_2__ base; } ;
struct drm_device {int dummy; } ;
typedef  int /*<<< orphan*/  format_map ;
typedef  int /*<<< orphan*/  format ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  DRM_MODE_PROP_ENUM ; 
 int /*<<< orphan*/  SDVO_CMD_GET_SUPPORTED_TV_FORMATS ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct drm_device*,int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC5 (int*,struct psb_intel_sdvo_tv_format*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int,int) ; 
 int /*<<< orphan*/  FUNC7 (struct psb_intel_sdvo*,int /*<<< orphan*/ ,struct psb_intel_sdvo_tv_format*,int) ; 
 int /*<<< orphan*/  FUNC8 (struct psb_intel_sdvo*,int) ; 
 int /*<<< orphan*/ * tv_format_names ; 

__attribute__((used)) static bool FUNC9(struct psb_intel_sdvo *psb_intel_sdvo,
					  struct psb_intel_sdvo_connector *psb_intel_sdvo_connector,
					  int type)
{
	struct drm_device *dev = psb_intel_sdvo->base.base.dev;
	struct psb_intel_sdvo_tv_format format;
	uint32_t format_map, i;

	if (!FUNC8(psb_intel_sdvo, type))
		return false;

	FUNC1(sizeof(format) != 6);
	if (!FUNC7(psb_intel_sdvo,
				  SDVO_CMD_GET_SUPPORTED_TV_FORMATS,
				  &format, sizeof(format)))
		return false;

	FUNC5(&format_map, &format, FUNC6(sizeof(format_map), sizeof(format)));

	if (format_map == 0)
		return false;

	psb_intel_sdvo_connector->format_supported_num = 0;
	for (i = 0 ; i < FUNC0(tv_format_names); i++)
		if (format_map & (1 << i))
			psb_intel_sdvo_connector->tv_format_supported[psb_intel_sdvo_connector->format_supported_num++] = i;


	psb_intel_sdvo_connector->tv_format =
			FUNC4(dev, DRM_MODE_PROP_ENUM,
					    "mode", psb_intel_sdvo_connector->format_supported_num);
	if (!psb_intel_sdvo_connector->tv_format)
		return false;

	for (i = 0; i < psb_intel_sdvo_connector->format_supported_num; i++)
		FUNC3(
				psb_intel_sdvo_connector->tv_format,
				i, tv_format_names[psb_intel_sdvo_connector->tv_format_supported[i]]);

	psb_intel_sdvo->tv_format_index = psb_intel_sdvo_connector->tv_format_supported[0];
	FUNC2(&psb_intel_sdvo_connector->base.base.base,
				      psb_intel_sdvo_connector->tv_format, 0);
	return true;

}