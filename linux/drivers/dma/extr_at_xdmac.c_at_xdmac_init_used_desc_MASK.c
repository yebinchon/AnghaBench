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
struct at_xdmac_desc {int active_xfer; scalar_t__ xfer_size; int /*<<< orphan*/  direction; int /*<<< orphan*/  descs_list; int /*<<< orphan*/  lld; } ;

/* Variables and functions */
 int /*<<< orphan*/  DMA_TRANS_NONE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC2(struct at_xdmac_desc *desc)
{
	FUNC1(&desc->lld, 0, sizeof(desc->lld));
	FUNC0(&desc->descs_list);
	desc->direction = DMA_TRANS_NONE;
	desc->xfer_size = 0;
	desc->active_xfer = false;
}