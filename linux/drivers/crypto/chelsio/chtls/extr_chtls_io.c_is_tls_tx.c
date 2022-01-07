
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ txkey; } ;
struct chtls_sock {TYPE_1__ tlshws; } ;



__attribute__((used)) static bool is_tls_tx(struct chtls_sock *csk)
{
 return csk->tlshws.txkey >= 0;
}
