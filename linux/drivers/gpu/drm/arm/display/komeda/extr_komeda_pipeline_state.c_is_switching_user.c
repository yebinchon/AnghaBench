
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static inline bool is_switching_user(void *old, void *new)
{
 if (!old || !new)
  return 0;

 return old != new;
}
