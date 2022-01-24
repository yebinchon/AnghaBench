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
struct drm_device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  DPIO_CFG ; 
 int DPIO_CMN_RESET_N ; 
 int DPIO_MODE_SELECT_0 ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int) ; 

void FUNC2(struct drm_device *dev)
{

	FUNC1(DPIO_CFG, 0);
	FUNC0(DPIO_CFG);
	FUNC1(DPIO_CFG, DPIO_MODE_SELECT_0 | DPIO_CMN_RESET_N);
}