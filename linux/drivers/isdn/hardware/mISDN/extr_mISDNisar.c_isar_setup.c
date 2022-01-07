
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
struct isar_hw {TYPE_2__* ch; } ;
struct TYPE_3__ {scalar_t__ state; } ;
struct TYPE_4__ {int mml; int dpath; TYPE_1__ bch; } ;


 int ISAR_HIS_DPS1 ;
 int ISAR_HIS_DPS2 ;
 int ISAR_HIS_P12CFG ;
 int ISDN_P_NONE ;
 int modeisar (TYPE_2__*,int ) ;
 int send_mbox (struct isar_hw*,int,int,int,int*) ;

__attribute__((used)) static void
isar_setup(struct isar_hw *isar)
{
 u8 msg;
 int i;


 msg = 61;
 for (i = 0; i < 2; i++) {

  send_mbox(isar, (i ? ISAR_HIS_DPS2 : ISAR_HIS_DPS1) |
     ISAR_HIS_P12CFG, 4, 1, &msg);
  isar->ch[i].mml = msg;
  isar->ch[i].bch.state = 0;
  isar->ch[i].dpath = i + 1;
  modeisar(&isar->ch[i], ISDN_P_NONE);
 }
}
