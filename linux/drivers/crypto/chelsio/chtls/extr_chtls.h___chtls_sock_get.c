
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct chtls_sock {int kref; } ;


 int kref_get (int *) ;

__attribute__((used)) static inline void __chtls_sock_get(const char *fn,
        struct chtls_sock *csk)
{
 kref_get(&csk->kref);
}
