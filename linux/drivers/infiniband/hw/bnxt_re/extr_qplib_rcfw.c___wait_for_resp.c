
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct bnxt_qplib_rcfw {int cmdq_depth; int cmdq_bitmap; int waitq; } ;


 int ETIMEDOUT ;
 int RCFW_CMD_WAIT_TIME_MS ;
 int msecs_to_jiffies (int ) ;
 int test_bit (int,int ) ;
 int wait_event_timeout (int ,int,int ) ;

__attribute__((used)) static int __wait_for_resp(struct bnxt_qplib_rcfw *rcfw, u16 cookie)
{
 u16 cbit;
 int rc;

 cbit = cookie % rcfw->cmdq_depth;
 rc = wait_event_timeout(rcfw->waitq,
    !test_bit(cbit, rcfw->cmdq_bitmap),
    msecs_to_jiffies(RCFW_CMD_WAIT_TIME_MS));
 return rc ? 0 : -ETIMEDOUT;
}
