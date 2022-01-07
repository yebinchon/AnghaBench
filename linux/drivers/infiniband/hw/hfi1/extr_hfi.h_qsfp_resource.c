
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct hfi1_devdata {int hfi1_id; } ;


 int i2c_target (int ) ;

__attribute__((used)) static inline u32 qsfp_resource(struct hfi1_devdata *dd)
{
 return i2c_target(dd->hfi1_id);
}
