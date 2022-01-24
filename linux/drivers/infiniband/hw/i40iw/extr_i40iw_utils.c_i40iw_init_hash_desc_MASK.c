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
struct shash_desc {struct crypto_shash* tfm; } ;
struct crypto_shash {int dummy; } ;
typedef  enum i40iw_status_code { ____Placeholder_i40iw_status_code } i40iw_status_code ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_KERNEL ; 
 int I40IW_ERR_MPA_CRC ; 
 scalar_t__ FUNC0 (struct crypto_shash*) ; 
 struct crypto_shash* FUNC1 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct crypto_shash*) ; 
 scalar_t__ FUNC3 (struct crypto_shash*) ; 
 struct shash_desc* FUNC4 (scalar_t__,int /*<<< orphan*/ ) ; 

enum i40iw_status_code FUNC5(struct shash_desc **desc)
{
	struct crypto_shash *tfm;
	struct shash_desc *tdesc;

	tfm = FUNC1("crc32c", 0, 0);
	if (FUNC0(tfm))
		return I40IW_ERR_MPA_CRC;

	tdesc = FUNC4(sizeof(*tdesc) + FUNC3(tfm),
			GFP_KERNEL);
	if (!tdesc) {
		FUNC2(tfm);
		return I40IW_ERR_MPA_CRC;
	}
	tdesc->tfm = tfm;
	*desc = tdesc;

	return 0;
}