; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/exynos/extr_exynos_drm_gem.c_exynos_drm_gem_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/exynos/extr_exynos_drm_gem.c_exynos_drm_gem_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.exynos_drm_gem = type { i64, %struct.drm_gem_object }
%struct.drm_gem_object = type { i32 }
%struct.drm_device = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"failed to initialize gem object\0A\00", align 1
@.str.1 = private unnamed_addr constant [27 x i8] c"created file object = %pK\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.exynos_drm_gem* (%struct.drm_device*, i64)* @exynos_drm_gem_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.exynos_drm_gem* @exynos_drm_gem_init(%struct.drm_device* %0, i64 %1) #0 {
  %3 = alloca %struct.exynos_drm_gem*, align 8
  %4 = alloca %struct.drm_device*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.exynos_drm_gem*, align 8
  %7 = alloca %struct.drm_gem_object*, align 8
  %8 = alloca i32, align 4
  store %struct.drm_device* %0, %struct.drm_device** %4, align 8
  store i64 %1, i64* %5, align 8
  %9 = load i32, i32* @GFP_KERNEL, align 4
  %10 = call %struct.exynos_drm_gem* @kzalloc(i32 16, i32 %9)
  store %struct.exynos_drm_gem* %10, %struct.exynos_drm_gem** %6, align 8
  %11 = load %struct.exynos_drm_gem*, %struct.exynos_drm_gem** %6, align 8
  %12 = icmp ne %struct.exynos_drm_gem* %11, null
  br i1 %12, label %17, label %13

13:                                               ; preds = %2
  %14 = load i32, i32* @ENOMEM, align 4
  %15 = sub nsw i32 0, %14
  %16 = call %struct.exynos_drm_gem* @ERR_PTR(i32 %15)
  store %struct.exynos_drm_gem* %16, %struct.exynos_drm_gem** %3, align 8
  br label %59

17:                                               ; preds = %2
  %18 = load i64, i64* %5, align 8
  %19 = load %struct.exynos_drm_gem*, %struct.exynos_drm_gem** %6, align 8
  %20 = getelementptr inbounds %struct.exynos_drm_gem, %struct.exynos_drm_gem* %19, i32 0, i32 0
  store i64 %18, i64* %20, align 8
  %21 = load %struct.exynos_drm_gem*, %struct.exynos_drm_gem** %6, align 8
  %22 = getelementptr inbounds %struct.exynos_drm_gem, %struct.exynos_drm_gem* %21, i32 0, i32 1
  store %struct.drm_gem_object* %22, %struct.drm_gem_object** %7, align 8
  %23 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %24 = load %struct.drm_gem_object*, %struct.drm_gem_object** %7, align 8
  %25 = load i64, i64* %5, align 8
  %26 = call i32 @drm_gem_object_init(%struct.drm_device* %23, %struct.drm_gem_object* %24, i64 %25)
  store i32 %26, i32* %8, align 4
  %27 = load i32, i32* %8, align 4
  %28 = icmp slt i32 %27, 0
  br i1 %28, label %29, label %38

29:                                               ; preds = %17
  %30 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %31 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @DRM_DEV_ERROR(i32 %32, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0))
  %34 = load %struct.exynos_drm_gem*, %struct.exynos_drm_gem** %6, align 8
  %35 = call i32 @kfree(%struct.exynos_drm_gem* %34)
  %36 = load i32, i32* %8, align 4
  %37 = call %struct.exynos_drm_gem* @ERR_PTR(i32 %36)
  store %struct.exynos_drm_gem* %37, %struct.exynos_drm_gem** %3, align 8
  br label %59

38:                                               ; preds = %17
  %39 = load %struct.drm_gem_object*, %struct.drm_gem_object** %7, align 8
  %40 = call i32 @drm_gem_create_mmap_offset(%struct.drm_gem_object* %39)
  store i32 %40, i32* %8, align 4
  %41 = load i32, i32* %8, align 4
  %42 = icmp slt i32 %41, 0
  br i1 %42, label %43, label %50

43:                                               ; preds = %38
  %44 = load %struct.drm_gem_object*, %struct.drm_gem_object** %7, align 8
  %45 = call i32 @drm_gem_object_release(%struct.drm_gem_object* %44)
  %46 = load %struct.exynos_drm_gem*, %struct.exynos_drm_gem** %6, align 8
  %47 = call i32 @kfree(%struct.exynos_drm_gem* %46)
  %48 = load i32, i32* %8, align 4
  %49 = call %struct.exynos_drm_gem* @ERR_PTR(i32 %48)
  store %struct.exynos_drm_gem* %49, %struct.exynos_drm_gem** %3, align 8
  br label %59

50:                                               ; preds = %38
  %51 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %52 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = load %struct.drm_gem_object*, %struct.drm_gem_object** %7, align 8
  %55 = getelementptr inbounds %struct.drm_gem_object, %struct.drm_gem_object* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = call i32 @DRM_DEV_DEBUG_KMS(i32 %53, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0), i32 %56)
  %58 = load %struct.exynos_drm_gem*, %struct.exynos_drm_gem** %6, align 8
  store %struct.exynos_drm_gem* %58, %struct.exynos_drm_gem** %3, align 8
  br label %59

59:                                               ; preds = %50, %43, %29, %13
  %60 = load %struct.exynos_drm_gem*, %struct.exynos_drm_gem** %3, align 8
  ret %struct.exynos_drm_gem* %60
}

declare dso_local %struct.exynos_drm_gem* @kzalloc(i32, i32) #1

declare dso_local %struct.exynos_drm_gem* @ERR_PTR(i32) #1

declare dso_local i32 @drm_gem_object_init(%struct.drm_device*, %struct.drm_gem_object*, i64) #1

declare dso_local i32 @DRM_DEV_ERROR(i32, i8*) #1

declare dso_local i32 @kfree(%struct.exynos_drm_gem*) #1

declare dso_local i32 @drm_gem_create_mmap_offset(%struct.drm_gem_object*) #1

declare dso_local i32 @drm_gem_object_release(%struct.drm_gem_object*) #1

declare dso_local i32 @DRM_DEV_DEBUG_KMS(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
