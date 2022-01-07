
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int icc_smd_rpm ;

bool qcom_icc_rpm_smd_available(void)
{
 return !!icc_smd_rpm;
}
