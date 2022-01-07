; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/ttm/extr_ttm_bo.c_ttm_bo_device_release.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/ttm/extr_ttm_bo.c_ttm_bo_device_release.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ttm_bo_device = type { i32, %struct.ttm_mem_type_manager*, i32, i32, %struct.ttm_bo_global* }
%struct.ttm_mem_type_manager = type { i32, i32, i32* }
%struct.ttm_bo_global = type { i32 }

@TTM_NUM_MEM_TYPES = common dso_local global i32 0, align 4
@TTM_PL_SYSTEM = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [41 x i8] c"DRM memory manager type %d is not clean\0A\00", align 1
@ttm_global_mutex = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [32 x i8] c"Delayed destroy list was clean\0A\00", align 1
@TTM_MAX_BO_PRIORITY = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [24 x i8] c"Swap list %d was clean\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ttm_bo_device_release(%struct.ttm_bo_device* %0) #0 {
  %2 = alloca %struct.ttm_bo_device*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.ttm_mem_type_manager*, align 8
  %6 = alloca %struct.ttm_bo_global*, align 8
  store %struct.ttm_bo_device* %0, %struct.ttm_bo_device** %2, align 8
  store i32 0, i32* %3, align 4
  %7 = load i32, i32* @TTM_NUM_MEM_TYPES, align 4
  store i32 %7, i32* %4, align 4
  %8 = load %struct.ttm_bo_device*, %struct.ttm_bo_device** %2, align 8
  %9 = getelementptr inbounds %struct.ttm_bo_device, %struct.ttm_bo_device* %8, i32 0, i32 4
  %10 = load %struct.ttm_bo_global*, %struct.ttm_bo_global** %9, align 8
  store %struct.ttm_bo_global* %10, %struct.ttm_bo_global** %6, align 8
  br label %11

11:                                               ; preds = %45, %1
  %12 = load i32, i32* %4, align 4
  %13 = add i32 %12, -1
  store i32 %13, i32* %4, align 4
  %14 = icmp ne i32 %12, 0
  br i1 %14, label %15, label %46

15:                                               ; preds = %11
  %16 = load %struct.ttm_bo_device*, %struct.ttm_bo_device** %2, align 8
  %17 = getelementptr inbounds %struct.ttm_bo_device, %struct.ttm_bo_device* %16, i32 0, i32 1
  %18 = load %struct.ttm_mem_type_manager*, %struct.ttm_mem_type_manager** %17, align 8
  %19 = load i32, i32* %4, align 4
  %20 = zext i32 %19 to i64
  %21 = getelementptr inbounds %struct.ttm_mem_type_manager, %struct.ttm_mem_type_manager* %18, i64 %20
  store %struct.ttm_mem_type_manager* %21, %struct.ttm_mem_type_manager** %5, align 8
  %22 = load %struct.ttm_mem_type_manager*, %struct.ttm_mem_type_manager** %5, align 8
  %23 = getelementptr inbounds %struct.ttm_mem_type_manager, %struct.ttm_mem_type_manager* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %45

26:                                               ; preds = %15
  %27 = load %struct.ttm_mem_type_manager*, %struct.ttm_mem_type_manager** %5, align 8
  %28 = getelementptr inbounds %struct.ttm_mem_type_manager, %struct.ttm_mem_type_manager* %27, i32 0, i32 1
  store i32 0, i32* %28, align 4
  %29 = load i32, i32* %4, align 4
  %30 = load i32, i32* @TTM_PL_SYSTEM, align 4
  %31 = icmp ne i32 %29, %30
  br i1 %31, label %32, label %42

32:                                               ; preds = %26
  %33 = load %struct.ttm_bo_device*, %struct.ttm_bo_device** %2, align 8
  %34 = load i32, i32* %4, align 4
  %35 = call i64 @ttm_bo_clean_mm(%struct.ttm_bo_device* %33, i32 %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %42

37:                                               ; preds = %32
  %38 = load i32, i32* @EBUSY, align 4
  %39 = sub nsw i32 0, %38
  store i32 %39, i32* %3, align 4
  %40 = load i32, i32* %4, align 4
  %41 = call i32 @pr_err(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0), i32 %40)
  br label %42

42:                                               ; preds = %37, %32, %26
  %43 = load %struct.ttm_mem_type_manager*, %struct.ttm_mem_type_manager** %5, align 8
  %44 = getelementptr inbounds %struct.ttm_mem_type_manager, %struct.ttm_mem_type_manager* %43, i32 0, i32 0
  store i32 0, i32* %44, align 8
  br label %45

45:                                               ; preds = %42, %15
  br label %11

