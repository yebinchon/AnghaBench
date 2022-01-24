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
struct omap_chan {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  CSR ; 
 int /*<<< orphan*/  FUNC0 () ; 
 unsigned int FUNC1 (struct omap_chan*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct omap_chan*,int /*<<< orphan*/ ,unsigned int) ; 

__attribute__((used)) static unsigned FUNC3(struct omap_chan *c)
{
	unsigned val = FUNC1(c, CSR);

	if (!FUNC0())
		FUNC2(c, CSR, val);

	return val;
}