; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/extr_drm_gem_cma_helper.c_drm_gem_cma_create.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/extr_drm_gem_cma_helper.c_drm_gem_cma_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_gem_cma_object = type { i32, i32, i32 }
%struct.drm_device = type { i32 }

@PAGE_SIZE = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@__GFP_NOWARN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [41 x i8] c"failed to allocate buffer with size %zu\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.drm_gem_cma_object* @drm_gem_cma_create(%struct.drm_device* %0, i64 %1) #0 {
  %3 = alloca %struct.drm_gem_cma_object*, align 8
  %4 = alloca %struct.drm_device*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.drm_gem_cma_object*, align 8
  %7 = alloca i32, align 4
  store %struct.drm_device* %0, %struct.drm_device** %4, align 8
  store i64 %1, i64* %5, align 8
  %8 = load i64, i64* %5, align 8
  %9 = load i32, i32* @PAGE_SIZE, align 4
  %10 = call i64 @round_up(i64 %8, i32 %9)
  store i64 %10, i64* %5, align 8
  %11 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %12 = load i64, i64* %5, align 8
  %13 = call %struct.drm_gem_cma_object* @__drm_gem_cma_create(%struct.drm_device* %11, i64 %12)
  store %struct.drm_gem_cma_object* %13, %struct.drm_gem_cma_object** %6, align 8
  %14 = load %struct.drm_gem_cma_object*, %struct.drm_gem_cma_object** %6, align 8
  %15 = call i64 @IS_ERR(%struct.drm_gem_cma_object* %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %19

17:                                               ; preds = %2
  %18 = load %struct.drm_gem_cma_object*, %struct.drm_gem_cma_object** %6, align 8
  store %struct.drm_gem_cma_object* %18, %struct.drm_gem_cma_object** %3, align 8
  br label %52

19:                                               ; preds = %2
  %20 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %21 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load i64, i64* %5, align 8
  %24 = load %struct.drm_gem_cma_object*, %struct.drm_gem_cma_object** %6, align 8
  %25 = getelementptr inbounds %struct.drm_gem_cma_object, %struct.drm_gem_cma_object* %24, i32 0, i32 2
  %26 = load i32, i32* @GFP_KERNEL, align 4
  %27 = load i32, i32* @__GFP_NOWARN, align 4
  %28 = or i32 %26, %27
  %29 = call i32 @dma_alloc_wc(i32 %22, i64 %23, i32* %25, i32 %28)
  %30 = load %struct.drm_gem_cma_object*, %struct.drm_gem_cma_object** %6, align 8
  %31 = getelementptr inbounds %struct.drm_gem_cma_object, %struct.drm_gem_cma_object* %30, i32 0, i32 1
  store i32 %29, i32* %31, align 4
  %32 = load %struct.drm_gem_cma_object*, %struct.drm_gem_cma_object** %6, align 8
  %33 = getelementptr inbounds %struct.drm_gem_cma_object, %struct.drm_gem_cma_object* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %44, label %36

36:                                               ; preds = %19
  %37 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %38 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = load i64, i64* %5, align 8
  %41 = call i32 @dev_dbg(i32 %39, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0), i64 %40)
  %42 = load i32, i32* @ENOMEM, align 4
  %43 = sub nsw i32 0, %42
  store i32 %43, i32* %7, align 4
  br label %46

44:                                               ; preds = %19
  %45 = load %struct.drm_gem_cma_object*, %struct.drm_gem_cma_object** %6, align 8
  store %struct.drm_gem_cma_object* %45, %struct.drm_gem_cma_object** %3, align 8
  br label %52

46:                                               ; preds = %36
  %47 = load %struct.drm_gem_cma_object*, %struct.drm_gem_cma_object** %6, align 8
  %48 = getelementptr inbounds %struct.drm_gem_cma_object, %struct.drm_gem_cma_object* %47, i32 0, i32 0
  %49 = call i32 @drm_gem_object_put_unlocked(i32* %48)
  %50 = load i32, i32* %7, align 4
  %51 = call %struct.drm_gem_cma_object* @ERR_PTR(i32 %50)
  store %struct.drm_gem_cma_object* %51, %struct.drm_gem_cma_object** %3, align 8
  br label %52

52:                                               ; preds = %46, %44, %17
  %53 = load %struct.drm_gem_cma_object*, %struct.drm_gem_cma_object** %3, align 8
  ret %struct.drm_gem_cma_object* %53
}

declare dso_local i64 @round_up(i64, i32) #1

declare dso_local %struct.drm_gem_cma_object* @__drm_gem_cma_create(%struct.drm_device*, i64) #1

declare dso_local i64 @IS_ERR(%struct.drm_gem_cma_object*) #1

declare dso_local i32 @dma_alloc_wc(i32, i64, i32*, i32) #1

declare dso_local i32 @dev_dbg(i32, i8*, i64) #1

declare dso_local i32 @drm_gem_object_put_unlocked(i32*) #1

declare dso_local %struct.drm_gem_cma_object* @ERR_PTR(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
