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
struct TYPE_2__ {scalar_t__ has_authenc; scalar_t__ has_xts; scalar_t__ has_gcm; scalar_t__ has_cfb64; } ;
struct atmel_aes_dev {TYPE_1__ caps; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * aes_algs ; 
 int /*<<< orphan*/ * aes_authenc_algs ; 
 int /*<<< orphan*/  aes_cfb64_alg ; 
 int /*<<< orphan*/  aes_gcm_alg ; 
 int /*<<< orphan*/  aes_xts_alg ; 
 int FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC5(struct atmel_aes_dev *dd)
{
	int err, i, j;

	for (i = 0; i < FUNC0(aes_algs); i++) {
		err = FUNC2(&aes_algs[i]);
		if (err)
			goto err_aes_algs;
	}

	if (dd->caps.has_cfb64) {
		err = FUNC2(&aes_cfb64_alg);
		if (err)
			goto err_aes_cfb64_alg;
	}

	if (dd->caps.has_gcm) {
		err = FUNC1(&aes_gcm_alg);
		if (err)
			goto err_aes_gcm_alg;
	}

	if (dd->caps.has_xts) {
		err = FUNC2(&aes_xts_alg);
		if (err)
			goto err_aes_xts_alg;
	}

#ifdef CONFIG_CRYPTO_DEV_ATMEL_AUTHENC
	if (dd->caps.has_authenc) {
		for (i = 0; i < ARRAY_SIZE(aes_authenc_algs); i++) {
			err = crypto_register_aead(&aes_authenc_algs[i]);
			if (err)
				goto err_aes_authenc_alg;
		}
	}
#endif

	return 0;

#ifdef CONFIG_CRYPTO_DEV_ATMEL_AUTHENC
	/* i = ARRAY_SIZE(aes_authenc_algs); */
err_aes_authenc_alg:
	for (j = 0; j < i; j++)
		crypto_unregister_aead(&aes_authenc_algs[j]);
	crypto_unregister_alg(&aes_xts_alg);
#endif
err_aes_xts_alg:
	FUNC3(&aes_gcm_alg);
err_aes_gcm_alg:
	FUNC4(&aes_cfb64_alg);
err_aes_cfb64_alg:
	i = FUNC0(aes_algs);
err_aes_algs:
	for (j = 0; j < i; j++)
		FUNC4(&aes_algs[j]);

	return err;
}