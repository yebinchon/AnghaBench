
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct sur40_state {int dummy; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int SUR40_ACCEL_CAPS ;
 int SUR40_GET_VERSION ;
 int SUR40_SENSOR_CAPS ;
 int kfree (int *) ;
 int * kmalloc (int,int ) ;
 int sur40_command (struct sur40_state*,int ,int,int *,int) ;

__attribute__((used)) static int sur40_init(struct sur40_state *dev)
{
 int result;
 u8 *buffer;

 buffer = kmalloc(24, GFP_KERNEL);
 if (!buffer) {
  result = -ENOMEM;
  goto error;
 }


 result = sur40_command(dev, SUR40_GET_VERSION, 0x00, buffer, 12);
 if (result < 0)
  goto error;

 result = sur40_command(dev, SUR40_GET_VERSION, 0x01, buffer, 12);
 if (result < 0)
  goto error;

 result = sur40_command(dev, SUR40_GET_VERSION, 0x02, buffer, 12);
 if (result < 0)
  goto error;

 result = sur40_command(dev, SUR40_SENSOR_CAPS, 0x00, buffer, 24);
 if (result < 0)
  goto error;

 result = sur40_command(dev, SUR40_ACCEL_CAPS, 0x00, buffer, 5);
 if (result < 0)
  goto error;

 result = sur40_command(dev, SUR40_GET_VERSION, 0x03, buffer, 12);





error:
 kfree(buffer);
 return result;
}
