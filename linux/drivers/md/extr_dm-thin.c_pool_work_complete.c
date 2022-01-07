
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pool_work {int complete; } ;


 int complete (int *) ;

__attribute__((used)) static void pool_work_complete(struct pool_work *pw)
{
 complete(&pw->complete);
}
