
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct throttle {scalar_t__ threshold; } ;


 scalar_t__ THROTTLE_THRESHOLD ;
 scalar_t__ jiffies ;

__attribute__((used)) static void throttle_work_start(struct throttle *t)
{
 t->threshold = jiffies + THROTTLE_THRESHOLD;
}
