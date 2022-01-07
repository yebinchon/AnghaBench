
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct socket {int dummy; } ;
typedef int buf ;


 int ENOENT ;
 struct socket* ERR_PTR (int ) ;
 struct socket* sockfd_lookup (int,int*) ;
 int usnic_dbg (char*,char*) ;
 int usnic_err (char*,int,int) ;
 int usnic_transport_sock_to_str (char*,int,struct socket*) ;

struct socket *usnic_transport_get_socket(int sock_fd)
{
 struct socket *sock;
 int err;
 char buf[25];


 sock = sockfd_lookup(sock_fd, &err);
 if (!sock) {
  usnic_err("Unable to lookup socket for fd %d with err %d\n",
    sock_fd, err);
  return ERR_PTR(-ENOENT);
 }

 usnic_transport_sock_to_str(buf, sizeof(buf), sock);
 usnic_dbg("Get sock %s\n", buf);

 return sock;
}
