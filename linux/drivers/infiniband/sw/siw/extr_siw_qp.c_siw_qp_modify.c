
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct siw_qp_attrs {size_t state; } ;
struct TYPE_2__ {size_t state; } ;
struct siw_qp {TYPE_1__ attrs; } ;
typedef enum siw_qp_attr_mask { ____Placeholder_siw_qp_attr_mask } siw_qp_attr_mask ;


 int SIW_QP_ATTR_STATE ;





 int siw_dbg_qp (struct siw_qp*,char*,int ,int ) ;
 int siw_qp_cm_drop (struct siw_qp*,int ) ;
 int siw_qp_modify_nonstate (struct siw_qp*,struct siw_qp_attrs*,int) ;
 int siw_qp_nextstate_from_close (struct siw_qp*,struct siw_qp_attrs*) ;
 int siw_qp_nextstate_from_idle (struct siw_qp*,struct siw_qp_attrs*,int) ;
 int siw_qp_nextstate_from_rts (struct siw_qp*,struct siw_qp_attrs*) ;
 int siw_qp_nextstate_from_term (struct siw_qp*,struct siw_qp_attrs*) ;
 int * siw_qp_state_to_string ;

int siw_qp_modify(struct siw_qp *qp, struct siw_qp_attrs *attrs,
    enum siw_qp_attr_mask mask)
{
 int drop_conn = 0, rv = 0;

 if (!mask)
  return 0;

 siw_dbg_qp(qp, "state: %s => %s\n",
     siw_qp_state_to_string[qp->attrs.state],
     siw_qp_state_to_string[attrs->state]);

 if (mask != SIW_QP_ATTR_STATE)
  siw_qp_modify_nonstate(qp, attrs, mask);

 if (!(mask & SIW_QP_ATTR_STATE))
  return 0;

 switch (qp->attrs.state) {
 case 131:
 case 130:
  rv = siw_qp_nextstate_from_idle(qp, attrs, mask);
  break;

 case 129:
  drop_conn = siw_qp_nextstate_from_rts(qp, attrs);
  break;

 case 128:
  siw_qp_nextstate_from_term(qp, attrs);
  break;

 case 132:
  siw_qp_nextstate_from_close(qp, attrs);
  break;
 default:
  break;
 }
 if (drop_conn)
  siw_qp_cm_drop(qp, 0);

 return rv;
}
