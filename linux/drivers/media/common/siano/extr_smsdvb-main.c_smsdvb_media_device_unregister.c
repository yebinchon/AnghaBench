
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct smsdvb_client_t {struct smscore_device_t* coredev; } ;
struct smscore_device_t {int * media_dev; } ;


 int kfree (int *) ;
 int media_device_cleanup (int *) ;
 int media_device_unregister (int *) ;

__attribute__((used)) static void smsdvb_media_device_unregister(struct smsdvb_client_t *client)
{
}
