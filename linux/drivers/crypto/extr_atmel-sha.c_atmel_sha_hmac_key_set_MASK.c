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
struct atmel_sha_hmac_key {int valid; unsigned int keylen; int /*<<< orphan*/  buffer; int /*<<< orphan*/  keydup; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (struct atmel_sha_hmac_key*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/  const*,unsigned int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/  const*,unsigned int) ; 

__attribute__((used)) static inline int FUNC3(struct atmel_sha_hmac_key *hkey,
					 const u8 *key,
					 unsigned int keylen)
{
	FUNC0(hkey);

	if (keylen > sizeof(hkey->buffer)) {
		hkey->keydup = FUNC1(key, keylen, GFP_KERNEL);
		if (!hkey->keydup)
			return -ENOMEM;

	} else {
		FUNC2(hkey->buffer, key, keylen);
	}

	hkey->valid = true;
	hkey->keylen = keylen;
	return 0;
}