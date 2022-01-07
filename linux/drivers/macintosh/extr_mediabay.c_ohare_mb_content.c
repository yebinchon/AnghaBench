
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct media_bay_info {int dummy; } ;


 int MB_IN32 (struct media_bay_info*,int ) ;
 int OHARE_MBCR ;

__attribute__((used)) static u8
ohare_mb_content(struct media_bay_info *bay)
{
 return (MB_IN32(bay, OHARE_MBCR) >> 12) & 7;
}
