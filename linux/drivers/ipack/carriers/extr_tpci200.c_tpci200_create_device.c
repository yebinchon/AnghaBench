
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct tpci200_board {scalar_t__* mod_mem; TYPE_1__* info; } ;
struct ipack_device {int slot; TYPE_2__* region; int release; int bus; } ;
typedef enum ipack_space { ____Placeholder_ipack_space } ipack_space ;
struct TYPE_4__ {int size; scalar_t__ start; } ;
struct TYPE_3__ {int ipack_bus; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int IPACK_SPACE_COUNT ;
 int ipack_device_add (struct ipack_device*) ;
 int ipack_device_init (struct ipack_device*) ;
 int ipack_put_device (struct ipack_device*) ;
 struct ipack_device* kzalloc (int,int ) ;
 int tpci200_release_device ;
 int* tpci200_space_interval ;
 int * tpci200_space_size ;

__attribute__((used)) static int tpci200_create_device(struct tpci200_board *tpci200, int i)
{
 int ret;
 enum ipack_space space;
 struct ipack_device *dev =
  kzalloc(sizeof(struct ipack_device), GFP_KERNEL);
 if (!dev)
  return -ENOMEM;
 dev->slot = i;
 dev->bus = tpci200->info->ipack_bus;
 dev->release = tpci200_release_device;

 for (space = 0; space < IPACK_SPACE_COUNT; space++) {
  dev->region[space].start =
   tpci200->mod_mem[space]
   + tpci200_space_interval[space] * i;
  dev->region[space].size = tpci200_space_size[space];
 }

 ret = ipack_device_init(dev);
 if (ret < 0) {
  ipack_put_device(dev);
  return ret;
 }

 ret = ipack_device_add(dev);
 if (ret < 0)
  ipack_put_device(dev);

 return ret;
}
