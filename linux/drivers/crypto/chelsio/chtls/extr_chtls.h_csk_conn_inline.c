
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct chtls_sock {int flags; } ;


 int CSK_CONN_INLINE ;
 int test_bit (int ,int *) ;

__attribute__((used)) static inline bool csk_conn_inline(const struct chtls_sock *csk)
{
 return test_bit(CSK_CONN_INLINE, &csk->flags);
}
