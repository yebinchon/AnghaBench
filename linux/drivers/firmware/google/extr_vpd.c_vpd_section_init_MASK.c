#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int mode; scalar_t__ name; } ;
struct TYPE_6__ {size_t size; struct vpd_section* private; int /*<<< orphan*/  read; TYPE_1__ attr; } ;
struct vpd_section {char const* name; int enabled; int /*<<< orphan*/  baseaddr; scalar_t__ raw_name; TYPE_2__ bin_attr; int /*<<< orphan*/  attribs; int /*<<< orphan*/  kobj; } ;
typedef  int /*<<< orphan*/  phys_addr_t ;

/* Variables and functions */
 int EINVAL ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  MEMREMAP_WB ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,char*,char const*) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (char const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,size_t,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_2__*) ; 
 int FUNC7 (int /*<<< orphan*/ ,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,TYPE_2__*) ; 
 int /*<<< orphan*/  vpd_kobj ; 
 int /*<<< orphan*/  FUNC9 (struct vpd_section*) ; 
 int /*<<< orphan*/  vpd_section_read ; 

__attribute__((used)) static int FUNC10(const char *name, struct vpd_section *sec,
			    phys_addr_t physaddr, size_t size)
{
	int err;

	sec->baseaddr = FUNC4(physaddr, size, MEMREMAP_WB);
	if (!sec->baseaddr)
		return -ENOMEM;

	sec->name = name;

	/* We want to export the raw partition with name ${name}_raw */
	sec->raw_name = FUNC1(GFP_KERNEL, "%s_raw", name);
	if (!sec->raw_name) {
		err = -ENOMEM;
		goto err_memunmap;
	}

	FUNC6(&sec->bin_attr);
	sec->bin_attr.attr.name = sec->raw_name;
	sec->bin_attr.attr.mode = 0444;
	sec->bin_attr.size = size;
	sec->bin_attr.read = vpd_section_read;
	sec->bin_attr.private = sec;

	err = FUNC7(vpd_kobj, &sec->bin_attr);
	if (err)
		goto err_free_raw_name;

	sec->kobj = FUNC3(name, vpd_kobj);
	if (!sec->kobj) {
		err = -EINVAL;
		goto err_sysfs_remove;
	}

	FUNC0(&sec->attribs);
	FUNC9(sec);

	sec->enabled = true;

	return 0;

err_sysfs_remove:
	FUNC8(vpd_kobj, &sec->bin_attr);
err_free_raw_name:
	FUNC2(sec->raw_name);
err_memunmap:
	FUNC5(sec->baseaddr);
	return err;
}