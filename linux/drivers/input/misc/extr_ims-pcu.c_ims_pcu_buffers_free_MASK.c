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
struct ims_pcu {int /*<<< orphan*/  ctrl_dma; int /*<<< orphan*/  urb_ctrl_buf; int /*<<< orphan*/  max_ctrl_size; int /*<<< orphan*/  udev; int /*<<< orphan*/  urb_ctrl; int /*<<< orphan*/  urb_out_buf; int /*<<< orphan*/  read_dma; int /*<<< orphan*/  urb_in_buf; int /*<<< orphan*/  max_out_size; int /*<<< orphan*/  urb_in; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC4(struct ims_pcu *pcu)
{
	FUNC3(pcu->urb_in);
	FUNC2(pcu->urb_in);

	FUNC1(pcu->udev, pcu->max_out_size,
			  pcu->urb_in_buf, pcu->read_dma);

	FUNC0(pcu->urb_out_buf);

	FUNC3(pcu->urb_ctrl);
	FUNC2(pcu->urb_ctrl);

	FUNC1(pcu->udev, pcu->max_ctrl_size,
			  pcu->urb_ctrl_buf, pcu->ctrl_dma);
}