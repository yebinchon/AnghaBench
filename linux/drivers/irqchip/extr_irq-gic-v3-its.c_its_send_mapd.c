
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct its_device {int its; } ;
struct TYPE_2__ {int valid; struct its_device* dev; } ;
struct its_cmd_desc {TYPE_1__ its_mapd_cmd; } ;


 int its_build_mapd_cmd ;
 int its_send_single_command (int ,int ,struct its_cmd_desc*) ;

__attribute__((used)) static void its_send_mapd(struct its_device *dev, int valid)
{
 struct its_cmd_desc desc;

 desc.its_mapd_cmd.dev = dev;
 desc.its_mapd_cmd.valid = !!valid;

 its_send_single_command(dev->its, its_build_mapd_cmd, &desc);
}
