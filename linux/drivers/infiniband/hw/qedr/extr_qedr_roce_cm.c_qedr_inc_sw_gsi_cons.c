
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct qedr_qp_hwq_info {int gsi_cons; int max_wr; } ;



void qedr_inc_sw_gsi_cons(struct qedr_qp_hwq_info *info)
{
 info->gsi_cons = (info->gsi_cons + 1) % info->max_wr;
}
