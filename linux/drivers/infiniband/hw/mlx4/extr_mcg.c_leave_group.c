
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct mcast_group {TYPE_1__* func; } ;
struct TYPE_2__ {int state; int join_state; } ;


 int MCAST_NOT_MEMBER ;
 int adjust_membership (struct mcast_group*,int ,int) ;

__attribute__((used)) static int leave_group(struct mcast_group *group, int slave, u8 leave_state)
{
 int ret = 0;

 adjust_membership(group, leave_state, -1);
 group->func[slave].join_state &= ~leave_state;
 if (!group->func[slave].join_state) {
  group->func[slave].state = MCAST_NOT_MEMBER;
  ret = 1;
 }
 return ret;
}
