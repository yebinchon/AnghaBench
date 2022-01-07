
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct stv090x_state {int dummy; } ;


 int FE_DEBUG ;
 int FE_ERROR ;
 int PLROOT0 ;
 int PLROOT1 ;
 int PLROOT2 ;
 scalar_t__ STV090x_WRITE_DEMOD (struct stv090x_state*,int ,int) ;
 int dprintk (int ,int,char*,...) ;

__attribute__((used)) static int stv090x_set_pls(struct stv090x_state *state, u32 pls_code)
{
 dprintk(FE_DEBUG, 1, "Set Gold PLS code %d", pls_code);
 if (STV090x_WRITE_DEMOD(state, PLROOT0, pls_code & 0xff) < 0)
  goto err;
 if (STV090x_WRITE_DEMOD(state, PLROOT1, (pls_code >> 8) & 0xff) < 0)
  goto err;
 if (STV090x_WRITE_DEMOD(state, PLROOT2, 0x04 | (pls_code >> 16)) < 0)
  goto err;
 return 0;
err:
 dprintk(FE_ERROR, 1, "I/O error");
 return -1;
}
