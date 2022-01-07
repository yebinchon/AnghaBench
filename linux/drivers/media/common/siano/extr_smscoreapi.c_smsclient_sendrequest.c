
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct smscore_device_t {int (* sendrequest_handler ) (int ,void*,size_t) ;int context; } ;
struct smscore_client_t {struct smscore_device_t* coredev; } ;
struct sms_msg_hdr {int msg_src_id; } ;


 int EINVAL ;
 int pr_err (char*) ;
 int smscore_validate_client (struct smscore_device_t*,struct smscore_client_t*,int ,int ) ;
 int stub1 (int ,void*,size_t) ;

int smsclient_sendrequest(struct smscore_client_t *client,
     void *buffer, size_t size)
{
 struct smscore_device_t *coredev;
 struct sms_msg_hdr *phdr = (struct sms_msg_hdr *) buffer;
 int rc;

 if (!client) {
  pr_err("Got NULL client\n");
  return -EINVAL;
 }

 coredev = client->coredev;


 if (!coredev) {
  pr_err("Got NULL coredev\n");
  return -EINVAL;
 }

 rc = smscore_validate_client(client->coredev, client, 0,
         phdr->msg_src_id);
 if (rc < 0)
  return rc;

 return coredev->sendrequest_handler(coredev->context, buffer, size);
}
