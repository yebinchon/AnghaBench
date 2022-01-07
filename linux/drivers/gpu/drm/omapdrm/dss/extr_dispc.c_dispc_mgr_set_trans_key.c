
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct dispc_device {int dummy; } ;
typedef enum omap_dss_trans_key_type { ____Placeholder_omap_dss_trans_key_type } omap_dss_trans_key_type ;
typedef enum omap_channel { ____Placeholder_omap_channel } omap_channel ;


 int DISPC_MGR_FLD_TCKSELECTION ;
 int DISPC_TRANS_COLOR (int) ;
 int dispc_write_reg (struct dispc_device*,int ,int ) ;
 int mgr_fld_write (struct dispc_device*,int,int ,int) ;

__attribute__((used)) static void dispc_mgr_set_trans_key(struct dispc_device *dispc,
        enum omap_channel ch,
        enum omap_dss_trans_key_type type,
        u32 trans_key)
{
 mgr_fld_write(dispc, ch, DISPC_MGR_FLD_TCKSELECTION, type);

 dispc_write_reg(dispc, DISPC_TRANS_COLOR(ch), trans_key);
}
