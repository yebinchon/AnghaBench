
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tls_device {int dummy; } ;
struct sock {scalar_t__ sk_state; } ;
struct chtls_dev {int dummy; } ;


 scalar_t__ TCP_LISTEN ;
 int chtls_stop_listen (struct chtls_dev*,struct sock*) ;
 struct chtls_dev* to_chtls_dev (struct tls_device*) ;

__attribute__((used)) static void chtls_destroy_hash(struct tls_device *dev, struct sock *sk)
{
 struct chtls_dev *cdev = to_chtls_dev(dev);

 if (sk->sk_state == TCP_LISTEN)
  chtls_stop_listen(cdev, sk);
}
