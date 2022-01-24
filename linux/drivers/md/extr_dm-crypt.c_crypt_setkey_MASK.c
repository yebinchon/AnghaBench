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
struct TYPE_2__ {int /*<<< orphan*/ * tfms; int /*<<< orphan*/ * tfms_aead; } ;
struct crypt_config {unsigned int key_mac_size; int tfms_count; scalar_t__ authenc_key; scalar_t__ key; TYPE_1__ cipher_tfm; } ;

/* Variables and functions */
 int EINVAL ; 
 unsigned int FUNC0 (struct crypt_config*) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__,scalar_t__,unsigned int,unsigned int) ; 
 scalar_t__ FUNC2 (struct crypt_config*) ; 
 scalar_t__ FUNC3 (struct crypt_config*) ; 
 unsigned int FUNC4 (struct crypt_config*) ; 
 int FUNC5 (int /*<<< orphan*/ ,scalar_t__,unsigned int) ; 
 int FUNC6 (int /*<<< orphan*/ ,scalar_t__,unsigned int) ; 
 int /*<<< orphan*/  FUNC7 (scalar_t__,unsigned int) ; 

__attribute__((used)) static int FUNC8(struct crypt_config *cc)
{
	unsigned subkey_size;
	int err = 0, i, r;

	/* Ignore extra keys (which are used for IV etc) */
	subkey_size = FUNC4(cc);

	if (FUNC3(cc)) {
		if (subkey_size < cc->key_mac_size)
			return -EINVAL;

		FUNC1(cc->authenc_key, cc->key,
				      subkey_size - cc->key_mac_size,
				      cc->key_mac_size);
	}

	for (i = 0; i < cc->tfms_count; i++) {
		if (FUNC3(cc))
			r = FUNC5(cc->cipher_tfm.tfms_aead[i],
				cc->authenc_key, FUNC0(cc));
		else if (FUNC2(cc))
			r = FUNC5(cc->cipher_tfm.tfms_aead[i],
					       cc->key + (i * subkey_size),
					       subkey_size);
		else
			r = FUNC6(cc->cipher_tfm.tfms[i],
						   cc->key + (i * subkey_size),
						   subkey_size);
		if (r)
			err = r;
	}

	if (FUNC3(cc))
		FUNC7(cc->authenc_key, FUNC0(cc));

	return err;
}