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
struct rcar_dmac {int dummy; } ;
struct platform_device {int dummy; } ;

/* Variables and functions */
 struct rcar_dmac* FUNC0 (struct platform_device*) ; 
 int /*<<< orphan*/  FUNC1 (struct rcar_dmac*) ; 

__attribute__((used)) static void FUNC2(struct platform_device *pdev)
{
	struct rcar_dmac *dmac = FUNC0(pdev);

	FUNC1(dmac);
}