46:                                               ; preds = %11
  %47 = call i32 @mutex_lock(i32* @ttm_global_mutex)
  %48 = load %struct.ttm_bo_device*, %struct.ttm_bo_device** %2, align 8
  %49 = getelementptr inbounds %struct.ttm_bo_device, %struct.ttm_bo_device* %48, i32 0, i32 3
  %50 = call i32 @list_del(i32* %49)
  %51 = call i32 @mutex_unlock(i32* @ttm_global_mutex)
  %52 = load %struct.ttm_bo_device*, %struct.ttm_bo_device** %2, align 8
  %53 = getelementptr inbounds %struct.ttm_bo_device, %struct.ttm_bo_device* %52, i32 0, i32 2
  %54 = call i32 @cancel_delayed_work_sync(i32* %53)
  %55 = load %struct.ttm_bo_device*, %struct.ttm_bo_device** %2, align 8
  %56 = call i64 @ttm_bo_delayed_delete(%struct.ttm_bo_device* %55, i32 1)
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %60

58:                                               ; preds = %46
  %59 = call i32 (i8*, ...) @pr_debug(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0))
  br label %60

60:                                               ; preds = %58, %46
  %61 = load %struct.ttm_bo_global*, %struct.ttm_bo_global** %6, align 8
  %62 = getelementptr inbounds %struct.ttm_bo_global, %struct.ttm_bo_global* %61, i32 0, i32 0
  %63 = call i32 @spin_lock(i32* %62)
  store i32 0, i32* %4, align 4
  br label %64

64:                                               ; preds = %82, %60
  %65 = load i32, i32* %4, align 4
  %66 = load i32, i32* @TTM_MAX_BO_PRIORITY, align 4
  %67 = icmp ult i32 %65, %66
  br i1 %67, label %68, label %85

68:                                               ; preds = %64
  %69 = load %struct.ttm_bo_device*, %struct.ttm_bo_device** %2, align 8
  %70 = getelementptr inbounds %struct.ttm_bo_device, %struct.ttm_bo_device* %69, i32 0, i32 1
  %71 = load %struct.ttm_mem_type_manager*, %struct.ttm_mem_type_manager** %70, align 8
  %72 = getelementptr inbounds %struct.ttm_mem_type_manager, %struct.ttm_mem_type_manager* %71, i64 0
  %73 = getelementptr inbounds %struct.ttm_mem_type_manager, %struct.ttm_mem_type_manager* %72, i32 0, i32 2
  %74 = load i32*, i32** %73, align 8
  %75 = getelementptr inbounds i32, i32* %74, i64 0
  %76 = call i64 @list_empty(i32* %75)
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %78, label %81

78:                                               ; preds = %68
  %79 = load i32, i32* %4, align 4
  %80 = call i32 (i8*, ...) @pr_debug(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i64 0, i64 0), i32 %79)
  br label %81

81:                                               ; preds = %78, %68
  br label %82

82:                                               ; preds = %81
  %83 = load i32, i32* %4, align 4
  %84 = add i32 %83, 1
  store i32 %84, i32* %4, align 4
  br label %64

85:                                               ; preds = %64
  %86 = load %struct.ttm_bo_global*, %struct.ttm_bo_global** %6, align 8
  %87 = getelementptr inbounds %struct.ttm_bo_global, %struct.ttm_bo_global* %86, i32 0, i32 0
  %88 = call i32 @spin_unlock(i32* %87)
  %89 = load %struct.ttm_bo_device*, %struct.ttm_bo_device** %2, align 8
  %90 = getelementptr inbounds %struct.ttm_bo_device, %struct.ttm_bo_device* %89, i32 0, i32 0
  %91 = call i32 @drm_vma_offset_manager_destroy(i32* %90)
  %92 = load i32, i32* %3, align 4
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %96, label %94

94:                                               ; preds = %85
  %95 = call i32 (...) @ttm_bo_global_release()
  br label %96

96:                                               ; preds = %94, %85
  %97 = load i32, i32* %3, align 4
  ret i32 %97
}

declare dso_local i64 @ttm_bo_clean_mm(%struct.ttm_bo_device*, i32) #1

declare dso_local i32 @pr_err(i8*, i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @list_del(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @cancel_delayed_work_sync(i32*) #1

declare dso_local i64 @ttm_bo_delayed_delete(%struct.ttm_bo_device*, i32) #1

declare dso_local i32 @pr_debug(i8*, ...) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i64 @list_empty(i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @drm_vma_offset_manager_destroy(i32*) #1

declare dso_local i32 @ttm_bo_global_release(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
