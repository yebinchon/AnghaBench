
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sock {int dummy; } ;


 int SKB_MAX_HEAD (int) ;
 int send_should_push (struct sock*,int) ;

__attribute__((used)) static int select_size(struct sock *sk, int io_len, int flags, int len)
{
 const int pgbreak = SKB_MAX_HEAD(len);






 if (io_len > pgbreak)
  return 0;




 if (!send_should_push(sk, flags))
  return pgbreak;

 return io_len;
}
