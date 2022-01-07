; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/xen/extr_xen_drm_front_gem.c_gem_create.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/xen/extr_xen_drm_front_gem.c_gem_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xen_gem_object = type { i32, %struct.xen_gem_object*, i32, i32 }
%struct.drm_device = type { %struct.xen_drm_front_drm_info* }
%struct.xen_drm_front_drm_info = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64 }

@PAGE_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [41 x i8] c"Cannot allocate %zu ballooned pages: %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [41 x i8] c"Failed to allocate buffer with size %zu\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.xen_gem_object* (%struct.drm_device*, i64)* @gem_create to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.xen_gem_object* @gem_create(%struct.drm_device* %0, i64 %1) #0 {
  %3 = alloca %struct.xen_gem_object*, align 8
  %4 = alloca %struct.drm_device*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.xen_drm_front_drm_info*, align 8
  %7 = alloca %struct.xen_gem_object*, align 8
  %8 = alloca i32, align 4
  store %struct.drm_device* %0, %struct.drm_device** %4, align 8
  store i64 %1, i64* %5, align 8
  %9 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %10 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %9, i32 0, i32 0
  %11 = load %struct.xen_drm_front_drm_info*, %struct.xen_drm_front_drm_info** %10, align 8
  store %struct.xen_drm_front_drm_info* %11, %struct.xen_drm_front_drm_info** %6, align 8
  %12 = load i64, i64* %5, align 8
  %13 = load i32, i32* @PAGE_SIZE, align 4
  %14 = call i64 @round_up(i64 %12, i32 %13)
  store i64 %14, i64* %5, align 8
  %15 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %16 = load i64, i64* %5, align 8
  %17 = call %struct.xen_gem_object* @gem_create_obj(%struct.drm_device* %15, i64 %16)
  store %struct.xen_gem_object* %17, %struct.xen_gem_object** %7, align 8
  %18 = load %struct.xen_gem_object*, %struct.xen_gem_object** %7, align 8
  %19 = call i64 @IS_ERR_OR_NULL(%struct.xen_gem_object* %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %23

21:                                               ; preds = %2
  %22 = load %struct.xen_gem_object*, %struct.xen_gem_object** %7, align 8
  store %struct.xen_gem_object* %22, %struct.xen_gem_object** %3, align 8
  br label %91

23:                                               ; preds = %2
  %24 = load %struct.xen_drm_front_drm_info*, %struct.xen_drm_front_drm_info** %6, align 8
  %25 = getelementptr inbounds %struct.xen_drm_front_drm_info, %struct.xen_drm_front_drm_info* %24, i32 0, i32 0
  %26 = load %struct.TYPE_4__*, %struct.TYPE_4__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %61

31:                                               ; preds = %23
  %32 = load %struct.xen_gem_object*, %struct.xen_gem_object** %7, align 8
  %33 = load i64, i64* %5, align 8
  %34 = call i32 @gem_alloc_pages_array(%struct.xen_gem_object* %32, i64 %33)
  store i32 %34, i32* %8, align 4
  %35 = load i32, i32* %8, align 4
  %36 = icmp slt i32 %35, 0
  br i1 %36, label %37, label %38

37:                                               ; preds = %31
  br label %86

38:                                               ; preds = %31
  %39 = load %struct.xen_gem_object*, %struct.xen_gem_object** %7, align 8
  %40 = getelementptr inbounds %struct.xen_gem_object, %struct.xen_gem_object* %39, i32 0, i32 3
  %41 = load i32, i32* %40, align 4
  %42 = load %struct.xen_gem_object*, %struct.xen_gem_object** %7, align 8
  %43 = getelementptr inbounds %struct.xen_gem_object, %struct.xen_gem_object* %42, i32 0, i32 1
  %44 = load %struct.xen_gem_object*, %struct.xen_gem_object** %43, align 8
  %45 = call i32 @alloc_xenballooned_pages(i32 %41, %struct.xen_gem_object* %44)
  store i32 %45, i32* %8, align 4
  %46 = load i32, i32* %8, align 4
  %47 = icmp slt i32 %46, 0
  br i1 %47, label %48, label %57

48:                                               ; preds = %38
  %49 = load %struct.xen_gem_object*, %struct.xen_gem_object** %7, align 8
  %50 = getelementptr inbounds %struct.xen_gem_object, %struct.xen_gem_object* %49, i32 0, i32 3
  %51 = load i32, i32* %50, align 4
  %52 = sext i32 %51 to i64
  %53 = load i32, i32* %8, align 4
  %54 = call i32 (i8*, i64, ...) @DRM_ERROR(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0), i64 %52, i32 %53)
  %55 = load %struct.xen_gem_object*, %struct.xen_gem_object** %7, align 8
  %56 = call i32 @gem_free_pages_array(%struct.xen_gem_object* %55)
  br label %86

