
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
typedef int u16 ;
struct bnxt_qplib_rcfw {int cmdq_depth; int cmdq_bitmap; } ;


 int ETIMEDOUT ;
 scalar_t__ RCFW_BLOCKED_CMD_WAIT_COUNT ;
 int bnxt_qplib_service_creq (unsigned long) ;
 int mdelay (int) ;
 scalar_t__ test_bit (int,int ) ;

__attribute__((used)) static int __block_for_resp(struct bnxt_qplib_rcfw *rcfw, u16 cookie)
{
 u32 count = RCFW_BLOCKED_CMD_WAIT_COUNT;
 u16 cbit;

 cbit = cookie % rcfw->cmdq_depth;
 if (!test_bit(cbit, rcfw->cmdq_bitmap))
  goto done;
 do {
  mdelay(1);
  bnxt_qplib_service_creq((unsigned long)rcfw);
 } while (test_bit(cbit, rcfw->cmdq_bitmap) && --count);
done:
 return count ? 0 : -ETIMEDOUT;
}
