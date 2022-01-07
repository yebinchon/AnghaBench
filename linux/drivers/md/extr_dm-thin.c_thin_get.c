
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct thin_c {int refcount; } ;


 int refcount_inc (int *) ;

__attribute__((used)) static void thin_get(struct thin_c *tc)
{
 refcount_inc(&tc->refcount);
}
