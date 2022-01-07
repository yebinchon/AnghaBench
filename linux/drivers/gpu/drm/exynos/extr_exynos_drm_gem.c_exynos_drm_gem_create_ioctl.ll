; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/exynos/extr_exynos_drm_gem.c_exynos_drm_gem_create_ioctl.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/exynos/extr_exynos_drm_gem.c_exynos_drm_gem_create_ioctl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_device = type { i32 }
%struct.drm_file = type { i32 }
%struct.drm_exynos_gem_create = type { i32, i32, i32 }
%struct.exynos_drm_gem = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @exynos_drm_gem_create_ioctl(%struct.drm_device* %0, i8* %1, %struct.drm_file* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.drm_device*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.drm_file*, align 8
  %8 = alloca %struct.drm_exynos_gem_create*, align 8
  %9 = alloca %struct.exynos_drm_gem*, align 8
  %10 = alloca i32, align 4
  store %struct.drm_device* %0, %struct.drm_device** %5, align 8
  store i8* %1, i8** %6, align 8
  store %struct.drm_file* %2, %struct.drm_file** %7, align 8
  %11 = load i8*, i8** %6, align 8
  %12 = bitcast i8* %11 to %struct.drm_exynos_gem_create*
  store %struct.drm_exynos_gem_create* %12, %struct.drm_exynos_gem_create** %8, align 8
  %13 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %14 = load %struct.drm_exynos_gem_create*, %struct.drm_exynos_gem_create** %8, align 8
  %15 = getelementptr inbounds %struct.drm_exynos_gem_create, %struct.drm_exynos_gem_create* %14, i32 0, i32 2
  %16 = load i32, i32* %15, align 4
  %17 = load %struct.drm_exynos_gem_create*, %struct.drm_exynos_gem_create** %8, align 8
  %18 = getelementptr inbounds %struct.drm_exynos_gem_create, %struct.drm_exynos_gem_create* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = call %struct.exynos_drm_gem* @exynos_drm_gem_create(%struct.drm_device* %13, i32 %16, i32 %19)
  store %struct.exynos_drm_gem* %20, %struct.exynos_drm_gem** %9, align 8
  %21 = load %struct.exynos_drm_gem*, %struct.exynos_drm_gem** %9, align 8
  %22 = call i64 @IS_ERR(%struct.exynos_drm_gem* %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %27

24:                                               ; preds = %3
  %25 = load %struct.exynos_drm_gem*, %struct.exynos_drm_gem** %9, align 8
  %26 = call i32 @PTR_ERR(%struct.exynos_drm_gem* %25)
  store i32 %26, i32* %4, align 4
  br label %41

27:                                               ; preds = %3
  %28 = load %struct.exynos_drm_gem*, %struct.exynos_drm_gem** %9, align 8
  %29 = getelementptr inbounds %struct.exynos_drm_gem, %struct.exynos_drm_gem* %28, i32 0, i32 0
  %30 = load %struct.drm_file*, %struct.drm_file** %7, align 8
  %31 = load %struct.drm_exynos_gem_create*, %struct.drm_exynos_gem_create** %8, align 8
  %32 = getelementptr inbounds %struct.drm_exynos_gem_create, %struct.drm_exynos_gem_create* %31, i32 0, i32 0
  %33 = call i32 @exynos_drm_gem_handle_create(i32* %29, %struct.drm_file* %30, i32* %32)
  store i32 %33, i32* %10, align 4
  %34 = load i32, i32* %10, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %40

36:                                               ; preds = %27
  %37 = load %struct.exynos_drm_gem*, %struct.exynos_drm_gem** %9, align 8
  %38 = call i32 @exynos_drm_gem_destroy(%struct.exynos_drm_gem* %37)
  %39 = load i32, i32* %10, align 4
  store i32 %39, i32* %4, align 4
  br label %41

40:                                               ; preds = %27
  store i32 0, i32* %4, align 4
  br label %41

41:                                               ; preds = %40, %36, %24
  %42 = load i32, i32* %4, align 4
  ret i32 %42
}

declare dso_local %struct.exynos_drm_gem* @exynos_drm_gem_create(%struct.drm_device*, i32, i32) #1

declare dso_local i64 @IS_ERR(%struct.exynos_drm_gem*) #1

declare dso_local i32 @PTR_ERR(%struct.exynos_drm_gem*) #1

declare dso_local i32 @exynos_drm_gem_handle_create(i32*, %struct.drm_file*, i32*) #1

declare dso_local i32 @exynos_drm_gem_destroy(%struct.exynos_drm_gem*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
