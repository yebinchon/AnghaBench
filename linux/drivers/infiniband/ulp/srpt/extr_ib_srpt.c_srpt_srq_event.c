
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ib_event {int event; } ;


 int pr_debug (char*,int ) ;

__attribute__((used)) static void srpt_srq_event(struct ib_event *event, void *ctx)
{
 pr_debug("SRQ event %d\n", event->event);
}
