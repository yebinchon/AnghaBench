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
struct dm_target {int /*<<< orphan*/  num_discard_bios; struct crypt_config* private; } ;
struct crypt_config {unsigned int key_size; int sector_size; int /*<<< orphan*/  cipher_flags; int /*<<< orphan*/  cipher_auth; int /*<<< orphan*/  on_disk_tag_size; int /*<<< orphan*/  flags; scalar_t__ start; TYPE_1__* dev; scalar_t__ iv_offset; int /*<<< orphan*/ * key; int /*<<< orphan*/  key_string; int /*<<< orphan*/  cipher_string; } ;
typedef  int status_type_t ;
struct TYPE_2__ {int /*<<< orphan*/  name; } ;

/* Variables and functions */
 int /*<<< orphan*/  CRYPT_IV_LARGE_SECTORS ; 
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 int /*<<< orphan*/  DM_CRYPT_NO_OFFLOAD ; 
 int /*<<< orphan*/  DM_CRYPT_SAME_CPU ; 
 int SECTOR_SHIFT ; 
#define  STATUSTYPE_INFO 129 
#define  STATUSTYPE_TABLE 128 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC2(struct dm_target *ti, status_type_t type,
			 unsigned status_flags, char *result, unsigned maxlen)
{
	struct crypt_config *cc = ti->private;
	unsigned i, sz = 0;
	int num_feature_args = 0;

	switch (type) {
	case STATUSTYPE_INFO:
		result[0] = '\0';
		break;

	case STATUSTYPE_TABLE:
		FUNC0("%s ", cc->cipher_string);

		if (cc->key_size > 0) {
			if (cc->key_string)
				FUNC0(":%u:%s", cc->key_size, cc->key_string);
			else
				for (i = 0; i < cc->key_size; i++)
					FUNC0("%02x", cc->key[i]);
		} else
			FUNC0("-");

		FUNC0(" %llu %s %llu", (unsigned long long)cc->iv_offset,
				cc->dev->name, (unsigned long long)cc->start);

		num_feature_args += !!ti->num_discard_bios;
		num_feature_args += FUNC1(DM_CRYPT_SAME_CPU, &cc->flags);
		num_feature_args += FUNC1(DM_CRYPT_NO_OFFLOAD, &cc->flags);
		num_feature_args += cc->sector_size != (1 << SECTOR_SHIFT);
		num_feature_args += FUNC1(CRYPT_IV_LARGE_SECTORS, &cc->cipher_flags);
		if (cc->on_disk_tag_size)
			num_feature_args++;
		if (num_feature_args) {
			FUNC0(" %d", num_feature_args);
			if (ti->num_discard_bios)
				FUNC0(" allow_discards");
			if (FUNC1(DM_CRYPT_SAME_CPU, &cc->flags))
				FUNC0(" same_cpu_crypt");
			if (FUNC1(DM_CRYPT_NO_OFFLOAD, &cc->flags))
				FUNC0(" submit_from_crypt_cpus");
			if (cc->on_disk_tag_size)
				FUNC0(" integrity:%u:%s", cc->on_disk_tag_size, cc->cipher_auth);
			if (cc->sector_size != (1 << SECTOR_SHIFT))
				FUNC0(" sector_size:%d", cc->sector_size);
			if (FUNC1(CRYPT_IV_LARGE_SECTORS, &cc->cipher_flags))
				FUNC0(" iv_large_sectors");
		}

		break;
	}
}