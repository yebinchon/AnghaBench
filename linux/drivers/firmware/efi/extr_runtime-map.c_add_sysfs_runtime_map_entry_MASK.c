#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct kobject {int dummy; } ;
struct TYPE_4__ {int /*<<< orphan*/ * kset; } ;
struct efi_runtime_map_entry {TYPE_1__ kobj; int /*<<< orphan*/  md; } ;
typedef  int /*<<< orphan*/  efi_memory_desc_t ;

/* Variables and functions */
 int ENOMEM ; 
 struct efi_runtime_map_entry* FUNC0 (int) ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int FUNC1 (TYPE_1__*,int /*<<< orphan*/ *,char*,int) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/ * FUNC4 (char*,int /*<<< orphan*/ *,struct kobject*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 struct efi_runtime_map_entry* FUNC6 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * map_kset ; 
 int /*<<< orphan*/  map_ktype ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static struct efi_runtime_map_entry *
FUNC8(struct kobject *kobj, int nr,
			    efi_memory_desc_t *md)
{
	int ret;
	struct efi_runtime_map_entry *entry;

	if (!map_kset) {
		map_kset = FUNC4("runtime-map", NULL, kobj);
		if (!map_kset)
			return FUNC0(-ENOMEM);
	}

	entry = FUNC6(sizeof(*entry), GFP_KERNEL);
	if (!entry) {
		FUNC5(map_kset);
		map_kset = NULL;
		return FUNC0(-ENOMEM);
	}

	FUNC7(&entry->md, md, sizeof(efi_memory_desc_t));

	FUNC2(&entry->kobj, &map_ktype);
	entry->kobj.kset = map_kset;
	ret = FUNC1(&entry->kobj, NULL, "%d", nr);
	if (ret) {
		FUNC3(&entry->kobj);
		FUNC5(map_kset);
		map_kset = NULL;
		return FUNC0(ret);
	}

	return entry;
}