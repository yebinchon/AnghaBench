
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct clone {scalar_t__ last_commit_jiffies; } ;


 scalar_t__ COMMIT_PERIOD ;
 int jiffies ;
 int time_in_range (int ,scalar_t__,scalar_t__) ;

__attribute__((used)) static bool need_commit_due_to_time(struct clone *clone)
{
 return !time_in_range(jiffies, clone->last_commit_jiffies,
         clone->last_commit_jiffies + COMMIT_PERIOD);
}
