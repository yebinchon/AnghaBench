
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct host1x_syncpt_base {int requested; } ;



__attribute__((used)) static void host1x_syncpt_base_free(struct host1x_syncpt_base *base)
{
 if (base)
  base->requested = 0;
}
