
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct atkbd {int set; int force_release_mask; } ;


 int __set_bit (unsigned int const,int ) ;

__attribute__((used)) static void atkbd_apply_forced_release_keylist(struct atkbd* atkbd,
      const void *data)
{
 const unsigned int *keys = data;
 unsigned int i;

 if (atkbd->set == 2)
  for (i = 0; keys[i] != -1U; i++)
   __set_bit(keys[i], atkbd->force_release_mask);
}
