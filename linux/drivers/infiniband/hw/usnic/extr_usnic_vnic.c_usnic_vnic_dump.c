
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vnic_dev_bar {int len; int vaddr; int bus_addr; } ;
struct usnic_vnic_res_chunk {int cnt; struct usnic_vnic_res** res; } ;
struct usnic_vnic_res {void* owner; int ctrl; int vnic_idx; int type; } ;
struct usnic_vnic {int res_lock; struct usnic_vnic_res_chunk* chunks; } ;


 int ARRAY_SIZE (struct usnic_vnic_res_chunk*) ;
 scalar_t__ scnprintf (char*,int,char*,...) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 struct vnic_dev_bar* usnic_vnic_get_bar (struct usnic_vnic*,int ) ;
 int usnic_vnic_get_index (struct usnic_vnic*) ;
 int usnic_vnic_res_type_to_str (int ) ;

int usnic_vnic_dump(struct usnic_vnic *vnic, char *buf,
   int buf_sz,
   void *hdr_obj,
   int (*printtitle)(void *, char*, int),
   int (*printcols)(char *, int),
   int (*printrow)(void *, char *, int))
{
 struct usnic_vnic_res_chunk *chunk;
 struct usnic_vnic_res *res;
 struct vnic_dev_bar *bar0;
 int i, j, offset;

 offset = 0;
 bar0 = usnic_vnic_get_bar(vnic, 0);
 offset += scnprintf(buf + offset, buf_sz - offset,
   "VF:%hu BAR0 bus_addr=%pa vaddr=0x%p size=%ld ",
   usnic_vnic_get_index(vnic),
   &bar0->bus_addr,
   bar0->vaddr, bar0->len);
 if (printtitle)
  offset += printtitle(hdr_obj, buf + offset, buf_sz - offset);
 offset += scnprintf(buf + offset, buf_sz - offset, "\n");
 offset += scnprintf(buf + offset, buf_sz - offset,
   "|RES\t|CTRL_PIN\t\t|IN_USE\t");
 if (printcols)
  offset += printcols(buf + offset, buf_sz - offset);
 offset += scnprintf(buf + offset, buf_sz - offset, "\n");

 spin_lock(&vnic->res_lock);
 for (i = 0; i < ARRAY_SIZE(vnic->chunks); i++) {
  chunk = &vnic->chunks[i];
  for (j = 0; j < chunk->cnt; j++) {
   res = chunk->res[j];
   offset += scnprintf(buf + offset, buf_sz - offset,
     "|%s[%u]\t|0x%p\t|%u\t",
     usnic_vnic_res_type_to_str(res->type),
     res->vnic_idx, res->ctrl, !!res->owner);
   if (printrow) {
    offset += printrow(res->owner, buf + offset,
       buf_sz - offset);
   }
   offset += scnprintf(buf + offset, buf_sz - offset,
      "\n");
  }
 }
 spin_unlock(&vnic->res_lock);
 return offset;
}
