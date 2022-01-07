
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {int dummy; } ;
struct acpihid_map_entry {int * uid; int * hid; } ;
struct acpi_device {int dummy; } ;


 struct acpi_device* ACPI_COMPANION (struct device*) ;
 int ENODEV ;
 char* acpi_device_hid (struct acpi_device*) ;
 char* acpi_device_uid (struct acpi_device*) ;
 int strcmp (char const*,int *) ;

__attribute__((used)) static inline int match_hid_uid(struct device *dev,
    struct acpihid_map_entry *entry)
{
 struct acpi_device *adev = ACPI_COMPANION(dev);
 const char *hid, *uid;

 if (!adev)
  return -ENODEV;

 hid = acpi_device_hid(adev);
 uid = acpi_device_uid(adev);

 if (!hid || !(*hid))
  return -ENODEV;

 if (!uid || !(*uid))
  return strcmp(hid, entry->hid);

 if (!(*entry->uid))
  return strcmp(hid, entry->hid);

 return (strcmp(hid, entry->hid) || strcmp(uid, entry->uid));
}
