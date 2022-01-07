
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sock {int dummy; } ;


 int LISTEN_INFO_HASH_SIZE ;

__attribute__((used)) static int listen_hashfn(const struct sock *sk)
{
 return ((unsigned long)sk >> 10) & (LISTEN_INFO_HASH_SIZE - 1);
}
