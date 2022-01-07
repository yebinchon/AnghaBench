
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct chtls_sock {int flags; } ;
typedef enum csk_flags { ____Placeholder_csk_flags } csk_flags ;


 int test_bit (int,int *) ;

__attribute__((used)) static inline int csk_flag_nochk(const struct chtls_sock *csk,
     enum csk_flags flag)
{
 return test_bit(flag, &csk->flags);
}
