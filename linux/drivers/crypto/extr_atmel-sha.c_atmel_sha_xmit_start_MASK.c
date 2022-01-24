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
struct TYPE_2__ {scalar_t__ has_dma; } ;
struct atmel_sha_dev {TYPE_1__ caps; } ;
typedef  int /*<<< orphan*/  dma_addr_t ;

/* Variables and functions */
 int FUNC0 (struct atmel_sha_dev*,int /*<<< orphan*/ ,size_t,int /*<<< orphan*/ ,size_t,int) ; 
 int FUNC1 (struct atmel_sha_dev*,int /*<<< orphan*/ ,size_t,int /*<<< orphan*/ ,size_t,int) ; 

__attribute__((used)) static int FUNC2(struct atmel_sha_dev *dd, dma_addr_t dma_addr1,
		size_t length1, dma_addr_t dma_addr2, size_t length2, int final)
{
	if (dd->caps.has_dma)
		return FUNC0(dd, dma_addr1, length1,
				dma_addr2, length2, final);
	else
		return FUNC1(dd, dma_addr1, length1,
				dma_addr2, length2, final);
}