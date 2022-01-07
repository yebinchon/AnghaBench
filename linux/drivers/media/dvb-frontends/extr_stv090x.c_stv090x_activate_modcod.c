
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stv090x_state {int dummy; } ;


 int FE_ERROR ;
 int MODCODLST0 ;
 int MODCODLST1 ;
 int MODCODLST2 ;
 int MODCODLST3 ;
 int MODCODLST4 ;
 int MODCODLST5 ;
 int MODCODLST6 ;
 int MODCODLST7 ;
 int MODCODLST8 ;
 int MODCODLST9 ;
 int MODCODLSTA ;
 int MODCODLSTB ;
 int MODCODLSTC ;
 int MODCODLSTD ;
 int MODCODLSTE ;
 int MODCODLSTF ;
 scalar_t__ STV090x_WRITE_DEMOD (struct stv090x_state*,int ,int) ;
 int dprintk (int ,int,char*) ;

__attribute__((used)) static int stv090x_activate_modcod(struct stv090x_state *state)
{
 if (STV090x_WRITE_DEMOD(state, MODCODLST0, 0xff) < 0)
  goto err;
 if (STV090x_WRITE_DEMOD(state, MODCODLST1, 0xfc) < 0)
  goto err;
 if (STV090x_WRITE_DEMOD(state, MODCODLST2, 0xcc) < 0)
  goto err;
 if (STV090x_WRITE_DEMOD(state, MODCODLST3, 0xcc) < 0)
  goto err;
 if (STV090x_WRITE_DEMOD(state, MODCODLST4, 0xcc) < 0)
  goto err;
 if (STV090x_WRITE_DEMOD(state, MODCODLST5, 0xcc) < 0)
  goto err;
 if (STV090x_WRITE_DEMOD(state, MODCODLST6, 0xcc) < 0)
  goto err;
 if (STV090x_WRITE_DEMOD(state, MODCODLST7, 0xcc) < 0)
  goto err;
 if (STV090x_WRITE_DEMOD(state, MODCODLST8, 0xcc) < 0)
  goto err;
 if (STV090x_WRITE_DEMOD(state, MODCODLST9, 0xcc) < 0)
  goto err;
 if (STV090x_WRITE_DEMOD(state, MODCODLSTA, 0xcc) < 0)
  goto err;
 if (STV090x_WRITE_DEMOD(state, MODCODLSTB, 0xcc) < 0)
  goto err;
 if (STV090x_WRITE_DEMOD(state, MODCODLSTC, 0xcc) < 0)
  goto err;
 if (STV090x_WRITE_DEMOD(state, MODCODLSTD, 0xcc) < 0)
  goto err;
 if (STV090x_WRITE_DEMOD(state, MODCODLSTE, 0xcc) < 0)
  goto err;
 if (STV090x_WRITE_DEMOD(state, MODCODLSTF, 0xcf) < 0)
  goto err;

 return 0;
err:
 dprintk(FE_ERROR, 1, "I/O error");
 return -1;
}
