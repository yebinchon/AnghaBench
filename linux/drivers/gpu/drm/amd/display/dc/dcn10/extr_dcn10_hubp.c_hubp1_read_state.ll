; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dcn10/extr_dcn10_hubp.c_hubp1_read_state.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dcn10/extr_dcn10_hubp.c_hubp1_read_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hubp = type { i32 }
%struct.dcn10_hubp = type { %struct.dcn_hubp_state }
%struct.dcn_hubp_state = type { %struct._vcs_dpi_display_rq_regs_st }
%struct._vcs_dpi_display_rq_regs_st = type { %struct.TYPE_4__, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_3__ = type { i32, i32, i32, i32, i32, i32, i32, i32 }

@DCHUBP_REQ_SIZE_CONFIG = common dso_local global i32 0, align 4
@CHUNK_SIZE = common dso_local global i32 0, align 4
@MIN_CHUNK_SIZE = common dso_local global i32 0, align 4
@META_CHUNK_SIZE = common dso_local global i32 0, align 4
@MIN_META_CHUNK_SIZE = common dso_local global i32 0, align 4
@DPTE_GROUP_SIZE = common dso_local global i32 0, align 4
@MPTE_GROUP_SIZE = common dso_local global i32 0, align 4
@SWATH_HEIGHT = common dso_local global i32 0, align 4
@PTE_ROW_HEIGHT_LINEAR = common dso_local global i32 0, align 4
@DCHUBP_REQ_SIZE_CONFIG_C = common dso_local global i32 0, align 4
@CHUNK_SIZE_C = common dso_local global i32 0, align 4
@MIN_CHUNK_SIZE_C = common dso_local global i32 0, align 4
@META_CHUNK_SIZE_C = common dso_local global i32 0, align 4
@MIN_META_CHUNK_SIZE_C = common dso_local global i32 0, align 4
@DPTE_GROUP_SIZE_C = common dso_local global i32 0, align 4
@MPTE_GROUP_SIZE_C = common dso_local global i32 0, align 4
@SWATH_HEIGHT_C = common dso_local global i32 0, align 4
@PTE_ROW_HEIGHT_LINEAR_C = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @hubp1_read_state(%struct.hubp* %0) #0 {
  %2 = alloca %struct.hubp*, align 8
  %3 = alloca %struct.dcn10_hubp*, align 8
  %4 = alloca %struct.dcn_hubp_state*, align 8
  %5 = alloca %struct._vcs_dpi_display_rq_regs_st*, align 8
  store %struct.hubp* %0, %struct.hubp** %2, align 8
  %6 = load %struct.hubp*, %struct.hubp** %2, align 8
  %7 = call %struct.dcn10_hubp* @TO_DCN10_HUBP(%struct.hubp* %6)
  store %struct.dcn10_hubp* %7, %struct.dcn10_hubp** %3, align 8
  %8 = load %struct.dcn10_hubp*, %struct.dcn10_hubp** %3, align 8
  %9 = getelementptr inbounds %struct.dcn10_hubp, %struct.dcn10_hubp* %8, i32 0, i32 0
  store %struct.dcn_hubp_state* %9, %struct.dcn_hubp_state** %4, align 8
  %10 = load %struct.dcn_hubp_state*, %struct.dcn_hubp_state** %4, align 8
  %11 = getelementptr inbounds %struct.dcn_hubp_state, %struct.dcn_hubp_state* %10, i32 0, i32 0
  store %struct._vcs_dpi_display_rq_regs_st* %11, %struct._vcs_dpi_display_rq_regs_st** %5, align 8
  %12 = load %struct.hubp*, %struct.hubp** %2, align 8
  %13 = call i32 @hubp1_read_state_common(%struct.hubp* %12)
  %14 = load i32, i32* @DCHUBP_REQ_SIZE_CONFIG, align 4
  %15 = load i32, i32* @CHUNK_SIZE, align 4
  %16 = load %struct._vcs_dpi_display_rq_regs_st*, %struct._vcs_dpi_display_rq_regs_st** %5, align 8
  %17 = getelementptr inbounds %struct._vcs_dpi_display_rq_regs_st, %struct._vcs_dpi_display_rq_regs_st* %16, i32 0, i32 1
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 7
  %19 = load i32, i32* @MIN_CHUNK_SIZE, align 4
  %20 = load %struct._vcs_dpi_display_rq_regs_st*, %struct._vcs_dpi_display_rq_regs_st** %5, align 8
  %21 = getelementptr inbounds %struct._vcs_dpi_display_rq_regs_st, %struct._vcs_dpi_display_rq_regs_st* %20, i32 0, i32 1
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i32 0, i32 6
  %23 = load i32, i32* @META_CHUNK_SIZE, align 4
  %24 = load %struct._vcs_dpi_display_rq_regs_st*, %struct._vcs_dpi_display_rq_regs_st** %5, align 8
  %25 = getelementptr inbounds %struct._vcs_dpi_display_rq_regs_st, %struct._vcs_dpi_display_rq_regs_st* %24, i32 0, i32 1
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i32 0, i32 5
  %27 = load i32, i32* @MIN_META_CHUNK_SIZE, align 4
  %28 = load %struct._vcs_dpi_display_rq_regs_st*, %struct._vcs_dpi_display_rq_regs_st** %5, align 8
  %29 = getelementptr inbounds %struct._vcs_dpi_display_rq_regs_st, %struct._vcs_dpi_display_rq_regs_st* %28, i32 0, i32 1
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %29, i32 0, i32 4
  %31 = load i32, i32* @DPTE_GROUP_SIZE, align 4
  %32 = load %struct._vcs_dpi_display_rq_regs_st*, %struct._vcs_dpi_display_rq_regs_st** %5, align 8
  %33 = getelementptr inbounds %struct._vcs_dpi_display_rq_regs_st, %struct._vcs_dpi_display_rq_regs_st* %32, i32 0, i32 1
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %33, i32 0, i32 3
  %35 = load i32, i32* @MPTE_GROUP_SIZE, align 4
  %36 = load %struct._vcs_dpi_display_rq_regs_st*, %struct._vcs_dpi_display_rq_regs_st** %5, align 8
  %37 = getelementptr inbounds %struct._vcs_dpi_display_rq_regs_st, %struct._vcs_dpi_display_rq_regs_st* %36, i32 0, i32 1
  %38 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %37, i32 0, i32 2
  %39 = load i32, i32* @SWATH_HEIGHT, align 4
  %40 = load %struct._vcs_dpi_display_rq_regs_st*, %struct._vcs_dpi_display_rq_regs_st** %5, align 8
  %41 = getelementptr inbounds %struct._vcs_dpi_display_rq_regs_st, %struct._vcs_dpi_display_rq_regs_st* %40, i32 0, i32 1
  %42 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %41, i32 0, i32 1
  %43 = load i32, i32* @PTE_ROW_HEIGHT_LINEAR, align 4
  %44 = load %struct._vcs_dpi_display_rq_regs_st*, %struct._vcs_dpi_display_rq_regs_st** %5, align 8
  %45 = getelementptr inbounds %struct._vcs_dpi_display_rq_regs_st, %struct._vcs_dpi_display_rq_regs_st* %44, i32 0, i32 1
  %46 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %45, i32 0, i32 0
  %47 = call i32 @REG_GET_8(i32 %14, i32 %15, i32* %18, i32 %19, i32* %22, i32 %23, i32* %26, i32 %27, i32* %30, i32 %31, i32* %34, i32 %35, i32* %38, i32 %39, i32* %42, i32 %43, i32* %46)
  %48 = load i32, i32* @DCHUBP_REQ_SIZE_CONFIG_C, align 4
  %49 = load i32, i32* @CHUNK_SIZE_C, align 4
  %50 = load %struct._vcs_dpi_display_rq_regs_st*, %struct._vcs_dpi_display_rq_regs_st** %5, align 8
  %51 = getelementptr inbounds %struct._vcs_dpi_display_rq_regs_st, %struct._vcs_dpi_display_rq_regs_st* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %51, i32 0, i32 7
  %53 = load i32, i32* @MIN_CHUNK_SIZE_C, align 4
  %54 = load %struct._vcs_dpi_display_rq_regs_st*, %struct._vcs_dpi_display_rq_regs_st** %5, align 8
  %55 = getelementptr inbounds %struct._vcs_dpi_display_rq_regs_st, %struct._vcs_dpi_display_rq_regs_st* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %55, i32 0, i32 6
  %57 = load i32, i32* @META_CHUNK_SIZE_C, align 4
  %58 = load %struct._vcs_dpi_display_rq_regs_st*, %struct._vcs_dpi_display_rq_regs_st** %5, align 8
  %59 = getelementptr inbounds %struct._vcs_dpi_display_rq_regs_st, %struct._vcs_dpi_display_rq_regs_st* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %59, i32 0, i32 5
  %61 = load i32, i32* @MIN_META_CHUNK_SIZE_C, align 4
  %62 = load %struct._vcs_dpi_display_rq_regs_st*, %struct._vcs_dpi_display_rq_regs_st** %5, align 8
  %63 = getelementptr inbounds %struct._vcs_dpi_display_rq_regs_st, %struct._vcs_dpi_display_rq_regs_st* %62, i32 0, i32 0
  %64 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %63, i32 0, i32 4
  %65 = load i32, i32* @DPTE_GROUP_SIZE_C, align 4
  %66 = load %struct._vcs_dpi_display_rq_regs_st*, %struct._vcs_dpi_display_rq_regs_st** %5, align 8
  %67 = getelementptr inbounds %struct._vcs_dpi_display_rq_regs_st, %struct._vcs_dpi_display_rq_regs_st* %66, i32 0, i32 0
  %68 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %67, i32 0, i32 3
  %69 = load i32, i32* @MPTE_GROUP_SIZE_C, align 4
  %70 = load %struct._vcs_dpi_display_rq_regs_st*, %struct._vcs_dpi_display_rq_regs_st** %5, align 8
  %71 = getelementptr inbounds %struct._vcs_dpi_display_rq_regs_st, %struct._vcs_dpi_display_rq_regs_st* %70, i32 0, i32 0
  %72 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %71, i32 0, i32 2
  %73 = load i32, i32* @SWATH_HEIGHT_C, align 4
  %74 = load %struct._vcs_dpi_display_rq_regs_st*, %struct._vcs_dpi_display_rq_regs_st** %5, align 8
  %75 = getelementptr inbounds %struct._vcs_dpi_display_rq_regs_st, %struct._vcs_dpi_display_rq_regs_st* %74, i32 0, i32 0
  %76 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %75, i32 0, i32 1
  %77 = load i32, i32* @PTE_ROW_HEIGHT_LINEAR_C, align 4
  %78 = load %struct._vcs_dpi_display_rq_regs_st*, %struct._vcs_dpi_display_rq_regs_st** %5, align 8
  %79 = getelementptr inbounds %struct._vcs_dpi_display_rq_regs_st, %struct._vcs_dpi_display_rq_regs_st* %78, i32 0, i32 0
  %80 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %79, i32 0, i32 0
  %81 = call i32 @REG_GET_8(i32 %48, i32 %49, i32* %52, i32 %53, i32* %56, i32 %57, i32* %60, i32 %61, i32* %64, i32 %65, i32* %68, i32 %69, i32* %72, i32 %73, i32* %76, i32 %77, i32* %80)
  ret void
}

declare dso_local %struct.dcn10_hubp* @TO_DCN10_HUBP(%struct.hubp*) #1

declare dso_local i32 @hubp1_read_state_common(%struct.hubp*) #1

declare dso_local i32 @REG_GET_8(i32, i32, i32*, i32, i32*, i32, i32*, i32, i32*, i32, i32*, i32, i32*, i32, i32*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
