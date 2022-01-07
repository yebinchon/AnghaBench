
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int discard_passdown; } ;
struct pool_c {TYPE_1__ adjusted_pf; } ;



__attribute__((used)) static bool passdown_enabled(struct pool_c *pt)
{
 return pt->adjusted_pf.discard_passdown;
}
