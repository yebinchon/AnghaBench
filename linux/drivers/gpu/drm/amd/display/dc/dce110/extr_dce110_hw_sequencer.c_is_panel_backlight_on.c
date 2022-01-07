
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct dce_hwseq {int dummy; } ;


 int LVTMA_BLON ;
 int LVTMA_PWRSEQ_CNTL ;
 int REG_GET (int ,int ,int*) ;

__attribute__((used)) static bool is_panel_backlight_on(struct dce_hwseq *hws)
{
 uint32_t value;

 REG_GET(LVTMA_PWRSEQ_CNTL, LVTMA_BLON, &value);

 return value;
}
