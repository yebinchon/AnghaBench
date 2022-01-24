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
typedef  int /*<<< orphan*/  v2_le ;
typedef  int /*<<< orphan*/  v1_le ;
typedef  scalar_t__ uint64_t ;
typedef  int /*<<< orphan*/  uint32_t ;
typedef  int /*<<< orphan*/  __le64 ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,void const*,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,scalar_t__*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC3(void *context, const void *value1_le, const void *value2_le)
{
	__le64 v1_le, v2_le;
	uint64_t b1, b2;
	uint32_t t;

	FUNC1(&v1_le, value1_le, sizeof(v1_le));
	FUNC1(&v2_le, value2_le, sizeof(v2_le));
	FUNC2(FUNC0(v1_le), &b1, &t);
	FUNC2(FUNC0(v2_le), &b2, &t);

	return b1 == b2;
}