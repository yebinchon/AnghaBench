
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hfc_multi {int iclock_on; } ;



__attribute__((used)) static int
clockctl(void *priv, int enable)
{
 struct hfc_multi *hc = priv;

 hc->iclock_on = enable;
 return 0;
}
