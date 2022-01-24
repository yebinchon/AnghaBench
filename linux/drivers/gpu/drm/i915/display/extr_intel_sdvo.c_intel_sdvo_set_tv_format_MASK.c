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
typedef  int u32 ;
struct intel_sdvo_tv_format {int dummy; } ;
struct intel_sdvo {int dummy; } ;
struct TYPE_2__ {int mode; } ;
struct drm_connector_state {TYPE_1__ tv; } ;
typedef  int /*<<< orphan*/  format_map ;
typedef  int /*<<< orphan*/  format ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  SDVO_CMD_SET_TV_FORMAT ; 
 int FUNC1 (struct intel_sdvo*,int /*<<< orphan*/ ,struct intel_sdvo_tv_format*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct intel_sdvo_tv_format*,int*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct intel_sdvo_tv_format*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (int,int) ; 

__attribute__((used)) static bool FUNC5(struct intel_sdvo *intel_sdvo,
				     const struct drm_connector_state *conn_state)
{
	struct intel_sdvo_tv_format format;
	u32 format_map;

	format_map = 1 << conn_state->tv.mode;
	FUNC3(&format, 0, sizeof(format));
	FUNC2(&format, &format_map, FUNC4(sizeof(format), sizeof(format_map)));

	FUNC0(sizeof(format) != 6);
	return FUNC1(intel_sdvo,
				    SDVO_CMD_SET_TV_FORMAT,
				    &format, sizeof(format));
}