; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dce/extr_dce_mem_input.c_dce_mi_program_pte_vm.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dce/extr_dce_mem_input.c_dce_mi_program_pte_vm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pte_setting = type { i32, i32, i32, i32, i32 }
%struct.mem_input = type { i32 }
%union.dc_tiling_info = type { i32 }
%struct.dce_mem_input = type { i32 }

@pte_settings = common dso_local global %struct.pte_setting** null, align 8
@GRPH_PIPE_OUTSTANDING_REQUEST_LIMIT = common dso_local global i32 0, align 4
@DVMM_PTE_CONTROL = common dso_local global i32 0, align 4
@DVMM_PAGE_WIDTH = common dso_local global i32 0, align 4
@DVMM_PAGE_HEIGHT = common dso_local global i32 0, align 4
@DVMM_MIN_PTE_BEFORE_FLIP = common dso_local global i32 0, align 4
@DVMM_PTE_ARB_CONTROL = common dso_local global i32 0, align 4
@DVMM_PTE_REQ_PER_CHUNK = common dso_local global i32 0, align 4
@DVMM_MAX_PTE_REQ_OUTSTANDING = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mem_input*, i32, %union.dc_tiling_info*, i32)* @dce_mi_program_pte_vm to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dce_mi_program_pte_vm(%struct.mem_input* %0, i32 %1, %union.dc_tiling_info* %2, i32 %3) #0 {
  %5 = alloca %struct.mem_input*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %union.dc_tiling_info*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.dce_mem_input*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.pte_setting*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.mem_input* %0, %struct.mem_input** %5, align 8
  store i32 %1, i32* %6, align 4
  store %union.dc_tiling_info* %2, %union.dc_tiling_info** %7, align 8
  store i32 %3, i32* %8, align 4
  %16 = load %struct.mem_input*, %struct.mem_input** %5, align 8
  %17 = call %struct.dce_mem_input* @TO_DCE_MEM_INPUT(%struct.mem_input* %16)
  store %struct.dce_mem_input* %17, %struct.dce_mem_input** %9, align 8
  %18 = load i32, i32* %6, align 4
  %19 = call i32 @get_mi_bpp(i32 %18)
  store i32 %19, i32* %10, align 4
  %20 = load %union.dc_tiling_info*, %union.dc_tiling_info** %7, align 8
  %21 = call i32 @get_mi_tiling(%union.dc_tiling_info* %20)
  store i32 %21, i32* %11, align 4
  %22 = load %struct.pte_setting**, %struct.pte_setting*** @pte_settings, align 8
  %23 = load i32, i32* %11, align 4
  %24 = zext i32 %23 to i64
  %25 = getelementptr inbounds %struct.pte_setting*, %struct.pte_setting** %22, i64 %24
  %26 = load %struct.pte_setting*, %struct.pte_setting** %25, align 8
  %27 = load i32, i32* %10, align 4
  %28 = zext i32 %27 to i64
  %29 = getelementptr inbounds %struct.pte_setting, %struct.pte_setting* %26, i64 %28
  store %struct.pte_setting* %29, %struct.pte_setting** %12, align 8
  %30 = load %struct.pte_setting*, %struct.pte_setting** %12, align 8
  %31 = getelementptr inbounds %struct.pte_setting, %struct.pte_setting* %30, i32 0, i32 4
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @log_2(i32 %32)
  store i32 %33, i32* %13, align 4
  %34 = load %struct.pte_setting*, %struct.pte_setting** %12, align 8
  %35 = getelementptr inbounds %struct.pte_setting, %struct.pte_setting* %34, i32 0, i32 3
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @log_2(i32 %36)
  store i32 %37, i32* %14, align 4
  %38 = load i32, i32* %8, align 4
  %39 = call i64 @is_vert_scan(i32 %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %45

41:                                               ; preds = %4
  %42 = load %struct.pte_setting*, %struct.pte_setting** %12, align 8
  %43 = getelementptr inbounds %struct.pte_setting, %struct.pte_setting* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  br label %49

45:                                               ; preds = %4
  %46 = load %struct.pte_setting*, %struct.pte_setting** %12, align 8
  %47 = getelementptr inbounds %struct.pte_setting, %struct.pte_setting* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  br label %49

49:                                               ; preds = %45, %41
  %50 = phi i32 [ %44, %41 ], [ %48, %45 ]
  store i32 %50, i32* %15, align 4
  %51 = load i32, i32* @GRPH_PIPE_OUTSTANDING_REQUEST_LIMIT, align 4
  %52 = load i32, i32* @GRPH_PIPE_OUTSTANDING_REQUEST_LIMIT, align 4
  %53 = call i32 @REG_UPDATE(i32 %51, i32 %52, i32 127)
  %54 = load i32, i32* @DVMM_PTE_CONTROL, align 4
  %55 = load i32, i32* @DVMM_PAGE_WIDTH, align 4
  %56 = load i32, i32* %13, align 4
  %57 = load i32, i32* @DVMM_PAGE_HEIGHT, align 4
  %58 = load i32, i32* %14, align 4
  %59 = load i32, i32* @DVMM_MIN_PTE_BEFORE_FLIP, align 4
  %60 = load i32, i32* %15, align 4
  %61 = call i32 @REG_UPDATE_3(i32 %54, i32 %55, i32 %56, i32 %57, i32 %58, i32 %59, i32 %60)
  %62 = load i32, i32* @DVMM_PTE_ARB_CONTROL, align 4
  %63 = load i32, i32* @DVMM_PTE_REQ_PER_CHUNK, align 4
  %64 = load %struct.pte_setting*, %struct.pte_setting** %12, align 8
  %65 = getelementptr inbounds %struct.pte_setting, %struct.pte_setting* %64, i32 0, i32 2
  %66 = load i32, i32* %65, align 4
  %67 = load i32, i32* @DVMM_MAX_PTE_REQ_OUTSTANDING, align 4
  %68 = call i32 @REG_UPDATE_2(i32 %62, i32 %63, i32 %66, i32 %67, i32 127)
  ret void
}

declare dso_local %struct.dce_mem_input* @TO_DCE_MEM_INPUT(%struct.mem_input*) #1

declare dso_local i32 @get_mi_bpp(i32) #1

declare dso_local i32 @get_mi_tiling(%union.dc_tiling_info*) #1

declare dso_local i32 @log_2(i32) #1

declare dso_local i64 @is_vert_scan(i32) #1

declare dso_local i32 @REG_UPDATE(i32, i32, i32) #1

declare dso_local i32 @REG_UPDATE_3(i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @REG_UPDATE_2(i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
