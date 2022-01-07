
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cec_fh {scalar_t__ mode_initiator; } ;
struct cec_adapter {struct cec_fh const* cec_initiator; struct cec_fh const* cec_follower; } ;


 scalar_t__ CEC_MODE_NO_INITIATOR ;

__attribute__((used)) static bool cec_is_busy(const struct cec_adapter *adap,
   const struct cec_fh *fh)
{
 bool valid_initiator = adap->cec_initiator && adap->cec_initiator == fh;
 bool valid_follower = adap->cec_follower && adap->cec_follower == fh;




 if (valid_initiator || valid_follower)
  return 0;




 return adap->cec_initiator ||
        fh->mode_initiator == CEC_MODE_NO_INITIATOR;
}
