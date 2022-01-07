
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_3__ {int comp_handler; } ;
struct siw_cq {TYPE_2__* notify; TYPE_1__ base_cq; } ;
struct TYPE_4__ {int flags; } ;


 int READ_ONCE (int ) ;
 int SIW_NOTIFY_NEXT_COMPLETION ;
 int SIW_NOTIFY_NOT ;
 int SIW_NOTIFY_SOLICITED ;
 int SIW_WQE_SOLICITED ;
 int WRITE_ONCE (int ,int ) ;

__attribute__((used)) static bool siw_cq_notify_now(struct siw_cq *cq, u32 flags)
{
 u32 cq_notify;

 if (!cq->base_cq.comp_handler)
  return 0;


 cq_notify = READ_ONCE(cq->notify->flags);

 if ((cq_notify & SIW_NOTIFY_NEXT_COMPLETION) ||
     ((cq_notify & SIW_NOTIFY_SOLICITED) &&
      (flags & SIW_WQE_SOLICITED))) {






  WRITE_ONCE(cq->notify->flags, SIW_NOTIFY_NOT);

  return 1;
 }
 return 0;
}
