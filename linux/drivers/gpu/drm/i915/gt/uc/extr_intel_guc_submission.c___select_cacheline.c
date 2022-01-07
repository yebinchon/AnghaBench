
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct intel_guc {int db_cacheline; } ;


 int DRM_DEBUG_DRIVER (char*,unsigned long,int ,scalar_t__) ;
 scalar_t__ cache_line_size () ;
 unsigned long offset_in_page (int ) ;

__attribute__((used)) static unsigned long __select_cacheline(struct intel_guc *guc)
{
 unsigned long offset;


 offset = offset_in_page(guc->db_cacheline);


 guc->db_cacheline += cache_line_size();

 DRM_DEBUG_DRIVER("reserved cacheline 0x%lx, next 0x%x, linesize %u\n",
    offset, guc->db_cacheline, cache_line_size());
 return offset;
}
