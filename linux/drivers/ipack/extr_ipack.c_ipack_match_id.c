
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ipack_device_id {scalar_t__ device; scalar_t__ vendor; } ;
struct ipack_device {int dummy; } ;


 scalar_t__ ipack_match_one_device (struct ipack_device_id const*,struct ipack_device*) ;

__attribute__((used)) static const struct ipack_device_id *
ipack_match_id(const struct ipack_device_id *ids, struct ipack_device *idev)
{
 if (ids) {
  while (ids->vendor || ids->device) {
   if (ipack_match_one_device(ids, idev))
    return ids;
   ids++;
  }
 }
 return ((void*)0);
}
