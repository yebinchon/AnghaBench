
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct psmouse {int dummy; } ;
struct delayed_work {int dummy; } ;


 int kpsmoused_wq ;
 int queue_delayed_work (int ,struct delayed_work*,unsigned long) ;

void psmouse_queue_work(struct psmouse *psmouse, struct delayed_work *work,
  unsigned long delay)
{
 queue_delayed_work(kpsmoused_wq, work, delay);
}
