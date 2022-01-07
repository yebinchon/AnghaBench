
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ib_event {int event; } ;


 int ib_event_msg (int ) ;
 int iser_err (char*,int ,int ) ;

__attribute__((used)) static void iser_qp_event_callback(struct ib_event *cause, void *context)
{
 iser_err("qp event %s (%d)\n",
   ib_event_msg(cause->event), cause->event);
}
