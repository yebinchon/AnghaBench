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
typedef  int uint32_t ;
struct psb_intel_sdvo_tv_format {int dummy; } ;
struct psb_intel_sdvo {int tv_format_index; } ;
typedef  int /*<<< orphan*/  format_map ;
typedef  int /*<<< orphan*/  format ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  SDVO_CMD_SET_TV_FORMAT ; 
 int /*<<< orphan*/  FUNC1 (struct psb_intel_sdvo_tv_format*,int*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct psb_intel_sdvo_tv_format*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int,int) ; 
 int FUNC4 (struct psb_intel_sdvo*,int /*<<< orphan*/ ,struct psb_intel_sdvo_tv_format*,int) ; 

__attribute__((used)) static bool FUNC5(struct psb_intel_sdvo *psb_intel_sdvo)
{
	struct psb_intel_sdvo_tv_format format;
	uint32_t format_map;

	format_map = 1 << psb_intel_sdvo->tv_format_index;
	FUNC2(&format, 0, sizeof(format));
	FUNC1(&format, &format_map, FUNC3(sizeof(format), sizeof(format_map)));

	FUNC0(sizeof(format) != 6);
	return FUNC4(psb_intel_sdvo,
				    SDVO_CMD_SET_TV_FORMAT,
				    &format, sizeof(format));
}