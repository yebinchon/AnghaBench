
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stm32_cryp {int flags; } ;


 int FLG_ENCRYPT ;

__attribute__((used)) static inline bool is_encrypt(struct stm32_cryp *cryp)
{
 return cryp->flags & FLG_ENCRYPT;
}
