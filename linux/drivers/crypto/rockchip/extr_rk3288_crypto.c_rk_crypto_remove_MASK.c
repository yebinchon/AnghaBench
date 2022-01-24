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
struct rk_crypto_info {int /*<<< orphan*/  queue_task; int /*<<< orphan*/  done_task; } ;
struct platform_device {int dummy; } ;

/* Variables and functions */
 struct rk_crypto_info* FUNC0 (struct platform_device*) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC3(struct platform_device *pdev)
{
	struct rk_crypto_info *crypto_tmp = FUNC0(pdev);

	FUNC1();
	FUNC2(&crypto_tmp->done_task);
	FUNC2(&crypto_tmp->queue_task);
	return 0;
}