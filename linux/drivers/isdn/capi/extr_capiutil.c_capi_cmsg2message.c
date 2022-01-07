
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int u8 ;
struct TYPE_4__ {int l; int ApplId; int Messagenumber; int * m; int Subcommand; int Command; int par; scalar_t__ p; } ;
typedef TYPE_1__ _cmsg ;


 int byteTLcpy (int *,int *) ;
 int capi_cmd2par (int ,int ) ;
 int pars_2_message (TYPE_1__*) ;
 int wordTLcpy (int *,int*) ;

unsigned capi_cmsg2message(_cmsg *cmsg, u8 *msg)
{
 cmsg->m = msg;
 cmsg->l = 8;
 cmsg->p = 0;
 cmsg->par = capi_cmd2par(cmsg->Command, cmsg->Subcommand);
 if (!cmsg->par)
  return 1;

 pars_2_message(cmsg);

 wordTLcpy(msg + 0, &cmsg->l);
 byteTLcpy(cmsg->m + 4, &cmsg->Command);
 byteTLcpy(cmsg->m + 5, &cmsg->Subcommand);
 wordTLcpy(cmsg->m + 2, &cmsg->ApplId);
 wordTLcpy(cmsg->m + 6, &cmsg->Messagenumber);

 return 0;
}
