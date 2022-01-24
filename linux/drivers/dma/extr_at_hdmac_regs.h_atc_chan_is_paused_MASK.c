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
struct at_dma_chan {int /*<<< orphan*/  status; } ;

/* Variables and functions */
 int /*<<< orphan*/  ATC_IS_PAUSED ; 
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static inline int FUNC1(struct at_dma_chan *atchan)
{
	return FUNC0(ATC_IS_PAUSED, &atchan->status);
}