
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vl_arb_cache {int dummy; } ;
struct hfi1_pportdata {int dd; } ;


 int EINVAL ;






 int HI_PRIO_TABLE ;
 int LO_PRIO_TABLE ;
 int OPA_MAX_VLS ;
 int get_buffer_control (int ,void*,int *) ;
 int get_sc2vlnt (int ,void*) ;
 int get_vlarb_preempt (int ,int ,void*) ;
 int vl_arb_get_cache (struct vl_arb_cache*,void*) ;
 struct vl_arb_cache* vl_arb_lock_cache (struct hfi1_pportdata*,int ) ;
 int vl_arb_unlock_cache (struct hfi1_pportdata*,int ) ;

int fm_get_table(struct hfi1_pportdata *ppd, int which, void *t)

{
 int size;
 struct vl_arb_cache *vlc;

 switch (which) {
 case 131:
  size = 256;




  vlc = vl_arb_lock_cache(ppd, HI_PRIO_TABLE);
  vl_arb_get_cache(vlc, t);
  vl_arb_unlock_cache(ppd, HI_PRIO_TABLE);
  break;
 case 130:
  size = 256;




  vlc = vl_arb_lock_cache(ppd, LO_PRIO_TABLE);
  vl_arb_get_cache(vlc, t);
  vl_arb_unlock_cache(ppd, LO_PRIO_TABLE);
  break;
 case 133:
  size = get_buffer_control(ppd->dd, t, ((void*)0));
  break;
 case 132:
  size = get_sc2vlnt(ppd->dd, t);
  break;
 case 129:
  size = 256;

  get_vlarb_preempt(ppd->dd, OPA_MAX_VLS, t);
  break;
 case 128:
  size = 256;




  break;
 default:
  return -EINVAL;
 }
 return size;
}
