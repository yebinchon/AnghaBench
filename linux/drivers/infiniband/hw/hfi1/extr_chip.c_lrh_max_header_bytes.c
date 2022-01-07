
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct hfi1_devdata {TYPE_1__** rcd; } ;
struct TYPE_2__ {int rcvhdrqentsize; } ;



u32 lrh_max_header_bytes(struct hfi1_devdata *dd)
{
 return (dd->rcd[0]->rcvhdrqentsize - 2 + 1 ) << 2;
}
