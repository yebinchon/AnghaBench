#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct mthca_icm_chunk {int npages; TYPE_2__* mem; } ;
struct mthca_dev {TYPE_1__* pdev; } ;
struct TYPE_5__ {int /*<<< orphan*/  length; } ;
struct TYPE_4__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*) ; 

__attribute__((used)) static void FUNC4(struct mthca_dev *dev, struct mthca_icm_chunk *chunk)
{
	int i;

	for (i = 0; i < chunk->npages; ++i) {
		FUNC0(&dev->pdev->dev, chunk->mem[i].length,
				  FUNC1(FUNC3(&chunk->mem[i])),
				  FUNC2(&chunk->mem[i]));
	}
}