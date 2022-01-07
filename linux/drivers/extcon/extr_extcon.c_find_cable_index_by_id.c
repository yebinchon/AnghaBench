
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct extcon_dev {int max_supported; unsigned int const* supported_cable; } ;


 int EINVAL ;

__attribute__((used)) static int find_cable_index_by_id(struct extcon_dev *edev, const unsigned int id)
{
 int i;


 for (i = 0; i < edev->max_supported; i++) {
  if (edev->supported_cable[i] == id)
   return i;
 }

 return -EINVAL;
}
