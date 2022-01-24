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
struct intel_runtime_info {int /*<<< orphan*/  cs_timestamp_frequency_khz; int /*<<< orphan*/  sseu; } ;
struct drm_printer {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct drm_printer*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,struct drm_printer*) ; 

void FUNC2(const struct intel_runtime_info *info,
				    struct drm_printer *p)
{
	FUNC1(&info->sseu, p);

	FUNC0(p, "CS timestamp frequency: %u kHz\n",
		   info->cs_timestamp_frequency_khz);
}