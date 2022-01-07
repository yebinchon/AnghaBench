
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef int uint16_t ;
struct socket {int dummy; } ;


 int memset (char*,int ,int) ;
 int scnprintf (char*,int,char*,int,int *,int ) ;
 int usnic_transport_sock_get_addr (struct socket*,int*,int *,int *) ;

int usnic_transport_sock_to_str(char *buf, int buf_sz,
     struct socket *sock)
{
 int err;
 uint32_t addr;
 uint16_t port;
 int proto;

 memset(buf, 0, buf_sz);
 err = usnic_transport_sock_get_addr(sock, &proto, &addr, &port);
 if (err)
  return 0;

 return scnprintf(buf, buf_sz, "Proto:%u Addr:%pI4h Port:%hu",
   proto, &addr, port);
}
