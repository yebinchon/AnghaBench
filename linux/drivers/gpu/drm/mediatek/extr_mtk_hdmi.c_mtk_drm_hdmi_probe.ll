; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/mediatek/extr_mtk_hdmi.c_mtk_drm_hdmi_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/mediatek/extr_mtk_hdmi.c_mtk_drm_hdmi_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.device }
%struct.device = type { i32 }
%struct.mtk_hdmi = type { %struct.TYPE_3__, i32, %struct.device* }
%struct.TYPE_3__ = type { i32, i32* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"hdmi\00", align 1
@.str.1 = private unnamed_addr constant [28 x i8] c"Failed to get HDMI PHY: %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [34 x i8] c"Failed to initialize hdmi output\0A\00", align 1
@mtk_hdmi_bridge_funcs = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [35 x i8] c"Failed to enable audio clocks: %d\0A\00", align 1
@.str.4 = private unnamed_addr constant [29 x i8] c"mediatek hdmi probe success\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @mtk_drm_hdmi_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mtk_drm_hdmi_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.mtk_hdmi*, align 8
  %5 = alloca %struct.device*, align 8
  %6 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %7 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %8 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %7, i32 0, i32 0
  store %struct.device* %8, %struct.device** %5, align 8
  %9 = load %struct.device*, %struct.device** %5, align 8
  %10 = load i32, i32* @GFP_KERNEL, align 4
  %11 = call %struct.mtk_hdmi* @devm_kzalloc(%struct.device* %9, i32 32, i32 %10)
  store %struct.mtk_hdmi* %11, %struct.mtk_hdmi** %4, align 8
  %12 = load %struct.mtk_hdmi*, %struct.mtk_hdmi** %4, align 8
  %13 = icmp ne %struct.mtk_hdmi* %12, null
  br i1 %13, label %17, label %14

14:                                               ; preds = %1
  %15 = load i32, i32* @ENOMEM, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %2, align 4
  br label %91

17:                                               ; preds = %1
  %18 = load %struct.device*, %struct.device** %5, align 8
  %19 = load %struct.mtk_hdmi*, %struct.mtk_hdmi** %4, align 8
  %20 = getelementptr inbounds %struct.mtk_hdmi, %struct.mtk_hdmi* %19, i32 0, i32 2
  store %struct.device* %18, %struct.device** %20, align 8
  %21 = load %struct.mtk_hdmi*, %struct.mtk_hdmi** %4, align 8
  %22 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %23 = call i32 @mtk_hdmi_dt_parse_pdata(%struct.mtk_hdmi* %21, %struct.platform_device* %22)
  store i32 %23, i32* %6, align 4
  %24 = load i32, i32* %6, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %28

26:                                               ; preds = %17
  %27 = load i32, i32* %6, align 4
  store i32 %27, i32* %2, align 4
  br label %91

28:                                               ; preds = %17
  %29 = load %struct.device*, %struct.device** %5, align 8
  %30 = call i32 @devm_phy_get(%struct.device* %29, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  %31 = load %struct.mtk_hdmi*, %struct.mtk_hdmi** %4, align 8
  %32 = getelementptr inbounds %struct.mtk_hdmi, %struct.mtk_hdmi* %31, i32 0, i32 1
  store i32 %30, i32* %32, align 8
  %33 = load %struct.mtk_hdmi*, %struct.mtk_hdmi** %4, align 8
  %34 = getelementptr inbounds %struct.mtk_hdmi, %struct.mtk_hdmi* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 8
  %36 = call i64 @IS_ERR(i32 %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %47

38:                                               ; preds = %28
  %39 = load %struct.mtk_hdmi*, %struct.mtk_hdmi** %4, align 8
  %40 = getelementptr inbounds %struct.mtk_hdmi, %struct.mtk_hdmi* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 8
  %42 = call i32 @PTR_ERR(i32 %41)
  store i32 %42, i32* %6, align 4
  %43 = load %struct.device*, %struct.device** %5, align 8
  %44 = load i32, i32* %6, align 4
  %45 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %43, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0), i32 %44)
  %46 = load i32, i32* %6, align 4
  store i32 %46, i32* %2, align 4
  br label %91

47:                                               ; preds = %28
  %48 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %49 = load %struct.mtk_hdmi*, %struct.mtk_hdmi** %4, align 8
  %50 = call i32 @platform_set_drvdata(%struct.platform_device* %48, %struct.mtk_hdmi* %49)
  %51 = load %struct.mtk_hdmi*, %struct.mtk_hdmi** %4, align 8
  %52 = call i32 @mtk_hdmi_output_init(%struct.mtk_hdmi* %51)
  store i32 %52, i32* %6, align 4
  %53 = load i32, i32* %6, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %59

55:                                               ; preds = %47
  %56 = load %struct.device*, %struct.device** %5, align 8
  %57 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %56, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.2, i64 0, i64 0))
  %58 = load i32, i32* %6, align 4
  store i32 %58, i32* %2, align 4
  br label %91

