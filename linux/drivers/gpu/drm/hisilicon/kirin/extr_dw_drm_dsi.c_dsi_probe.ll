; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/hisilicon/kirin/extr_dw_drm_dsi.c_dsi_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/hisilicon/kirin/extr_dw_drm_dsi.c_dsi_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { i32 }
%struct.dsi_data = type { %struct.dsi_hw_ctx, %struct.dw_dsi }
%struct.dsi_hw_ctx = type { i32 }
%struct.dw_dsi = type { %struct.dsi_hw_ctx* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"failed to allocate dsi data.\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@dsi_ops = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @dsi_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dsi_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.dsi_data*, align 8
  %5 = alloca %struct.dw_dsi*, align 8
  %6 = alloca %struct.dsi_hw_ctx*, align 8
  %7 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %8 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %9 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %8, i32 0, i32 0
  %10 = load i32, i32* @GFP_KERNEL, align 4
  %11 = call %struct.dsi_data* @devm_kzalloc(i32* %9, i32 16, i32 %10)
  store %struct.dsi_data* %11, %struct.dsi_data** %4, align 8
  %12 = load %struct.dsi_data*, %struct.dsi_data** %4, align 8
  %13 = icmp ne %struct.dsi_data* %12, null
  br i1 %13, label %18, label %14

14:                                               ; preds = %1
  %15 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  %16 = load i32, i32* @ENOMEM, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %2, align 4
  br label %40

18:                                               ; preds = %1
  %19 = load %struct.dsi_data*, %struct.dsi_data** %4, align 8
  %20 = getelementptr inbounds %struct.dsi_data, %struct.dsi_data* %19, i32 0, i32 1
  store %struct.dw_dsi* %20, %struct.dw_dsi** %5, align 8
  %21 = load %struct.dsi_data*, %struct.dsi_data** %4, align 8
  %22 = getelementptr inbounds %struct.dsi_data, %struct.dsi_data* %21, i32 0, i32 0
  store %struct.dsi_hw_ctx* %22, %struct.dsi_hw_ctx** %6, align 8
  %23 = load %struct.dsi_hw_ctx*, %struct.dsi_hw_ctx** %6, align 8
  %24 = load %struct.dw_dsi*, %struct.dw_dsi** %5, align 8
  %25 = getelementptr inbounds %struct.dw_dsi, %struct.dw_dsi* %24, i32 0, i32 0
  store %struct.dsi_hw_ctx* %23, %struct.dsi_hw_ctx** %25, align 8
  %26 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %27 = load %struct.dw_dsi*, %struct.dw_dsi** %5, align 8
  %28 = call i32 @dsi_parse_dt(%struct.platform_device* %26, %struct.dw_dsi* %27)
  store i32 %28, i32* %7, align 4
  %29 = load i32, i32* %7, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %33

31:                                               ; preds = %18
  %32 = load i32, i32* %7, align 4
  store i32 %32, i32* %2, align 4
  br label %40

33:                                               ; preds = %18
  %34 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %35 = load %struct.dsi_data*, %struct.dsi_data** %4, align 8
  %36 = call i32 @platform_set_drvdata(%struct.platform_device* %34, %struct.dsi_data* %35)
  %37 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %38 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %37, i32 0, i32 0
  %39 = call i32 @component_add(i32* %38, i32* @dsi_ops)
  store i32 %39, i32* %2, align 4
  br label %40

40:                                               ; preds = %33, %31, %14
  %41 = load i32, i32* %2, align 4
  ret i32 %41
}

declare dso_local %struct.dsi_data* @devm_kzalloc(i32*, i32, i32) #1

declare dso_local i32 @DRM_ERROR(i8*) #1

declare dso_local i32 @dsi_parse_dt(%struct.platform_device*, %struct.dw_dsi*) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.dsi_data*) #1

declare dso_local i32 @component_add(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
