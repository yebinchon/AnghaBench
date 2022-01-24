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
typedef  int /*<<< orphan*/  u8 ;
typedef  int /*<<< orphan*/  u64 ;
typedef  int /*<<< orphan*/  __be64 ;
typedef  int /*<<< orphan*/  __be32 ;
typedef  int /*<<< orphan*/  __be16 ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*,int) ; 

__attribute__((used)) static void FUNC4(int offset, int size, u64 val, void *structure)
{
	switch (size * 8) {
	case 8:  *(    u8 *) (structure + offset) = val; break;
	case 16: *(__be16 *) (structure + offset) = FUNC0(val); break;
	case 32: *(__be32 *) (structure + offset) = FUNC1(val); break;
	case 64: *(__be64 *) (structure + offset) = FUNC2(val); break;
	default:
		FUNC3("Field size %d bits not handled\n", size * 8);
	}
}