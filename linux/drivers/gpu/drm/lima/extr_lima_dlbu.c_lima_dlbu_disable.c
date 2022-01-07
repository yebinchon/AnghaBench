
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lima_ip {int dummy; } ;
struct lima_device {struct lima_ip* ip; } ;


 int LIMA_DLBU_PP_ENABLE_MASK ;
 int dlbu_write (int ,int ) ;
 int lima_ip_dlbu ;

void lima_dlbu_disable(struct lima_device *dev)
{
 struct lima_ip *ip = dev->ip + lima_ip_dlbu;

 dlbu_write(LIMA_DLBU_PP_ENABLE_MASK, 0);
}
