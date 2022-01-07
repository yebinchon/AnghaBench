
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct i40iw_sc_ceq {int dummy; } ;
typedef enum i40iw_status_code { ____Placeholder_i40iw_status_code } i40iw_status_code ;


 int i40iw_sc_cceq_create_done (struct i40iw_sc_ceq*) ;
 int i40iw_sc_ceq_create (struct i40iw_sc_ceq*,int ,int) ;

__attribute__((used)) static enum i40iw_status_code i40iw_sc_cceq_create(struct i40iw_sc_ceq *ceq, u64 scratch)
{
 enum i40iw_status_code ret_code;

 ret_code = i40iw_sc_ceq_create(ceq, scratch, 1);
 if (!ret_code)
  ret_code = i40iw_sc_cceq_create_done(ceq);
 return ret_code;
}
