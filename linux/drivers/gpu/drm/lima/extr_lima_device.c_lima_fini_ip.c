
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lima_ip_desc {int (* fini ) (struct lima_ip*) ;} ;
struct lima_ip {scalar_t__ present; } ;
struct lima_device {struct lima_ip* ip; } ;


 struct lima_ip_desc* lima_ip_desc ;
 int stub1 (struct lima_ip*) ;

__attribute__((used)) static void lima_fini_ip(struct lima_device *ldev, int index)
{
 struct lima_ip_desc *desc = lima_ip_desc + index;
 struct lima_ip *ip = ldev->ip + index;

 if (ip->present)
  desc->fini(ip);
}
