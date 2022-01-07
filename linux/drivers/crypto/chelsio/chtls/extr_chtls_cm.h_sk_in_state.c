
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sock {int sk_state; } ;



__attribute__((used)) static inline unsigned int sk_in_state(const struct sock *sk,
           unsigned int states)
{
 return states & (1 << sk->sk_state);
}
