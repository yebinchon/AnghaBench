
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {void* s_addr; } ;
struct sockaddr_in {TYPE_1__ sin_addr; void* sin_port; void* sin_family; } ;
struct qed_iwarp_cm_info {int * remote_ip; int * local_ip; int remote_port; int local_port; } ;
struct iw_cm_event {int remote_addr; int local_addr; } ;


 void* AF_INET ;
 void* htonl (int ) ;
 void* htons (int ) ;

__attribute__((used)) static inline void
qedr_fill_sockaddr4(const struct qed_iwarp_cm_info *cm_info,
      struct iw_cm_event *event)
{
 struct sockaddr_in *laddr = (struct sockaddr_in *)&event->local_addr;
 struct sockaddr_in *raddr = (struct sockaddr_in *)&event->remote_addr;

 laddr->sin_family = AF_INET;
 raddr->sin_family = AF_INET;

 laddr->sin_port = htons(cm_info->local_port);
 raddr->sin_port = htons(cm_info->remote_port);

 laddr->sin_addr.s_addr = htonl(cm_info->local_ip[0]);
 raddr->sin_addr.s_addr = htonl(cm_info->remote_ip[0]);
}
