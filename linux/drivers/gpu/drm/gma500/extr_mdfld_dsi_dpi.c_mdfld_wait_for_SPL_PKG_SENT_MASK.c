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
typedef  int /*<<< orphan*/  u32 ;
struct drm_device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int DSI_INTR_STATE_SPL_PKG_SENT ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 

__attribute__((used)) static void FUNC4(struct drm_device *dev, u32 pipe)
{
	u32 intr_stat_reg = FUNC1(pipe);
	int timeout = 0;

	FUNC3(500);

	/* This will time out after approximately 2+ seconds */
	while ((timeout < 20000) && (!(FUNC2(intr_stat_reg)
					& DSI_INTR_STATE_SPL_PKG_SENT))) {
		FUNC3(100);
		timeout++;
	}

	if (timeout == 20000)
                FUNC0("MIPI: SPL_PKT_SENT_INTERRUPT was not sent successfully!\n");
}