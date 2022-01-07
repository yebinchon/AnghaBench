
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct input_dev {int dummy; } ;
struct iforce {int dummy; } ;


 int FF_CMD_GAIN ;
 int iforce_send_packet (struct iforce*,int ,unsigned char*) ;
 struct iforce* input_get_drvdata (struct input_dev*) ;

__attribute__((used)) static void iforce_set_gain(struct input_dev *dev, u16 gain)
{
 struct iforce *iforce = input_get_drvdata(dev);
 unsigned char data[3];

 data[0] = gain >> 9;
 iforce_send_packet(iforce, FF_CMD_GAIN, data);
}
