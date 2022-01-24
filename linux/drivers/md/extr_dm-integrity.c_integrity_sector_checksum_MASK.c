#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct dm_integrity_c {int sectors_per_block; unsigned int tag_size; int /*<<< orphan*/  internal_hash; } ;
typedef  int /*<<< orphan*/  sector_t ;
typedef  char __u8 ;
typedef  int /*<<< orphan*/  __u64 ;
struct TYPE_6__ {int /*<<< orphan*/  tfm; } ;

/* Variables and functions */
 int SECTOR_SHIFT ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 unsigned int FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (TYPE_1__*,char*) ; 
 int FUNC4 (TYPE_1__*) ; 
 int FUNC5 (TYPE_1__*,char const*,int) ; 
 int /*<<< orphan*/  FUNC6 (struct dm_integrity_c*,char*,int) ; 
 int /*<<< orphan*/  FUNC7 (char*,unsigned int) ; 
 int /*<<< orphan*/  FUNC8 (char*,int /*<<< orphan*/ ,unsigned int) ; 
 TYPE_1__* req ; 
 scalar_t__ FUNC9 (int) ; 

__attribute__((used)) static void FUNC10(struct dm_integrity_c *ic, sector_t sector,
				      const char *data, char *result)
{
	__u64 sector_le = FUNC1(sector);
	FUNC0(req, ic->internal_hash);
	int r;
	unsigned digest_size;

	req->tfm = ic->internal_hash;

	r = FUNC4(req);
	if (FUNC9(r < 0)) {
		FUNC6(ic, "crypto_shash_init", r);
		goto failed;
	}

	r = FUNC5(req, (const __u8 *)&sector_le, sizeof sector_le);
	if (FUNC9(r < 0)) {
		FUNC6(ic, "crypto_shash_update", r);
		goto failed;
	}

	r = FUNC5(req, data, ic->sectors_per_block << SECTOR_SHIFT);
	if (FUNC9(r < 0)) {
		FUNC6(ic, "crypto_shash_update", r);
		goto failed;
	}

	r = FUNC3(req, result);
	if (FUNC9(r < 0)) {
		FUNC6(ic, "crypto_shash_final", r);
		goto failed;
	}

	digest_size = FUNC2(ic->internal_hash);
	if (FUNC9(digest_size < ic->tag_size))
		FUNC8(result + digest_size, 0, ic->tag_size - digest_size);

	return;

failed:
	/* this shouldn't happen anyway, the hash functions have no reason to fail */
	FUNC7(result, ic->tag_size);
}