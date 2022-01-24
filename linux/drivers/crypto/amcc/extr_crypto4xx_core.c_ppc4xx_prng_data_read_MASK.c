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
struct crypto4xx_device {scalar_t__ ce_base; } ;

/* Variables and functions */
 scalar_t__ CRYPTO4XX_PRNG_CTRL ; 
 scalar_t__ CRYPTO4XX_PRNG_RES_0 ; 
 scalar_t__ CRYPTO4XX_PRNG_RES_1 ; 
 scalar_t__ CRYPTO4XX_PRNG_STAT ; 
 int CRYPTO4XX_PRNG_STAT_BUSY ; 
 int ETIMEDOUT ; 
 int /*<<< orphan*/  PPC4XX_PRNG_CTRL_AUTO_EN ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ **,unsigned int) ; 
 int FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,scalar_t__) ; 

__attribute__((used)) static int FUNC4(struct crypto4xx_device *dev,
				 u8 *data, unsigned int max)
{
	unsigned int i, curr = 0;
	u32 val[2];

	do {
		/* trigger PRN generation */
		FUNC3(PPC4XX_PRNG_CTRL_AUTO_EN,
		       dev->ce_base + CRYPTO4XX_PRNG_CTRL);

		for (i = 0; i < 1024; i++) {
			/* usually 19 iterations are enough */
			if ((FUNC1(dev->ce_base + CRYPTO4XX_PRNG_STAT) &
			     CRYPTO4XX_PRNG_STAT_BUSY))
				continue;

			val[0] = FUNC2(dev->ce_base + CRYPTO4XX_PRNG_RES_0);
			val[1] = FUNC2(dev->ce_base + CRYPTO4XX_PRNG_RES_1);
			break;
		}
		if (i == 1024)
			return -ETIMEDOUT;

		if ((max - curr) >= 8) {
			FUNC0(data, &val, 8);
			data += 8;
			curr += 8;
		} else {
			/* copy only remaining bytes */
			FUNC0(data, &val, max - curr);
			break;
		}
	} while (curr < max);

	return curr;
}