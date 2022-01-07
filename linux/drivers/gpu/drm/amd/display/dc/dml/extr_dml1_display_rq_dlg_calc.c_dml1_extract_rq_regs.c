
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_20__ TYPE_9__ ;
typedef struct TYPE_19__ TYPE_8__ ;
typedef struct TYPE_18__ TYPE_7__ ;
typedef struct TYPE_17__ TYPE_6__ ;
typedef struct TYPE_16__ TYPE_5__ ;
typedef struct TYPE_15__ TYPE_4__ ;
typedef struct TYPE_14__ TYPE_3__ ;
typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;
typedef struct TYPE_11__ TYPE_10__ ;


struct TYPE_12__ {int det_buffer_size_kbytes; } ;
struct display_mode_lib {TYPE_1__ ip; } ;
struct TYPE_20__ {void* swath_height; } ;
struct _vcs_dpi_display_rq_regs_st {int drq_expansion_mode; int prq_expansion_mode; int mrq_expansion_mode; int crq_expansion_mode; unsigned int plane1_base_address; TYPE_9__ rq_regs_c; TYPE_9__ rq_regs_l; } ;
struct TYPE_18__ {scalar_t__ stored_swath_bytes; } ;
struct TYPE_17__ {scalar_t__ stored_swath_bytes; } ;
struct TYPE_19__ {TYPE_7__ rq_c; TYPE_6__ rq_l; } ;
struct TYPE_11__ {int chunk_bytes; } ;
struct TYPE_16__ {TYPE_10__ rq_l; TYPE_10__ rq_c; } ;
struct TYPE_14__ {int swath_height; } ;
struct TYPE_13__ {int swath_height; } ;
struct TYPE_15__ {TYPE_3__ rq_c; TYPE_2__ rq_l; } ;
struct _vcs_dpi_display_rq_params_st {TYPE_8__ misc; scalar_t__ yuv420; TYPE_5__ sizing; TYPE_4__ dlg; } ;


 void* dml_log2 (int ) ;
 double dml_round_to_multiple (unsigned int,int,int ) ;
 int extract_rq_sizing_regs (struct display_mode_lib*,TYPE_9__*,TYPE_10__) ;

void dml1_extract_rq_regs(
  struct display_mode_lib *mode_lib,
  struct _vcs_dpi_display_rq_regs_st *rq_regs,
  const struct _vcs_dpi_display_rq_params_st rq_param)
{
 unsigned int detile_buf_size_in_bytes = mode_lib->ip.det_buffer_size_kbytes * 1024;
 unsigned int detile_buf_plane1_addr = 0;

 extract_rq_sizing_regs(mode_lib, &(rq_regs->rq_regs_l), rq_param.sizing.rq_l);
 if (rq_param.yuv420)
  extract_rq_sizing_regs(mode_lib, &(rq_regs->rq_regs_c), rq_param.sizing.rq_c);

 rq_regs->rq_regs_l.swath_height = dml_log2(rq_param.dlg.rq_l.swath_height);
 rq_regs->rq_regs_c.swath_height = dml_log2(rq_param.dlg.rq_c.swath_height);




 if (rq_param.sizing.rq_l.chunk_bytes >= 32 * 1024) {
  rq_regs->drq_expansion_mode = 0;
 } else {
  rq_regs->drq_expansion_mode = 2;
 }
 rq_regs->prq_expansion_mode = 1;
 rq_regs->mrq_expansion_mode = 1;
 rq_regs->crq_expansion_mode = 1;

 if (rq_param.yuv420) {
  if ((double) rq_param.misc.rq_l.stored_swath_bytes
    / (double) rq_param.misc.rq_c.stored_swath_bytes <= 1.5) {
   detile_buf_plane1_addr = (detile_buf_size_in_bytes / 2.0 / 64.0);
  } else {
   detile_buf_plane1_addr = dml_round_to_multiple(
     (unsigned int) ((2.0 * detile_buf_size_in_bytes) / 3.0),
     256,
     0) / 64.0;
  }
 }
 rq_regs->plane1_base_address = detile_buf_plane1_addr;
}
