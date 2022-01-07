
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct its_device {int its; } ;
struct its_collection {int dummy; } ;
struct TYPE_2__ {int event_id; struct its_collection* col; struct its_device* dev; } ;
struct its_cmd_desc {TYPE_1__ its_movi_cmd; } ;


 int its_build_movi_cmd ;
 int its_send_single_command (int ,int ,struct its_cmd_desc*) ;

__attribute__((used)) static void its_send_movi(struct its_device *dev,
     struct its_collection *col, u32 id)
{
 struct its_cmd_desc desc;

 desc.its_movi_cmd.dev = dev;
 desc.its_movi_cmd.col = col;
 desc.its_movi_cmd.event_id = id;

 its_send_single_command(dev->its, its_build_movi_cmd, &desc);
}
