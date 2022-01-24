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
typedef  void* u8 ;
typedef  struct applesmc_entry {int valid; void* flags; int /*<<< orphan*/  type; void* len; int /*<<< orphan*/  key; } const applesmc_entry ;
typedef  int /*<<< orphan*/  __be32 ;
struct TYPE_2__ {int /*<<< orphan*/  mutex; struct applesmc_entry const* cache; } ;

/* Variables and functions */
 int /*<<< orphan*/  APPLESMC_GET_KEY_BY_INDEX_CMD ; 
 int /*<<< orphan*/  APPLESMC_GET_KEY_TYPE_CMD ; 
 struct applesmc_entry const* FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,void**,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int FUNC5 (int /*<<< orphan*/ ,void**,void**,int) ; 
 TYPE_1__ smcreg ; 

__attribute__((used)) static const struct applesmc_entry *FUNC6(int index)
{
	struct applesmc_entry *cache = &smcreg.cache[index];
	u8 key[4], info[6];
	__be32 be;
	int ret = 0;

	if (cache->valid)
		return cache;

	FUNC3(&smcreg.mutex);

	if (cache->valid)
		goto out;
	be = FUNC1(index);
	ret = FUNC5(APPLESMC_GET_KEY_BY_INDEX_CMD, (u8 *)&be, key, 4);
	if (ret)
		goto out;
	ret = FUNC5(APPLESMC_GET_KEY_TYPE_CMD, key, info, 6);
	if (ret)
		goto out;

	FUNC2(cache->key, key, 4);
	cache->len = info[0];
	FUNC2(cache->type, &info[1], 4);
	cache->flags = info[5];
	cache->valid = 1;

out:
	FUNC4(&smcreg.mutex);
	if (ret)
		return FUNC0(ret);
	return cache;
}