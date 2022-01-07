
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iwch_qp {int flags; } ;


 int QP_QUIESCED ;

__attribute__((used)) static inline int qp_quiesced(struct iwch_qp *qhp)
{
 return qhp->flags & QP_QUIESCED;
}
