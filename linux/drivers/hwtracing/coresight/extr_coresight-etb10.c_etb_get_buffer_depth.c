
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct etb_drvdata {scalar_t__ base; } ;


 scalar_t__ ETB_RAM_DEPTH_REG ;
 unsigned int readl_relaxed (scalar_t__) ;

__attribute__((used)) static inline unsigned int etb_get_buffer_depth(struct etb_drvdata *drvdata)
{
 return readl_relaxed(drvdata->base + ETB_RAM_DEPTH_REG);
}
