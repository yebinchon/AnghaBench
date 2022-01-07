
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct socket {int dummy; } ;
struct msghdr {int msg_flags; int * msg_name; } ;
struct kvec {char* member_0; size_t member_1; } ;


 int kernel_recvmsg (struct socket*,struct msghdr*,struct kvec*,int,size_t,int) ;

__attribute__((used)) static inline int ksock_recv(struct socket *sock, char *buf, size_t size,
        int flags)
{
 struct kvec iov = { buf, size };
 struct msghdr msg = { .msg_name = ((void*)0), .msg_flags = flags };

 return kernel_recvmsg(sock, &msg, &iov, 1, size, flags);
}
