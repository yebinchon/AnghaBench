
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct atp {int urb; scalar_t__ open; } ;


 int EIO ;
 int GFP_KERNEL ;
 int atp_handle_geyser (struct atp*) ;
 scalar_t__ usb_submit_urb (int ,int ) ;

__attribute__((used)) static int atp_recover(struct atp *dev)
{
 int error;

 error = atp_handle_geyser(dev);
 if (error)
  return error;

 if (dev->open && usb_submit_urb(dev->urb, GFP_KERNEL))
  return -EIO;

 return 0;
}
