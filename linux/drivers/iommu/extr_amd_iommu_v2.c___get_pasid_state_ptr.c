
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pasid_state {int dummy; } ;
struct device_state {int pasid_levels; struct pasid_state** states; } ;


 int GFP_ATOMIC ;
 scalar_t__ get_zeroed_page (int ) ;

__attribute__((used)) static struct pasid_state **__get_pasid_state_ptr(struct device_state *dev_state,
        int pasid, bool alloc)
{
 struct pasid_state **root, **ptr;
 int level, index;

 level = dev_state->pasid_levels;
 root = dev_state->states;

 while (1) {

  index = (pasid >> (9 * level)) & 0x1ff;
  ptr = &root[index];

  if (level == 0)
   break;

  if (*ptr == ((void*)0)) {
   if (!alloc)
    return ((void*)0);

   *ptr = (void *)get_zeroed_page(GFP_ATOMIC);
   if (*ptr == ((void*)0))
    return ((void*)0);
  }

  root = (struct pasid_state **)*ptr;
  level -= 1;
 }

 return ptr;
}
