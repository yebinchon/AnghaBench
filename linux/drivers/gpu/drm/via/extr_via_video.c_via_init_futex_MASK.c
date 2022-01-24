#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_3__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int /*<<< orphan*/  sarea_priv; int /*<<< orphan*/ * decoder_queue; } ;
typedef  TYPE_1__ drm_via_private_t ;
struct TYPE_5__ {scalar_t__ lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 unsigned int VIA_NR_XVMC_LOCKS ; 
 TYPE_3__* FUNC1 (int /*<<< orphan*/ ,unsigned int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

void FUNC3(drm_via_private_t *dev_priv)
{
	unsigned int i;

	FUNC0("\n");

	for (i = 0; i < VIA_NR_XVMC_LOCKS; ++i) {
		FUNC2(&(dev_priv->decoder_queue[i]));
		FUNC1(dev_priv->sarea_priv, i)->lock = 0;
	}
}