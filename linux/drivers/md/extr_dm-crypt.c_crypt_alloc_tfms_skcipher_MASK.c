#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct crypto_skcipher {int dummy; } ;
struct TYPE_4__ {int /*<<< orphan*/ * tfms; } ;
struct crypt_config {unsigned int tfms_count; TYPE_1__ cipher_tfm; } ;
struct TYPE_5__ {int /*<<< orphan*/  cra_driver_name; } ;
struct TYPE_6__ {TYPE_2__ base; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,char*,int /*<<< orphan*/ ) ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct crypt_config*) ; 
 int /*<<< orphan*/  FUNC4 (struct crypt_config*) ; 
 int /*<<< orphan*/  FUNC5 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_3__* FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC7 (unsigned int,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC8(struct crypt_config *cc, char *ciphermode)
{
	unsigned i;
	int err;

	cc->cipher_tfm.tfms = FUNC7(cc->tfms_count,
				      sizeof(struct crypto_skcipher *),
				      GFP_KERNEL);
	if (!cc->cipher_tfm.tfms)
		return -ENOMEM;

	for (i = 0; i < cc->tfms_count; i++) {
		cc->cipher_tfm.tfms[i] = FUNC5(ciphermode, 0, 0);
		if (FUNC1(cc->cipher_tfm.tfms[i])) {
			err = FUNC2(cc->cipher_tfm.tfms[i]);
			FUNC4(cc);
			return err;
		}
	}

	/*
	 * dm-crypt performance can vary greatly depending on which crypto
	 * algorithm implementation is used.  Help people debug performance
	 * problems by logging the ->cra_driver_name.
	 */
	FUNC0("%s using implementation \"%s\"", ciphermode,
	       FUNC6(FUNC3(cc))->base.cra_driver_name);
	return 0;
}