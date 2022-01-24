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
typedef  int u16 ;
struct scatterlist {int /*<<< orphan*/  length; } ;

/* Variables and functions */
 int OMAP_CRYPTO_BAD_DATA_LENGTH ; 
 unsigned long OMAP_CRYPTO_COPY_MASK ; 
 unsigned long OMAP_CRYPTO_DATA_COPIED ; 
 int OMAP_CRYPTO_FORCE_COPY ; 
 int OMAP_CRYPTO_FORCE_SINGLE_ENTRY ; 
 int OMAP_CRYPTO_NOT_ALIGNED ; 
 unsigned long OMAP_CRYPTO_SG_COPIED ; 
 int FUNC0 (struct scatterlist*,int,int,int) ; 
 int FUNC1 (int,int,struct scatterlist**,struct scatterlist*,int) ; 
 int FUNC2 (int,int,struct scatterlist**,struct scatterlist*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct scatterlist*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct scatterlist*) ; 

int FUNC5(struct scatterlist **sg, int total, int bs,
			 struct scatterlist *new_sg, u16 flags,
			 u8 flags_shift, unsigned long *dd_flags)
{
	int ret;

	*dd_flags &= ~(OMAP_CRYPTO_COPY_MASK << flags_shift);

	if (flags & OMAP_CRYPTO_FORCE_COPY)
		ret = OMAP_CRYPTO_NOT_ALIGNED;
	else
		ret = FUNC0(*sg, total, bs, flags);

	if (ret == OMAP_CRYPTO_NOT_ALIGNED) {
		ret = FUNC2(total, bs, sg, new_sg, flags);
		if (ret)
			return ret;
		*dd_flags |= OMAP_CRYPTO_DATA_COPIED << flags_shift;
	} else if (ret == OMAP_CRYPTO_BAD_DATA_LENGTH) {
		ret = FUNC1(total, bs, sg, new_sg, flags);
		if (ret)
			return ret;
		if (!(flags & OMAP_CRYPTO_FORCE_SINGLE_ENTRY))
			*dd_flags |= OMAP_CRYPTO_SG_COPIED << flags_shift;
	} else if (flags & OMAP_CRYPTO_FORCE_SINGLE_ENTRY) {
		FUNC3(new_sg, FUNC4(*sg), (*sg)->length);
	}

	return 0;
}