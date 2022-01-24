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
struct dm_target {char* error; } ;
struct crypt_config {scalar_t__ iv_size; int /*<<< orphan*/  cipher_flags; } ;

/* Variables and functions */
 int /*<<< orphan*/  CRYPT_MODE_INTEGRITY_AEAD ; 
 int EINVAL ; 
 int /*<<< orphan*/  FUNC0 (struct crypt_config*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC3(struct crypt_config *cc, struct dm_target *ti,
			    const char *opts)
{
	if (FUNC2(CRYPT_MODE_INTEGRITY_AEAD, &cc->cipher_flags)) {
		ti->error = "AEAD transforms not supported for EBOIV";
		return -EINVAL;
	}

	if (FUNC1(FUNC0(cc)) != cc->iv_size) {
		ti->error = "Block size of EBOIV cipher does "
			    "not match IV size of block cipher";
		return -EINVAL;
	}

	return 0;
}