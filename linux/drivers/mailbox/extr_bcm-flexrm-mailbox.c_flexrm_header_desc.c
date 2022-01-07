
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
typedef int u32 ;


 int DESC_ENC (int ,int ,int ,int ) ;
 int DESC_TYPE_MASK ;
 int DESC_TYPE_SHIFT ;
 int HEADER_BDCOUNT_MASK ;
 int HEADER_BDCOUNT_SHIFT ;
 int HEADER_ENDPKT_MASK ;
 int HEADER_ENDPKT_SHIFT ;
 int HEADER_FLAGS_MASK ;
 int HEADER_FLAGS_SHIFT ;
 int HEADER_OPAQUE_MASK ;
 int HEADER_OPAQUE_SHIFT ;
 int HEADER_STARTPKT_MASK ;
 int HEADER_STARTPKT_SHIFT ;
 int HEADER_TOGGLE_MASK ;
 int HEADER_TOGGLE_SHIFT ;
 int HEADER_TYPE ;

__attribute__((used)) static u64 flexrm_header_desc(u32 toggle, u32 startpkt, u32 endpkt,
          u32 bdcount, u32 flags, u32 opaque)
{
 u64 desc = 0;

 DESC_ENC(desc, HEADER_TYPE, DESC_TYPE_SHIFT, DESC_TYPE_MASK);
 DESC_ENC(desc, toggle, HEADER_TOGGLE_SHIFT, HEADER_TOGGLE_MASK);
 DESC_ENC(desc, startpkt, HEADER_STARTPKT_SHIFT, HEADER_STARTPKT_MASK);
 DESC_ENC(desc, endpkt, HEADER_ENDPKT_SHIFT, HEADER_ENDPKT_MASK);
 DESC_ENC(desc, bdcount, HEADER_BDCOUNT_SHIFT, HEADER_BDCOUNT_MASK);
 DESC_ENC(desc, flags, HEADER_FLAGS_SHIFT, HEADER_FLAGS_MASK);
 DESC_ENC(desc, opaque, HEADER_OPAQUE_SHIFT, HEADER_OPAQUE_MASK);

 return desc;
}
