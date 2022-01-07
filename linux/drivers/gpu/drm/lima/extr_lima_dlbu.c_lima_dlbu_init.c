
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lima_ip {struct lima_device* dev; } ;
struct lima_device {int dlbu_dma; } ;


 int LIMA_DLBU_MASTER_TLLIST_PHYS_ADDR ;
 int LIMA_DLBU_MASTER_TLLIST_VADDR ;
 int LIMA_VA_RESERVE_DLBU ;
 int dlbu_write (int ,int) ;

int lima_dlbu_init(struct lima_ip *ip)
{
 struct lima_device *dev = ip->dev;

 dlbu_write(LIMA_DLBU_MASTER_TLLIST_PHYS_ADDR, dev->dlbu_dma | 1);
 dlbu_write(LIMA_DLBU_MASTER_TLLIST_VADDR, LIMA_VA_RESERVE_DLBU);

 return 0;
}
