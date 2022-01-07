
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_4__ {int lock; } ;
struct lima_ip {scalar_t__ id; TYPE_2__ data; struct lima_device* dev; } ;
struct lima_device {int dev; TYPE_1__* ip; } ;
struct TYPE_3__ {scalar_t__ present; } ;


 int ENODEV ;
 int LIMA_L2_CACHE_ENABLE ;
 int LIMA_L2_CACHE_ENABLE_ACCESS ;
 int LIMA_L2_CACHE_ENABLE_READ_ALLOCATE ;
 int LIMA_L2_CACHE_MAX_READS ;
 int LIMA_L2_CACHE_SIZE ;
 int dev_info (int ,char*,int,int,int,int) ;
 int l2_cache_read (int ) ;
 int l2_cache_write (int ,int) ;
 scalar_t__ lima_ip_l2_cache2 ;
 int lima_ip_pp4 ;
 int lima_ip_pp7 ;
 int lima_l2_cache_flush (struct lima_ip*) ;
 int spin_lock_init (int *) ;

int lima_l2_cache_init(struct lima_ip *ip)
{
 int i, err;
 u32 size;
 struct lima_device *dev = ip->dev;


 if (ip->id == lima_ip_l2_cache2) {
  for (i = lima_ip_pp4; i <= lima_ip_pp7; i++) {
   if (dev->ip[i].present)
    break;
  }
  if (i > lima_ip_pp7)
   return -ENODEV;
 }

 spin_lock_init(&ip->data.lock);

 size = l2_cache_read(LIMA_L2_CACHE_SIZE);
 dev_info(dev->dev, "l2 cache %uK, %u-way, %ubyte cache line, %ubit external bus\n",
   1 << (((size >> 16) & 0xff) - 10),
   1 << ((size >> 8) & 0xff),
   1 << (size & 0xff),
   1 << ((size >> 24) & 0xff));

 err = lima_l2_cache_flush(ip);
 if (err)
  return err;

 l2_cache_write(LIMA_L2_CACHE_ENABLE,
         LIMA_L2_CACHE_ENABLE_ACCESS|LIMA_L2_CACHE_ENABLE_READ_ALLOCATE);
 l2_cache_write(LIMA_L2_CACHE_MAX_READS, 0x1c);

 return 0;
}
