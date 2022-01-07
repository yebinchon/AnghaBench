
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ib_cq {int dummy; } ;


 int WARN_ONCE (int,char*,struct ib_cq*) ;

__attribute__((used)) static void ib_cq_completion_direct(struct ib_cq *cq, void *private)
{
 WARN_ONCE(1, "got unsolicited completion for CQ 0x%p\n", cq);
}
