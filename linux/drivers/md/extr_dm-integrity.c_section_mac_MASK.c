#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {int /*<<< orphan*/  sector; } ;
struct journal_entry {TYPE_1__ u; } ;
struct dm_integrity_c {unsigned int journal_section_entries; int /*<<< orphan*/  journal_mac; } ;
typedef  int /*<<< orphan*/  digest ;
typedef  int /*<<< orphan*/  __u8 ;
struct TYPE_8__ {int /*<<< orphan*/  tfm; } ;

/* Variables and functions */
 int EINVAL ; 
 int HASH_MAX_DIGESTSIZE ; 
 unsigned int JOURNAL_MAC_SIZE ; 
 int /*<<< orphan*/  FUNC0 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int) ; 
 struct journal_entry* FUNC2 (struct dm_integrity_c*,unsigned int,unsigned int) ; 
 unsigned int FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (TYPE_2__*,int /*<<< orphan*/ *) ; 
 int FUNC5 (TYPE_2__*) ; 
 int FUNC6 (TYPE_2__*,int /*<<< orphan*/ *,int) ; 
 TYPE_2__* desc ; 
 int /*<<< orphan*/  FUNC7 (struct dm_integrity_c*,char*,int) ; 
 scalar_t__ FUNC8 (int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,unsigned int) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,unsigned int) ; 
 scalar_t__ FUNC11 (int) ; 

__attribute__((used)) static void FUNC12(struct dm_integrity_c *ic, unsigned section, __u8 result[JOURNAL_MAC_SIZE])
{
	FUNC0(desc, ic->journal_mac);
	int r;
	unsigned j, size;

	desc->tfm = ic->journal_mac;

	r = FUNC5(desc);
	if (FUNC11(r)) {
		FUNC7(ic, "crypto_shash_init", r);
		goto err;
	}

	for (j = 0; j < ic->journal_section_entries; j++) {
		struct journal_entry *je = FUNC2(ic, section, j);
		r = FUNC6(desc, (__u8 *)&je->u.sector, sizeof je->u.sector);
		if (FUNC11(r)) {
			FUNC7(ic, "crypto_shash_update", r);
			goto err;
		}
	}

	size = FUNC3(ic->journal_mac);

	if (FUNC8(size <= JOURNAL_MAC_SIZE)) {
		r = FUNC4(desc, result);
		if (FUNC11(r)) {
			FUNC7(ic, "crypto_shash_final", r);
			goto err;
		}
		FUNC10(result + size, 0, JOURNAL_MAC_SIZE - size);
	} else {
		__u8 digest[HASH_MAX_DIGESTSIZE];

		if (FUNC1(size > sizeof(digest))) {
			FUNC7(ic, "digest_size", -EINVAL);
			goto err;
		}
		r = FUNC4(desc, digest);
		if (FUNC11(r)) {
			FUNC7(ic, "crypto_shash_final", r);
			goto err;
		}
		FUNC9(result, digest, JOURNAL_MAC_SIZE);
	}

	return;
err:
	FUNC10(result, 0, JOURNAL_MAC_SIZE);
}