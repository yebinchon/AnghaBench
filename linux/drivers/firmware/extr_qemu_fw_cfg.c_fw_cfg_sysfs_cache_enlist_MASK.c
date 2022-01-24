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
struct fw_cfg_sysfs_entry {int /*<<< orphan*/  list; } ;

/* Variables and functions */
 int /*<<< orphan*/  fw_cfg_cache_lock ; 
 int /*<<< orphan*/  fw_cfg_entry_cache ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static inline void FUNC3(struct fw_cfg_sysfs_entry *entry)
{
	FUNC1(&fw_cfg_cache_lock);
	FUNC0(&entry->list, &fw_cfg_entry_cache);
	FUNC2(&fw_cfg_cache_lock);
}