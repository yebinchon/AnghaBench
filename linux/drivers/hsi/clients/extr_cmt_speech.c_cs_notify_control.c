
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_2__ {int chardev_queue; } ;


 TYPE_1__ cs_char_data ;
 int cs_notify (int ,int *) ;

__attribute__((used)) static void cs_notify_control(u32 message)
{
 cs_notify(message, &cs_char_data.chardev_queue);
}
