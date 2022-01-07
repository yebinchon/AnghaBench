
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct atp {TYPE_1__* intf; int * info; } ;
struct TYPE_2__ {int dev; } ;


 int EIO ;
 scalar_t__ atp_geyser_init (struct atp*) ;
 int dev_info (int *,char*) ;
 int fountain_info ;

__attribute__((used)) static int atp_handle_geyser(struct atp *dev)
{
 if (dev->info != &fountain_info) {

  if (atp_geyser_init(dev))
   return -EIO;

  dev_info(&dev->intf->dev, "Geyser mode initialized.\n");
 }

 return 0;
}
