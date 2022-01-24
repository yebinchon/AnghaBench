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
struct stm32_cryp {size_t authsize; int hw_blocksize; size_t total_in; int /*<<< orphan*/  in_sg; } ;

/* Variables and functions */
 int /*<<< orphan*/  CRYP_DIN ; 
 int _walked_in ; 
 scalar_t__ FUNC0 (struct stm32_cryp*) ; 
 scalar_t__ FUNC1 (struct stm32_cryp*) ; 
 scalar_t__ FUNC2 (struct stm32_cryp*) ; 
 scalar_t__ FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC6 (struct stm32_cryp*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC7 (struct stm32_cryp*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC8(struct stm32_cryp *cryp)
{
	unsigned int i, j;
	u32 *src;
	u8 d8[4];
	size_t tag_size;

	/* Do no write tag (if any) */
	if (FUNC1(cryp) && (FUNC2(cryp) || FUNC0(cryp)))
		tag_size = cryp->authsize;
	else
		tag_size = 0;

	src = FUNC5(cryp->in_sg) + _walked_in;

	for (i = 0; i < cryp->hw_blocksize / sizeof(u32); i++) {
		if (FUNC3(cryp->total_in - tag_size >= sizeof(u32))) {
			/* Write a full u32 */
			FUNC7(cryp, CRYP_DIN, *src);

			src = FUNC6(cryp, src, sizeof(u32));
			cryp->total_in -= sizeof(u32);
		} else if (cryp->total_in == tag_size) {
			/* Write padding data */
			FUNC7(cryp, CRYP_DIN, 0);
		} else {
			/* Write less than an u32 */
			FUNC4(d8, 0, sizeof(u32));
			for (j = 0; j < cryp->total_in - tag_size; j++) {
				d8[j] = *((u8 *)src);
				src = FUNC6(cryp, src, 1);
			}

			FUNC7(cryp, CRYP_DIN, *(u32 *)d8);
			cryp->total_in = tag_size;
		}
	}
}