
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct send_context {int hw_context; int dd; } ;


 int CREDIT_FORCE ;
 int CREDIT_FORCE_FORCE_RETURN_SMASK ;
 int SC (int ) ;
 int read_kctxt_csr (int ,int ,int ) ;
 int write_kctxt_csr (int ,int ,int ,int ) ;

void sc_return_credits(struct send_context *sc)
{
 if (!sc)
  return;


 write_kctxt_csr(sc->dd, sc->hw_context, SC(CREDIT_FORCE),
   SC(CREDIT_FORCE_FORCE_RETURN_SMASK));




 read_kctxt_csr(sc->dd, sc->hw_context, SC(CREDIT_FORCE));

 write_kctxt_csr(sc->dd, sc->hw_context, SC(CREDIT_FORCE), 0);
}
