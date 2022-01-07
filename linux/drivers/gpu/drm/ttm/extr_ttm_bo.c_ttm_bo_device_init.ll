; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/ttm/extr_ttm_bo.c_ttm_bo_device_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/ttm/extr_ttm_bo.c_ttm_bo_device_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ttm_bo_global = type { i32 }
%struct.ttm_bo_device = type { i32, i32, %struct.ttm_bo_global*, %struct.address_space*, i32, i32, i32, i32, %struct.ttm_bo_driver* }
%struct.ttm_bo_driver = type { i32 }
%struct.address_space = type { i32 }

@ttm_bo_glob = common dso_local global %struct.ttm_bo_global zeroinitializer, align 4
@TTM_PL_SYSTEM = common dso_local global i32 0, align 4
@DRM_FILE_PAGE_OFFSET_START = common dso_local global i32 0, align 4
@DRM_FILE_PAGE_OFFSET_SIZE = common dso_local global i32 0, align 4
@ttm_bo_delayed_workqueue = common dso_local global i32 0, align 4
@ttm_global_mutex = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ttm_bo_device_init(%struct.ttm_bo_device* %0, %struct.ttm_bo_driver* %1, %struct.address_space* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.ttm_bo_device*, align 8
  %7 = alloca %struct.ttm_bo_driver*, align 8
  %8 = alloca %struct.address_space*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.ttm_bo_global*, align 8
  %11 = alloca i32, align 4
  store %struct.ttm_bo_device* %0, %struct.ttm_bo_device** %6, align 8
  store %struct.ttm_bo_driver* %1, %struct.ttm_bo_driver** %7, align 8
  store %struct.address_space* %2, %struct.address_space** %8, align 8
  store i32 %3, i32* %9, align 4
  store %struct.ttm_bo_global* @ttm_bo_glob, %struct.ttm_bo_global** %10, align 8
  %12 = call i32 (...) @ttm_bo_global_init()
  store i32 %12, i32* %11, align 4
  %13 = load i32, i32* %11, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %17

15:                                               ; preds = %4
  %16 = load i32, i32* %11, align 4
  store i32 %16, i32* %5, align 4
  br label %66

17:                                               ; preds = %4
  %18 = load %struct.ttm_bo_driver*, %struct.ttm_bo_driver** %7, align 8
  %19 = load %struct.ttm_bo_device*, %struct.ttm_bo_device** %6, align 8
  %20 = getelementptr inbounds %struct.ttm_bo_device, %struct.ttm_bo_device* %19, i32 0, i32 8
  store %struct.ttm_bo_driver* %18, %struct.ttm_bo_driver** %20, align 8
  %21 = load %struct.ttm_bo_device*, %struct.ttm_bo_device** %6, align 8
  %22 = getelementptr inbounds %struct.ttm_bo_device, %struct.ttm_bo_device* %21, i32 0, i32 7
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @memset(i32 %23, i32 0, i32 4)
  %25 = load %struct.ttm_bo_device*, %struct.ttm_bo_device** %6, align 8
  %26 = load i32, i32* @TTM_PL_SYSTEM, align 4
  %27 = call i32 @ttm_bo_init_mm(%struct.ttm_bo_device* %25, i32 %26, i32 0)
  store i32 %27, i32* %11, align 4
  %28 = load i32, i32* %11, align 4
  %29 = icmp ne i32 %28, 0
  %30 = zext i1 %29 to i32
  %31 = call i64 @unlikely(i32 %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %34

33:                                               ; preds = %17
  br label %63

34:                                               ; preds = %17
  %35 = load %struct.ttm_bo_device*, %struct.ttm_bo_device** %6, align 8
  %36 = getelementptr inbounds %struct.ttm_bo_device, %struct.ttm_bo_device* %35, i32 0, i32 6
  %37 = load i32, i32* @DRM_FILE_PAGE_OFFSET_START, align 4
  %38 = load i32, i32* @DRM_FILE_PAGE_OFFSET_SIZE, align 4
  %39 = call i32 @drm_vma_offset_manager_init(i32* %36, i32 %37, i32 %38)
  %40 = load %struct.ttm_bo_device*, %struct.ttm_bo_device** %6, align 8
  %41 = getelementptr inbounds %struct.ttm_bo_device, %struct.ttm_bo_device* %40, i32 0, i32 5
  %42 = load i32, i32* @ttm_bo_delayed_workqueue, align 4
  %43 = call i32 @INIT_DELAYED_WORK(i32* %41, i32 %42)
  %44 = load %struct.ttm_bo_device*, %struct.ttm_bo_device** %6, align 8
  %45 = getelementptr inbounds %struct.ttm_bo_device, %struct.ttm_bo_device* %44, i32 0, i32 4
  %46 = call i32 @INIT_LIST_HEAD(i32* %45)
  %47 = load %struct.address_space*, %struct.address_space** %8, align 8
  %48 = load %struct.ttm_bo_device*, %struct.ttm_bo_device** %6, align 8
  %49 = getelementptr inbounds %struct.ttm_bo_device, %struct.ttm_bo_device* %48, i32 0, i32 3
  store %struct.address_space* %47, %struct.address_space** %49, align 8
  %50 = load %struct.ttm_bo_global*, %struct.ttm_bo_global** %10, align 8
  %51 = load %struct.ttm_bo_device*, %struct.ttm_bo_device** %6, align 8
  %52 = getelementptr inbounds %struct.ttm_bo_device, %struct.ttm_bo_device* %51, i32 0, i32 2
  store %struct.ttm_bo_global* %50, %struct.ttm_bo_global** %52, align 8
  %53 = load i32, i32* %9, align 4
  %54 = load %struct.ttm_bo_device*, %struct.ttm_bo_device** %6, align 8
  %55 = getelementptr inbounds %struct.ttm_bo_device, %struct.ttm_bo_device* %54, i32 0, i32 0
  store i32 %53, i32* %55, align 8
  %56 = call i32 @mutex_lock(i32* @ttm_global_mutex)
  %57 = load %struct.ttm_bo_device*, %struct.ttm_bo_device** %6, align 8
  %58 = getelementptr inbounds %struct.ttm_bo_device, %struct.ttm_bo_device* %57, i32 0, i32 1
  %59 = load %struct.ttm_bo_global*, %struct.ttm_bo_global** %10, align 8
  %60 = getelementptr inbounds %struct.ttm_bo_global, %struct.ttm_bo_global* %59, i32 0, i32 0
  %61 = call i32 @list_add_tail(i32* %58, i32* %60)
  %62 = call i32 @mutex_unlock(i32* @ttm_global_mutex)
  store i32 0, i32* %5, align 4
  br label %66

63:                                               ; preds = %33
  %64 = call i32 (...) @ttm_bo_global_release()
  %65 = load i32, i32* %11, align 4
  store i32 %65, i32* %5, align 4
  br label %66

66:                                               ; preds = %63, %34, %15
  %67 = load i32, i32* %5, align 4
  ret i32 %67
}

declare dso_local i32 @ttm_bo_global_init(...) #1

declare dso_local i32 @memset(i32, i32, i32) #1

declare dso_local i32 @ttm_bo_init_mm(%struct.ttm_bo_device*, i32, i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @drm_vma_offset_manager_init(i32*, i32, i32) #1

declare dso_local i32 @INIT_DELAYED_WORK(i32*, i32) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @ttm_bo_global_release(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
