; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/ttm/extr_ttm_bo.c_ttm_mem_reg_is_pci.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/ttm/extr_ttm_bo.c_ttm_mem_reg_is_pci.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ttm_bo_device = type { %struct.ttm_mem_type_manager* }
%struct.ttm_mem_type_manager = type { i32 }
%struct.ttm_mem_reg = type { i64, i32 }

@TTM_MEMTYPE_FLAG_FIXED = common dso_local global i32 0, align 4
@TTM_PL_SYSTEM = common dso_local global i64 0, align 8
@TTM_MEMTYPE_FLAG_CMA = common dso_local global i32 0, align 4
@TTM_PL_FLAG_CACHED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ttm_mem_reg_is_pci(%struct.ttm_bo_device* %0, %struct.ttm_mem_reg* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ttm_bo_device*, align 8
  %5 = alloca %struct.ttm_mem_reg*, align 8
  %6 = alloca %struct.ttm_mem_type_manager*, align 8
  store %struct.ttm_bo_device* %0, %struct.ttm_bo_device** %4, align 8
  store %struct.ttm_mem_reg* %1, %struct.ttm_mem_reg** %5, align 8
  %7 = load %struct.ttm_bo_device*, %struct.ttm_bo_device** %4, align 8
  %8 = getelementptr inbounds %struct.ttm_bo_device, %struct.ttm_bo_device* %7, i32 0, i32 0
  %9 = load %struct.ttm_mem_type_manager*, %struct.ttm_mem_type_manager** %8, align 8
  %10 = load %struct.ttm_mem_reg*, %struct.ttm_mem_reg** %5, align 8
  %11 = getelementptr inbounds %struct.ttm_mem_reg, %struct.ttm_mem_reg* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = getelementptr inbounds %struct.ttm_mem_type_manager, %struct.ttm_mem_type_manager* %9, i64 %12
  store %struct.ttm_mem_type_manager* %13, %struct.ttm_mem_type_manager** %6, align 8
  %14 = load %struct.ttm_mem_type_manager*, %struct.ttm_mem_type_manager** %6, align 8
  %15 = getelementptr inbounds %struct.ttm_mem_type_manager, %struct.ttm_mem_type_manager* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = load i32, i32* @TTM_MEMTYPE_FLAG_FIXED, align 4
  %18 = and i32 %16, %17
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %44, label %20

20:                                               ; preds = %2
  %21 = load %struct.ttm_mem_reg*, %struct.ttm_mem_reg** %5, align 8
  %22 = getelementptr inbounds %struct.ttm_mem_reg, %struct.ttm_mem_reg* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* @TTM_PL_SYSTEM, align 8
  %25 = icmp eq i64 %23, %24
  br i1 %25, label %26, label %27

26:                                               ; preds = %20
  store i32 0, i32* %3, align 4
  br label %45

27:                                               ; preds = %20
  %28 = load %struct.ttm_mem_type_manager*, %struct.ttm_mem_type_manager** %6, align 8
  %29 = getelementptr inbounds %struct.ttm_mem_type_manager, %struct.ttm_mem_type_manager* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = load i32, i32* @TTM_MEMTYPE_FLAG_CMA, align 4
  %32 = and i32 %30, %31
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %35

34:                                               ; preds = %27
  store i32 0, i32* %3, align 4
  br label %45

35:                                               ; preds = %27
  %36 = load %struct.ttm_mem_reg*, %struct.ttm_mem_reg** %5, align 8
  %37 = getelementptr inbounds %struct.ttm_mem_reg, %struct.ttm_mem_reg* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 8
  %39 = load i32, i32* @TTM_PL_FLAG_CACHED, align 4
  %40 = and i32 %38, %39
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %43

42:                                               ; preds = %35
  store i32 0, i32* %3, align 4
  br label %45

43:                                               ; preds = %35
  br label %44

44:                                               ; preds = %43, %2
  store i32 1, i32* %3, align 4
  br label %45

45:                                               ; preds = %44, %42, %34, %26
  %46 = load i32, i32* %3, align 4
  ret i32 %46
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
