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
struct rtattr {int /*<<< orphan*/  rta_type; int /*<<< orphan*/  rta_len; } ;
struct crypto_authenc_key_param {int /*<<< orphan*/  enckeylen; } ;

/* Variables and functions */
 int /*<<< orphan*/  CRYPTO_AUTHENC_KEYA_PARAM ; 
 struct crypto_authenc_key_param* FUNC0 (struct rtattr*) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (unsigned int) ; 
 int /*<<< orphan*/  FUNC4 (char*,void const*,unsigned int) ; 

__attribute__((used)) static void FUNC5(char *p, const void *key,
				  unsigned enckeylen, unsigned authkeylen)
{
	struct crypto_authenc_key_param *param;
	struct rtattr *rta;

	rta = (struct rtattr *)p;
	param = FUNC0(rta);
	param->enckeylen = FUNC3(enckeylen);
	rta->rta_len = FUNC1(sizeof(*param));
	rta->rta_type = CRYPTO_AUTHENC_KEYA_PARAM;
	p += FUNC2(sizeof(*param));
	FUNC4(p, key + enckeylen, authkeylen);
	p += authkeylen;
	FUNC4(p, key, enckeylen);
}