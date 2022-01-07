
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct v4l2_capability {int bus_info; int card; int driver; } ;
struct file {int dummy; } ;
struct f54_data {TYPE_1__* fn; } ;
struct TYPE_2__ {int dev; } ;


 int F54_NAME ;
 int SYNAPTICS_INPUT_DEVICE_NAME ;
 char* dev_name (int *) ;
 int snprintf (int ,int,char*,char*) ;
 int strlcpy (int ,int ,int) ;
 struct f54_data* video_drvdata (struct file*) ;

__attribute__((used)) static int rmi_f54_vidioc_querycap(struct file *file, void *priv,
       struct v4l2_capability *cap)
{
 struct f54_data *f54 = video_drvdata(file);

 strlcpy(cap->driver, F54_NAME, sizeof(cap->driver));
 strlcpy(cap->card, SYNAPTICS_INPUT_DEVICE_NAME, sizeof(cap->card));
 snprintf(cap->bus_info, sizeof(cap->bus_info),
  "rmi4:%s", dev_name(&f54->fn->dev));

 return 0;
}
