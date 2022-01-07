
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stm32_cryp {int flags; } ;


 int FLG_DES ;

__attribute__((used)) static inline bool is_des(struct stm32_cryp *cryp)
{
 return cryp->flags & FLG_DES;
}
