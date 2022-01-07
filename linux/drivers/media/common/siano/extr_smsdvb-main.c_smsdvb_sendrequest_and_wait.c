
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct smsdvb_client_t {int smsclient; } ;
struct completion {int dummy; } ;


 int ETIME ;
 int msecs_to_jiffies (int) ;
 int smsclient_sendrequest (int ,void*,size_t) ;
 scalar_t__ wait_for_completion_timeout (struct completion*,int ) ;

__attribute__((used)) static int smsdvb_sendrequest_and_wait(struct smsdvb_client_t *client,
     void *buffer, size_t size,
     struct completion *completion)
{
 int rc;

 rc = smsclient_sendrequest(client->smsclient, buffer, size);
 if (rc < 0)
  return rc;

 return wait_for_completion_timeout(completion,
        msecs_to_jiffies(2000)) ?
      0 : -ETIME;
}
