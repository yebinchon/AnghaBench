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
struct dentry {int dummy; } ;
struct debugfs_entry {int /*<<< orphan*/  fops; int /*<<< orphan*/  mode; int /*<<< orphan*/  name; } ;

/* Variables and functions */
 int /*<<< orphan*/  CONFIG_EDAC_DEBUG ; 
 int ENOENT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 struct dentry* FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct dentry*,void*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC2(struct dentry *parent,
					  struct debugfs_entry *attrs[],
					  void *data,
					  size_t num)
{
	int i;
	struct dentry *ent;

	if (!FUNC0(CONFIG_EDAC_DEBUG))
		return 0;

	if (!parent)
		return -ENOENT;

	for (i = 0; i < num; i++) {
		ent = FUNC1(attrs[i]->name, attrs[i]->mode,
					       parent, data, &attrs[i]->fops);

		if (!ent)
			break;
	}

	return i;
}