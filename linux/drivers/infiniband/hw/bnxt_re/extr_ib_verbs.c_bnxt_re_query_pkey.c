
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef int u16 ;
struct ib_device {int dummy; } ;
struct TYPE_2__ {int pkey_tbl; } ;
struct bnxt_re_dev {TYPE_1__ qplib_res; } ;


 int bnxt_qplib_get_pkey (TYPE_1__*,int *,int ,int *) ;
 int memset (int *,int ,int) ;
 struct bnxt_re_dev* to_bnxt_re_dev (struct ib_device*,struct ib_device*) ;

int bnxt_re_query_pkey(struct ib_device *ibdev, u8 port_num,
         u16 index, u16 *pkey)
{
 struct bnxt_re_dev *rdev = to_bnxt_re_dev(ibdev, ibdev);



 memset(pkey, 0, sizeof(*pkey));
 return bnxt_qplib_get_pkey(&rdev->qplib_res,
       &rdev->qplib_res.pkey_tbl, index, pkey);
}
