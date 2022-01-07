; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/exynos/extr_exynos_drm_g2d.c_g2d_bind.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/exynos/extr_exynos_drm_g2d.c_g2d_bind.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.g2d_data = type { %struct.drm_device* }
%struct.drm_device = type { %struct.exynos_drm_private* }
%struct.exynos_drm_private = type { %struct.device* }

@.str = private unnamed_addr constant [21 x i8] c"cmdlist init failed\0A\00", align 1
@.str.1 = private unnamed_addr constant [25 x i8] c"failed to enable iommu.\0A\00", align 1
@.str.2 = private unnamed_addr constant [53 x i8] c"The Exynos G2D (ver %d.%d) successfully registered.\0A\00", align 1
@G2D_HW_MAJOR_VER = common dso_local global i32 0, align 4
@G2D_HW_MINOR_VER = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.device*, i8*)* @g2d_bind to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @g2d_bind(%struct.device* %0, %struct.device* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.device*, align 8
  %6 = alloca %struct.device*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.g2d_data*, align 8
  %9 = alloca %struct.drm_device*, align 8
  %10 = alloca %struct.exynos_drm_private*, align 8
  %11 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %5, align 8
  store %struct.device* %1, %struct.device** %6, align 8
  store i8* %2, i8** %7, align 8
  %12 = load %struct.device*, %struct.device** %5, align 8
  %13 = call %struct.g2d_data* @dev_get_drvdata(%struct.device* %12)
  store %struct.g2d_data* %13, %struct.g2d_data** %8, align 8
  %14 = load i8*, i8** %7, align 8
  %15 = bitcast i8* %14 to %struct.drm_device*
  store %struct.drm_device* %15, %struct.drm_device** %9, align 8
  %16 = load %struct.drm_device*, %struct.drm_device** %9, align 8
  %17 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %16, i32 0, i32 0
  %18 = load %struct.exynos_drm_private*, %struct.exynos_drm_private** %17, align 8
  store %struct.exynos_drm_private* %18, %struct.exynos_drm_private** %10, align 8
  %19 = load %struct.drm_device*, %struct.drm_device** %9, align 8
  %20 = load %struct.g2d_data*, %struct.g2d_data** %8, align 8
  %21 = getelementptr inbounds %struct.g2d_data, %struct.g2d_data* %20, i32 0, i32 0
  store %struct.drm_device* %19, %struct.drm_device** %21, align 8
  %22 = load %struct.g2d_data*, %struct.g2d_data** %8, align 8
  %23 = call i32 @g2d_init_cmdlist(%struct.g2d_data* %22)
  store i32 %23, i32* %11, align 4
  %24 = load i32, i32* %11, align 4
  %25 = icmp slt i32 %24, 0
  br i1 %25, label %26, label %30

26:                                               ; preds = %3
  %27 = load %struct.device*, %struct.device** %5, align 8
  %28 = call i32 @dev_err(%struct.device* %27, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  %29 = load i32, i32* %11, align 4
  store i32 %29, i32* %4, align 4
  br label %50

30:                                               ; preds = %3
  %31 = load %struct.drm_device*, %struct.drm_device** %9, align 8
  %32 = load %struct.device*, %struct.device** %5, align 8
  %33 = call i32 @exynos_drm_register_dma(%struct.drm_device* %31, %struct.device* %32)
  store i32 %33, i32* %11, align 4
  %34 = load i32, i32* %11, align 4
  %35 = icmp slt i32 %34, 0
  br i1 %35, label %36, label %42

36:                                               ; preds = %30
  %37 = load %struct.device*, %struct.device** %5, align 8
  %38 = call i32 @dev_err(%struct.device* %37, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0))
  %39 = load %struct.g2d_data*, %struct.g2d_data** %8, align 8
  %40 = call i32 @g2d_fini_cmdlist(%struct.g2d_data* %39)
  %41 = load i32, i32* %11, align 4
  store i32 %41, i32* %4, align 4
  br label %50

42:                                               ; preds = %30
  %43 = load %struct.device*, %struct.device** %5, align 8
  %44 = load %struct.exynos_drm_private*, %struct.exynos_drm_private** %10, align 8
  %45 = getelementptr inbounds %struct.exynos_drm_private, %struct.exynos_drm_private* %44, i32 0, i32 0
  store %struct.device* %43, %struct.device** %45, align 8
  %46 = load %struct.device*, %struct.device** %5, align 8
  %47 = load i32, i32* @G2D_HW_MAJOR_VER, align 4
  %48 = load i32, i32* @G2D_HW_MINOR_VER, align 4
  %49 = call i32 @dev_info(%struct.device* %46, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.2, i64 0, i64 0), i32 %47, i32 %48)
  store i32 0, i32* %4, align 4
  br label %50

50:                                               ; preds = %42, %36, %26
  %51 = load i32, i32* %4, align 4
  ret i32 %51
}

declare dso_local %struct.g2d_data* @dev_get_drvdata(%struct.device*) #1

declare dso_local i32 @g2d_init_cmdlist(%struct.g2d_data*) #1

declare dso_local i32 @dev_err(%struct.device*, i8*) #1

declare dso_local i32 @exynos_drm_register_dma(%struct.drm_device*, %struct.device*) #1

declare dso_local i32 @g2d_fini_cmdlist(%struct.g2d_data*) #1

declare dso_local i32 @dev_info(%struct.device*, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
