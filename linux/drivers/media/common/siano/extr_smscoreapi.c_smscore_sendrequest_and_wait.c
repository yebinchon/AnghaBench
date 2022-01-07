
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct smscore_device_t {int (* sendrequest_handler ) (int ,void*,size_t) ;int context; } ;
struct completion {int dummy; } ;


 int EINVAL ;
 int ETIME ;
 int SMS_PROTOCOL_MAX_RAOUNDTRIP_MS ;
 int init_completion (struct completion*) ;
 int msecs_to_jiffies (int ) ;
 int pr_info (char*,int) ;
 int stub1 (int ,void*,size_t) ;
 scalar_t__ wait_for_completion_timeout (struct completion*,int ) ;

__attribute__((used)) static int smscore_sendrequest_and_wait(struct smscore_device_t *coredev,
  void *buffer, size_t size, struct completion *completion) {
 int rc;

 if (!completion)
  return -EINVAL;
 init_completion(completion);

 rc = coredev->sendrequest_handler(coredev->context, buffer, size);
 if (rc < 0) {
  pr_info("sendrequest returned error %d\n", rc);
  return rc;
 }

 return wait_for_completion_timeout(completion,
   msecs_to_jiffies(SMS_PROTOCOL_MAX_RAOUNDTRIP_MS)) ?
   0 : -ETIME;
}
