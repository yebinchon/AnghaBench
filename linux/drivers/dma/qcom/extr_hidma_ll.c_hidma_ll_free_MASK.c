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
typedef  size_t u32 ;
struct hidma_tre {int /*<<< orphan*/  allocated; } ;
struct hidma_lldev {size_t nr_tres; int /*<<< orphan*/  dev; struct hidma_tre* trepool; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,size_t) ; 

void FUNC3(struct hidma_lldev *lldev, u32 tre_ch)
{
	struct hidma_tre *tre;

	if (tre_ch >= lldev->nr_tres) {
		FUNC2(lldev->dev, "invalid TRE number in free:%d", tre_ch);
		return;
	}

	tre = &lldev->trepool[tre_ch];
	if (FUNC0(&tre->allocated) != true) {
		FUNC2(lldev->dev, "trying to free an unused TRE:%d", tre_ch);
		return;
	}

	FUNC1(&tre->allocated, 0);
}