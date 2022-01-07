
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cc_hw_desc {int dummy; } ;


 int memset (struct cc_hw_desc*,int ,int) ;

__attribute__((used)) static inline void hw_desc_init(struct cc_hw_desc *pdesc)
{
 memset(pdesc, 0, sizeof(struct cc_hw_desc));
}
