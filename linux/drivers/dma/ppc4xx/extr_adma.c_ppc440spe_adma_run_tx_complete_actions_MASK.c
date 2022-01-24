#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {scalar_t__ cookie; } ;
struct ppc440spe_adma_desc_slot {TYPE_1__ async_tx; } ;
struct ppc440spe_adma_chan {int dummy; } ;
typedef  scalar_t__ dma_cookie_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static dma_cookie_t FUNC4(
		struct ppc440spe_adma_desc_slot *desc,
		struct ppc440spe_adma_chan *chan,
		dma_cookie_t cookie)
{
	FUNC0(desc->async_tx.cookie < 0);
	if (desc->async_tx.cookie > 0) {
		cookie = desc->async_tx.cookie;
		desc->async_tx.cookie = 0;

		FUNC1(&desc->async_tx);
		/* call the callback (must not sleep or submit new
		 * operations to this channel)
		 */
		FUNC3(&desc->async_tx, NULL);
	}

	/* run dependent operations */
	FUNC2(&desc->async_tx);

	return cookie;
}