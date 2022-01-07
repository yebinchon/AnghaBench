
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct smscore_device_t {int gfp_buf_flags; int version_ex_done; int resume_done; } ;
struct sms_msg_hdr {int msg_length; } ;


 int ENOMEM ;
 int ETIME ;
 int GFP_KERNEL ;
 int MSG_SMS_GET_VERSION_EX_REQ ;
 scalar_t__ SMS_ALIGN_ADDRESS (void*) ;
 scalar_t__ SMS_DMA_ALIGNMENT ;
 int SMS_INIT_MSG (struct sms_msg_hdr*,int ,int) ;
 int kfree (void*) ;
 void* kmalloc (scalar_t__,int) ;
 int msecs_to_jiffies (int) ;
 int pr_err (char*,...) ;
 int smscore_sendrequest_and_wait (struct smscore_device_t*,struct sms_msg_hdr*,int ,int *) ;
 scalar_t__ wait_for_completion_timeout (int *,int ) ;

__attribute__((used)) static int smscore_detect_mode(struct smscore_device_t *coredev)
{
 void *buffer = kmalloc(sizeof(struct sms_msg_hdr) + SMS_DMA_ALIGNMENT,
          GFP_KERNEL | coredev->gfp_buf_flags);
 struct sms_msg_hdr *msg =
  (struct sms_msg_hdr *) SMS_ALIGN_ADDRESS(buffer);
 int rc;

 if (!buffer)
  return -ENOMEM;

 SMS_INIT_MSG(msg, MSG_SMS_GET_VERSION_EX_REQ,
       sizeof(struct sms_msg_hdr));

 rc = smscore_sendrequest_and_wait(coredev, msg, msg->msg_length,
       &coredev->version_ex_done);
 if (rc == -ETIME) {
  pr_err("MSG_SMS_GET_VERSION_EX_REQ failed first try\n");

  if (wait_for_completion_timeout(&coredev->resume_done,
      msecs_to_jiffies(5000))) {
   rc = smscore_sendrequest_and_wait(
    coredev, msg, msg->msg_length,
    &coredev->version_ex_done);
   if (rc < 0)
    pr_err("MSG_SMS_GET_VERSION_EX_REQ failed second try, rc %d\n",
     rc);
  } else
   rc = -ETIME;
 }

 kfree(buffer);

 return rc;
}
