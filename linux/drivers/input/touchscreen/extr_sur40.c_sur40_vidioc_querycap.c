
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_capability {int bus_info; int card; int driver; } ;
struct sur40_state {int usbdev; } ;
struct file {int dummy; } ;


 int DRIVER_LONG ;
 int DRIVER_SHORT ;
 int strlcpy (int ,int ,int) ;
 int usb_make_path (int ,int ,int) ;
 struct sur40_state* video_drvdata (struct file*) ;

__attribute__((used)) static int sur40_vidioc_querycap(struct file *file, void *priv,
     struct v4l2_capability *cap)
{
 struct sur40_state *sur40 = video_drvdata(file);

 strlcpy(cap->driver, DRIVER_SHORT, sizeof(cap->driver));
 strlcpy(cap->card, DRIVER_LONG, sizeof(cap->card));
 usb_make_path(sur40->usbdev, cap->bus_info, sizeof(cap->bus_info));
 return 0;
}
