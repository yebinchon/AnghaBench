
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mpcc {int dummy; } ;
struct mpc {struct mpcc* mpcc_array; } ;
struct dcn10_mpc {int num_mpcc; } ;


 int ASSERT (int) ;
 struct dcn10_mpc* TO_DCN10_MPC (struct mpc*) ;

struct mpcc *mpc1_get_mpcc(struct mpc *mpc, int mpcc_id)
{
 struct dcn10_mpc *mpc10 = TO_DCN10_MPC(mpc);

 ASSERT(mpcc_id < mpc10->num_mpcc);
 return &(mpc->mpcc_array[mpcc_id]);
}
