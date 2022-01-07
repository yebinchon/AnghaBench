; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/exynos/extr_exynos_dp.c_exynos_dp_bridge_attach.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/exynos/extr_exynos_dp.c_exynos_dp_bridge_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.analogix_dp_plat_data = type { i32 }
%struct.drm_bridge = type { i32* }
%struct.drm_connector = type { i32 }
%struct.exynos_dp_device = type { i32, i64, i32, %struct.drm_connector* }

@.str = private unnamed_addr constant [32 x i8] c"Failed to attach bridge to drm\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.analogix_dp_plat_data*, %struct.drm_bridge*, %struct.drm_connector*)* @exynos_dp_bridge_attach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @exynos_dp_bridge_attach(%struct.analogix_dp_plat_data* %0, %struct.drm_bridge* %1, %struct.drm_connector* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.analogix_dp_plat_data*, align 8
  %6 = alloca %struct.drm_bridge*, align 8
  %7 = alloca %struct.drm_connector*, align 8
  %8 = alloca %struct.exynos_dp_device*, align 8
  %9 = alloca i32, align 4
  store %struct.analogix_dp_plat_data* %0, %struct.analogix_dp_plat_data** %5, align 8
  store %struct.drm_bridge* %1, %struct.drm_bridge** %6, align 8
  store %struct.drm_connector* %2, %struct.drm_connector** %7, align 8
  %10 = load %struct.analogix_dp_plat_data*, %struct.analogix_dp_plat_data** %5, align 8
  %11 = call %struct.exynos_dp_device* @to_dp(%struct.analogix_dp_plat_data* %10)
  store %struct.exynos_dp_device* %11, %struct.exynos_dp_device** %8, align 8
  %12 = load %struct.drm_connector*, %struct.drm_connector** %7, align 8
  %13 = load %struct.exynos_dp_device*, %struct.exynos_dp_device** %8, align 8
  %14 = getelementptr inbounds %struct.exynos_dp_device, %struct.exynos_dp_device* %13, i32 0, i32 3
  store %struct.drm_connector* %12, %struct.drm_connector** %14, align 8
  %15 = load %struct.exynos_dp_device*, %struct.exynos_dp_device** %8, align 8
  %16 = getelementptr inbounds %struct.exynos_dp_device, %struct.exynos_dp_device* %15, i32 0, i32 1
  %17 = load i64, i64* %16, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %38

19:                                               ; preds = %3
  %20 = load %struct.exynos_dp_device*, %struct.exynos_dp_device** %8, align 8
  %21 = getelementptr inbounds %struct.exynos_dp_device, %struct.exynos_dp_device* %20, i32 0, i32 2
  %22 = load %struct.exynos_dp_device*, %struct.exynos_dp_device** %8, align 8
  %23 = getelementptr inbounds %struct.exynos_dp_device, %struct.exynos_dp_device* %22, i32 0, i32 1
  %24 = load i64, i64* %23, align 8
  %25 = load %struct.drm_bridge*, %struct.drm_bridge** %6, align 8
  %26 = call i32 @drm_bridge_attach(i32* %21, i64 %24, %struct.drm_bridge* %25)
  store i32 %26, i32* %9, align 4
  %27 = load i32, i32* %9, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %37

29:                                               ; preds = %19
  %30 = load %struct.exynos_dp_device*, %struct.exynos_dp_device** %8, align 8
  %31 = getelementptr inbounds %struct.exynos_dp_device, %struct.exynos_dp_device* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = call i32 @DRM_DEV_ERROR(i32 %32, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0))
  %34 = load %struct.drm_bridge*, %struct.drm_bridge** %6, align 8
  %35 = getelementptr inbounds %struct.drm_bridge, %struct.drm_bridge* %34, i32 0, i32 0
  store i32* null, i32** %35, align 8
  %36 = load i32, i32* %9, align 4
  store i32 %36, i32* %4, align 4
  br label %39

37:                                               ; preds = %19
  br label %38

38:                                               ; preds = %37, %3
  store i32 0, i32* %4, align 4
  br label %39

39:                                               ; preds = %38, %29
  %40 = load i32, i32* %4, align 4
  ret i32 %40
}

declare dso_local %struct.exynos_dp_device* @to_dp(%struct.analogix_dp_plat_data*) #1

declare dso_local i32 @drm_bridge_attach(i32*, i64, %struct.drm_bridge*) #1

declare dso_local i32 @DRM_DEV_ERROR(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
