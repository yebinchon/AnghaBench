
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct chtls_sock {int kref; } ;


 int chtls_sock_free ;
 int kref_put (int *,int ) ;

__attribute__((used)) static inline void __chtls_sock_put(const char *fn, struct chtls_sock *csk)
{
 kref_put(&csk->kref, chtls_sock_free);
}
