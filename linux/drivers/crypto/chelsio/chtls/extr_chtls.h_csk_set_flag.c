
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct chtls_sock {int flags; } ;
typedef enum csk_flags { ____Placeholder_csk_flags } csk_flags ;


 int __set_bit (int,int *) ;

__attribute__((used)) static inline void csk_set_flag(struct chtls_sock *csk,
    enum csk_flags flag)
{
 __set_bit(flag, &csk->flags);
}
