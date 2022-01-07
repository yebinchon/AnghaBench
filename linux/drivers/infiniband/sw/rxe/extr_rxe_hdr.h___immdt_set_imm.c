
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rxe_immdt {int imm; } ;
typedef int __be32 ;



__attribute__((used)) static inline void __immdt_set_imm(void *arg, __be32 imm)
{
 struct rxe_immdt *immdt = arg;

 immdt->imm = imm;
}
