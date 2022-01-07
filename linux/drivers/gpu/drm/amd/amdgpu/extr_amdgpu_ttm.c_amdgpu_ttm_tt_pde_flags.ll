; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_amdgpu_ttm.c_amdgpu_ttm_tt_pde_flags.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_amdgpu_ttm.c_amdgpu_ttm_tt_pde_flags.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ttm_tt = type { i64 }
%struct.ttm_mem_reg = type { i64 }

@TTM_PL_SYSTEM = common dso_local global i64 0, align 8
@AMDGPU_PTE_VALID = common dso_local global i32 0, align 4
@TTM_PL_TT = common dso_local global i64 0, align 8
@AMDGPU_PTE_SYSTEM = common dso_local global i32 0, align 4
@tt_cached = common dso_local global i64 0, align 8
@AMDGPU_PTE_SNOOPED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @amdgpu_ttm_tt_pde_flags(%struct.ttm_tt* %0, %struct.ttm_mem_reg* %1) #0 {
  %3 = alloca %struct.ttm_tt*, align 8
  %4 = alloca %struct.ttm_mem_reg*, align 8
  %5 = alloca i32, align 4
  store %struct.ttm_tt* %0, %struct.ttm_tt** %3, align 8
  store %struct.ttm_mem_reg* %1, %struct.ttm_mem_reg** %4, align 8
  store i32 0, i32* %5, align 4
  %6 = load %struct.ttm_mem_reg*, %struct.ttm_mem_reg** %4, align 8
  %7 = icmp ne %struct.ttm_mem_reg* %6, null
  br i1 %7, label %8, label %18

8:                                                ; preds = %2
  %9 = load %struct.ttm_mem_reg*, %struct.ttm_mem_reg** %4, align 8
  %10 = getelementptr inbounds %struct.ttm_mem_reg, %struct.ttm_mem_reg* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = load i64, i64* @TTM_PL_SYSTEM, align 8
  %13 = icmp ne i64 %11, %12
  br i1 %13, label %14, label %18

14:                                               ; preds = %8
  %15 = load i32, i32* @AMDGPU_PTE_VALID, align 4
  %16 = load i32, i32* %5, align 4
  %17 = or i32 %16, %15
  store i32 %17, i32* %5, align 4
  br label %18

18:                                               ; preds = %14, %8, %2
  %19 = load %struct.ttm_mem_reg*, %struct.ttm_mem_reg** %4, align 8
  %20 = icmp ne %struct.ttm_mem_reg* %19, null
  br i1 %20, label %21, label %41

21:                                               ; preds = %18
  %22 = load %struct.ttm_mem_reg*, %struct.ttm_mem_reg** %4, align 8
  %23 = getelementptr inbounds %struct.ttm_mem_reg, %struct.ttm_mem_reg* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* @TTM_PL_TT, align 8
  %26 = icmp eq i64 %24, %25
  br i1 %26, label %27, label %41

27:                                               ; preds = %21
  %28 = load i32, i32* @AMDGPU_PTE_SYSTEM, align 4
  %29 = load i32, i32* %5, align 4
  %30 = or i32 %29, %28
  store i32 %30, i32* %5, align 4
  %31 = load %struct.ttm_tt*, %struct.ttm_tt** %3, align 8
  %32 = getelementptr inbounds %struct.ttm_tt, %struct.ttm_tt* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = load i64, i64* @tt_cached, align 8
  %35 = icmp eq i64 %33, %34
  br i1 %35, label %36, label %40

36:                                               ; preds = %27
  %37 = load i32, i32* @AMDGPU_PTE_SNOOPED, align 4
  %38 = load i32, i32* %5, align 4
  %39 = or i32 %38, %37
  store i32 %39, i32* %5, align 4
  br label %40

40:                                               ; preds = %36, %27
  br label %41

41:                                               ; preds = %40, %21, %18
  %42 = load i32, i32* %5, align 4
  ret i32 %42
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
