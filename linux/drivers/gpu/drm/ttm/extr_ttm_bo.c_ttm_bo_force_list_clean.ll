; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/ttm/extr_ttm_bo.c_ttm_bo_force_list_clean.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/ttm/extr_ttm_bo.c_ttm_bo_force_list_clean.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ttm_bo_device = type { %struct.ttm_bo_global*, %struct.ttm_mem_type_manager* }
%struct.ttm_bo_global = type { i32 }
%struct.ttm_mem_type_manager = type { i32, i32, i32* }
%struct.ttm_operation_ctx = type { i32, i32, i32 }
%struct.dma_fence = type { i32 }

@TTM_OPT_FLAG_FORCE_ALLOC = common dso_local global i32 0, align 4
@TTM_MAX_BO_PRIORITY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ttm_bo_device*, i32)* @ttm_bo_force_list_clean to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ttm_bo_force_list_clean(%struct.ttm_bo_device* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ttm_bo_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.ttm_operation_ctx, align 4
  %7 = alloca %struct.ttm_mem_type_manager*, align 8
  %8 = alloca %struct.ttm_bo_global*, align 8
  %9 = alloca %struct.dma_fence*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.ttm_bo_device* %0, %struct.ttm_bo_device** %4, align 8
  store i32 %1, i32* %5, align 4
  %12 = getelementptr inbounds %struct.ttm_operation_ctx, %struct.ttm_operation_ctx* %6, i32 0, i32 0
  store i32 0, i32* %12, align 4
  %13 = getelementptr inbounds %struct.ttm_operation_ctx, %struct.ttm_operation_ctx* %6, i32 0, i32 1
  store i32 0, i32* %13, align 4
  %14 = getelementptr inbounds %struct.ttm_operation_ctx, %struct.ttm_operation_ctx* %6, i32 0, i32 2
  %15 = load i32, i32* @TTM_OPT_FLAG_FORCE_ALLOC, align 4
  store i32 %15, i32* %14, align 4
  %16 = load %struct.ttm_bo_device*, %struct.ttm_bo_device** %4, align 8
  %17 = getelementptr inbounds %struct.ttm_bo_device, %struct.ttm_bo_device* %16, i32 0, i32 1
  %18 = load %struct.ttm_mem_type_manager*, %struct.ttm_mem_type_manager** %17, align 8
  %19 = load i32, i32* %5, align 4
  %20 = zext i32 %19 to i64
  %21 = getelementptr inbounds %struct.ttm_mem_type_manager, %struct.ttm_mem_type_manager* %18, i64 %20
  store %struct.ttm_mem_type_manager* %21, %struct.ttm_mem_type_manager** %7, align 8
  %22 = load %struct.ttm_bo_device*, %struct.ttm_bo_device** %4, align 8
  %23 = getelementptr inbounds %struct.ttm_bo_device, %struct.ttm_bo_device* %22, i32 0, i32 0
  %24 = load %struct.ttm_bo_global*, %struct.ttm_bo_global** %23, align 8
  store %struct.ttm_bo_global* %24, %struct.ttm_bo_global** %8, align 8
  %25 = load %struct.ttm_bo_global*, %struct.ttm_bo_global** %8, align 8
  %26 = getelementptr inbounds %struct.ttm_bo_global, %struct.ttm_bo_global* %25, i32 0, i32 0
  %27 = call i32 @spin_lock(i32* %26)
  store i32 0, i32* %11, align 4
  br label %28

28:                                               ; preds = %59, %2
  %29 = load i32, i32* %11, align 4
  %30 = load i32, i32* @TTM_MAX_BO_PRIORITY, align 4
  %31 = icmp ult i32 %29, %30
  br i1 %31, label %32, label %62

32:                                               ; preds = %28
  br label %33

33:                                               ; preds = %54, %32
  %34 = load %struct.ttm_mem_type_manager*, %struct.ttm_mem_type_manager** %7, align 8
  %35 = getelementptr inbounds %struct.ttm_mem_type_manager, %struct.ttm_mem_type_manager* %34, i32 0, i32 2
  %36 = load i32*, i32** %35, align 8
  %37 = load i32, i32* %11, align 4
  %38 = zext i32 %37 to i64
  %39 = getelementptr inbounds i32, i32* %36, i64 %38
  %40 = call i32 @list_empty(i32* %39)
  %41 = icmp ne i32 %40, 0
  %42 = xor i1 %41, true
  br i1 %42, label %43, label %58

43:                                               ; preds = %33
  %44 = load %struct.ttm_bo_global*, %struct.ttm_bo_global** %8, align 8
  %45 = getelementptr inbounds %struct.ttm_bo_global, %struct.ttm_bo_global* %44, i32 0, i32 0
  %46 = call i32 @spin_unlock(i32* %45)
  %47 = load %struct.ttm_bo_device*, %struct.ttm_bo_device** %4, align 8
  %48 = load i32, i32* %5, align 4
  %49 = call i32 @ttm_mem_evict_first(%struct.ttm_bo_device* %47, i32 %48, i32* null, %struct.ttm_operation_ctx* %6, i32* null)
  store i32 %49, i32* %10, align 4
  %50 = load i32, i32* %10, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %54

52:                                               ; preds = %43
  %53 = load i32, i32* %10, align 4
  store i32 %53, i32* %3, align 4
  br label %89

54:                                               ; preds = %43
  %55 = load %struct.ttm_bo_global*, %struct.ttm_bo_global** %8, align 8
  %56 = getelementptr inbounds %struct.ttm_bo_global, %struct.ttm_bo_global* %55, i32 0, i32 0
  %57 = call i32 @spin_lock(i32* %56)
  br label %33

58:                                               ; preds = %33
  br label %59

59:                                               ; preds = %58
  %60 = load i32, i32* %11, align 4
  %61 = add i32 %60, 1
  store i32 %61, i32* %11, align 4
  br label %28

62:                                               ; preds = %28
  %63 = load %struct.ttm_bo_global*, %struct.ttm_bo_global** %8, align 8
  %64 = getelementptr inbounds %struct.ttm_bo_global, %struct.ttm_bo_global* %63, i32 0, i32 0
  %65 = call i32 @spin_unlock(i32* %64)
  %66 = load %struct.ttm_mem_type_manager*, %struct.ttm_mem_type_manager** %7, align 8
  %67 = getelementptr inbounds %struct.ttm_mem_type_manager, %struct.ttm_mem_type_manager* %66, i32 0, i32 0
  %68 = call i32 @spin_lock(i32* %67)
  %69 = load %struct.ttm_mem_type_manager*, %struct.ttm_mem_type_manager** %7, align 8
  %70 = getelementptr inbounds %struct.ttm_mem_type_manager, %struct.ttm_mem_type_manager* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 4
  %72 = call %struct.dma_fence* @dma_fence_get(i32 %71)
  store %struct.dma_fence* %72, %struct.dma_fence** %9, align 8
  %73 = load %struct.ttm_mem_type_manager*, %struct.ttm_mem_type_manager** %7, align 8
  %74 = getelementptr inbounds %struct.ttm_mem_type_manager, %struct.ttm_mem_type_manager* %73, i32 0, i32 0
  %75 = call i32 @spin_unlock(i32* %74)
  %76 = load %struct.dma_fence*, %struct.dma_fence** %9, align 8
  %77 = icmp ne %struct.dma_fence* %76, null
  br i1 %77, label %78, label %88

78:                                               ; preds = %62
  %79 = load %struct.dma_fence*, %struct.dma_fence** %9, align 8
  %80 = call i32 @dma_fence_wait(%struct.dma_fence* %79, i32 0)
  store i32 %80, i32* %10, align 4
  %81 = load %struct.dma_fence*, %struct.dma_fence** %9, align 8
  %82 = call i32 @dma_fence_put(%struct.dma_fence* %81)
  %83 = load i32, i32* %10, align 4
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %87

85:                                               ; preds = %78
  %86 = load i32, i32* %10, align 4
  store i32 %86, i32* %3, align 4
  br label %89

87:                                               ; preds = %78
  br label %88

88:                                               ; preds = %87, %62
  store i32 0, i32* %3, align 4
  br label %89

89:                                               ; preds = %88, %85, %52
  %90 = load i32, i32* %3, align 4
  ret i32 %90
}

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @list_empty(i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @ttm_mem_evict_first(%struct.ttm_bo_device*, i32, i32*, %struct.ttm_operation_ctx*, i32*) #1

declare dso_local %struct.dma_fence* @dma_fence_get(i32) #1

declare dso_local i32 @dma_fence_wait(%struct.dma_fence*, i32) #1

declare dso_local i32 @dma_fence_put(%struct.dma_fence*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
