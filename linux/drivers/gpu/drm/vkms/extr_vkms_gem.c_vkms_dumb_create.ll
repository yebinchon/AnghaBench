; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/vkms/extr_vkms_gem.c_vkms_dumb_create.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/vkms/extr_vkms_gem.c_vkms_dumb_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_file = type { i32 }
%struct.drm_device = type { i32 }
%struct.drm_mode_create_dumb = type { i32, i32, i32, i32, i32, i32 }
%struct.drm_gem_object = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"Created object of size %lld\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @vkms_dumb_create(%struct.drm_file* %0, %struct.drm_device* %1, %struct.drm_mode_create_dumb* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.drm_file*, align 8
  %6 = alloca %struct.drm_device*, align 8
  %7 = alloca %struct.drm_mode_create_dumb*, align 8
  %8 = alloca %struct.drm_gem_object*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.drm_file* %0, %struct.drm_file** %5, align 8
  store %struct.drm_device* %1, %struct.drm_device** %6, align 8
  store %struct.drm_mode_create_dumb* %2, %struct.drm_mode_create_dumb** %7, align 8
  %11 = load %struct.drm_mode_create_dumb*, %struct.drm_mode_create_dumb** %7, align 8
  %12 = icmp ne %struct.drm_mode_create_dumb* %11, null
  br i1 %12, label %13, label %19

13:                                               ; preds = %3
  %14 = load %struct.drm_device*, %struct.drm_device** %6, align 8
  %15 = icmp ne %struct.drm_device* %14, null
  br i1 %15, label %16, label %19

16:                                               ; preds = %13
  %17 = load %struct.drm_file*, %struct.drm_file** %5, align 8
  %18 = icmp ne %struct.drm_file* %17, null
  br i1 %18, label %22, label %19

19:                                               ; preds = %16, %13, %3
  %20 = load i32, i32* @EINVAL, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %4, align 4
  br label %65

22:                                               ; preds = %16
  %23 = load %struct.drm_mode_create_dumb*, %struct.drm_mode_create_dumb** %7, align 8
  %24 = getelementptr inbounds %struct.drm_mode_create_dumb, %struct.drm_mode_create_dumb* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = load %struct.drm_mode_create_dumb*, %struct.drm_mode_create_dumb** %7, align 8
  %27 = getelementptr inbounds %struct.drm_mode_create_dumb, %struct.drm_mode_create_dumb* %26, i32 0, i32 5
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @DIV_ROUND_UP(i32 %28, i32 8)
  %30 = mul nsw i32 %25, %29
  store i32 %30, i32* %9, align 4
  %31 = load i32, i32* %9, align 4
  %32 = load %struct.drm_mode_create_dumb*, %struct.drm_mode_create_dumb** %7, align 8
  %33 = getelementptr inbounds %struct.drm_mode_create_dumb, %struct.drm_mode_create_dumb* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = mul nsw i32 %31, %34
  store i32 %35, i32* %10, align 4
  %36 = load i32, i32* %10, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %41, label %38

38:                                               ; preds = %22
  %39 = load i32, i32* @EINVAL, align 4
  %40 = sub nsw i32 0, %39
  store i32 %40, i32* %4, align 4
  br label %65

41:                                               ; preds = %22
  %42 = load %struct.drm_device*, %struct.drm_device** %6, align 8
  %43 = load %struct.drm_file*, %struct.drm_file** %5, align 8
  %44 = load %struct.drm_mode_create_dumb*, %struct.drm_mode_create_dumb** %7, align 8
  %45 = getelementptr inbounds %struct.drm_mode_create_dumb, %struct.drm_mode_create_dumb* %44, i32 0, i32 4
  %46 = load i32, i32* %10, align 4
  %47 = call %struct.drm_gem_object* @vkms_gem_create(%struct.drm_device* %42, %struct.drm_file* %43, i32* %45, i32 %46)
  store %struct.drm_gem_object* %47, %struct.drm_gem_object** %8, align 8
  %48 = load %struct.drm_gem_object*, %struct.drm_gem_object** %8, align 8
  %49 = call i64 @IS_ERR(%struct.drm_gem_object* %48)
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %54

51:                                               ; preds = %41
  %52 = load %struct.drm_gem_object*, %struct.drm_gem_object** %8, align 8
  %53 = call i32 @PTR_ERR(%struct.drm_gem_object* %52)
  store i32 %53, i32* %4, align 4
  br label %65

54:                                               ; preds = %41
  %55 = load %struct.drm_gem_object*, %struct.drm_gem_object** %8, align 8
  %56 = getelementptr inbounds %struct.drm_gem_object, %struct.drm_gem_object* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = load %struct.drm_mode_create_dumb*, %struct.drm_mode_create_dumb** %7, align 8
  %59 = getelementptr inbounds %struct.drm_mode_create_dumb, %struct.drm_mode_create_dumb* %58, i32 0, i32 3
  store i32 %57, i32* %59, align 4
  %60 = load i32, i32* %9, align 4
  %61 = load %struct.drm_mode_create_dumb*, %struct.drm_mode_create_dumb** %7, align 8
  %62 = getelementptr inbounds %struct.drm_mode_create_dumb, %struct.drm_mode_create_dumb* %61, i32 0, i32 2
  store i32 %60, i32* %62, align 4
  %63 = load i32, i32* %10, align 4
  %64 = call i32 @DRM_DEBUG_DRIVER(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 %63)
  store i32 0, i32* %4, align 4
  br label %65

65:                                               ; preds = %54, %51, %38, %19
  %66 = load i32, i32* %4, align 4
  ret i32 %66
}

declare dso_local i32 @DIV_ROUND_UP(i32, i32) #1

declare dso_local %struct.drm_gem_object* @vkms_gem_create(%struct.drm_device*, %struct.drm_file*, i32*, i32) #1

declare dso_local i64 @IS_ERR(%struct.drm_gem_object*) #1

declare dso_local i32 @PTR_ERR(%struct.drm_gem_object*) #1

declare dso_local i32 @DRM_DEBUG_DRIVER(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
