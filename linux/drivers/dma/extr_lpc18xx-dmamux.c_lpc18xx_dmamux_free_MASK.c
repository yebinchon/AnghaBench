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
struct lpc18xx_dmamux_data {int /*<<< orphan*/  lock; } ;
struct lpc18xx_dmamux {int busy; } ;
struct device {int dummy; } ;

/* Variables and functions */
 struct lpc18xx_dmamux_data* FUNC0 (struct device*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static void FUNC3(struct device *dev, void *route_data)
{
	struct lpc18xx_dmamux_data *dmamux = FUNC0(dev);
	struct lpc18xx_dmamux *mux = route_data;
	unsigned long flags;

	FUNC1(&dmamux->lock, flags);
	mux->busy = false;
	FUNC2(&dmamux->lock, flags);
}