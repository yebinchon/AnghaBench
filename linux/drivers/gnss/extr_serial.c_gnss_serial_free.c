
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gnss_serial {int gdev; } ;


 int gnss_put_device (int ) ;
 int kfree (struct gnss_serial*) ;

void gnss_serial_free(struct gnss_serial *gserial)
{
 gnss_put_device(gserial->gdev);
 kfree(gserial);
}
