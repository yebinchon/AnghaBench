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
struct talitos_ptr {int /*<<< orphan*/  eptr; void* len; void* len1; int /*<<< orphan*/  ptr; } ;
typedef  int /*<<< orphan*/  dma_addr_t ;

/* Variables and functions */
 void* FUNC0 (unsigned int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC4(struct talitos_ptr *ptr, dma_addr_t dma_addr,
			   unsigned int len, bool is_sec1)
{
	ptr->ptr = FUNC1(FUNC2(dma_addr));
	if (is_sec1) {
		ptr->len1 = FUNC0(len);
	} else {
		ptr->len = FUNC0(len);
		ptr->eptr = FUNC3(dma_addr);
	}
}