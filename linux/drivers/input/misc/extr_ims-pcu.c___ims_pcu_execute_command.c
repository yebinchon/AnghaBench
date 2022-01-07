
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;
struct ims_pcu {int dev; int cmd_done; scalar_t__ expected_response; } ;


 int ETIMEDOUT ;
 int dev_dbg (int ,char*,scalar_t__) ;
 int ims_pcu_send_command (struct ims_pcu*,scalar_t__,void const*,size_t) ;
 int init_completion (int *) ;
 int msecs_to_jiffies (int) ;
 int wait_for_completion_timeout (int *,int ) ;

__attribute__((used)) static int __ims_pcu_execute_command(struct ims_pcu *pcu,
         u8 command, const void *data, size_t len,
         u8 expected_response, int response_time)
{
 int error;

 pcu->expected_response = expected_response;
 init_completion(&pcu->cmd_done);

 error = ims_pcu_send_command(pcu, command, data, len);
 if (error)
  return error;

 if (expected_response &&
     !wait_for_completion_timeout(&pcu->cmd_done,
      msecs_to_jiffies(response_time))) {
  dev_dbg(pcu->dev, "Command 0x%02x timed out\n", command);
  return -ETIMEDOUT;
 }

 return 0;
}
