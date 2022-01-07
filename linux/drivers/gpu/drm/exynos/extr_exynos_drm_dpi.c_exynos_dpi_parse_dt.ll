; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/exynos/extr_exynos_drm_dpi.c_exynos_dpi_parse_dt.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/exynos/extr_exynos_drm_dpi.c_exynos_dpi_parse_dt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.exynos_dpi = type { i32, %struct.videomode*, %struct.device* }
%struct.videomode = type { i32 }
%struct.device = type { %struct.device_node* }
%struct.device_node = type { i32 }

@FIMD_PORT_RGB = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [16 x i8] c"display-timings\00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.exynos_dpi*)* @exynos_dpi_parse_dt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @exynos_dpi_parse_dt(%struct.exynos_dpi* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.exynos_dpi*, align 8
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.device_node*, align 8
  %6 = alloca %struct.device_node*, align 8
  %7 = alloca %struct.videomode*, align 8
  %8 = alloca i32, align 4
  store %struct.exynos_dpi* %0, %struct.exynos_dpi** %3, align 8
  %9 = load %struct.exynos_dpi*, %struct.exynos_dpi** %3, align 8
  %10 = getelementptr inbounds %struct.exynos_dpi, %struct.exynos_dpi* %9, i32 0, i32 2
  %11 = load %struct.device*, %struct.device** %10, align 8
  store %struct.device* %11, %struct.device** %4, align 8
  %12 = load %struct.device*, %struct.device** %4, align 8
  %13 = getelementptr inbounds %struct.device, %struct.device* %12, i32 0, i32 0
  %14 = load %struct.device_node*, %struct.device_node** %13, align 8
  store %struct.device_node* %14, %struct.device_node** %5, align 8
  %15 = load %struct.device_node*, %struct.device_node** %5, align 8
  %16 = load i32, i32* @FIMD_PORT_RGB, align 4
  %17 = call i32 @of_graph_get_remote_node(%struct.device_node* %15, i32 %16, i32 0)
  %18 = load %struct.exynos_dpi*, %struct.exynos_dpi** %3, align 8
  %19 = getelementptr inbounds %struct.exynos_dpi, %struct.exynos_dpi* %18, i32 0, i32 0
  store i32 %17, i32* %19, align 8
  %20 = load %struct.device_node*, %struct.device_node** %5, align 8
  %21 = call %struct.device_node* @of_get_child_by_name(%struct.device_node* %20, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0))
  store %struct.device_node* %21, %struct.device_node** %6, align 8
  %22 = load %struct.device_node*, %struct.device_node** %6, align 8
  %23 = icmp ne %struct.device_node* %22, null
  br i1 %23, label %24, label %50

24:                                               ; preds = %1
  %25 = load %struct.device_node*, %struct.device_node** %6, align 8
  %26 = call i32 @of_node_put(%struct.device_node* %25)
  %27 = load %struct.device*, %struct.device** %4, align 8
  %28 = load i32, i32* @GFP_KERNEL, align 4
  %29 = call %struct.videomode* @devm_kzalloc(%struct.device* %27, i32 4, i32 %28)
  store %struct.videomode* %29, %struct.videomode** %7, align 8
  %30 = load %struct.videomode*, %struct.videomode** %7, align 8
  %31 = icmp ne %struct.videomode* %30, null
  br i1 %31, label %35, label %32

32:                                               ; preds = %24
  %33 = load i32, i32* @ENOMEM, align 4
  %34 = sub nsw i32 0, %33
  store i32 %34, i32* %2, align 4
  br label %59

35:                                               ; preds = %24
  %36 = load %struct.device_node*, %struct.device_node** %5, align 8
  %37 = load %struct.videomode*, %struct.videomode** %7, align 8
  %38 = call i32 @of_get_videomode(%struct.device_node* %36, %struct.videomode* %37, i32 0)
  store i32 %38, i32* %8, align 4
  %39 = load i32, i32* %8, align 4
  %40 = icmp slt i32 %39, 0
  br i1 %40, label %41, label %46

41:                                               ; preds = %35
  %42 = load %struct.device*, %struct.device** %4, align 8
  %43 = load %struct.videomode*, %struct.videomode** %7, align 8
  %44 = call i32 @devm_kfree(%struct.device* %42, %struct.videomode* %43)
  %45 = load i32, i32* %8, align 4
  store i32 %45, i32* %2, align 4
  br label %59

46:                                               ; preds = %35
  %47 = load %struct.videomode*, %struct.videomode** %7, align 8
  %48 = load %struct.exynos_dpi*, %struct.exynos_dpi** %3, align 8
  %49 = getelementptr inbounds %struct.exynos_dpi, %struct.exynos_dpi* %48, i32 0, i32 1
  store %struct.videomode* %47, %struct.videomode** %49, align 8
  store i32 0, i32* %2, align 4
  br label %59

50:                                               ; preds = %1
  %51 = load %struct.exynos_dpi*, %struct.exynos_dpi** %3, align 8
  %52 = getelementptr inbounds %struct.exynos_dpi, %struct.exynos_dpi* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %58, label %55

55:                                               ; preds = %50
  %56 = load i32, i32* @EINVAL, align 4
  %57 = sub nsw i32 0, %56
  store i32 %57, i32* %2, align 4
  br label %59

58:                                               ; preds = %50
  store i32 0, i32* %2, align 4
  br label %59

59:                                               ; preds = %58, %55, %46, %41, %32
  %60 = load i32, i32* %2, align 4
  ret i32 %60
}

declare dso_local i32 @of_graph_get_remote_node(%struct.device_node*, i32, i32) #1

declare dso_local %struct.device_node* @of_get_child_by_name(%struct.device_node*, i8*) #1

declare dso_local i32 @of_node_put(%struct.device_node*) #1

declare dso_local %struct.videomode* @devm_kzalloc(%struct.device*, i32, i32) #1

declare dso_local i32 @of_get_videomode(%struct.device_node*, %struct.videomode*, i32) #1

declare dso_local i32 @devm_kfree(%struct.device*, %struct.videomode*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
