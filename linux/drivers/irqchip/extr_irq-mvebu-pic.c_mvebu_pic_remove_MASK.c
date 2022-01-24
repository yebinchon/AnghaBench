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
struct platform_device {int dummy; } ;
struct mvebu_pic {int /*<<< orphan*/  domain; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  mvebu_pic_disable_percpu_irq ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,struct mvebu_pic*,int) ; 
 struct mvebu_pic* FUNC2 (struct platform_device*) ; 

__attribute__((used)) static int FUNC3(struct platform_device *pdev)
{
	struct mvebu_pic *pic = FUNC2(pdev);

	FUNC1(mvebu_pic_disable_percpu_irq, pic, 1);
	FUNC0(pic->domain);

	return 0;
}