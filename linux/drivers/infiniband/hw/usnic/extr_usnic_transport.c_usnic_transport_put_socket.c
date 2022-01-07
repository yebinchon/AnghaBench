
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct socket {int dummy; } ;
typedef int buf ;


 int sockfd_put (struct socket*) ;
 int usnic_dbg (char*,char*) ;
 int usnic_transport_sock_to_str (char*,int,struct socket*) ;

void usnic_transport_put_socket(struct socket *sock)
{
 char buf[100];

 usnic_transport_sock_to_str(buf, sizeof(buf), sock);
 usnic_dbg("Put sock %s\n", buf);
 sockfd_put(sock);
}
