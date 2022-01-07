
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pool {scalar_t__ last_commit_jiffies; } ;


 scalar_t__ COMMIT_PERIOD ;
 int jiffies ;
 int time_in_range (int ,scalar_t__,scalar_t__) ;

__attribute__((used)) static int need_commit_due_to_time(struct pool *pool)
{
 return !time_in_range(jiffies, pool->last_commit_jiffies,
         pool->last_commit_jiffies + COMMIT_PERIOD);
}
