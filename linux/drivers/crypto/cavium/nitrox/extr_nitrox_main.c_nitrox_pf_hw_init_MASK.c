#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct nitrox_device {TYPE_1__* pdev; } ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*) ; 
 int FUNC1 (struct nitrox_device*) ; 
 int /*<<< orphan*/  FUNC2 (struct nitrox_device*) ; 
 int /*<<< orphan*/  FUNC3 (struct nitrox_device*) ; 
 int /*<<< orphan*/  FUNC4 (struct nitrox_device*) ; 
 int /*<<< orphan*/  FUNC5 (struct nitrox_device*) ; 
 int /*<<< orphan*/  FUNC6 (struct nitrox_device*) ; 
 int /*<<< orphan*/  FUNC7 (struct nitrox_device*) ; 
 int /*<<< orphan*/  FUNC8 (struct nitrox_device*) ; 
 int /*<<< orphan*/  FUNC9 (struct nitrox_device*) ; 
 int /*<<< orphan*/  FUNC10 (struct nitrox_device*) ; 
 int /*<<< orphan*/  FUNC11 (struct nitrox_device*) ; 
 int /*<<< orphan*/  FUNC12 (struct nitrox_device*) ; 
 int FUNC13 (struct nitrox_device*) ; 

__attribute__((used)) static int FUNC14(struct nitrox_device *ndev)
{
	int err;

	err = FUNC1(ndev);
	if (err) {
		FUNC0(&ndev->pdev->dev, "BIST check failed\n");
		return err;
	}
	/* get cores information */
	FUNC12(ndev);

	FUNC8(ndev);
	FUNC2(ndev);
	FUNC9(ndev);
	FUNC10(ndev);
	FUNC5(ndev);
	/* configure IO units */
	FUNC3(ndev);
	FUNC4(ndev);
	/* configure Local Buffer Cache */
	FUNC7(ndev);
	FUNC11(ndev);

	/* load firmware on cores */
	err = FUNC13(ndev);
	if (err)
		return err;

	FUNC6(ndev);

	return 0;
}