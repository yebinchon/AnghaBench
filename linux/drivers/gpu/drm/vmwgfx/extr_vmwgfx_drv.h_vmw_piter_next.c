
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vmw_piter {int (* next ) (struct vmw_piter*) ;} ;


 int stub1 (struct vmw_piter*) ;

__attribute__((used)) static inline bool vmw_piter_next(struct vmw_piter *viter)
{
 return viter->next(viter);
}
