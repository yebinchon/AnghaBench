
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wiimod_ops {int flags; int in_ext; } ;


 int WIIMOD_FLAG_EXT16 ;
 int WIIMOD_FLAG_EXT8 ;

__attribute__((used)) static bool valid_ext_handler(const struct wiimod_ops *ops, size_t len)
{
 if (!ops->in_ext)
  return 0;
 if ((ops->flags & WIIMOD_FLAG_EXT8) && len < 8)
  return 0;
 if ((ops->flags & WIIMOD_FLAG_EXT16) && len < 16)
  return 0;

 return 1;
}
