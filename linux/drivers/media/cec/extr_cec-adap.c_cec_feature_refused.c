
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cec_msg {int dummy; } ;
struct cec_adapter {int dummy; } ;


 int CEC_OP_ABORT_REFUSED ;
 int cec_feature_abort_reason (struct cec_adapter*,struct cec_msg*,int ) ;

__attribute__((used)) static int cec_feature_refused(struct cec_adapter *adap, struct cec_msg *msg)
{
 return cec_feature_abort_reason(adap, msg,
     CEC_OP_ABORT_REFUSED);
}
