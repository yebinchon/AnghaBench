; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/exynos/extr_exynos_drm_gem.c_exynos_drm_gem_get_ioctl.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/exynos/extr_exynos_drm_gem.c_exynos_drm_gem_get_ioctl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_device = type { i32 }
%struct.drm_file = type { i32 }
%struct.exynos_drm_gem = type { i32, i32 }
%struct.drm_exynos_gem_info = type { i32, i32, i32 }
%struct.drm_gem_object = type { i32 }

@.str = private unnamed_addr constant [30 x i8] c"failed to lookup gem object.\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @exynos_drm_gem_get_ioctl(%struct.drm_device* %0, i8* %1, %struct.drm_file* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.drm_device*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.drm_file*, align 8
  %8 = alloca %struct.exynos_drm_gem*, align 8
  %9 = alloca %struct.drm_exynos_gem_info*, align 8
  %10 = alloca %struct.drm_gem_object*, align 8
  store %struct.drm_device* %0, %struct.drm_device** %5, align 8
  store i8* %1, i8** %6, align 8
  store %struct.drm_file* %2, %struct.drm_file** %7, align 8
  %11 = load i8*, i8** %6, align 8
  %12 = bitcast i8* %11 to %struct.drm_exynos_gem_info*
  store %struct.drm_exynos_gem_info* %12, %struct.drm_exynos_gem_info** %9, align 8
  %13 = load %struct.drm_file*, %struct.drm_file** %7, align 8
  %14 = load %struct.drm_exynos_gem_info*, %struct.drm_exynos_gem_info** %9, align 8
  %15 = getelementptr inbounds %struct.drm_exynos_gem_info, %struct.drm_exynos_gem_info* %14, i32 0, i32 2
  %16 = load i32, i32* %15, align 4
  %17 = call %struct.drm_gem_object* @drm_gem_object_lookup(%struct.drm_file* %13, i32 %16)
  store %struct.drm_gem_object* %17, %struct.drm_gem_object** %10, align 8
  %18 = load %struct.drm_gem_object*, %struct.drm_gem_object** %10, align 8
  %19 = icmp ne %struct.drm_gem_object* %18, null
  br i1 %19, label %27, label %20

20:                                               ; preds = %3
  %21 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %22 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @DRM_DEV_ERROR(i32 %23, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  %25 = load i32, i32* @EINVAL, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %4, align 4
  br label %42

27:                                               ; preds = %3
  %28 = load %struct.drm_gem_object*, %struct.drm_gem_object** %10, align 8
  %29 = call %struct.exynos_drm_gem* @to_exynos_gem(%struct.drm_gem_object* %28)
  store %struct.exynos_drm_gem* %29, %struct.exynos_drm_gem** %8, align 8
  %30 = load %struct.exynos_drm_gem*, %struct.exynos_drm_gem** %8, align 8
  %31 = getelementptr inbounds %struct.exynos_drm_gem, %struct.exynos_drm_gem* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.drm_exynos_gem_info*, %struct.drm_exynos_gem_info** %9, align 8
  %34 = getelementptr inbounds %struct.drm_exynos_gem_info, %struct.drm_exynos_gem_info* %33, i32 0, i32 1
  store i32 %32, i32* %34, align 4
  %35 = load %struct.exynos_drm_gem*, %struct.exynos_drm_gem** %8, align 8
  %36 = getelementptr inbounds %struct.exynos_drm_gem, %struct.exynos_drm_gem* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = load %struct.drm_exynos_gem_info*, %struct.drm_exynos_gem_info** %9, align 8
  %39 = getelementptr inbounds %struct.drm_exynos_gem_info, %struct.drm_exynos_gem_info* %38, i32 0, i32 0
  store i32 %37, i32* %39, align 4
  %40 = load %struct.drm_gem_object*, %struct.drm_gem_object** %10, align 8
  %41 = call i32 @drm_gem_object_put_unlocked(%struct.drm_gem_object* %40)
  store i32 0, i32* %4, align 4
  br label %42

42:                                               ; preds = %27, %20
  %43 = load i32, i32* %4, align 4
  ret i32 %43
}

declare dso_local %struct.drm_gem_object* @drm_gem_object_lookup(%struct.drm_file*, i32) #1

declare dso_local i32 @DRM_DEV_ERROR(i32, i8*) #1

declare dso_local %struct.exynos_drm_gem* @to_exynos_gem(%struct.drm_gem_object*) #1

declare dso_local i32 @drm_gem_object_put_unlocked(%struct.drm_gem_object*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
