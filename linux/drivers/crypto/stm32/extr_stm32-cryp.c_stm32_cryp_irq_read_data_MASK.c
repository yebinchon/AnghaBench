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
typedef  int /*<<< orphan*/  u32 ;
struct stm32_cryp {size_t authsize; int hw_blocksize; size_t total_out; int /*<<< orphan*/  total_in; int /*<<< orphan*/  out_sg; } ;

/* Variables and functions */
 int /*<<< orphan*/  CRYP_DOUT ; 
 int _walked_out ; 
 scalar_t__ FUNC0 (struct stm32_cryp*) ; 
 scalar_t__ FUNC1 (struct stm32_cryp*) ; 
 scalar_t__ FUNC2 (struct stm32_cryp*) ; 
 scalar_t__ FUNC3 (int) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC5 (struct stm32_cryp*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC6 (struct stm32_cryp*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static bool FUNC7(struct stm32_cryp *cryp)
{
	unsigned int i, j;
	u32 d32, *dst;
	u8 *d8;
	size_t tag_size;

	/* Do no read tag now (if any) */
	if (FUNC1(cryp) && (FUNC2(cryp) || FUNC0(cryp)))
		tag_size = cryp->authsize;
	else
		tag_size = 0;

	dst = FUNC4(cryp->out_sg) + _walked_out;

	for (i = 0; i < cryp->hw_blocksize / sizeof(u32); i++) {
		if (FUNC3(cryp->total_out - tag_size >= sizeof(u32))) {
			/* Read a full u32 */
			*dst = FUNC6(cryp, CRYP_DOUT);

			dst = FUNC5(cryp, dst, sizeof(u32));
			cryp->total_out -= sizeof(u32);
		} else if (cryp->total_out == tag_size) {
			/* Empty fifo out (data from input padding) */
			d32 = FUNC6(cryp, CRYP_DOUT);
		} else {
			/* Read less than an u32 */
			d32 = FUNC6(cryp, CRYP_DOUT);
			d8 = (u8 *)&d32;

			for (j = 0; j < cryp->total_out - tag_size; j++) {
				*((u8 *)dst) = *(d8++);
				dst = FUNC5(cryp, dst, 1);
			}
			cryp->total_out = tag_size;
		}
	}

	return !(cryp->total_out - tag_size) || !cryp->total_in;
}