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
typedef  int /*<<< orphan*/  uint8_t ;
struct psb_intel_sdvo {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  SDVO_CMD_SET_COLORIMETRY ; 
 int FUNC0 (struct psb_intel_sdvo*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static bool FUNC1(struct psb_intel_sdvo *psb_intel_sdvo,
				       uint8_t mode)
{
	return FUNC0(psb_intel_sdvo, SDVO_CMD_SET_COLORIMETRY, &mode, 1);
}