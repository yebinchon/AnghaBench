
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct hfi1_devdata {int dummy; } ;


 int adjust_rcvctrl (struct hfi1_devdata*,int ,int ) ;

__attribute__((used)) static inline void clear_rcvctrl(struct hfi1_devdata *dd, u64 clear)
{
 adjust_rcvctrl(dd, 0, clear);
}
