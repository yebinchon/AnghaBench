
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct mcast_group {TYPE_1__* func; } ;
struct TYPE_2__ {int join_state; scalar_t__ state; } ;


 scalar_t__ MCAST_MEMBER ;
 int adjust_membership (struct mcast_group*,int,int) ;

__attribute__((used)) static int join_group(struct mcast_group *group, int slave, u8 join_mask)
{
 int ret = 0;
 u8 join_state;


 join_state = join_mask & (~group->func[slave].join_state);
 adjust_membership(group, join_state, 1);
 group->func[slave].join_state |= join_state;
 if (group->func[slave].state != MCAST_MEMBER && join_state) {
  group->func[slave].state = MCAST_MEMBER;
  ret = 1;
 }
 return ret;
}
