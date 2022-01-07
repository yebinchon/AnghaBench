
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int u8 ;
struct TYPE_5__ {int l; int ApplId; int Messagenumber; int * m; int par; int Subcommand; int Command; scalar_t__ p; } ;
typedef TYPE_1__ _cmsg ;


 int byteTRcpy (int *,int *) ;
 int capi_cmd2par (int ,int ) ;
 int memset (TYPE_1__*,int ,int) ;
 int message_2_pars (TYPE_1__*) ;
 int wordTRcpy (int *,int*) ;

unsigned capi_message2cmsg(_cmsg *cmsg, u8 *msg)
{
 memset(cmsg, 0, sizeof(_cmsg));
 cmsg->m = msg;
 cmsg->l = 8;
 cmsg->p = 0;
 byteTRcpy(cmsg->m + 4, &cmsg->Command);
 byteTRcpy(cmsg->m + 5, &cmsg->Subcommand);
 cmsg->par = capi_cmd2par(cmsg->Command, cmsg->Subcommand);
 if (!cmsg->par)
  return 1;

 message_2_pars(cmsg);

 wordTRcpy(msg + 0, &cmsg->l);
 wordTRcpy(cmsg->m + 2, &cmsg->ApplId);
 wordTRcpy(cmsg->m + 6, &cmsg->Messagenumber);

 return 0;
}