59:                                               ; preds = %47
  %60 = load %struct.device*, %struct.device** %5, align 8
  %61 = call i32 @mtk_hdmi_register_audio_driver(%struct.device* %60)
  %62 = load %struct.mtk_hdmi*, %struct.mtk_hdmi** %4, align 8
  %63 = getelementptr inbounds %struct.mtk_hdmi, %struct.mtk_hdmi* %62, i32 0, i32 0
  %64 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %63, i32 0, i32 1
  store i32* @mtk_hdmi_bridge_funcs, i32** %64, align 8
  %65 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %66 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %65, i32 0, i32 0
  %67 = getelementptr inbounds %struct.device, %struct.device* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = load %struct.mtk_hdmi*, %struct.mtk_hdmi** %4, align 8
  %70 = getelementptr inbounds %struct.mtk_hdmi, %struct.mtk_hdmi* %69, i32 0, i32 0
  %71 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %70, i32 0, i32 0
  store i32 %68, i32* %71, align 8
  %72 = load %struct.mtk_hdmi*, %struct.mtk_hdmi** %4, align 8
  %73 = getelementptr inbounds %struct.mtk_hdmi, %struct.mtk_hdmi* %72, i32 0, i32 0
  %74 = call i32 @drm_bridge_add(%struct.TYPE_3__* %73)
  %75 = load %struct.mtk_hdmi*, %struct.mtk_hdmi** %4, align 8
  %76 = call i32 @mtk_hdmi_clk_enable_audio(%struct.mtk_hdmi* %75)
  store i32 %76, i32* %6, align 4
  %77 = load i32, i32* %6, align 4
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %83

79:                                               ; preds = %59
  %80 = load %struct.device*, %struct.device** %5, align 8
  %81 = load i32, i32* %6, align 4
  %82 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %80, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.3, i64 0, i64 0), i32 %81)
  br label %86

83:                                               ; preds = %59
  %84 = load %struct.device*, %struct.device** %5, align 8
  %85 = call i32 @dev_dbg(%struct.device* %84, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.4, i64 0, i64 0))
  store i32 0, i32* %2, align 4
  br label %91

86:                                               ; preds = %79
  %87 = load %struct.mtk_hdmi*, %struct.mtk_hdmi** %4, align 8
  %88 = getelementptr inbounds %struct.mtk_hdmi, %struct.mtk_hdmi* %87, i32 0, i32 0
  %89 = call i32 @drm_bridge_remove(%struct.TYPE_3__* %88)
  %90 = load i32, i32* %6, align 4
  store i32 %90, i32* %2, align 4
  br label %91

91:                                               ; preds = %86, %83, %55, %38, %26, %14
  %92 = load i32, i32* %2, align 4
  ret i32 %92
}

declare dso_local %struct.mtk_hdmi* @devm_kzalloc(%struct.device*, i32, i32) #1

declare dso_local i32 @mtk_hdmi_dt_parse_pdata(%struct.mtk_hdmi*, %struct.platform_device*) #1

declare dso_local i32 @devm_phy_get(%struct.device*, i8*) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @PTR_ERR(i32) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, ...) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.mtk_hdmi*) #1

declare dso_local i32 @mtk_hdmi_output_init(%struct.mtk_hdmi*) #1

declare dso_local i32 @mtk_hdmi_register_audio_driver(%struct.device*) #1

declare dso_local i32 @drm_bridge_add(%struct.TYPE_3__*) #1

declare dso_local i32 @mtk_hdmi_clk_enable_audio(%struct.mtk_hdmi*) #1

declare dso_local i32 @dev_dbg(%struct.device*, i8*) #1

declare dso_local i32 @drm_bridge_remove(%struct.TYPE_3__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
