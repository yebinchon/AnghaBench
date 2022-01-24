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
struct sh_dmae_device {int /*<<< orphan*/  shdma_dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct sh_dmae_device*) ; 
 int /*<<< orphan*/  FUNC1 (struct sh_dmae_device*) ; 
 int FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static bool FUNC3(struct sh_dmae_device *shdev)
{
	bool ret;

	/* halt the dma controller */
	FUNC0(shdev);

	/* We cannot detect, which channel caused the error, have to reset all */
	ret = FUNC2(&shdev->shdma_dev);

	FUNC1(shdev);

	return ret;
}