
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct its_device {int its; } ;
struct TYPE_2__ {int event_id; struct its_device* dev; } ;
struct its_cmd_desc {TYPE_1__ its_discard_cmd; } ;


 int its_build_discard_cmd ;
 int its_send_single_command (int ,int ,struct its_cmd_desc*) ;

__attribute__((used)) static void its_send_discard(struct its_device *dev, u32 id)
{
 struct its_cmd_desc desc;

 desc.its_discard_cmd.dev = dev;
 desc.its_discard_cmd.event_id = id;

 its_send_single_command(dev->its, its_build_discard_cmd, &desc);
}
