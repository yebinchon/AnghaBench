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
typedef  scalar_t__ u32 ;
typedef  int /*<<< orphan*/  __be32 ;

/* Variables and functions */
 unsigned int AES_BLOCK_SIZE ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,unsigned int) ; 

__attribute__((used)) static void FUNC3(u8 *dstiv, u8 *srciv, u32 add)
{
	unsigned int size = AES_BLOCK_SIZE;
	__be32 *b = (__be32 *)(dstiv + size);
	u32 c, prev;

	FUNC2(dstiv, srciv, AES_BLOCK_SIZE);
	for (; size >= 4; size -= 4) {
		prev = FUNC0(*--b);
		c = prev + add;
		*b = FUNC1(c);
		if (prev < c)
			break;
		add = 1;
	}

}