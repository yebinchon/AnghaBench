
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct brcm_message {int type; } ;




 int ENOTSUPP ;
 int ERANGE ;
 void* ERR_PTR (int ) ;
 void* flexrm_sba_write_descs (struct brcm_message*,int ,int ,void*,int ,void*,void*) ;
 void* flexrm_spu_write_descs (struct brcm_message*,int ,int ,void*,int ,void*,void*) ;

__attribute__((used)) static void *flexrm_write_descs(struct brcm_message *msg, u32 nhcnt,
    u32 reqid, void *desc_ptr, u32 toggle,
    void *start_desc, void *end_desc)
{
 if (!msg || !desc_ptr || !start_desc || !end_desc)
  return ERR_PTR(-ENOTSUPP);

 if ((desc_ptr < start_desc) || (end_desc <= desc_ptr))
  return ERR_PTR(-ERANGE);

 switch (msg->type) {
 case 128:
  return flexrm_spu_write_descs(msg, nhcnt, reqid,
            desc_ptr, toggle,
            start_desc, end_desc);
 case 129:
  return flexrm_sba_write_descs(msg, nhcnt, reqid,
            desc_ptr, toggle,
            start_desc, end_desc);
 default:
  return ERR_PTR(-ENOTSUPP);
 };
}
