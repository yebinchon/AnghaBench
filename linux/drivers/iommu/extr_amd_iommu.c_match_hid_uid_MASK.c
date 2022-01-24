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
struct device {int dummy; } ;
struct acpihid_map_entry {int /*<<< orphan*/ * uid; int /*<<< orphan*/ * hid; } ;
struct acpi_device {int dummy; } ;

/* Variables and functions */
 struct acpi_device* FUNC0 (struct device*) ; 
 int ENODEV ; 
 char* FUNC1 (struct acpi_device*) ; 
 char* FUNC2 (struct acpi_device*) ; 
 int FUNC3 (char const*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static inline int FUNC4(struct device *dev,
				struct acpihid_map_entry *entry)
{
	struct acpi_device *adev = FUNC0(dev);
	const char *hid, *uid;

	if (!adev)
		return -ENODEV;

	hid = FUNC1(adev);
	uid = FUNC2(adev);

	if (!hid || !(*hid))
		return -ENODEV;

	if (!uid || !(*uid))
		return FUNC3(hid, entry->hid);

	if (!(*entry->uid))
		return FUNC3(hid, entry->hid);

	return (FUNC3(hid, entry->hid) || FUNC3(uid, entry->uid));
}