
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct pmic8xxx_kp {int * keystate; int dev; } ;
typedef int new_state ;


 int EINVAL ;
 int PM8XXX_MAX_ROWS ;
 int __pmic8xxx_kp_scan_matrix (struct pmic8xxx_kp*,int *,int *) ;
 int dev_dbg (int ,char*) ;
 int memcpy (int *,int *,int) ;
 int pmic8xxx_detect_ghost_keys (struct pmic8xxx_kp*,int *) ;
 int pmic8xxx_kp_read_matrix (struct pmic8xxx_kp*,int *,int *) ;

__attribute__((used)) static int pmic8xxx_kp_scan_matrix(struct pmic8xxx_kp *kp, unsigned int events)
{
 u16 new_state[PM8XXX_MAX_ROWS];
 u16 old_state[PM8XXX_MAX_ROWS];
 int rc;

 switch (events) {
 case 0x1:
  rc = pmic8xxx_kp_read_matrix(kp, new_state, ((void*)0));
  if (rc < 0)
   return rc;


  if (pmic8xxx_detect_ghost_keys(kp, new_state))
   return 0;
  __pmic8xxx_kp_scan_matrix(kp, new_state, kp->keystate);
  memcpy(kp->keystate, new_state, sizeof(new_state));
 break;
 case 0x3:
  rc = pmic8xxx_kp_read_matrix(kp, new_state, old_state);
  if (rc < 0)
   return rc;

  __pmic8xxx_kp_scan_matrix(kp, old_state, kp->keystate);
  __pmic8xxx_kp_scan_matrix(kp, new_state, old_state);
  memcpy(kp->keystate, new_state, sizeof(new_state));
 break;
 case 0x2:
  dev_dbg(kp->dev, "Some key events were lost\n");
  rc = pmic8xxx_kp_read_matrix(kp, new_state, old_state);
  if (rc < 0)
   return rc;
  __pmic8xxx_kp_scan_matrix(kp, old_state, kp->keystate);
  __pmic8xxx_kp_scan_matrix(kp, new_state, old_state);
  memcpy(kp->keystate, new_state, sizeof(new_state));
 break;
 default:
  rc = -EINVAL;
 }
 return rc;
}
