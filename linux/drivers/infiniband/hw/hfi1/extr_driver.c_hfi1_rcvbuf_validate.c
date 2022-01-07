
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;
typedef int u32 ;
typedef scalar_t__ u16 ;


 int MAX_EAGER_BUFFER ;
 int MAX_EXPECTED_BUFFER ;
 int MIN_EAGER_BUFFER ;
 int PAGE_ALIGNED (int) ;
 int PAGE_SIZE ;
 scalar_t__ PT_EAGER ;
 scalar_t__ ilog2 (int) ;
 scalar_t__ unlikely (int) ;

int hfi1_rcvbuf_validate(u32 size, u8 type, u16 *encoded)
{
 if (unlikely(!PAGE_ALIGNED(size)))
  return 0;
 if (unlikely(size < MIN_EAGER_BUFFER))
  return 0;
 if (size >
     (type == PT_EAGER ? MAX_EAGER_BUFFER : MAX_EXPECTED_BUFFER))
  return 0;
 if (encoded)
  *encoded = ilog2(size / PAGE_SIZE) + 1;
 return 1;
}
