
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int data; } ;
struct i3c_ccc_cmd_dest {TYPE_1__ payload; } ;


 int kfree (int ) ;

__attribute__((used)) static void i3c_ccc_cmd_dest_cleanup(struct i3c_ccc_cmd_dest *dest)
{
 kfree(dest->payload.data);
}
