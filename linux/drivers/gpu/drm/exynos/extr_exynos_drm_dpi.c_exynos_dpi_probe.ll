; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/exynos/extr_exynos_drm_dpi.c_exynos_dpi_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/exynos/extr_exynos_drm_dpi.c_exynos_dpi_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_encoder = type { i32 }
%struct.device = type { i32 }
%struct.exynos_dpi = type { %struct.drm_encoder, i32, i64, %struct.device* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.drm_encoder* @exynos_dpi_probe(%struct.device* %0) #0 {
  %2 = alloca %struct.drm_encoder*, align 8
  %3 = alloca %struct.device*, align 8
  %4 = alloca %struct.exynos_dpi*, align 8
  %5 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %3, align 8
  %6 = load %struct.device*, %struct.device** %3, align 8
  %7 = load i32, i32* @GFP_KERNEL, align 4
  %8 = call %struct.exynos_dpi* @devm_kzalloc(%struct.device* %6, i32 24, i32 %7)
  store %struct.exynos_dpi* %8, %struct.exynos_dpi** %4, align 8
  %9 = load %struct.exynos_dpi*, %struct.exynos_dpi** %4, align 8
  %10 = icmp ne %struct.exynos_dpi* %9, null
  br i1 %10, label %15, label %11

11:                                               ; preds = %1
  %12 = load i32, i32* @ENOMEM, align 4
  %13 = sub nsw i32 0, %12
  %14 = call %struct.drm_encoder* @ERR_PTR(i32 %13)
  store %struct.drm_encoder* %14, %struct.drm_encoder** %2, align 8
  br label %53

15:                                               ; preds = %1
  %16 = load %struct.device*, %struct.device** %3, align 8
  %17 = load %struct.exynos_dpi*, %struct.exynos_dpi** %4, align 8
  %18 = getelementptr inbounds %struct.exynos_dpi, %struct.exynos_dpi* %17, i32 0, i32 3
  store %struct.device* %16, %struct.device** %18, align 8
  %19 = load %struct.exynos_dpi*, %struct.exynos_dpi** %4, align 8
  %20 = call i32 @exynos_dpi_parse_dt(%struct.exynos_dpi* %19)
  store i32 %20, i32* %5, align 4
  %21 = load i32, i32* %5, align 4
  %22 = icmp slt i32 %21, 0
  br i1 %22, label %23, label %27

23:                                               ; preds = %15
  %24 = load %struct.device*, %struct.device** %3, align 8
  %25 = load %struct.exynos_dpi*, %struct.exynos_dpi** %4, align 8
  %26 = call i32 @devm_kfree(%struct.device* %24, %struct.exynos_dpi* %25)
  store %struct.drm_encoder* null, %struct.drm_encoder** %2, align 8
  br label %53

27:                                               ; preds = %15
  %28 = load %struct.exynos_dpi*, %struct.exynos_dpi** %4, align 8
  %29 = getelementptr inbounds %struct.exynos_dpi, %struct.exynos_dpi* %28, i32 0, i32 2
  %30 = load i64, i64* %29, align 8
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %50

32:                                               ; preds = %27
  %33 = load %struct.exynos_dpi*, %struct.exynos_dpi** %4, align 8
  %34 = getelementptr inbounds %struct.exynos_dpi, %struct.exynos_dpi* %33, i32 0, i32 2
  %35 = load i64, i64* %34, align 8
  %36 = call i32 @of_drm_find_panel(i64 %35)
  %37 = load %struct.exynos_dpi*, %struct.exynos_dpi** %4, align 8
  %38 = getelementptr inbounds %struct.exynos_dpi, %struct.exynos_dpi* %37, i32 0, i32 1
  store i32 %36, i32* %38, align 4
  %39 = load %struct.exynos_dpi*, %struct.exynos_dpi** %4, align 8
  %40 = getelementptr inbounds %struct.exynos_dpi, %struct.exynos_dpi* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = call i64 @IS_ERR(i32 %41)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %49

44:                                               ; preds = %32
  %45 = load %struct.exynos_dpi*, %struct.exynos_dpi** %4, align 8
  %46 = getelementptr inbounds %struct.exynos_dpi, %struct.exynos_dpi* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = call %struct.drm_encoder* @ERR_CAST(i32 %47)
  store %struct.drm_encoder* %48, %struct.drm_encoder** %2, align 8
  br label %53

49:                                               ; preds = %32
  br label %50

50:                                               ; preds = %49, %27
  %51 = load %struct.exynos_dpi*, %struct.exynos_dpi** %4, align 8
  %52 = getelementptr inbounds %struct.exynos_dpi, %struct.exynos_dpi* %51, i32 0, i32 0
  store %struct.drm_encoder* %52, %struct.drm_encoder** %2, align 8
  br label %53

53:                                               ; preds = %50, %44, %23, %11
  %54 = load %struct.drm_encoder*, %struct.drm_encoder** %2, align 8
  ret %struct.drm_encoder* %54
}

declare dso_local %struct.exynos_dpi* @devm_kzalloc(%struct.device*, i32, i32) #1

declare dso_local %struct.drm_encoder* @ERR_PTR(i32) #1

declare dso_local i32 @exynos_dpi_parse_dt(%struct.exynos_dpi*) #1

declare dso_local i32 @devm_kfree(%struct.device*, %struct.exynos_dpi*) #1

declare dso_local i32 @of_drm_find_panel(i64) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local %struct.drm_encoder* @ERR_CAST(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
