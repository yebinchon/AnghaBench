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
typedef  int /*<<< orphan*/  u64 ;
typedef  int /*<<< orphan*/  u32 ;
struct core_dump_iterator {scalar_t__ data; TYPE_1__* hdr; } ;
struct TYPE_2__ {int /*<<< orphan*/  iova; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct core_dump_iterator*,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__,void*,size_t) ; 

__attribute__((used)) static void FUNC3(struct core_dump_iterator *iter, u32 type,
	void *ptr, size_t size, u64 iova)
{
	FUNC2(iter->data, ptr, size);

	iter->hdr->iova = FUNC0(iova);

	FUNC1(iter, type, iter->data + size);
}