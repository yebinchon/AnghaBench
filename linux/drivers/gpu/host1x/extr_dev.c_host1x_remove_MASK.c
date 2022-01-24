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
struct host1x {int /*<<< orphan*/  group; scalar_t__ domain; int /*<<< orphan*/  iova; int /*<<< orphan*/  clk; int /*<<< orphan*/  rst; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct host1x*) ; 
 int /*<<< orphan*/  FUNC2 (struct host1x*) ; 
 int /*<<< orphan*/  FUNC3 (struct host1x*) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 () ; 
 struct host1x* FUNC8 (struct platform_device*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC11(struct platform_device *pdev)
{
	struct host1x *host = FUNC8(pdev);

	FUNC3(host);
	FUNC1(host);
	FUNC2(host);
	FUNC10(host->rst);
	FUNC0(host->clk);

	if (host->domain) {
		FUNC9(&host->iova);
		FUNC4(host->domain, host->group);
		FUNC5(host->domain);
		FUNC7();
		FUNC6(host->group);
	}

	return 0;
}