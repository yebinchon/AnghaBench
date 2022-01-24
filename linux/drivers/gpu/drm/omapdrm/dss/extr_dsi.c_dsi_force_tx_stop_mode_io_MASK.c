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
struct dsi_data {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  DSI_TIMING1 ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int EIO ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int,int,int) ; 
 int /*<<< orphan*/  FUNC2 (struct dsi_data*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct dsi_data*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct dsi_data*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC5(struct dsi_data *dsi)
{
	u32 r;

	r = FUNC2(dsi, DSI_TIMING1);
	r = FUNC1(r, 1, 15, 15);	/* FORCE_TX_STOP_MODE_IO */
	FUNC3(dsi, DSI_TIMING1, r);

	if (!FUNC4(dsi, DSI_TIMING1, 15, 0)) {
		FUNC0("TX_STOP bit not going down\n");
		return -EIO;
	}

	return 0;
}