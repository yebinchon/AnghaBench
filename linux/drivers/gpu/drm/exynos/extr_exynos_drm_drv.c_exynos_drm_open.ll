; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/exynos/extr_exynos_drm_drv.c_exynos_drm_open.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/exynos/extr_exynos_drm_drv.c_exynos_drm_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_device = type { i32 }
%struct.drm_file = type { %struct.drm_exynos_file_private* }
%struct.drm_exynos_file_private = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.drm_device*, %struct.drm_file*)* @exynos_drm_open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @exynos_drm_open(%struct.drm_device* %0, %struct.drm_file* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.drm_device*, align 8
  %5 = alloca %struct.drm_file*, align 8
  %6 = alloca %struct.drm_exynos_file_private*, align 8
  %7 = alloca i32, align 4
  store %struct.drm_device* %0, %struct.drm_device** %4, align 8
  store %struct.drm_file* %1, %struct.drm_file** %5, align 8
  %8 = load i32, i32* @GFP_KERNEL, align 4
  %9 = call %struct.drm_exynos_file_private* @kzalloc(i32 4, i32 %8)
  store %struct.drm_exynos_file_private* %9, %struct.drm_exynos_file_private** %6, align 8
  %10 = load %struct.drm_exynos_file_private*, %struct.drm_exynos_file_private** %6, align 8
  %11 = icmp ne %struct.drm_exynos_file_private* %10, null
  br i1 %11, label %15, label %12

12:                                               ; preds = %2
  %13 = load i32, i32* @ENOMEM, align 4
  %14 = sub nsw i32 0, %13
  store i32 %14, i32* %3, align 4
  br label %33

15:                                               ; preds = %2
  %16 = load %struct.drm_exynos_file_private*, %struct.drm_exynos_file_private** %6, align 8
  %17 = load %struct.drm_file*, %struct.drm_file** %5, align 8
  %18 = getelementptr inbounds %struct.drm_file, %struct.drm_file* %17, i32 0, i32 0
  store %struct.drm_exynos_file_private* %16, %struct.drm_exynos_file_private** %18, align 8
  %19 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %20 = load %struct.drm_file*, %struct.drm_file** %5, align 8
  %21 = call i32 @g2d_open(%struct.drm_device* %19, %struct.drm_file* %20)
  store i32 %21, i32* %7, align 4
  %22 = load i32, i32* %7, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %15
  br label %27

25:                                               ; preds = %15
  %26 = load i32, i32* %7, align 4
  store i32 %26, i32* %3, align 4
  br label %33

27:                                               ; preds = %24
  %28 = load %struct.drm_exynos_file_private*, %struct.drm_exynos_file_private** %6, align 8
  %29 = call i32 @kfree(%struct.drm_exynos_file_private* %28)
  %30 = load %struct.drm_file*, %struct.drm_file** %5, align 8
  %31 = getelementptr inbounds %struct.drm_file, %struct.drm_file* %30, i32 0, i32 0
  store %struct.drm_exynos_file_private* null, %struct.drm_exynos_file_private** %31, align 8
  %32 = load i32, i32* %7, align 4
  store i32 %32, i32* %3, align 4
  br label %33

33:                                               ; preds = %27, %25, %12
  %34 = load i32, i32* %3, align 4
  ret i32 %34
}

declare dso_local %struct.drm_exynos_file_private* @kzalloc(i32, i32) #1

declare dso_local i32 @g2d_open(%struct.drm_device*, %struct.drm_file*) #1

declare dso_local i32 @kfree(%struct.drm_exynos_file_private*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
