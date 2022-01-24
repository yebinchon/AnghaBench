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
struct radeon_device {int dummy; } ;
typedef  enum radeon_hpd_id { ____Placeholder_radeon_hpd_id } radeon_hpd_id ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int DC_HPDx_SENSE ; 
 int RADEON_HPD_NONE ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 

bool FUNC2(struct radeon_device *rdev, enum radeon_hpd_id hpd)
{
	if (hpd == RADEON_HPD_NONE)
		return false;

	return !!(FUNC1(FUNC0(hpd)) & DC_HPDx_SENSE);
}