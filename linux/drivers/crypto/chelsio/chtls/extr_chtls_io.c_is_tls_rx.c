
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ rxkey; } ;
struct chtls_sock {TYPE_1__ tlshws; } ;



__attribute__((used)) static bool is_tls_rx(struct chtls_sock *csk)
{
 return csk->tlshws.rxkey >= 0;
}
