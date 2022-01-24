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
typedef  int /*<<< orphan*/  uint32_t ;
struct vector {int /*<<< orphan*/  struct_size; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 void* FUNC1 (struct vector const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (void*,void const*,int /*<<< orphan*/ ) ; 

void FUNC3(
	const struct vector *vector,
	const void *what,
	uint32_t index)
{
	void *where = FUNC1(vector, index);

	if (!where) {
		FUNC0();
		return;
	}
	FUNC2(
		where,
		what,
		vector->struct_size);
}