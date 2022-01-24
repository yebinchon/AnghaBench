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
struct crypto4xx_core_device {struct crypto4xx_core_device* dev; int /*<<< orphan*/  ce_base; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct crypto4xx_core_device*) ; 
 int /*<<< orphan*/  FUNC1 (struct crypto4xx_core_device*) ; 
 int /*<<< orphan*/  FUNC2 (struct crypto4xx_core_device*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct crypto4xx_core_device*) ; 

__attribute__((used)) static void FUNC5(struct crypto4xx_core_device *core_dev)
{
	FUNC1(core_dev->dev);
	FUNC0(core_dev->dev);
	FUNC2(core_dev->dev);
	FUNC3(core_dev->dev->ce_base);
	FUNC4(core_dev->dev);
	FUNC4(core_dev);
}