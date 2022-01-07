
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int scnprintf (char*,int,char*) ;

int usnic_ib_qp_grp_dump_hdr(char *buf, int buf_sz)
{
 return scnprintf(buf, buf_sz, "|QPN\t|State\t|PID\t|VF Idx\t|Fil ID");
}
