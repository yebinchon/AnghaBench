
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usnic_ib_vf {int vnic; } ;


 int usnic_ib_dump_vf_hdr ;
 int usnic_ib_qp_grp_dump_hdr ;
 int usnic_ib_qp_grp_dump_rows ;
 int usnic_vnic_dump (int ,char*,int,struct usnic_ib_vf*,int ,int ,int ) ;

__attribute__((used)) static void usnic_ib_dump_vf(struct usnic_ib_vf *vf, char *buf, int buf_sz)
{
 usnic_vnic_dump(vf->vnic, buf, buf_sz, vf,
   usnic_ib_dump_vf_hdr,
   usnic_ib_qp_grp_dump_hdr, usnic_ib_qp_grp_dump_rows);
}
