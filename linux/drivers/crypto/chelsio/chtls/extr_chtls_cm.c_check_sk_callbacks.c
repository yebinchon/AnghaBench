
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sock {scalar_t__ sk_user_data; } ;
struct chtls_sock {struct sock* sk; } ;


 int CSK_CALLBACKS_CHKD ;
 int csk_flag_nochk (struct chtls_sock*,int ) ;
 int csk_set_flag (struct chtls_sock*,int ) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static void check_sk_callbacks(struct chtls_sock *csk)
{
 struct sock *sk = csk->sk;

 if (unlikely(sk->sk_user_data &&
       !csk_flag_nochk(csk, CSK_CALLBACKS_CHKD)))
  csk_set_flag(csk, CSK_CALLBACKS_CHKD);
}
