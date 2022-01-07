
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u64 ;
typedef size_t u32 ;
struct brcm_sba_command {int flags; int data_len; int data; int cmd; int resp_len; int resp; } ;
struct TYPE_2__ {size_t cmds_count; struct brcm_sba_command* cmds; } ;
struct brcm_message {TYPE_1__ sba; } ;


 int BRCM_SBA_CMD_HAS_OUTPUT ;
 int BRCM_SBA_CMD_HAS_RESP ;
 int BRCM_SBA_CMD_TYPE_B ;
 int BRCM_SBA_CMD_TYPE_C ;
 int flexrm_dst_desc (int ,int ) ;
 int flexrm_dstt_desc (int ,int ) ;
 int flexrm_enqueue_desc (size_t,size_t,size_t,int ,void**,size_t*,void*,void*) ;
 int flexrm_flip_header_toggle (void*) ;
 int flexrm_imm_desc (int ) ;
 int flexrm_immt_desc (int ) ;
 int flexrm_null_desc (int) ;
 int flexrm_srct_desc (int ,int ) ;
 int flexrm_write_desc (void*,int ) ;
 int wmb () ;

__attribute__((used)) static void *flexrm_sba_write_descs(struct brcm_message *msg, u32 nhcnt,
         u32 reqid, void *desc_ptr, u32 toggle,
         void *start_desc, void *end_desc)
{
 u64 d;
 u32 i, nhpos = 0;
 struct brcm_sba_command *c;
 void *orig_desc_ptr = desc_ptr;


 for (i = 0; i < msg->sba.cmds_count; i++) {
  c = &msg->sba.cmds[i];

  if ((c->flags & BRCM_SBA_CMD_HAS_RESP) &&
      (c->flags & BRCM_SBA_CMD_HAS_OUTPUT)) {

   d = flexrm_dst_desc(c->resp, c->resp_len);
   flexrm_enqueue_desc(nhpos, nhcnt, reqid,
          d, &desc_ptr, &toggle,
          start_desc, end_desc);
   nhpos++;
  } else if (c->flags & BRCM_SBA_CMD_HAS_RESP) {

   d = flexrm_dstt_desc(c->resp, c->resp_len);
   flexrm_enqueue_desc(nhpos, nhcnt, reqid,
          d, &desc_ptr, &toggle,
          start_desc, end_desc);
   nhpos++;
  }

  if (c->flags & BRCM_SBA_CMD_HAS_OUTPUT) {

   d = flexrm_dstt_desc(c->data, c->data_len);
   flexrm_enqueue_desc(nhpos, nhcnt, reqid,
          d, &desc_ptr, &toggle,
          start_desc, end_desc);
   nhpos++;
  }

  if (c->flags & BRCM_SBA_CMD_TYPE_B) {

   d = flexrm_imm_desc(c->cmd);
   flexrm_enqueue_desc(nhpos, nhcnt, reqid,
          d, &desc_ptr, &toggle,
          start_desc, end_desc);
   nhpos++;
  } else {

   d = flexrm_immt_desc(c->cmd);
   flexrm_enqueue_desc(nhpos, nhcnt, reqid,
          d, &desc_ptr, &toggle,
          start_desc, end_desc);
   nhpos++;
  }

  if ((c->flags & BRCM_SBA_CMD_TYPE_B) ||
      (c->flags & BRCM_SBA_CMD_TYPE_C)) {

   d = flexrm_srct_desc(c->data, c->data_len);
   flexrm_enqueue_desc(nhpos, nhcnt, reqid,
          d, &desc_ptr, &toggle,
          start_desc, end_desc);
   nhpos++;
  }
 }


 flexrm_write_desc(desc_ptr, flexrm_null_desc(!toggle));


 wmb();


 flexrm_flip_header_toggle(orig_desc_ptr);

 return desc_ptr;
}
