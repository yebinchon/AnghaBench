
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct icc_rpm_smd_req {int value; int nbytes; int key; } ;
typedef int req ;


 int RPM_KEY_BW ;
 int cpu_to_le32 (int) ;
 int icc_smd_rpm ;
 int qcom_rpm_smd_write (int ,int,int,int,struct icc_rpm_smd_req*,int) ;

int qcom_icc_rpm_smd_send(int ctx, int rsc_type, int id, u32 val)
{
 struct icc_rpm_smd_req req = {
  .key = cpu_to_le32(RPM_KEY_BW),
  .nbytes = cpu_to_le32(sizeof(u32)),
  .value = cpu_to_le32(val),
 };

 return qcom_rpm_smd_write(icc_smd_rpm, ctx, rsc_type, id, &req,
      sizeof(req));
}
