; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/mediatek/extr_mtk_disp_color.c_mtk_disp_color_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/mediatek/extr_mtk_disp_color.c_mtk_disp_color_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.device }
%struct.device = type { i32 }
%struct.mtk_disp_color = type { i32, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@MTK_DISP_COLOR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"Failed to identify by alias: %d\0A\00", align 1
@mtk_disp_color_funcs = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [36 x i8] c"Failed to initialize component: %d\0A\00", align 1
@mtk_disp_color_component_ops = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [29 x i8] c"Failed to add component: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @mtk_disp_color_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mtk_disp_color_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.mtk_disp_color*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %8 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %9 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %8, i32 0, i32 0
  store %struct.device* %9, %struct.device** %4, align 8
  %10 = load %struct.device*, %struct.device** %4, align 8
  %11 = load i32, i32* @GFP_KERNEL, align 4
  %12 = call %struct.mtk_disp_color* @devm_kzalloc(%struct.device* %10, i32 8, i32 %11)
  store %struct.mtk_disp_color* %12, %struct.mtk_disp_color** %5, align 8
  %13 = load %struct.mtk_disp_color*, %struct.mtk_disp_color** %5, align 8
  %14 = icmp ne %struct.mtk_disp_color* %13, null
  br i1 %14, label %18, label %15

15:                                               ; preds = %1
  %16 = load i32, i32* @ENOMEM, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %2, align 4
  br label %65

18:                                               ; preds = %1
  %19 = load %struct.device*, %struct.device** %4, align 8
  %20 = getelementptr inbounds %struct.device, %struct.device* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = load i32, i32* @MTK_DISP_COLOR, align 4
  %23 = call i32 @mtk_ddp_comp_get_id(i32 %21, i32 %22)
  store i32 %23, i32* %6, align 4
  %24 = load i32, i32* %6, align 4
  %25 = icmp slt i32 %24, 0
  br i1 %25, label %26, label %31

26:                                               ; preds = %18
  %27 = load %struct.device*, %struct.device** %4, align 8
  %28 = load i32, i32* %6, align 4
  %29 = call i32 @dev_err(%struct.device* %27, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i32 %28)
  %30 = load i32, i32* %6, align 4
  store i32 %30, i32* %2, align 4
  br label %65

31:                                               ; preds = %18
  %32 = load %struct.device*, %struct.device** %4, align 8
  %33 = load %struct.device*, %struct.device** %4, align 8
  %34 = getelementptr inbounds %struct.device, %struct.device* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = load %struct.mtk_disp_color*, %struct.mtk_disp_color** %5, align 8
  %37 = getelementptr inbounds %struct.mtk_disp_color, %struct.mtk_disp_color* %36, i32 0, i32 1
  %38 = load i32, i32* %6, align 4
  %39 = call i32 @mtk_ddp_comp_init(%struct.device* %32, i32 %35, i32* %37, i32 %38, i32* @mtk_disp_color_funcs)
  store i32 %39, i32* %7, align 4
  %40 = load i32, i32* %7, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %47

42:                                               ; preds = %31
  %43 = load %struct.device*, %struct.device** %4, align 8
  %44 = load i32, i32* %7, align 4
  %45 = call i32 @dev_err(%struct.device* %43, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0), i32 %44)
  %46 = load i32, i32* %7, align 4
  store i32 %46, i32* %2, align 4
  br label %65

47:                                               ; preds = %31
  %48 = load %struct.device*, %struct.device** %4, align 8
  %49 = call i32 @of_device_get_match_data(%struct.device* %48)
  %50 = load %struct.mtk_disp_color*, %struct.mtk_disp_color** %5, align 8
  %51 = getelementptr inbounds %struct.mtk_disp_color, %struct.mtk_disp_color* %50, i32 0, i32 0
  store i32 %49, i32* %51, align 4
  %52 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %53 = load %struct.mtk_disp_color*, %struct.mtk_disp_color** %5, align 8
  %54 = call i32 @platform_set_drvdata(%struct.platform_device* %52, %struct.mtk_disp_color* %53)
  %55 = load %struct.device*, %struct.device** %4, align 8
  %56 = call i32 @component_add(%struct.device* %55, i32* @mtk_disp_color_component_ops)
  store i32 %56, i32* %7, align 4
  %57 = load i32, i32* %7, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %63

59:                                               ; preds = %47
  %60 = load %struct.device*, %struct.device** %4, align 8
  %61 = load i32, i32* %7, align 4
  %62 = call i32 @dev_err(%struct.device* %60, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0), i32 %61)
  br label %63

63:                                               ; preds = %59, %47
  %64 = load i32, i32* %7, align 4
  store i32 %64, i32* %2, align 4
  br label %65

65:                                               ; preds = %63, %42, %26, %15
  %66 = load i32, i32* %2, align 4
  ret i32 %66
}

declare dso_local %struct.mtk_disp_color* @devm_kzalloc(%struct.device*, i32, i32) #1

declare dso_local i32 @mtk_ddp_comp_get_id(i32, i32) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, i32) #1

declare dso_local i32 @mtk_ddp_comp_init(%struct.device*, i32, i32*, i32, i32*) #1

declare dso_local i32 @of_device_get_match_data(%struct.device*) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.mtk_disp_color*) #1

declare dso_local i32 @component_add(%struct.device*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
