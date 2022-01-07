
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct udraw {int hdev; } ;
struct input_dev {int dummy; } ;


 int hid_hw_close (int ) ;
 struct udraw* input_get_drvdata (struct input_dev*) ;

__attribute__((used)) static void udraw_close(struct input_dev *dev)
{
 struct udraw *udraw = input_get_drvdata(dev);

 hid_hw_close(udraw->hdev);
}
