; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dml/extr_display_rq_dlg_helpers.c_print__dlg_regs_st.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dml/extr_display_rq_dlg_helpers.c_print__dlg_regs_st.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.display_mode_lib = type { i32 }
%struct.TYPE_3__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [56 x i8] c"DML_RQ_DLG_CALC: =====================================\0A\00", align 1
@.str.1 = private unnamed_addr constant [38 x i8] c"DML_RQ_DLG_CALC: DISPLAY_DLG_REGS_ST\0A\00", align 1
@.str.2 = private unnamed_addr constant [61 x i8] c"DML_RQ_DLG_CALC:    refcyc_h_blank_end              = 0x%0x\0A\00", align 1
@.str.3 = private unnamed_addr constant [61 x i8] c"DML_RQ_DLG_CALC:    dlg_vblank_end                  = 0x%0x\0A\00", align 1
@.str.4 = private unnamed_addr constant [61 x i8] c"DML_RQ_DLG_CALC:    min_dst_y_next_start            = 0x%0x\0A\00", align 1
@.str.5 = private unnamed_addr constant [61 x i8] c"DML_RQ_DLG_CALC:    refcyc_per_htotal               = 0x%0x\0A\00", align 1
@.str.6 = private unnamed_addr constant [61 x i8] c"DML_RQ_DLG_CALC:    refcyc_x_after_scaler           = 0x%0x\0A\00", align 1
@.str.7 = private unnamed_addr constant [61 x i8] c"DML_RQ_DLG_CALC:    dst_y_after_scaler              = 0x%0x\0A\00", align 1
@.str.8 = private unnamed_addr constant [61 x i8] c"DML_RQ_DLG_CALC:    dst_y_prefetch                  = 0x%0x\0A\00", align 1
@.str.9 = private unnamed_addr constant [61 x i8] c"DML_RQ_DLG_CALC:    dst_y_per_vm_vblank             = 0x%0x\0A\00", align 1
@.str.10 = private unnamed_addr constant [61 x i8] c"DML_RQ_DLG_CALC:    dst_y_per_row_vblank            = 0x%0x\0A\00", align 1
@.str.11 = private unnamed_addr constant [61 x i8] c"DML_RQ_DLG_CALC:    dst_y_per_vm_flip               = 0x%0x\0A\00", align 1
@.str.12 = private unnamed_addr constant [61 x i8] c"DML_RQ_DLG_CALC:    dst_y_per_row_flip              = 0x%0x\0A\00", align 1
@.str.13 = private unnamed_addr constant [61 x i8] c"DML_RQ_DLG_CALC:    ref_freq_to_pix_freq            = 0x%0x\0A\00", align 1
@.str.14 = private unnamed_addr constant [61 x i8] c"DML_RQ_DLG_CALC:    vratio_prefetch                 = 0x%0x\0A\00", align 1
@.str.15 = private unnamed_addr constant [61 x i8] c"DML_RQ_DLG_CALC:    vratio_prefetch_c               = 0x%0x\0A\00", align 1
@.str.16 = private unnamed_addr constant [61 x i8] c"DML_RQ_DLG_CALC:    refcyc_per_pte_group_vblank_l   = 0x%0x\0A\00", align 1
@.str.17 = private unnamed_addr constant [61 x i8] c"DML_RQ_DLG_CALC:    refcyc_per_pte_group_vblank_c   = 0x%0x\0A\00", align 1
@.str.18 = private unnamed_addr constant [61 x i8] c"DML_RQ_DLG_CALC:    refcyc_per_meta_chunk_vblank_l  = 0x%0x\0A\00", align 1
@.str.19 = private unnamed_addr constant [61 x i8] c"DML_RQ_DLG_CALC:    refcyc_per_meta_chunk_vblank_c  = 0x%0x\0A\00", align 1
@.str.20 = private unnamed_addr constant [61 x i8] c"DML_RQ_DLG_CALC:    refcyc_per_pte_group_flip_l     = 0x%0x\0A\00", align 1
@.str.21 = private unnamed_addr constant [61 x i8] c"DML_RQ_DLG_CALC:    refcyc_per_pte_group_flip_c     = 0x%0x\0A\00", align 1
@.str.22 = private unnamed_addr constant [61 x i8] c"DML_RQ_DLG_CALC:    refcyc_per_meta_chunk_flip_l    = 0x%0x\0A\00", align 1
@.str.23 = private unnamed_addr constant [61 x i8] c"DML_RQ_DLG_CALC:    refcyc_per_meta_chunk_flip_c    = 0x%0x\0A\00", align 1
@.str.24 = private unnamed_addr constant [61 x i8] c"DML_RQ_DLG_CALC:    dst_y_per_pte_row_nom_l         = 0x%0x\0A\00", align 1
@.str.25 = private unnamed_addr constant [61 x i8] c"DML_RQ_DLG_CALC:    dst_y_per_pte_row_nom_c         = 0x%0x\0A\00", align 1
@.str.26 = private unnamed_addr constant [61 x i8] c"DML_RQ_DLG_CALC:    refcyc_per_pte_group_nom_l      = 0x%0x\0A\00", align 1
@.str.27 = private unnamed_addr constant [61 x i8] c"DML_RQ_DLG_CALC:    refcyc_per_pte_group_nom_c      = 0x%0x\0A\00", align 1
@.str.28 = private unnamed_addr constant [61 x i8] c"DML_RQ_DLG_CALC:    dst_y_per_meta_row_nom_l        = 0x%0x\0A\00", align 1
@.str.29 = private unnamed_addr constant [61 x i8] c"DML_RQ_DLG_CALC:    dst_y_per_meta_row_nom_c        = 0x%0x\0A\00", align 1
@.str.30 = private unnamed_addr constant [61 x i8] c"DML_RQ_DLG_CALC:    refcyc_per_meta_chunk_nom_l     = 0x%0x\0A\00", align 1
@.str.31 = private unnamed_addr constant [61 x i8] c"DML_RQ_DLG_CALC:    refcyc_per_meta_chunk_nom_c     = 0x%0x\0A\00", align 1
@.str.32 = private unnamed_addr constant [61 x i8] c"DML_RQ_DLG_CALC:    refcyc_per_line_delivery_pre_l  = 0x%0x\0A\00", align 1
@.str.33 = private unnamed_addr constant [61 x i8] c"DML_RQ_DLG_CALC:    refcyc_per_line_delivery_pre_c  = 0x%0x\0A\00", align 1
@.str.34 = private unnamed_addr constant [61 x i8] c"DML_RQ_DLG_CALC:    refcyc_per_line_delivery_l      = 0x%0x\0A\00", align 1
@.str.35 = private unnamed_addr constant [61 x i8] c"DML_RQ_DLG_CALC:    refcyc_per_line_delivery_c      = 0x%0x\0A\00", align 1
@.str.36 = private unnamed_addr constant [61 x i8] c"DML_RQ_DLG_CALC:    chunk_hdl_adjust_cur0           = 0x%0x\0A\00", align 1
@.str.37 = private unnamed_addr constant [61 x i8] c"DML_RQ_DLG_CALC:    dst_y_offset_cur1               = 0x%0x\0A\00", align 1
@.str.38 = private unnamed_addr constant [61 x i8] c"DML_RQ_DLG_CALC:    chunk_hdl_adjust_cur1           = 0x%0x\0A\00", align 1
@.str.39 = private unnamed_addr constant [61 x i8] c"DML_RQ_DLG_CALC:    vready_after_vcount0            = 0x%0x\0A\00", align 1
@.str.40 = private unnamed_addr constant [61 x i8] c"DML_RQ_DLG_CALC:    dst_y_delta_drq_limit           = 0x%0x\0A\00", align 1
@.str.41 = private unnamed_addr constant [61 x i8] c"DML_RQ_DLG_CALC:    xfc_reg_transfer_delay          = 0x%0x\0A\00", align 1
@.str.42 = private unnamed_addr constant [61 x i8] c"DML_RQ_DLG_CALC:    xfc_reg_precharge_delay         = 0x%0x\0A\00", align 1
@.str.43 = private unnamed_addr constant [65 x i8] c"DML_RQ_DLG_CALC:    xfc_reg_remote_surface_flip_latency = 0x%0x\0A\00", align 1
@.str.44 = private unnamed_addr constant [61 x i8] c"DML_RQ_DLG_CALC:    refcyc_per_vm_dmdata            = 0x%0x\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @print__dlg_regs_st(%struct.display_mode_lib* %0, %struct.TYPE_3__* byval(%struct.TYPE_3__) align 8 %1) #0 {
  %3 = alloca %struct.display_mode_lib*, align 8
  store %struct.display_mode_lib* %0, %struct.display_mode_lib** %3, align 8
  %4 = call i32 (i8*, ...) @dml_print(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str, i64 0, i64 0))
  %5 = call i32 (i8*, ...) @dml_print(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i64 0, i64 0))
  %6 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %1, i32 0, i32 42
  %7 = load i32, i32* %6, align 8
  %8 = call i32 (i8*, ...) @dml_print(i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.2, i64 0, i64 0), i32 %7)
  %9 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %1, i32 0, i32 41
  %10 = load i32, i32* %9, align 4
  %11 = call i32 (i8*, ...) @dml_print(i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.3, i64 0, i64 0), i32 %10)
  %12 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %1, i32 0, i32 40
  %13 = load i32, i32* %12, align 8
  %14 = call i32 (i8*, ...) @dml_print(i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.4, i64 0, i64 0), i32 %13)
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %1, i32 0, i32 39
  %16 = load i32, i32* %15, align 4
  %17 = call i32 (i8*, ...) @dml_print(i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.5, i64 0, i64 0), i32 %16)
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %1, i32 0, i32 38
  %19 = load i32, i32* %18, align 8
  %20 = call i32 (i8*, ...) @dml_print(i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.6, i64 0, i64 0), i32 %19)
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %1, i32 0, i32 37
  %22 = load i32, i32* %21, align 4
  %23 = call i32 (i8*, ...) @dml_print(i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.7, i64 0, i64 0), i32 %22)
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %1, i32 0, i32 36
  %25 = load i32, i32* %24, align 8
  %26 = call i32 (i8*, ...) @dml_print(i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.8, i64 0, i64 0), i32 %25)
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %1, i32 0, i32 35
  %28 = load i32, i32* %27, align 4
  %29 = call i32 (i8*, ...) @dml_print(i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.9, i64 0, i64 0), i32 %28)
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %1, i32 0, i32 34
  %31 = load i32, i32* %30, align 8
  %32 = call i32 (i8*, ...) @dml_print(i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.10, i64 0, i64 0), i32 %31)
  %33 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %1, i32 0, i32 33
  %34 = load i32, i32* %33, align 4
  %35 = call i32 (i8*, ...) @dml_print(i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.11, i64 0, i64 0), i32 %34)
  %36 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %1, i32 0, i32 32
  %37 = load i32, i32* %36, align 8
  %38 = call i32 (i8*, ...) @dml_print(i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.12, i64 0, i64 0), i32 %37)
  %39 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %1, i32 0, i32 31
  %40 = load i32, i32* %39, align 4
  %41 = call i32 (i8*, ...) @dml_print(i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.13, i64 0, i64 0), i32 %40)
  %42 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %1, i32 0, i32 30
  %43 = load i32, i32* %42, align 8
  %44 = call i32 (i8*, ...) @dml_print(i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.14, i64 0, i64 0), i32 %43)
  %45 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %1, i32 0, i32 29
  %46 = load i32, i32* %45, align 4
  %47 = call i32 (i8*, ...) @dml_print(i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.15, i64 0, i64 0), i32 %46)
  %48 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %1, i32 0, i32 28
  %49 = load i32, i32* %48, align 8
  %50 = call i32 (i8*, ...) @dml_print(i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.16, i64 0, i64 0), i32 %49)
  %51 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %1, i32 0, i32 27
  %52 = load i32, i32* %51, align 4
  %53 = call i32 (i8*, ...) @dml_print(i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.17, i64 0, i64 0), i32 %52)
  %54 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %1, i32 0, i32 26
  %55 = load i32, i32* %54, align 8
  %56 = call i32 (i8*, ...) @dml_print(i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.18, i64 0, i64 0), i32 %55)
  %57 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %1, i32 0, i32 25
  %58 = load i32, i32* %57, align 4
  %59 = call i32 (i8*, ...) @dml_print(i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.19, i64 0, i64 0), i32 %58)
  %60 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %1, i32 0, i32 24
  %61 = load i32, i32* %60, align 8
  %62 = call i32 (i8*, ...) @dml_print(i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.20, i64 0, i64 0), i32 %61)
  %63 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %1, i32 0, i32 23
  %64 = load i32, i32* %63, align 4
  %65 = call i32 (i8*, ...) @dml_print(i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.21, i64 0, i64 0), i32 %64)
  %66 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %1, i32 0, i32 22
  %67 = load i32, i32* %66, align 8
  %68 = call i32 (i8*, ...) @dml_print(i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.22, i64 0, i64 0), i32 %67)
  %69 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %1, i32 0, i32 21
  %70 = load i32, i32* %69, align 4
  %71 = call i32 (i8*, ...) @dml_print(i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.23, i64 0, i64 0), i32 %70)
  %72 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %1, i32 0, i32 20
  %73 = load i32, i32* %72, align 8
  %74 = call i32 (i8*, ...) @dml_print(i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.24, i64 0, i64 0), i32 %73)
  %75 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %1, i32 0, i32 19
  %76 = load i32, i32* %75, align 4
  %77 = call i32 (i8*, ...) @dml_print(i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.25, i64 0, i64 0), i32 %76)
  %78 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %1, i32 0, i32 18
  %79 = load i32, i32* %78, align 8
  %80 = call i32 (i8*, ...) @dml_print(i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.26, i64 0, i64 0), i32 %79)
  %81 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %1, i32 0, i32 17
  %82 = load i32, i32* %81, align 4
  %83 = call i32 (i8*, ...) @dml_print(i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.27, i64 0, i64 0), i32 %82)
  %84 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %1, i32 0, i32 16
  %85 = load i32, i32* %84, align 8
  %86 = call i32 (i8*, ...) @dml_print(i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.28, i64 0, i64 0), i32 %85)
  %87 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %1, i32 0, i32 15
  %88 = load i32, i32* %87, align 4
  %89 = call i32 (i8*, ...) @dml_print(i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.29, i64 0, i64 0), i32 %88)
  %90 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %1, i32 0, i32 14
  %91 = load i32, i32* %90, align 8
  %92 = call i32 (i8*, ...) @dml_print(i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.30, i64 0, i64 0), i32 %91)
  %93 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %1, i32 0, i32 13
  %94 = load i32, i32* %93, align 4
  %95 = call i32 (i8*, ...) @dml_print(i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.31, i64 0, i64 0), i32 %94)
  %96 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %1, i32 0, i32 12
  %97 = load i32, i32* %96, align 8
  %98 = call i32 (i8*, ...) @dml_print(i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.32, i64 0, i64 0), i32 %97)
  %99 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %1, i32 0, i32 11
  %100 = load i32, i32* %99, align 4
  %101 = call i32 (i8*, ...) @dml_print(i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.33, i64 0, i64 0), i32 %100)
  %102 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %1, i32 0, i32 10
  %103 = load i32, i32* %102, align 8
  %104 = call i32 (i8*, ...) @dml_print(i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.34, i64 0, i64 0), i32 %103)
  %105 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %1, i32 0, i32 9
  %106 = load i32, i32* %105, align 4
  %107 = call i32 (i8*, ...) @dml_print(i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.35, i64 0, i64 0), i32 %106)
  %108 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %1, i32 0, i32 8
  %109 = load i32, i32* %108, align 8
  %110 = call i32 (i8*, ...) @dml_print(i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.36, i64 0, i64 0), i32 %109)
  %111 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %1, i32 0, i32 7
  %112 = load i32, i32* %111, align 4
  %113 = call i32 (i8*, ...) @dml_print(i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.37, i64 0, i64 0), i32 %112)
  %114 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %1, i32 0, i32 6
  %115 = load i32, i32* %114, align 8
  %116 = call i32 (i8*, ...) @dml_print(i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.38, i64 0, i64 0), i32 %115)
  %117 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %1, i32 0, i32 5
  %118 = load i32, i32* %117, align 4
  %119 = call i32 (i8*, ...) @dml_print(i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.39, i64 0, i64 0), i32 %118)
  %120 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %1, i32 0, i32 4
  %121 = load i32, i32* %120, align 8
  %122 = call i32 (i8*, ...) @dml_print(i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.40, i64 0, i64 0), i32 %121)
  %123 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %1, i32 0, i32 3
  %124 = load i32, i32* %123, align 4
  %125 = call i32 (i8*, ...) @dml_print(i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.41, i64 0, i64 0), i32 %124)
  %126 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %1, i32 0, i32 2
  %127 = load i32, i32* %126, align 8
  %128 = call i32 (i8*, ...) @dml_print(i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.42, i64 0, i64 0), i32 %127)
  %129 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %1, i32 0, i32 1
  %130 = load i32, i32* %129, align 4
  %131 = call i32 (i8*, ...) @dml_print(i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.43, i64 0, i64 0), i32 %130)
  %132 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %1, i32 0, i32 0
  %133 = load i32, i32* %132, align 8
  %134 = call i32 (i8*, ...) @dml_print(i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.44, i64 0, i64 0), i32 %133)
  %135 = call i32 (i8*, ...) @dml_print(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str, i64 0, i64 0))
  ret void
}

declare dso_local i32 @dml_print(i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
