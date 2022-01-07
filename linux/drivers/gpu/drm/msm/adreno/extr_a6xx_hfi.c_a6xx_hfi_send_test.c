
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct a6xx_hfi_msg_test {int member_0; } ;
struct a6xx_gmu {int dummy; } ;
typedef int msg ;


 int HFI_H2F_MSG_TEST ;
 int a6xx_hfi_send_msg (struct a6xx_gmu*,int ,struct a6xx_hfi_msg_test*,int,int *,int ) ;

__attribute__((used)) static int a6xx_hfi_send_test(struct a6xx_gmu *gmu)
{
 struct a6xx_hfi_msg_test msg = { 0 };

 return a6xx_hfi_send_msg(gmu, HFI_H2F_MSG_TEST, &msg, sizeof(msg),
  ((void*)0), 0);
}
