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
typedef  int /*<<< orphan*/  uint64_t ;
struct bkey {int /*<<< orphan*/ * ptr; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 unsigned int FUNC1 (struct bkey const*) ; 
 int /*<<< orphan*/  FUNC2 (struct bkey*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct bkey*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct bkey*,struct bkey const*,int) ; 

void FUNC5(struct bkey *dest, const struct bkey *src,
			      unsigned int i)
{
	FUNC0(i > FUNC1(src));

	/* Only copy the header, key, and one pointer. */
	FUNC4(dest, src, 2 * sizeof(uint64_t));
	dest->ptr[0] = src->ptr[i];
	FUNC3(dest, 1);
	/* We didn't copy the checksum so clear that bit. */
	FUNC2(dest, 0);
}