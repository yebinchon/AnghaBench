; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dcn10/extr_dcn10_hubp.c_hubp1_setup_interdependent.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dcn10/extr_dcn10_hubp.c_hubp1_setup_interdependent.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hubp = type { i32 }
%struct._vcs_dpi_display_dlg_regs_st = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct._vcs_dpi_display_ttu_regs_st = type { i32, i32, i32, i32, i32 }
%struct.dcn10_hubp = type { i32 }

@PREFETCH_SETTINS = common dso_local global i32 0, align 4
@DST_Y_PREFETCH = common dso_local global i32 0, align 4
@VRATIO_PREFETCH = common dso_local global i32 0, align 4
@PREFETCH_SETTINS_C = common dso_local global i32 0, align 4
@VRATIO_PREFETCH_C = common dso_local global i32 0, align 4
@VBLANK_PARAMETERS_0 = common dso_local global i32 0, align 4
@DST_Y_PER_VM_VBLANK = common dso_local global i32 0, align 4
@DST_Y_PER_ROW_VBLANK = common dso_local global i32 0, align 4
@VBLANK_PARAMETERS_3 = common dso_local global i32 0, align 4
@REFCYC_PER_META_CHUNK_VBLANK_L = common dso_local global i32 0, align 4
@VBLANK_PARAMETERS_4 = common dso_local global i32 0, align 4
@REFCYC_PER_META_CHUNK_VBLANK_C = common dso_local global i32 0, align 4
@PER_LINE_DELIVERY_PRE = common dso_local global i32 0, align 4
@REFCYC_PER_LINE_DELIVERY_PRE_L = common dso_local global i32 0, align 4
@REFCYC_PER_LINE_DELIVERY_PRE_C = common dso_local global i32 0, align 4
@DCN_SURF0_TTU_CNTL1 = common dso_local global i32 0, align 4
@REFCYC_PER_REQ_DELIVERY_PRE = common dso_local global i32 0, align 4
@DCN_SURF1_TTU_CNTL1 = common dso_local global i32 0, align 4
@DCN_CUR0_TTU_CNTL1 = common dso_local global i32 0, align 4
@DCN_GLOBAL_TTU_CNTL = common dso_local global i32 0, align 4
@MIN_TTU_VBLANK = common dso_local global i32 0, align 4
@QoS_LEVEL_FLIP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hubp*, %struct._vcs_dpi_display_dlg_regs_st*, %struct._vcs_dpi_display_ttu_regs_st*)* @hubp1_setup_interdependent to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hubp1_setup_interdependent(%struct.hubp* %0, %struct._vcs_dpi_display_dlg_regs_st* %1, %struct._vcs_dpi_display_ttu_regs_st* %2) #0 {
  %4 = alloca %struct.hubp*, align 8
  %5 = alloca %struct._vcs_dpi_display_dlg_regs_st*, align 8
  %6 = alloca %struct._vcs_dpi_display_ttu_regs_st*, align 8
  %7 = alloca %struct.dcn10_hubp*, align 8
  store %struct.hubp* %0, %struct.hubp** %4, align 8
  store %struct._vcs_dpi_display_dlg_regs_st* %1, %struct._vcs_dpi_display_dlg_regs_st** %5, align 8
  store %struct._vcs_dpi_display_ttu_regs_st* %2, %struct._vcs_dpi_display_ttu_regs_st** %6, align 8
  %8 = load %struct.hubp*, %struct.hubp** %4, align 8
  %9 = call %struct.dcn10_hubp* @TO_DCN10_HUBP(%struct.hubp* %8)
  store %struct.dcn10_hubp* %9, %struct.dcn10_hubp** %7, align 8
  %10 = load i32, i32* @PREFETCH_SETTINS, align 4
  %11 = load i32, i32* @DST_Y_PREFETCH, align 4
  %12 = load %struct._vcs_dpi_display_dlg_regs_st*, %struct._vcs_dpi_display_dlg_regs_st** %5, align 8
  %13 = getelementptr inbounds %struct._vcs_dpi_display_dlg_regs_st, %struct._vcs_dpi_display_dlg_regs_st* %12, i32 0, i32 8
  %14 = load i32, i32* %13, align 4
  %15 = load i32, i32* @VRATIO_PREFETCH, align 4
  %16 = load %struct._vcs_dpi_display_dlg_regs_st*, %struct._vcs_dpi_display_dlg_regs_st** %5, align 8
  %17 = getelementptr inbounds %struct._vcs_dpi_display_dlg_regs_st, %struct._vcs_dpi_display_dlg_regs_st* %16, i32 0, i32 7
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @REG_SET_2(i32 %10, i32 0, i32 %11, i32 %14, i32 %15, i32 %18)
  %20 = load i32, i32* @PREFETCH_SETTINS_C, align 4
  %21 = load i32, i32* @VRATIO_PREFETCH_C, align 4
  %22 = load %struct._vcs_dpi_display_dlg_regs_st*, %struct._vcs_dpi_display_dlg_regs_st** %5, align 8
  %23 = getelementptr inbounds %struct._vcs_dpi_display_dlg_regs_st, %struct._vcs_dpi_display_dlg_regs_st* %22, i32 0, i32 6
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @REG_SET(i32 %20, i32 0, i32 %21, i32 %24)
  %26 = load i32, i32* @VBLANK_PARAMETERS_0, align 4
  %27 = load i32, i32* @DST_Y_PER_VM_VBLANK, align 4
  %28 = load %struct._vcs_dpi_display_dlg_regs_st*, %struct._vcs_dpi_display_dlg_regs_st** %5, align 8
  %29 = getelementptr inbounds %struct._vcs_dpi_display_dlg_regs_st, %struct._vcs_dpi_display_dlg_regs_st* %28, i32 0, i32 5
  %30 = load i32, i32* %29, align 4
  %31 = load i32, i32* @DST_Y_PER_ROW_VBLANK, align 4
  %32 = load %struct._vcs_dpi_display_dlg_regs_st*, %struct._vcs_dpi_display_dlg_regs_st** %5, align 8
  %33 = getelementptr inbounds %struct._vcs_dpi_display_dlg_regs_st, %struct._vcs_dpi_display_dlg_regs_st* %32, i32 0, i32 4
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @REG_SET_2(i32 %26, i32 0, i32 %27, i32 %30, i32 %31, i32 %34)
  %36 = load i32, i32* @VBLANK_PARAMETERS_3, align 4
  %37 = load i32, i32* @REFCYC_PER_META_CHUNK_VBLANK_L, align 4
  %38 = load %struct._vcs_dpi_display_dlg_regs_st*, %struct._vcs_dpi_display_dlg_regs_st** %5, align 8
  %39 = getelementptr inbounds %struct._vcs_dpi_display_dlg_regs_st, %struct._vcs_dpi_display_dlg_regs_st* %38, i32 0, i32 3
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @REG_SET(i32 %36, i32 0, i32 %37, i32 %40)
  %42 = load i32, i32* @VBLANK_PARAMETERS_4, align 4
  %43 = load i32, i32* @REFCYC_PER_META_CHUNK_VBLANK_C, align 4
  %44 = load %struct._vcs_dpi_display_dlg_regs_st*, %struct._vcs_dpi_display_dlg_regs_st** %5, align 8
  %45 = getelementptr inbounds %struct._vcs_dpi_display_dlg_regs_st, %struct._vcs_dpi_display_dlg_regs_st* %44, i32 0, i32 2
  %46 = load i32, i32* %45, align 4
  %47 = call i32 @REG_SET(i32 %42, i32 0, i32 %43, i32 %46)
  %48 = load i32, i32* @PER_LINE_DELIVERY_PRE, align 4
  %49 = load i32, i32* @REFCYC_PER_LINE_DELIVERY_PRE_L, align 4
  %50 = load %struct._vcs_dpi_display_dlg_regs_st*, %struct._vcs_dpi_display_dlg_regs_st** %5, align 8
  %51 = getelementptr inbounds %struct._vcs_dpi_display_dlg_regs_st, %struct._vcs_dpi_display_dlg_regs_st* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = load i32, i32* @REFCYC_PER_LINE_DELIVERY_PRE_C, align 4
  %54 = load %struct._vcs_dpi_display_dlg_regs_st*, %struct._vcs_dpi_display_dlg_regs_st** %5, align 8
  %55 = getelementptr inbounds %struct._vcs_dpi_display_dlg_regs_st, %struct._vcs_dpi_display_dlg_regs_st* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = call i32 @REG_SET_2(i32 %48, i32 0, i32 %49, i32 %52, i32 %53, i32 %56)
  %58 = load i32, i32* @DCN_SURF0_TTU_CNTL1, align 4
  %59 = load i32, i32* @REFCYC_PER_REQ_DELIVERY_PRE, align 4
  %60 = load %struct._vcs_dpi_display_ttu_regs_st*, %struct._vcs_dpi_display_ttu_regs_st** %6, align 8
  %61 = getelementptr inbounds %struct._vcs_dpi_display_ttu_regs_st, %struct._vcs_dpi_display_ttu_regs_st* %60, i32 0, i32 4
  %62 = load i32, i32* %61, align 4
  %63 = call i32 @REG_SET(i32 %58, i32 0, i32 %59, i32 %62)
  %64 = load i32, i32* @DCN_SURF1_TTU_CNTL1, align 4
  %65 = load i32, i32* @REFCYC_PER_REQ_DELIVERY_PRE, align 4
  %66 = load %struct._vcs_dpi_display_ttu_regs_st*, %struct._vcs_dpi_display_ttu_regs_st** %6, align 8
  %67 = getelementptr inbounds %struct._vcs_dpi_display_ttu_regs_st, %struct._vcs_dpi_display_ttu_regs_st* %66, i32 0, i32 3
  %68 = load i32, i32* %67, align 4
  %69 = call i32 @REG_SET(i32 %64, i32 0, i32 %65, i32 %68)
  %70 = load i32, i32* @DCN_CUR0_TTU_CNTL1, align 4
  %71 = load i32, i32* @REFCYC_PER_REQ_DELIVERY_PRE, align 4
  %72 = load %struct._vcs_dpi_display_ttu_regs_st*, %struct._vcs_dpi_display_ttu_regs_st** %6, align 8
  %73 = getelementptr inbounds %struct._vcs_dpi_display_ttu_regs_st, %struct._vcs_dpi_display_ttu_regs_st* %72, i32 0, i32 2
  %74 = load i32, i32* %73, align 4
  %75 = call i32 @REG_SET(i32 %70, i32 0, i32 %71, i32 %74)
  %76 = load i32, i32* @DCN_GLOBAL_TTU_CNTL, align 4
  %77 = load i32, i32* @MIN_TTU_VBLANK, align 4
  %78 = load %struct._vcs_dpi_display_ttu_regs_st*, %struct._vcs_dpi_display_ttu_regs_st** %6, align 8
  %79 = getelementptr inbounds %struct._vcs_dpi_display_ttu_regs_st, %struct._vcs_dpi_display_ttu_regs_st* %78, i32 0, i32 1
  %80 = load i32, i32* %79, align 4
  %81 = load i32, i32* @QoS_LEVEL_FLIP, align 4
  %82 = load %struct._vcs_dpi_display_ttu_regs_st*, %struct._vcs_dpi_display_ttu_regs_st** %6, align 8
  %83 = getelementptr inbounds %struct._vcs_dpi_display_ttu_regs_st, %struct._vcs_dpi_display_ttu_regs_st* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 4
  %85 = call i32 @REG_SET_2(i32 %76, i32 0, i32 %77, i32 %80, i32 %81, i32 %84)
  ret void
}

declare dso_local %struct.dcn10_hubp* @TO_DCN10_HUBP(%struct.hubp*) #1

declare dso_local i32 @REG_SET_2(i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @REG_SET(i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