57:                                               ; preds = %38
  %58 = load %struct.xen_gem_object*, %struct.xen_gem_object** %7, align 8
  %59 = getelementptr inbounds %struct.xen_gem_object, %struct.xen_gem_object* %58, i32 0, i32 0
  store i32 1, i32* %59, align 8
  %60 = load %struct.xen_gem_object*, %struct.xen_gem_object** %7, align 8
  store %struct.xen_gem_object* %60, %struct.xen_gem_object** %3, align 8
  br label %91

61:                                               ; preds = %23
  %62 = load i64, i64* %5, align 8
  %63 = load i32, i32* @PAGE_SIZE, align 4
  %64 = call i32 @DIV_ROUND_UP(i64 %62, i32 %63)
  %65 = load %struct.xen_gem_object*, %struct.xen_gem_object** %7, align 8
  %66 = getelementptr inbounds %struct.xen_gem_object, %struct.xen_gem_object* %65, i32 0, i32 3
  store i32 %64, i32* %66, align 4
  %67 = load %struct.xen_gem_object*, %struct.xen_gem_object** %7, align 8
  %68 = getelementptr inbounds %struct.xen_gem_object, %struct.xen_gem_object* %67, i32 0, i32 2
  %69 = call %struct.xen_gem_object* @drm_gem_get_pages(i32* %68)
  %70 = load %struct.xen_gem_object*, %struct.xen_gem_object** %7, align 8
  %71 = getelementptr inbounds %struct.xen_gem_object, %struct.xen_gem_object* %70, i32 0, i32 1
  store %struct.xen_gem_object* %69, %struct.xen_gem_object** %71, align 8
  %72 = load %struct.xen_gem_object*, %struct.xen_gem_object** %7, align 8
  %73 = getelementptr inbounds %struct.xen_gem_object, %struct.xen_gem_object* %72, i32 0, i32 1
  %74 = load %struct.xen_gem_object*, %struct.xen_gem_object** %73, align 8
  %75 = call i64 @IS_ERR_OR_NULL(%struct.xen_gem_object* %74)
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %77, label %84

77:                                               ; preds = %61
  %78 = load %struct.xen_gem_object*, %struct.xen_gem_object** %7, align 8
  %79 = getelementptr inbounds %struct.xen_gem_object, %struct.xen_gem_object* %78, i32 0, i32 1
  %80 = load %struct.xen_gem_object*, %struct.xen_gem_object** %79, align 8
  %81 = call i32 @PTR_ERR(%struct.xen_gem_object* %80)
  store i32 %81, i32* %8, align 4
  %82 = load %struct.xen_gem_object*, %struct.xen_gem_object** %7, align 8
  %83 = getelementptr inbounds %struct.xen_gem_object, %struct.xen_gem_object* %82, i32 0, i32 1
  store %struct.xen_gem_object* null, %struct.xen_gem_object** %83, align 8
  br label %86

84:                                               ; preds = %61
  %85 = load %struct.xen_gem_object*, %struct.xen_gem_object** %7, align 8
  store %struct.xen_gem_object* %85, %struct.xen_gem_object** %3, align 8
  br label %91

86:                                               ; preds = %77, %48, %37
  %87 = load i64, i64* %5, align 8
  %88 = call i32 (i8*, i64, ...) @DRM_ERROR(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.1, i64 0, i64 0), i64 %87)
  %89 = load i32, i32* %8, align 4
  %90 = call %struct.xen_gem_object* @ERR_PTR(i32 %89)
  store %struct.xen_gem_object* %90, %struct.xen_gem_object** %3, align 8
  br label %91

91:                                               ; preds = %86, %84, %57, %21
  %92 = load %struct.xen_gem_object*, %struct.xen_gem_object** %3, align 8
  ret %struct.xen_gem_object* %92
}

declare dso_local i64 @round_up(i64, i32) #1

declare dso_local %struct.xen_gem_object* @gem_create_obj(%struct.drm_device*, i64) #1

declare dso_local i64 @IS_ERR_OR_NULL(%struct.xen_gem_object*) #1

declare dso_local i32 @gem_alloc_pages_array(%struct.xen_gem_object*, i64) #1

declare dso_local i32 @alloc_xenballooned_pages(i32, %struct.xen_gem_object*) #1

declare dso_local i32 @DRM_ERROR(i8*, i64, ...) #1

declare dso_local i32 @gem_free_pages_array(%struct.xen_gem_object*) #1

declare dso_local i32 @DIV_ROUND_UP(i64, i32) #1

declare dso_local %struct.xen_gem_object* @drm_gem_get_pages(i32*) #1

declare dso_local i32 @PTR_ERR(%struct.xen_gem_object*) #1

declare dso_local %struct.xen_gem_object* @ERR_PTR(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
