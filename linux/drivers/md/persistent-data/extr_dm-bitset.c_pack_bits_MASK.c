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
typedef  scalar_t__ uint64_t ;
typedef  int uint32_t ;
struct packer_context {int (* fn ) (int,int*,int /*<<< orphan*/ ) ;int /*<<< orphan*/  context; scalar_t__ nr_bits; } ;
typedef  int /*<<< orphan*/  __le64 ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (unsigned int,unsigned long*) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 unsigned int FUNC2 (unsigned int,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (unsigned int,unsigned long*) ; 
 int FUNC4 (int,int*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC5(uint32_t index, void *value, void *context)
{
	int r;
	struct packer_context *p = context;
	unsigned bit, nr = FUNC2(64u, p->nr_bits - (index * 64));
	uint64_t word = 0;
	bool bv;

	for (bit = 0; bit < nr; bit++) {
		r = p->fn(index * 64 + bit, &bv, p->context);
		if (r)
			return r;

		if (bv)
			FUNC3(bit, (unsigned long *) &word);
		else
			FUNC0(bit, (unsigned long *) &word);
	}

	*((__le64 *) value) = FUNC1(word);

	return 0;
}