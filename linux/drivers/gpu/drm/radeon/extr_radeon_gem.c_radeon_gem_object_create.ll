; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_radeon_gem.c_radeon_gem_object_create.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_radeon_gem.c_radeon_gem_object_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.radeon_device = type { i64, %struct.TYPE_6__, %struct.TYPE_4__ }
%struct.TYPE_6__ = type { i32, i32 }
%struct.TYPE_4__ = type { i64 }
%struct.drm_gem_object = type { i32 }
%struct.radeon_bo = type { i32, i32, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.drm_gem_object }

@PAGE_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [47 x i8] c"Allocation size %ldMb bigger than %ldMb limit\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@ERESTARTSYS = common dso_local global i32 0, align 4
@RADEON_GEM_DOMAIN_VRAM = common dso_local global i32 0, align 4
@RADEON_GEM_DOMAIN_GTT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [49 x i8] c"Failed to allocate GEM object (%ld, %d, %u, %d)\0A\00", align 1
@current = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @radeon_gem_object_create(%struct.radeon_device* %0, i64 %1, i32 %2, i32 %3, i32 %4, i32 %5, %struct.drm_gem_object** %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca %struct.radeon_device*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca %struct.drm_gem_object**, align 8
  %16 = alloca %struct.radeon_bo*, align 8
  %17 = alloca i64, align 8
  %18 = alloca i32, align 4
  store %struct.radeon_device* %0, %struct.radeon_device** %9, align 8
  store i64 %1, i64* %10, align 8
  store i32 %2, i32* %11, align 4
  store i32 %3, i32* %12, align 4
  store i32 %4, i32* %13, align 4
  store i32 %5, i32* %14, align 4
  store %struct.drm_gem_object** %6, %struct.drm_gem_object*** %15, align 8
  %19 = load %struct.drm_gem_object**, %struct.drm_gem_object*** %15, align 8
  store %struct.drm_gem_object* null, %struct.drm_gem_object** %19, align 8
  %20 = load i32, i32* %11, align 4
  %21 = load i32, i32* @PAGE_SIZE, align 4
  %22 = icmp slt i32 %20, %21
  br i1 %22, label %23, label %25

23:                                               ; preds = %7
  %24 = load i32, i32* @PAGE_SIZE, align 4
  store i32 %24, i32* %11, align 4
  br label %25

25:                                               ; preds = %23, %7
  %26 = load %struct.radeon_device*, %struct.radeon_device** %9, align 8
  %27 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %26, i32 0, i32 2
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = load %struct.radeon_device*, %struct.radeon_device** %9, align 8
  %31 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = sub i64 %29, %32
  store i64 %33, i64* %17, align 8
  %34 = load i64, i64* %10, align 8
  %35 = load i64, i64* %17, align 8
  %36 = icmp ugt i64 %34, %35
  br i1 %36, label %37, label %45

37:                                               ; preds = %25
  %38 = load i64, i64* %10, align 8
  %39 = lshr i64 %38, 20
  %40 = load i64, i64* %17, align 8
  %41 = lshr i64 %40, 20
  %42 = call i32 @DRM_DEBUG(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str, i64 0, i64 0), i64 %39, i64 %41)
  %43 = load i32, i32* @ENOMEM, align 4
  %44 = sub nsw i32 0, %43
  store i32 %44, i32* %8, align 4
  br label %100

45:                                               ; preds = %25
  br label %46

46:                                               ; preds = %65, %45
  %47 = load %struct.radeon_device*, %struct.radeon_device** %9, align 8
  %48 = load i64, i64* %10, align 8
  %49 = load i32, i32* %11, align 4
  %50 = load i32, i32* %14, align 4
  %51 = load i32, i32* %12, align 4
  %52 = load i32, i32* %13, align 4
  %53 = call i32 @radeon_bo_create(%struct.radeon_device* %47, i64 %48, i32 %49, i32 %50, i32 %51, i32 %52, i32* null, i32* null, %struct.radeon_bo** %16)
  store i32 %53, i32* %18, align 4
  %54 = load i32, i32* %18, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %77

