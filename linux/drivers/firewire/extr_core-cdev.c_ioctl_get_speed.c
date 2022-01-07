
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef union ioctl_arg {int dummy; } ioctl_arg ;
struct client {TYPE_1__* device; } ;
struct TYPE_2__ {int max_speed; } ;



__attribute__((used)) static int ioctl_get_speed(struct client *client, union ioctl_arg *arg)
{
 return client->device->max_speed;
}
