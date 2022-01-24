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

/* Variables and functions */
 int GFP_KERNEL ; 
 int __GFP_NOMEMALLOC ; 
 int /*<<< orphan*/  FUNC0 (size_t) ; 
 int /*<<< orphan*/  FUNC1 (size_t) ; 
 void* FUNC2 (size_t,int,int) ; 

__attribute__((used)) static void *FUNC3(size_t alloc_size, int node)
{
	void *p;

	if (!FUNC0(alloc_size))
		return NULL;

	p = FUNC2(alloc_size, GFP_KERNEL | __GFP_NOMEMALLOC, node);
	if (p)
		return p;

	FUNC1(alloc_size);

	return NULL;
}