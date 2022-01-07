
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mtk_dsi {int dummy; } ;


 int DSI_VM_CMD_CON ;
 int TS_VFP_EN ;
 int VM_CMD_EN ;
 int mtk_dsi_mask (struct mtk_dsi*,int ,int ,int ) ;

__attribute__((used)) static void mtk_dsi_set_vm_cmd(struct mtk_dsi *dsi)
{
 mtk_dsi_mask(dsi, DSI_VM_CMD_CON, VM_CMD_EN, VM_CMD_EN);
 mtk_dsi_mask(dsi, DSI_VM_CMD_CON, TS_VFP_EN, TS_VFP_EN);
}
