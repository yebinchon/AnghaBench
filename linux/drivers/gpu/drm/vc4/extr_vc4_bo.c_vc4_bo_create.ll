; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/vc4/extr_vc4_bo.c_vc4_bo_create.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/vc4/extr_vc4_bo.c_vc4_bo_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vc4_bo = type { i32, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.TYPE_4__, i32 }
%struct.TYPE_4__ = type { i32 }
%struct.drm_device = type { i32 }
%struct.vc4_dev = type { i32, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32 }
%struct.drm_gem_cma_object = type { i32 }
%struct.drm_printer = type { i32 }

@PAGE_SIZE = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"Failed to allocate from CMA:\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@__VC4_MADV_NOTSUPP = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.vc4_bo* @vc4_bo_create(%struct.drm_device* %0, i64 %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.vc4_bo*, align 8
  %6 = alloca %struct.drm_device*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca %struct.vc4_dev*, align 8
  %12 = alloca %struct.drm_gem_cma_object*, align 8
  %13 = alloca %struct.vc4_bo*, align 8
  %14 = alloca %struct.drm_printer, align 4
  store %struct.drm_device* %0, %struct.drm_device** %6, align 8
  store i64 %1, i64* %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %15 = load i64, i64* %7, align 8
  %16 = load i32, i32* @PAGE_SIZE, align 4
  %17 = call i64 @roundup(i64 %15, i32 %16)
  store i64 %17, i64* %10, align 8
  %18 = load %struct.drm_device*, %struct.drm_device** %6, align 8
  %19 = call %struct.vc4_dev* @to_vc4_dev(%struct.drm_device* %18)
  store %struct.vc4_dev* %19, %struct.vc4_dev** %11, align 8
  %20 = load i64, i64* %10, align 8
  %21 = icmp eq i64 %20, 0
  br i1 %21, label %22, label %26

22:                                               ; preds = %4
  %23 = load i32, i32* @EINVAL, align 4
  %24 = sub nsw i32 0, %23
  %25 = call %struct.vc4_bo* @ERR_PTR(i32 %24)
  store %struct.vc4_bo* %25, %struct.vc4_bo** %5, align 8
  br label %108

26:                                               ; preds = %4
  %27 = load %struct.drm_device*, %struct.drm_device** %6, align 8
  %28 = load i64, i64* %10, align 8
  %29 = load i32, i32* %9, align 4
  %30 = call %struct.vc4_bo* @vc4_bo_get_from_cache(%struct.drm_device* %27, i64 %28, i32 %29)
  store %struct.vc4_bo* %30, %struct.vc4_bo** %13, align 8
  %31 = load %struct.vc4_bo*, %struct.vc4_bo** %13, align 8
  %32 = icmp ne %struct.vc4_bo* %31, null
  br i1 %32, label %33, label %49

33:                                               ; preds = %26
  %34 = load i32, i32* %8, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %47, label %36

36:                                               ; preds = %33
  %37 = load %struct.vc4_bo*, %struct.vc4_bo** %13, align 8
  %38 = getelementptr inbounds %struct.vc4_bo, %struct.vc4_bo* %37, i32 0, i32 1
  %39 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = load %struct.vc4_bo*, %struct.vc4_bo** %13, align 8
  %42 = getelementptr inbounds %struct.vc4_bo, %struct.vc4_bo* %41, i32 0, i32 1
  %43 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = call i32 @memset(i32 %40, i32 0, i32 %45)
  br label %47

47:                                               ; preds = %36, %33
  %48 = load %struct.vc4_bo*, %struct.vc4_bo** %13, align 8
  store %struct.vc4_bo* %48, %struct.vc4_bo** %5, align 8
  br label %108

49:                                               ; preds = %26
  %50 = load %struct.drm_device*, %struct.drm_device** %6, align 8
  %51 = load i64, i64* %10, align 8
  %52 = call %struct.drm_gem_cma_object* @drm_gem_cma_create(%struct.drm_device* %50, i64 %51)
  store %struct.drm_gem_cma_object* %52, %struct.drm_gem_cma_object** %12, align 8
  %53 = load %struct.drm_gem_cma_object*, %struct.drm_gem_cma_object** %12, align 8
  %54 = call i64 @IS_ERR(%struct.drm_gem_cma_object* %53)
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %62

56:                                               ; preds = %49
  %57 = load %struct.drm_device*, %struct.drm_device** %6, align 8
  %58 = call i32 @vc4_bo_cache_purge(%struct.drm_device* %57)
  %59 = load %struct.drm_device*, %struct.drm_device** %6, align 8
  %60 = load i64, i64* %10, align 8
  %61 = call %struct.drm_gem_cma_object* @drm_gem_cma_create(%struct.drm_device* %59, i64 %60)
  store %struct.drm_gem_cma_object* %61, %struct.drm_gem_cma_object** %12, align 8
  br label %62

62:                                               ; preds = %56, %49
  %63 = load %struct.drm_gem_cma_object*, %struct.drm_gem_cma_object** %12, align 8
  %64 = call i64 @IS_ERR(%struct.drm_gem_cma_object* %63)
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %72

