
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u8 ;
typedef int u64 ;
struct TYPE_2__ {int prio; } ;
struct bnxt_re_dev {scalar_t__ cur_prio_map; TYPE_1__ qplib_res; int * cosq; } ;


 int bnxt_qplib_map_tc2cos (TYPE_1__*,int *) ;
 scalar_t__ bnxt_re_get_priority_mask (struct bnxt_re_dev*) ;
 int bnxt_re_parse_cid_map (scalar_t__,scalar_t__*,int *) ;
 int bnxt_re_query_hwrm_pri2cos (struct bnxt_re_dev*,int ,int *) ;
 int bnxt_re_update_gid (struct bnxt_re_dev*) ;
 int dev_warn (int ,char*,scalar_t__,...) ;
 int rdev_to_dev (struct bnxt_re_dev*) ;

__attribute__((used)) static int bnxt_re_setup_qos(struct bnxt_re_dev *rdev)
{
 u8 prio_map = 0;
 u64 cid_map;
 int rc;


 prio_map = bnxt_re_get_priority_mask(rdev);

 if (prio_map == rdev->cur_prio_map)
  return 0;
 rdev->cur_prio_map = prio_map;

 rc = bnxt_re_query_hwrm_pri2cos(rdev, 0, &cid_map);
 if (rc) {
  dev_warn(rdev_to_dev(rdev), "no cos for p_mask %x\n", prio_map);
  return rc;
 }

 bnxt_re_parse_cid_map(prio_map, (u8 *)&cid_map, rdev->cosq);


 rc = bnxt_qplib_map_tc2cos(&rdev->qplib_res, rdev->cosq);
 if (rc) {
  dev_warn(rdev_to_dev(rdev), "no tc for cos{%x, %x}\n",
    rdev->cosq[0], rdev->cosq[1]);
  return rc;
 }




 if ((prio_map == 0 && rdev->qplib_res.prio) ||
     (prio_map != 0 && !rdev->qplib_res.prio)) {
  rdev->qplib_res.prio = prio_map ? 1 : 0;

  bnxt_re_update_gid(rdev);
 }

 return 0;
}
