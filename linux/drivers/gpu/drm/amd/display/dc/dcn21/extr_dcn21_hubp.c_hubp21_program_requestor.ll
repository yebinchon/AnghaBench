; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dcn21/extr_dcn21_hubp.c_hubp21_program_requestor.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dcn21/extr_dcn21_hubp.c_hubp21_program_requestor.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hubp = type { i32 }
%struct._vcs_dpi_display_rq_regs_st = type { %struct.TYPE_4__, %struct.TYPE_3__, i32, i32, i32, i32, i32 }
%struct.TYPE_4__ = type { i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_3__ = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.dcn21_hubp = type { i32 }

@HUBPRET_CONTROL = common dso_local global i32 0, align 4
@DET_BUF_PLANE1_BASE_ADDRESS = common dso_local global i32 0, align 4
@DCN_EXPANSION_MODE = common dso_local global i32 0, align 4
@DRQ_EXPANSION_MODE = common dso_local global i32 0, align 4
@PRQ_EXPANSION_MODE = common dso_local global i32 0, align 4
@MRQ_EXPANSION_MODE = common dso_local global i32 0, align 4
@CRQ_EXPANSION_MODE = common dso_local global i32 0, align 4
@DCHUBP_REQ_SIZE_CONFIG = common dso_local global i32 0, align 4
@CHUNK_SIZE = common dso_local global i32 0, align 4
@MIN_CHUNK_SIZE = common dso_local global i32 0, align 4
@META_CHUNK_SIZE = common dso_local global i32 0, align 4
@MIN_META_CHUNK_SIZE = common dso_local global i32 0, align 4
@DPTE_GROUP_SIZE = common dso_local global i32 0, align 4
@VM_GROUP_SIZE = common dso_local global i32 0, align 4
@SWATH_HEIGHT = common dso_local global i32 0, align 4
@PTE_ROW_HEIGHT_LINEAR = common dso_local global i32 0, align 4
@DCHUBP_REQ_SIZE_CONFIG_C = common dso_local global i32 0, align 4
@CHUNK_SIZE_C = common dso_local global i32 0, align 4
@MIN_CHUNK_SIZE_C = common dso_local global i32 0, align 4
@META_CHUNK_SIZE_C = common dso_local global i32 0, align 4
@MIN_META_CHUNK_SIZE_C = common dso_local global i32 0, align 4
@DPTE_GROUP_SIZE_C = common dso_local global i32 0, align 4
@SWATH_HEIGHT_C = common dso_local global i32 0, align 4
@PTE_ROW_HEIGHT_LINEAR_C = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @hubp21_program_requestor(%struct.hubp* %0, %struct._vcs_dpi_display_rq_regs_st* %1) #0 {
  %3 = alloca %struct.hubp*, align 8
  %4 = alloca %struct._vcs_dpi_display_rq_regs_st*, align 8
  %5 = alloca %struct.dcn21_hubp*, align 8
  store %struct.hubp* %0, %struct.hubp** %3, align 8
  store %struct._vcs_dpi_display_rq_regs_st* %1, %struct._vcs_dpi_display_rq_regs_st** %4, align 8
  %6 = load %struct.hubp*, %struct.hubp** %3, align 8
  %7 = call %struct.dcn21_hubp* @TO_DCN21_HUBP(%struct.hubp* %6)
  store %struct.dcn21_hubp* %7, %struct.dcn21_hubp** %5, align 8
  %8 = load i32, i32* @HUBPRET_CONTROL, align 4
  %9 = load i32, i32* @DET_BUF_PLANE1_BASE_ADDRESS, align 4
  %10 = load %struct._vcs_dpi_display_rq_regs_st*, %struct._vcs_dpi_display_rq_regs_st** %4, align 8
  %11 = getelementptr inbounds %struct._vcs_dpi_display_rq_regs_st, %struct._vcs_dpi_display_rq_regs_st* %10, i32 0, i32 6
  %12 = load i32, i32* %11, align 4
  %13 = call i32 @REG_UPDATE(i32 %8, i32 %9, i32 %12)
  %14 = load i32, i32* @DCN_EXPANSION_MODE, align 4
  %15 = load i32, i32* @DRQ_EXPANSION_MODE, align 4
  %16 = load %struct._vcs_dpi_display_rq_regs_st*, %struct._vcs_dpi_display_rq_regs_st** %4, align 8
  %17 = getelementptr inbounds %struct._vcs_dpi_display_rq_regs_st, %struct._vcs_dpi_display_rq_regs_st* %16, i32 0, i32 5
  %18 = load i32, i32* %17, align 4
  %19 = load i32, i32* @PRQ_EXPANSION_MODE, align 4
  %20 = load %struct._vcs_dpi_display_rq_regs_st*, %struct._vcs_dpi_display_rq_regs_st** %4, align 8
  %21 = getelementptr inbounds %struct._vcs_dpi_display_rq_regs_st, %struct._vcs_dpi_display_rq_regs_st* %20, i32 0, i32 4
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* @MRQ_EXPANSION_MODE, align 4
  %24 = load %struct._vcs_dpi_display_rq_regs_st*, %struct._vcs_dpi_display_rq_regs_st** %4, align 8
  %25 = getelementptr inbounds %struct._vcs_dpi_display_rq_regs_st, %struct._vcs_dpi_display_rq_regs_st* %24, i32 0, i32 3
  %26 = load i32, i32* %25, align 4
  %27 = load i32, i32* @CRQ_EXPANSION_MODE, align 4
  %28 = load %struct._vcs_dpi_display_rq_regs_st*, %struct._vcs_dpi_display_rq_regs_st** %4, align 8
  %29 = getelementptr inbounds %struct._vcs_dpi_display_rq_regs_st, %struct._vcs_dpi_display_rq_regs_st* %28, i32 0, i32 2
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @REG_SET_4(i32 %14, i32 0, i32 %15, i32 %18, i32 %19, i32 %22, i32 %23, i32 %26, i32 %27, i32 %30)
  %32 = load i32, i32* @DCHUBP_REQ_SIZE_CONFIG, align 4
  %33 = load i32, i32* @CHUNK_SIZE, align 4
  %34 = load %struct._vcs_dpi_display_rq_regs_st*, %struct._vcs_dpi_display_rq_regs_st** %4, align 8
  %35 = getelementptr inbounds %struct._vcs_dpi_display_rq_regs_st, %struct._vcs_dpi_display_rq_regs_st* %34, i32 0, i32 1
  %36 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %35, i32 0, i32 7
  %37 = load i32, i32* %36, align 4
  %38 = load i32, i32* @MIN_CHUNK_SIZE, align 4
  %39 = load %struct._vcs_dpi_display_rq_regs_st*, %struct._vcs_dpi_display_rq_regs_st** %4, align 8
  %40 = getelementptr inbounds %struct._vcs_dpi_display_rq_regs_st, %struct._vcs_dpi_display_rq_regs_st* %39, i32 0, i32 1
  %41 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %40, i32 0, i32 6
  %42 = load i32, i32* %41, align 4
  %43 = load i32, i32* @META_CHUNK_SIZE, align 4
  %44 = load %struct._vcs_dpi_display_rq_regs_st*, %struct._vcs_dpi_display_rq_regs_st** %4, align 8
  %45 = getelementptr inbounds %struct._vcs_dpi_display_rq_regs_st, %struct._vcs_dpi_display_rq_regs_st* %44, i32 0, i32 1
  %46 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %45, i32 0, i32 5
  %47 = load i32, i32* %46, align 4
  %48 = load i32, i32* @MIN_META_CHUNK_SIZE, align 4
  %49 = load %struct._vcs_dpi_display_rq_regs_st*, %struct._vcs_dpi_display_rq_regs_st** %4, align 8
  %50 = getelementptr inbounds %struct._vcs_dpi_display_rq_regs_st, %struct._vcs_dpi_display_rq_regs_st* %49, i32 0, i32 1
  %51 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %50, i32 0, i32 4
  %52 = load i32, i32* %51, align 4
  %53 = load i32, i32* @DPTE_GROUP_SIZE, align 4
  %54 = load %struct._vcs_dpi_display_rq_regs_st*, %struct._vcs_dpi_display_rq_regs_st** %4, align 8
  %55 = getelementptr inbounds %struct._vcs_dpi_display_rq_regs_st, %struct._vcs_dpi_display_rq_regs_st* %54, i32 0, i32 1
  %56 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %55, i32 0, i32 3
  %57 = load i32, i32* %56, align 4
  %58 = load i32, i32* @VM_GROUP_SIZE, align 4
  %59 = load %struct._vcs_dpi_display_rq_regs_st*, %struct._vcs_dpi_display_rq_regs_st** %4, align 8
  %60 = getelementptr inbounds %struct._vcs_dpi_display_rq_regs_st, %struct._vcs_dpi_display_rq_regs_st* %59, i32 0, i32 1
  %61 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %60, i32 0, i32 2
  %62 = load i32, i32* %61, align 4
  %63 = load i32, i32* @SWATH_HEIGHT, align 4
  %64 = load %struct._vcs_dpi_display_rq_regs_st*, %struct._vcs_dpi_display_rq_regs_st** %4, align 8
  %65 = getelementptr inbounds %struct._vcs_dpi_display_rq_regs_st, %struct._vcs_dpi_display_rq_regs_st* %64, i32 0, i32 1
  %66 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 4
  %68 = load i32, i32* @PTE_ROW_HEIGHT_LINEAR, align 4
  %69 = load %struct._vcs_dpi_display_rq_regs_st*, %struct._vcs_dpi_display_rq_regs_st** %4, align 8
  %70 = getelementptr inbounds %struct._vcs_dpi_display_rq_regs_st, %struct._vcs_dpi_display_rq_regs_st* %69, i32 0, i32 1
  %71 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = call i32 @REG_SET_8(i32 %32, i32 0, i32 %33, i32 %37, i32 %38, i32 %42, i32 %43, i32 %47, i32 %48, i32 %52, i32 %53, i32 %57, i32 %58, i32 %62, i32 %63, i32 %67, i32 %68, i32 %72)
  %74 = load i32, i32* @DCHUBP_REQ_SIZE_CONFIG_C, align 4
  %75 = load i32, i32* @CHUNK_SIZE_C, align 4
  %76 = load %struct._vcs_dpi_display_rq_regs_st*, %struct._vcs_dpi_display_rq_regs_st** %4, align 8
  %77 = getelementptr inbounds %struct._vcs_dpi_display_rq_regs_st, %struct._vcs_dpi_display_rq_regs_st* %76, i32 0, i32 0
  %78 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %77, i32 0, i32 6
  %79 = load i32, i32* %78, align 4
  %80 = load i32, i32* @MIN_CHUNK_SIZE_C, align 4
  %81 = load %struct._vcs_dpi_display_rq_regs_st*, %struct._vcs_dpi_display_rq_regs_st** %4, align 8
  %82 = getelementptr inbounds %struct._vcs_dpi_display_rq_regs_st, %struct._vcs_dpi_display_rq_regs_st* %81, i32 0, i32 0
  %83 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %82, i32 0, i32 5
  %84 = load i32, i32* %83, align 4
  %85 = load i32, i32* @META_CHUNK_SIZE_C, align 4
  %86 = load %struct._vcs_dpi_display_rq_regs_st*, %struct._vcs_dpi_display_rq_regs_st** %4, align 8
  %87 = getelementptr inbounds %struct._vcs_dpi_display_rq_regs_st, %struct._vcs_dpi_display_rq_regs_st* %86, i32 0, i32 0
  %88 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %87, i32 0, i32 4
  %89 = load i32, i32* %88, align 4
  %90 = load i32, i32* @MIN_META_CHUNK_SIZE_C, align 4
  %91 = load %struct._vcs_dpi_display_rq_regs_st*, %struct._vcs_dpi_display_rq_regs_st** %4, align 8
  %92 = getelementptr inbounds %struct._vcs_dpi_display_rq_regs_st, %struct._vcs_dpi_display_rq_regs_st* %91, i32 0, i32 0
  %93 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %92, i32 0, i32 3
  %94 = load i32, i32* %93, align 4
  %95 = load i32, i32* @DPTE_GROUP_SIZE_C, align 4
  %96 = load %struct._vcs_dpi_display_rq_regs_st*, %struct._vcs_dpi_display_rq_regs_st** %4, align 8
  %97 = getelementptr inbounds %struct._vcs_dpi_display_rq_regs_st, %struct._vcs_dpi_display_rq_regs_st* %96, i32 0, i32 0
  %98 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %97, i32 0, i32 2
  %99 = load i32, i32* %98, align 4
  %100 = load i32, i32* @SWATH_HEIGHT_C, align 4
  %101 = load %struct._vcs_dpi_display_rq_regs_st*, %struct._vcs_dpi_display_rq_regs_st** %4, align 8
  %102 = getelementptr inbounds %struct._vcs_dpi_display_rq_regs_st, %struct._vcs_dpi_display_rq_regs_st* %101, i32 0, i32 0
  %103 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %102, i32 0, i32 1
  %104 = load i32, i32* %103, align 4
  %105 = load i32, i32* @PTE_ROW_HEIGHT_LINEAR_C, align 4
  %106 = load %struct._vcs_dpi_display_rq_regs_st*, %struct._vcs_dpi_display_rq_regs_st** %4, align 8
  %107 = getelementptr inbounds %struct._vcs_dpi_display_rq_regs_st, %struct._vcs_dpi_display_rq_regs_st* %106, i32 0, i32 0
  %108 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %107, i32 0, i32 0
  %109 = load i32, i32* %108, align 4
  %110 = call i32 @REG_SET_7(i32 %74, i32 0, i32 %75, i32 %79, i32 %80, i32 %84, i32 %85, i32 %89, i32 %90, i32 %94, i32 %95, i32 %99, i32 %100, i32 %104, i32 %105, i32 %109)
  ret void
}

declare dso_local %struct.dcn21_hubp* @TO_DCN21_HUBP(%struct.hubp*) #1

declare dso_local i32 @REG_UPDATE(i32, i32, i32) #1

declare dso_local i32 @REG_SET_4(i32, i32, i32, i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @REG_SET_8(i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @REG_SET_7(i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
