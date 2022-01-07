
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
typedef int u32 ;
typedef int desc ;


 int HEADER_BDCOUNT_MAX ;
 int flexrm_header_desc (int,int,int,int,int,int) ;
 scalar_t__ flexrm_is_next_table_desc (void*) ;
 int flexrm_write_desc (void*,int ) ;

__attribute__((used)) static void flexrm_enqueue_desc(u32 nhpos, u32 nhcnt, u32 reqid,
     u64 desc, void **desc_ptr, u32 *toggle,
     void *start_desc, void *end_desc)
{
 u64 d;
 u32 nhavail, _toggle, _startpkt, _endpkt, _bdcount;


 if (nhcnt <= nhpos)
  return;
 if ((nhpos % HEADER_BDCOUNT_MAX == 0) && (nhcnt - nhpos)) {

  nhavail = (nhcnt - nhpos);
  _toggle = (nhpos == 0) ? !(*toggle) : (*toggle);
  _startpkt = (nhpos == 0) ? 0x1 : 0x0;
  _endpkt = (nhavail <= HEADER_BDCOUNT_MAX) ? 0x1 : 0x0;
  _bdcount = (nhavail <= HEADER_BDCOUNT_MAX) ?
    nhavail : HEADER_BDCOUNT_MAX;
  if (nhavail <= HEADER_BDCOUNT_MAX)
   _bdcount = nhavail;
  else
   _bdcount = HEADER_BDCOUNT_MAX;
  d = flexrm_header_desc(_toggle, _startpkt, _endpkt,
     _bdcount, 0x0, reqid);


  flexrm_write_desc(*desc_ptr, d);


  *desc_ptr += sizeof(desc);
  if (*desc_ptr == end_desc)
   *desc_ptr = start_desc;


  while (flexrm_is_next_table_desc(*desc_ptr)) {
   *toggle = (*toggle) ? 0 : 1;
   *desc_ptr += sizeof(desc);
   if (*desc_ptr == end_desc)
    *desc_ptr = start_desc;
  }
 }


 flexrm_write_desc(*desc_ptr, desc);


 *desc_ptr += sizeof(desc);
 if (*desc_ptr == end_desc)
  *desc_ptr = start_desc;


 while (flexrm_is_next_table_desc(*desc_ptr)) {
  *toggle = (*toggle) ? 0 : 1;
  *desc_ptr += sizeof(desc);
  if (*desc_ptr == end_desc)
   *desc_ptr = start_desc;
 }
}
