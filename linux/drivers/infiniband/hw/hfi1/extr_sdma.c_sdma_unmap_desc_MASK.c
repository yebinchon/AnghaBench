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
struct sdma_desc {int dummy; } ;
struct hfi1_devdata {TYPE_1__* pcidev; } ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  DMA_TO_DEVICE ; 
#define  SDMA_MAP_PAGE 129 
#define  SDMA_MAP_SINGLE 128 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct sdma_desc*) ; 
 int /*<<< orphan*/  FUNC3 (struct sdma_desc*) ; 
 int FUNC4 (struct sdma_desc*) ; 

__attribute__((used)) static inline void FUNC5(
	struct hfi1_devdata *dd,
	struct sdma_desc *descp)
{
	switch (FUNC4(descp)) {
	case SDMA_MAP_SINGLE:
		FUNC1(
			&dd->pcidev->dev,
			FUNC2(descp),
			FUNC3(descp),
			DMA_TO_DEVICE);
		break;
	case SDMA_MAP_PAGE:
		FUNC0(
			&dd->pcidev->dev,
			FUNC2(descp),
			FUNC3(descp),
			DMA_TO_DEVICE);
		break;
	}
}