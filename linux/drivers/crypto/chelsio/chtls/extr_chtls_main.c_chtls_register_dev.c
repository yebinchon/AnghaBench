
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct tls_device {int kref; int release; int unhash; int hash; int feature; int name; } ;
struct chtls_dev {int cdev_state; TYPE_2__* lldi; struct tls_device tlsdev; } ;
struct TYPE_4__ {TYPE_1__** ports; } ;
struct TYPE_3__ {int name; } ;


 int CHTLS_CDEV_STATE_UP ;
 int TLS_DEVICE_NAME_MAX ;
 int chtls_create_hash ;
 int chtls_destroy_hash ;
 int chtls_dev_release ;
 int chtls_inline_feature ;
 int kref_init (int *) ;
 int strlcat (int ,int ,int ) ;
 int strlcpy (int ,char*,int ) ;
 int tls_register_device (struct tls_device*) ;

__attribute__((used)) static void chtls_register_dev(struct chtls_dev *cdev)
{
 struct tls_device *tlsdev = &cdev->tlsdev;

 strlcpy(tlsdev->name, "chtls", TLS_DEVICE_NAME_MAX);
 strlcat(tlsdev->name, cdev->lldi->ports[0]->name,
  TLS_DEVICE_NAME_MAX);
 tlsdev->feature = chtls_inline_feature;
 tlsdev->hash = chtls_create_hash;
 tlsdev->unhash = chtls_destroy_hash;
 tlsdev->release = chtls_dev_release;
 kref_init(&tlsdev->kref);
 tls_register_device(tlsdev);
 cdev->cdev_state = CHTLS_CDEV_STATE_UP;
}
