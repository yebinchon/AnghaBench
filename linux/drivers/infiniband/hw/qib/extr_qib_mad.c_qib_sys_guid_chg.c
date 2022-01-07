
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct qib_ibport {int dummy; } ;
struct TYPE_4__ {int new_sys_guid; int lid; } ;
struct TYPE_6__ {TYPE_1__ ntc_145; } ;
struct ib_mad_notice_attr {TYPE_3__ details; int issuer_lid; scalar_t__ toggle_count; int trap_num; int prod_type_lsb; scalar_t__ prod_type_msb; int generic_type; } ;
typedef int data ;
struct TYPE_5__ {int lid; } ;


 int IB_NOTICE_PROD_CA ;
 int IB_NOTICE_TRAP_SYS_GUID_CHG ;
 int IB_NOTICE_TYPE_INFO ;
 int cpu_to_be16 (int ) ;
 int ib_qib_sys_image_guid ;
 int memset (TYPE_3__*,int ,int) ;
 TYPE_2__* ppd_from_ibp (struct qib_ibport*) ;
 int qib_send_trap (struct qib_ibport*,struct ib_mad_notice_attr*,int) ;

void qib_sys_guid_chg(struct qib_ibport *ibp)
{
 struct ib_mad_notice_attr data;

 data.generic_type = IB_NOTICE_TYPE_INFO;
 data.prod_type_msb = 0;
 data.prod_type_lsb = IB_NOTICE_PROD_CA;
 data.trap_num = IB_NOTICE_TRAP_SYS_GUID_CHG;
 data.issuer_lid = cpu_to_be16(ppd_from_ibp(ibp)->lid);
 data.toggle_count = 0;
 memset(&data.details, 0, sizeof(data.details));
 data.details.ntc_145.lid = data.issuer_lid;
 data.details.ntc_145.new_sys_guid = ib_qib_sys_image_guid;

 qib_send_trap(ibp, &data, sizeof(data));
}
