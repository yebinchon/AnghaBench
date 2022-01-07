
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int id; } ;
struct TYPE_4__ {TYPE_1__ set_report_reply; } ;
struct uhid_event {TYPE_2__ u; } ;
struct uhid_device {int running; } ;


 int EINVAL ;
 int uhid_report_wake_up (struct uhid_device*,int ,struct uhid_event*) ;

__attribute__((used)) static int uhid_dev_set_report_reply(struct uhid_device *uhid,
         struct uhid_event *ev)
{
 if (!uhid->running)
  return -EINVAL;

 uhid_report_wake_up(uhid, ev->u.set_report_reply.id, ev);
 return 0;
}