66:                                               ; preds = %62
  %67 = load %struct.drm_device*, %struct.drm_device** %6, align 8
  %68 = call i32 @vc4_bo_userspace_cache_purge(%struct.drm_device* %67)
  %69 = load %struct.drm_device*, %struct.drm_device** %6, align 8
  %70 = load i64, i64* %10, align 8
  %71 = call %struct.drm_gem_cma_object* @drm_gem_cma_create(%struct.drm_device* %69, i64 %70)
  store %struct.drm_gem_cma_object* %71, %struct.drm_gem_cma_object** %12, align 8
  br label %72

72:                                               ; preds = %66, %62
  %73 = load %struct.drm_gem_cma_object*, %struct.drm_gem_cma_object** %12, align 8
  %74 = call i64 @IS_ERR(%struct.drm_gem_cma_object* %73)
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %76, label %90

76:                                               ; preds = %72
  %77 = load %struct.vc4_dev*, %struct.vc4_dev** %11, align 8
  %78 = getelementptr inbounds %struct.vc4_dev, %struct.vc4_dev* %77, i32 0, i32 1
  %79 = load %struct.TYPE_6__*, %struct.TYPE_6__** %78, align 8
  %80 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 4
  %82 = call i32 @drm_info_printer(i32 %81)
  %83 = getelementptr inbounds %struct.drm_printer, %struct.drm_printer* %14, i32 0, i32 0
  store i32 %82, i32* %83, align 4
  %84 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  %85 = load %struct.vc4_dev*, %struct.vc4_dev** %11, align 8
  %86 = call i32 @vc4_bo_stats_print(%struct.drm_printer* %14, %struct.vc4_dev* %85)
  %87 = load i32, i32* @ENOMEM, align 4
  %88 = sub nsw i32 0, %87
  %89 = call %struct.vc4_bo* @ERR_PTR(i32 %88)
  store %struct.vc4_bo* %89, %struct.vc4_bo** %5, align 8
  br label %108

90:                                               ; preds = %72
  %91 = load %struct.drm_gem_cma_object*, %struct.drm_gem_cma_object** %12, align 8
  %92 = getelementptr inbounds %struct.drm_gem_cma_object, %struct.drm_gem_cma_object* %91, i32 0, i32 0
  %93 = call %struct.vc4_bo* @to_vc4_bo(i32* %92)
  store %struct.vc4_bo* %93, %struct.vc4_bo** %13, align 8
  %94 = load i32, i32* @__VC4_MADV_NOTSUPP, align 4
  %95 = load %struct.vc4_bo*, %struct.vc4_bo** %13, align 8
  %96 = getelementptr inbounds %struct.vc4_bo, %struct.vc4_bo* %95, i32 0, i32 0
  store i32 %94, i32* %96, align 4
  %97 = load %struct.vc4_dev*, %struct.vc4_dev** %11, align 8
  %98 = getelementptr inbounds %struct.vc4_dev, %struct.vc4_dev* %97, i32 0, i32 0
  %99 = call i32 @mutex_lock(i32* %98)
  %100 = load %struct.drm_gem_cma_object*, %struct.drm_gem_cma_object** %12, align 8
  %101 = getelementptr inbounds %struct.drm_gem_cma_object, %struct.drm_gem_cma_object* %100, i32 0, i32 0
  %102 = load i32, i32* %9, align 4
  %103 = call i32 @vc4_bo_set_label(i32* %101, i32 %102)
  %104 = load %struct.vc4_dev*, %struct.vc4_dev** %11, align 8
  %105 = getelementptr inbounds %struct.vc4_dev, %struct.vc4_dev* %104, i32 0, i32 0
  %106 = call i32 @mutex_unlock(i32* %105)
  %107 = load %struct.vc4_bo*, %struct.vc4_bo** %13, align 8
  store %struct.vc4_bo* %107, %struct.vc4_bo** %5, align 8
  br label %108

108:                                              ; preds = %90, %76, %47, %22
  %109 = load %struct.vc4_bo*, %struct.vc4_bo** %5, align 8
  ret %struct.vc4_bo* %109
}

declare dso_local i64 @roundup(i64, i32) #1

declare dso_local %struct.vc4_dev* @to_vc4_dev(%struct.drm_device*) #1

declare dso_local %struct.vc4_bo* @ERR_PTR(i32) #1

declare dso_local %struct.vc4_bo* @vc4_bo_get_from_cache(%struct.drm_device*, i64, i32) #1

declare dso_local i32 @memset(i32, i32, i32) #1

declare dso_local %struct.drm_gem_cma_object* @drm_gem_cma_create(%struct.drm_device*, i64) #1

declare dso_local i64 @IS_ERR(%struct.drm_gem_cma_object*) #1

declare dso_local i32 @vc4_bo_cache_purge(%struct.drm_device*) #1

declare dso_local i32 @vc4_bo_userspace_cache_purge(%struct.drm_device*) #1

declare dso_local i32 @drm_info_printer(i32) #1

declare dso_local i32 @DRM_ERROR(i8*) #1

declare dso_local i32 @vc4_bo_stats_print(%struct.drm_printer*, %struct.vc4_dev*) #1

declare dso_local %struct.vc4_bo* @to_vc4_bo(i32*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @vc4_bo_set_label(i32*, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
