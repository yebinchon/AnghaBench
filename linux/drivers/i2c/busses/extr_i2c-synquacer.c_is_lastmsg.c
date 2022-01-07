
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct synquacer_i2c {int msg_idx; int msg_num; } ;



__attribute__((used)) static inline int is_lastmsg(struct synquacer_i2c *i2c)
{
 return i2c->msg_idx >= (i2c->msg_num - 1);
}
