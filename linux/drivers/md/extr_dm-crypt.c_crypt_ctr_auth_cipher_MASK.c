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
struct crypto_ahash {int dummy; } ;
struct crypt_config {int /*<<< orphan*/  authenc_key; int /*<<< orphan*/  key_mac_size; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ FUNC0 (struct crypto_ahash*) ; 
 int FUNC1 (struct crypto_ahash*) ; 
 int /*<<< orphan*/  FUNC2 (struct crypt_config*) ; 
 int /*<<< orphan*/  FUNC3 (struct crypto_ahash*) ; 
 struct crypto_ahash* FUNC4 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct crypto_ahash*) ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 char* FUNC8 (int,int /*<<< orphan*/ ) ; 
 char* FUNC9 (char*,char) ; 
 int /*<<< orphan*/  FUNC10 (char*,char*,int) ; 
 int /*<<< orphan*/  FUNC11 (char*,char*) ; 

__attribute__((used)) static int FUNC12(struct crypt_config *cc, char *cipher_api)
{
	char *start, *end, *mac_alg = NULL;
	struct crypto_ahash *mac;

	if (!FUNC11(cipher_api, "authenc("))
		return 0;

	start = FUNC9(cipher_api, '(');
	end = FUNC9(cipher_api, ',');
	if (!start || !end || ++start > end)
		return -EINVAL;

	mac_alg = FUNC8(end - start + 1, GFP_KERNEL);
	if (!mac_alg)
		return -ENOMEM;
	FUNC10(mac_alg, start, end - start);

	mac = FUNC4(mac_alg, 0, 0);
	FUNC6(mac_alg);

	if (FUNC0(mac))
		return FUNC1(mac);

	cc->key_mac_size = FUNC3(mac);
	FUNC5(mac);

	cc->authenc_key = FUNC7(FUNC2(cc), GFP_KERNEL);
	if (!cc->authenc_key)
		return -ENOMEM;

	return 0;
}