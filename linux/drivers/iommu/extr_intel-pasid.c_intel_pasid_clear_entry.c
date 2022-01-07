
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pasid_entry {int dummy; } ;
struct device {int dummy; } ;


 scalar_t__ WARN_ON (int) ;
 struct pasid_entry* intel_pasid_get_entry (struct device*,int) ;
 int pasid_clear_entry (struct pasid_entry*) ;

__attribute__((used)) static void intel_pasid_clear_entry(struct device *dev, int pasid)
{
 struct pasid_entry *pe;

 pe = intel_pasid_get_entry(dev, pasid);
 if (WARN_ON(!pe))
  return;

 pasid_clear_entry(pe);
}
