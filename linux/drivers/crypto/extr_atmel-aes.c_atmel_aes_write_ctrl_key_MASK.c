#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int u32 ;
struct TYPE_2__ {scalar_t__ has_dualbuff; } ;
struct atmel_aes_dev {int flags; TYPE_1__ caps; } ;

/* Variables and functions */
 int AES_FLAGS_MODE_MASK ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int AES_KEYSIZE_128 ; 
 int AES_KEYSIZE_192 ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  AES_MR ; 
 int AES_MR_DUALBUFF ; 
 int AES_MR_KEYSIZE_128 ; 
 int AES_MR_KEYSIZE_192 ; 
 int AES_MR_KEYSIZE_256 ; 
 int AES_MR_OPMOD_ECB ; 
 int AES_MR_OPMOD_MASK ; 
 int AES_MR_SMOD_AUTO ; 
 int AES_MR_SMOD_IDATAR0 ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (struct atmel_aes_dev*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (struct atmel_aes_dev*,int /*<<< orphan*/ ,int const*) ; 
 int /*<<< orphan*/  FUNC5 (struct atmel_aes_dev*,int /*<<< orphan*/ ,int const*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC6(struct atmel_aes_dev *dd, bool use_dma,
				     const u32 *iv, const u32 *key, int keylen)
{
	u32 valmr = 0;

	/* MR register must be set before IV registers */
	if (keylen == AES_KEYSIZE_128)
		valmr |= AES_MR_KEYSIZE_128;
	else if (keylen == AES_KEYSIZE_192)
		valmr |= AES_MR_KEYSIZE_192;
	else
		valmr |= AES_MR_KEYSIZE_256;

	valmr |= dd->flags & AES_FLAGS_MODE_MASK;

	if (use_dma) {
		valmr |= AES_MR_SMOD_IDATAR0;
		if (dd->caps.has_dualbuff)
			valmr |= AES_MR_DUALBUFF;
	} else {
		valmr |= AES_MR_SMOD_AUTO;
	}

	FUNC3(dd, AES_MR, valmr);

	FUNC5(dd, FUNC1(0), key, FUNC2(keylen));

	if (iv && (valmr & AES_MR_OPMOD_MASK) != AES_MR_OPMOD_ECB)
		FUNC4(dd, FUNC0(0), iv);
}