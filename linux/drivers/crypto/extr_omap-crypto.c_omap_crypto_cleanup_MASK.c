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
typedef  unsigned long u8 ;
struct scatterlist {int dummy; } ;

/* Variables and functions */
 unsigned long OMAP_CRYPTO_COPY_MASK ; 
 unsigned long OMAP_CRYPTO_DATA_COPIED ; 
 unsigned long OMAP_CRYPTO_SG_COPIED ; 
 int /*<<< orphan*/  FUNC0 (unsigned long,int) ; 
 int FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (struct scatterlist*) ; 
 int /*<<< orphan*/  FUNC3 (void*,struct scatterlist*,int,int,int) ; 
 void* FUNC4 (struct scatterlist*) ; 

void FUNC5(struct scatterlist *sg, struct scatterlist *orig,
			 int offset, int len, u8 flags_shift,
			 unsigned long flags)
{
	void *buf;
	int pages;

	flags >>= flags_shift;
	flags &= OMAP_CRYPTO_COPY_MASK;

	if (!flags)
		return;

	buf = FUNC4(sg);
	pages = FUNC1(len);

	if (orig && (flags & OMAP_CRYPTO_COPY_MASK))
		FUNC3(buf, orig, offset, len, 1);

	if (flags & OMAP_CRYPTO_DATA_COPIED)
		FUNC0((unsigned long)buf, pages);
	else if (flags & OMAP_CRYPTO_SG_COPIED)
		FUNC2(sg);
}