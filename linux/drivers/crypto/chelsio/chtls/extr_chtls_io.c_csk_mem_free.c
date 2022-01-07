
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sock {int sk_wmem_queued; } ;
struct chtls_dev {int max_host_sndbuf; } ;



__attribute__((used)) static int csk_mem_free(struct chtls_dev *cdev, struct sock *sk)
{
 return (cdev->max_host_sndbuf - sk->sk_wmem_queued);
}
