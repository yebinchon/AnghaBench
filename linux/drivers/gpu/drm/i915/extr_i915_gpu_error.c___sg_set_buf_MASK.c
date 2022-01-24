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
struct scatterlist {unsigned long page_link; unsigned int length; int /*<<< orphan*/  dma_address; int /*<<< orphan*/  offset; } ;
typedef  int /*<<< orphan*/  loff_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (void*) ; 
 scalar_t__ FUNC1 (void*) ; 

__attribute__((used)) static void FUNC2(struct scatterlist *sg,
			 void *addr, unsigned int len, loff_t it)
{
	sg->page_link = (unsigned long)FUNC1(addr);
	sg->offset = FUNC0(addr);
	sg->length = len;
	sg->dma_address = it;
}