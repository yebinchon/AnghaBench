
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct cc_drvdata {int axim_mon_offset; } ;


 int AXIM_MON_COMP_VALUE ;
 int FIELD_GET (int ,int ) ;
 int cc_ioread (struct cc_drvdata*,int ) ;

__attribute__((used)) static inline u32 cc_axi_comp_count(struct cc_drvdata *drvdata)
{
 return FIELD_GET(AXIM_MON_COMP_VALUE,
    cc_ioread(drvdata, drvdata->axim_mon_offset));
}
