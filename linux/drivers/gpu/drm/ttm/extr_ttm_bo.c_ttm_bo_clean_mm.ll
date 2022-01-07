; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/ttm/extr_ttm_bo.c_ttm_bo_clean_mm.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/ttm/extr_ttm_bo.c_ttm_bo_clean_mm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ttm_bo_device = type { %struct.ttm_mem_type_manager* }
%struct.ttm_mem_type_manager = type { i32, i32, i32*, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (%struct.ttm_mem_type_manager*)* }

@EINVAL = common dso_local global i32 0, align 4
@TTM_NUM_MEM_TYPES = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"Illegal memory type %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [58 x i8] c"Trying to take down uninitialized memory manager type %u\0A\00", align 1
@.str.2 = private unnamed_addr constant [25 x i8] c"Cleanup eviction failed\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ttm_bo_clean_mm(%struct.ttm_bo_device* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ttm_bo_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.ttm_mem_type_manager*, align 8
  %7 = alloca i32, align 4
  store %struct.ttm_bo_device* %0, %struct.ttm_bo_device** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load i32, i32* @EINVAL, align 4
  %9 = sub nsw i32 0, %8
  store i32 %9, i32* %7, align 4
  %10 = load i32, i32* %5, align 4
  %11 = load i32, i32* @TTM_NUM_MEM_TYPES, align 4
  %12 = icmp uge i32 %10, %11
  br i1 %12, label %13, label %17

13:                                               ; preds = %2
  %14 = load i32, i32* %5, align 4
  %15 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 %14)
  %16 = load i32, i32* %7, align 4
  store i32 %16, i32* %3, align 4
  br label %64

17:                                               ; preds = %2
  %18 = load %struct.ttm_bo_device*, %struct.ttm_bo_device** %4, align 8
  %19 = getelementptr inbounds %struct.ttm_bo_device, %struct.ttm_bo_device* %18, i32 0, i32 0
  %20 = load %struct.ttm_mem_type_manager*, %struct.ttm_mem_type_manager** %19, align 8
  %21 = load i32, i32* %5, align 4
  %22 = zext i32 %21 to i64
  %23 = getelementptr inbounds %struct.ttm_mem_type_manager, %struct.ttm_mem_type_manager* %20, i64 %22
  store %struct.ttm_mem_type_manager* %23, %struct.ttm_mem_type_manager** %6, align 8
  %24 = load %struct.ttm_mem_type_manager*, %struct.ttm_mem_type_manager** %6, align 8
  %25 = getelementptr inbounds %struct.ttm_mem_type_manager, %struct.ttm_mem_type_manager* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %32, label %28

28:                                               ; preds = %17
  %29 = load i32, i32* %5, align 4
  %30 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.1, i64 0, i64 0), i32 %29)
  %31 = load i32, i32* %7, align 4
  store i32 %31, i32* %3, align 4
  br label %64

32:                                               ; preds = %17
  %33 = load %struct.ttm_mem_type_manager*, %struct.ttm_mem_type_manager** %6, align 8
  %34 = getelementptr inbounds %struct.ttm_mem_type_manager, %struct.ttm_mem_type_manager* %33, i32 0, i32 1
  store i32 0, i32* %34, align 4
  %35 = load %struct.ttm_mem_type_manager*, %struct.ttm_mem_type_manager** %6, align 8
  %36 = getelementptr inbounds %struct.ttm_mem_type_manager, %struct.ttm_mem_type_manager* %35, i32 0, i32 0
  store i32 0, i32* %36, align 8
  store i32 0, i32* %7, align 4
  %37 = load i32, i32* %5, align 4
  %38 = icmp ugt i32 %37, 0
  br i1 %38, label %39, label %56

39:                                               ; preds = %32
  %40 = load %struct.ttm_bo_device*, %struct.ttm_bo_device** %4, align 8
  %41 = load i32, i32* %5, align 4
  %42 = call i32 @ttm_bo_force_list_clean(%struct.ttm_bo_device* %40, i32 %41)
  store i32 %42, i32* %7, align 4
  %43 = load i32, i32* %7, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %48

45:                                               ; preds = %39
  %46 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0))
  %47 = load i32, i32* %7, align 4
  store i32 %47, i32* %3, align 4
  br label %64

48:                                               ; preds = %39
  %49 = load %struct.ttm_mem_type_manager*, %struct.ttm_mem_type_manager** %6, align 8
  %50 = getelementptr inbounds %struct.ttm_mem_type_manager, %struct.ttm_mem_type_manager* %49, i32 0, i32 3
  %51 = load %struct.TYPE_2__*, %struct.TYPE_2__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %51, i32 0, i32 0
  %53 = load i32 (%struct.ttm_mem_type_manager*)*, i32 (%struct.ttm_mem_type_manager*)** %52, align 8
  %54 = load %struct.ttm_mem_type_manager*, %struct.ttm_mem_type_manager** %6, align 8
  %55 = call i32 %53(%struct.ttm_mem_type_manager* %54)
  store i32 %55, i32* %7, align 4
  br label %56

56:                                               ; preds = %48, %32
  %57 = load %struct.ttm_mem_type_manager*, %struct.ttm_mem_type_manager** %6, align 8
  %58 = getelementptr inbounds %struct.ttm_mem_type_manager, %struct.ttm_mem_type_manager* %57, i32 0, i32 2
  %59 = load i32*, i32** %58, align 8
  %60 = call i32 @dma_fence_put(i32* %59)
  %61 = load %struct.ttm_mem_type_manager*, %struct.ttm_mem_type_manager** %6, align 8
  %62 = getelementptr inbounds %struct.ttm_mem_type_manager, %struct.ttm_mem_type_manager* %61, i32 0, i32 2
  store i32* null, i32** %62, align 8
  %63 = load i32, i32* %7, align 4
  store i32 %63, i32* %3, align 4
  br label %64

64:                                               ; preds = %56, %45, %28, %13
  %65 = load i32, i32* %3, align 4
  ret i32 %65
}

declare dso_local i32 @pr_err(i8*, ...) #1

declare dso_local i32 @ttm_bo_force_list_clean(%struct.ttm_bo_device*, i32) #1

declare dso_local i32 @dma_fence_put(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