56:                                               ; preds = %46
  %57 = load i32, i32* %18, align 4
  %58 = load i32, i32* @ERESTARTSYS, align 4
  %59 = sub nsw i32 0, %58
  %60 = icmp ne i32 %57, %59
  br i1 %60, label %61, label %75

61:                                               ; preds = %56
  %62 = load i32, i32* %12, align 4
  %63 = load i32, i32* @RADEON_GEM_DOMAIN_VRAM, align 4
  %64 = icmp eq i32 %62, %63
  br i1 %64, label %65, label %69

65:                                               ; preds = %61
  %66 = load i32, i32* @RADEON_GEM_DOMAIN_GTT, align 4
  %67 = load i32, i32* %12, align 4
  %68 = or i32 %67, %66
  store i32 %68, i32* %12, align 4
  br label %46

69:                                               ; preds = %61
  %70 = load i64, i64* %10, align 8
  %71 = load i32, i32* %12, align 4
  %72 = load i32, i32* %11, align 4
  %73 = load i32, i32* %18, align 4
  %74 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.1, i64 0, i64 0), i64 %70, i32 %71, i32 %72, i32 %73)
  br label %75

75:                                               ; preds = %69, %56
  %76 = load i32, i32* %18, align 4
  store i32 %76, i32* %8, align 4
  br label %100

77:                                               ; preds = %46
  %78 = load %struct.radeon_bo*, %struct.radeon_bo** %16, align 8
  %79 = getelementptr inbounds %struct.radeon_bo, %struct.radeon_bo* %78, i32 0, i32 2
  %80 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %79, i32 0, i32 0
  %81 = load %struct.drm_gem_object**, %struct.drm_gem_object*** %15, align 8
  store %struct.drm_gem_object* %80, %struct.drm_gem_object** %81, align 8
  %82 = load i32, i32* @current, align 4
  %83 = call i32 @task_pid_nr(i32 %82)
  %84 = load %struct.radeon_bo*, %struct.radeon_bo** %16, align 8
  %85 = getelementptr inbounds %struct.radeon_bo, %struct.radeon_bo* %84, i32 0, i32 1
  store i32 %83, i32* %85, align 4
  %86 = load %struct.radeon_device*, %struct.radeon_device** %9, align 8
  %87 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %86, i32 0, i32 1
  %88 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %87, i32 0, i32 0
  %89 = call i32 @mutex_lock(i32* %88)
  %90 = load %struct.radeon_bo*, %struct.radeon_bo** %16, align 8
  %91 = getelementptr inbounds %struct.radeon_bo, %struct.radeon_bo* %90, i32 0, i32 0
  %92 = load %struct.radeon_device*, %struct.radeon_device** %9, align 8
  %93 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %92, i32 0, i32 1
  %94 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %93, i32 0, i32 1
  %95 = call i32 @list_add_tail(i32* %91, i32* %94)
  %96 = load %struct.radeon_device*, %struct.radeon_device** %9, align 8
  %97 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %96, i32 0, i32 1
  %98 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %97, i32 0, i32 0
  %99 = call i32 @mutex_unlock(i32* %98)
  store i32 0, i32* %8, align 4
  br label %100

100:                                              ; preds = %77, %75, %37
  %101 = load i32, i32* %8, align 4
  ret i32 %101
}

declare dso_local i32 @DRM_DEBUG(i8*, i64, i64) #1

declare dso_local i32 @radeon_bo_create(%struct.radeon_device*, i64, i32, i32, i32, i32, i32*, i32*, %struct.radeon_bo**) #1

declare dso_local i32 @DRM_ERROR(i8*, i64, i32, i32, i32) #1

declare dso_local i32 @task_pid_nr(i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
