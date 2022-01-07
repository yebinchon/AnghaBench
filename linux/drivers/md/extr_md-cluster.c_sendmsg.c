
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct md_cluster_info {int dummy; } ;
struct cluster_msg {int dummy; } ;


 int __sendmsg (struct md_cluster_info*,struct cluster_msg*) ;
 int lock_comm (struct md_cluster_info*,int) ;
 int unlock_comm (struct md_cluster_info*) ;

__attribute__((used)) static int sendmsg(struct md_cluster_info *cinfo, struct cluster_msg *cmsg,
     bool mddev_locked)
{
 int ret;

 lock_comm(cinfo, mddev_locked);
 ret = __sendmsg(cinfo, cmsg);
 unlock_comm(cinfo);
 return ret;
}
