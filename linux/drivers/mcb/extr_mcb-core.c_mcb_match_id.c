
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mcb_device_id {scalar_t__ device; } ;
struct mcb_device {scalar_t__ id; } ;



__attribute__((used)) static const struct mcb_device_id *mcb_match_id(const struct mcb_device_id *ids,
      struct mcb_device *dev)
{
 if (ids) {
  while (ids->device) {
   if (ids->device == dev->id)
    return ids;
   ids++;
  }
 }

 return ((void*)0);
}
