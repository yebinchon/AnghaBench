
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wm97xx {int* dig; } ;


 int WM9712_PDEN ;

__attribute__((used)) static inline int is_pden(struct wm97xx *wm)
{
 return wm->dig[2] & WM9712_PDEN;
}
