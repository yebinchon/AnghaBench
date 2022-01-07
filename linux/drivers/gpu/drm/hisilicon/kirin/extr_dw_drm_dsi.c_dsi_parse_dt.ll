; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/hisilicon/kirin/extr_dw_drm_dsi.c_dsi_parse_dt.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/hisilicon/kirin/extr_dw_drm_dsi.c_dsi_parse_dt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { %struct.device_node* }
%struct.device_node = type { i32 }
%struct.dw_dsi = type { i32, %struct.dsi_hw_ctx* }
%struct.dsi_hw_ctx = type { i32, i32 }
%struct.resource = type { i32 }

@.str = private unnamed_addr constant [5 x i8] c"pclk\00", align 1
@.str.1 = private unnamed_addr constant [26 x i8] c"failed to get pclk clock\0A\00", align 1
@IORESOURCE_MEM = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [31 x i8] c"failed to remap dsi io region\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*, %struct.dw_dsi*)* @dsi_parse_dt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dsi_parse_dt(%struct.platform_device* %0, %struct.dw_dsi* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.platform_device*, align 8
  %5 = alloca %struct.dw_dsi*, align 8
  %6 = alloca %struct.dsi_hw_ctx*, align 8
  %7 = alloca %struct.device_node*, align 8
  %8 = alloca %struct.resource*, align 8
  %9 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %4, align 8
  store %struct.dw_dsi* %1, %struct.dw_dsi** %5, align 8
  %10 = load %struct.dw_dsi*, %struct.dw_dsi** %5, align 8
  %11 = getelementptr inbounds %struct.dw_dsi, %struct.dw_dsi* %10, i32 0, i32 1
  %12 = load %struct.dsi_hw_ctx*, %struct.dsi_hw_ctx** %11, align 8
  store %struct.dsi_hw_ctx* %12, %struct.dsi_hw_ctx** %6, align 8
  %13 = load %struct.platform_device*, %struct.platform_device** %4, align 8
  %14 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 0
  %16 = load %struct.device_node*, %struct.device_node** %15, align 8
  store %struct.device_node* %16, %struct.device_node** %7, align 8
  %17 = load %struct.device_node*, %struct.device_node** %7, align 8
  %18 = load %struct.dw_dsi*, %struct.dw_dsi** %5, align 8
  %19 = getelementptr inbounds %struct.dw_dsi, %struct.dw_dsi* %18, i32 0, i32 0
  %20 = call i32 @drm_of_find_panel_or_bridge(%struct.device_node* %17, i32 1, i32 0, i32* null, i32* %19)
  store i32 %20, i32* %9, align 4
  %21 = load i32, i32* %9, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %2
  %24 = load i32, i32* %9, align 4
  store i32 %24, i32* %3, align 4
  br label %64

25:                                               ; preds = %2
  %26 = load %struct.platform_device*, %struct.platform_device** %4, align 8
  %27 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %26, i32 0, i32 0
  %28 = call i32 @devm_clk_get(%struct.TYPE_3__* %27, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  %29 = load %struct.dsi_hw_ctx*, %struct.dsi_hw_ctx** %6, align 8
  %30 = getelementptr inbounds %struct.dsi_hw_ctx, %struct.dsi_hw_ctx* %29, i32 0, i32 1
  store i32 %28, i32* %30, align 4
  %31 = load %struct.dsi_hw_ctx*, %struct.dsi_hw_ctx** %6, align 8
  %32 = getelementptr inbounds %struct.dsi_hw_ctx, %struct.dsi_hw_ctx* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = call i64 @IS_ERR(i32 %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %42

36:                                               ; preds = %25
  %37 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0))
  %38 = load %struct.dsi_hw_ctx*, %struct.dsi_hw_ctx** %6, align 8
  %39 = getelementptr inbounds %struct.dsi_hw_ctx, %struct.dsi_hw_ctx* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @PTR_ERR(i32 %40)
  store i32 %41, i32* %3, align 4
  br label %64

42:                                               ; preds = %25
  %43 = load %struct.platform_device*, %struct.platform_device** %4, align 8
  %44 = load i32, i32* @IORESOURCE_MEM, align 4
  %45 = call %struct.resource* @platform_get_resource(%struct.platform_device* %43, i32 %44, i32 0)
  store %struct.resource* %45, %struct.resource** %8, align 8
  %46 = load %struct.platform_device*, %struct.platform_device** %4, align 8
  %47 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %46, i32 0, i32 0
  %48 = load %struct.resource*, %struct.resource** %8, align 8
  %49 = call i32 @devm_ioremap_resource(%struct.TYPE_3__* %47, %struct.resource* %48)
  %50 = load %struct.dsi_hw_ctx*, %struct.dsi_hw_ctx** %6, align 8
  %51 = getelementptr inbounds %struct.dsi_hw_ctx, %struct.dsi_hw_ctx* %50, i32 0, i32 0
  store i32 %49, i32* %51, align 4
  %52 = load %struct.dsi_hw_ctx*, %struct.dsi_hw_ctx** %6, align 8
  %53 = getelementptr inbounds %struct.dsi_hw_ctx, %struct.dsi_hw_ctx* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = call i64 @IS_ERR(i32 %54)
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %63

57:                                               ; preds = %42
  %58 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i64 0, i64 0))
  %59 = load %struct.dsi_hw_ctx*, %struct.dsi_hw_ctx** %6, align 8
  %60 = getelementptr inbounds %struct.dsi_hw_ctx, %struct.dsi_hw_ctx* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = call i32 @PTR_ERR(i32 %61)
  store i32 %62, i32* %3, align 4
  br label %64

63:                                               ; preds = %42
  store i32 0, i32* %3, align 4
  br label %64

64:                                               ; preds = %63, %57, %36, %23
  %65 = load i32, i32* %3, align 4
  ret i32 %65
}

declare dso_local i32 @drm_of_find_panel_or_bridge(%struct.device_node*, i32, i32, i32*, i32*) #1

declare dso_local i32 @devm_clk_get(%struct.TYPE_3__*, i8*) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @DRM_ERROR(i8*) #1

declare dso_local i32 @PTR_ERR(i32) #1

declare dso_local %struct.resource* @platform_get_resource(%struct.platform_device*, i32, i32) #1

declare dso_local i32 @devm_ioremap_resource(%struct.TYPE_3__*, %struct.resource*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
