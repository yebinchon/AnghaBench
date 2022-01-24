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
struct vc4_dev {int /*<<< orphan*/  debugfs_list; } ;
struct TYPE_2__ {char const* name; int (* show ) (struct seq_file*,void*) ;void* data; } ;
struct vc4_debugfs_info_entry {int /*<<< orphan*/  link; TYPE_1__ info; } ;
struct drm_device {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_KERNEL ; 
 struct vc4_debugfs_info_entry* FUNC0 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 struct vc4_dev* FUNC2 (struct drm_device*) ; 

void FUNC3(struct drm_device *dev,
			  const char *name,
			  int (*show)(struct seq_file*, void*),
			  void *data)
{
	struct vc4_dev *vc4 = FUNC2(dev);

	struct vc4_debugfs_info_entry *entry =
		FUNC0(dev->dev, sizeof(*entry), GFP_KERNEL);

	if (!entry)
		return;

	entry->info.name = name;
	entry->info.show = show;
	entry->info.data = data;

	FUNC1(&entry->link, &vc4->debugfs_list);
}