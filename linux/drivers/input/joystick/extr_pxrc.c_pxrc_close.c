
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pxrc {int is_open; int pm_mutex; int urb; } ;
struct input_dev {int dummy; } ;


 struct pxrc* input_get_drvdata (struct input_dev*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int usb_kill_urb (int ) ;

__attribute__((used)) static void pxrc_close(struct input_dev *input)
{
 struct pxrc *pxrc = input_get_drvdata(input);

 mutex_lock(&pxrc->pm_mutex);
 usb_kill_urb(pxrc->urb);
 pxrc->is_open = 0;
 mutex_unlock(&pxrc->pm_mutex);
}
