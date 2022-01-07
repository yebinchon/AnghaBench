; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/exynos/extr_exynos_drm_mic.c_exynos_mic_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/exynos/extr_exynos_drm_mic.c_exynos_mic_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.device }
%struct.device = type { i32 }
%struct.exynos_mic = type { %struct.TYPE_2__, i32*, i32, i32, %struct.device* }
%struct.TYPE_2__ = type { i32, i32* }
%struct.resource = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [47 x i8] c"mic: Failed to allocate memory for MIC object\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [39 x i8] c"mic: Failed to get mem region for MIC\0A\00", align 1
@.str.2 = private unnamed_addr constant [30 x i8] c"mic: Failed to remap for MIC\0A\00", align 1
@.str.3 = private unnamed_addr constant [20 x i8] c"samsung,disp-syscon\00", align 1
@.str.4 = private unnamed_addr constant [37 x i8] c"mic: Failed to get system register.\0A\00", align 1
@NUM_CLKS = common dso_local global i32 0, align 4
@clk_names = common dso_local global i32* null, align 8
@.str.5 = private unnamed_addr constant [31 x i8] c"mic: Failed to get clock (%s)\0A\00", align 1
@mic_bridge_funcs = common dso_local global i32 0, align 4
@exynos_mic_component_ops = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [21 x i8] c"MIC has been probed\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @exynos_mic_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @exynos_mic_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.exynos_mic*, align 8
  %6 = alloca %struct.resource, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %9 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %10 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %9, i32 0, i32 0
  store %struct.device* %10, %struct.device** %4, align 8
  %11 = load %struct.device*, %struct.device** %4, align 8
  %12 = load i32, i32* @GFP_KERNEL, align 4
  %13 = call %struct.exynos_mic* @devm_kzalloc(%struct.device* %11, i32 40, i32 %12)
  store %struct.exynos_mic* %13, %struct.exynos_mic** %5, align 8
  %14 = load %struct.exynos_mic*, %struct.exynos_mic** %5, align 8
  %15 = icmp ne %struct.exynos_mic* %14, null
  br i1 %15, label %21, label %16

16:                                               ; preds = %1
  %17 = load %struct.device*, %struct.device** %4, align 8
  %18 = call i32 (%struct.device*, i8*, ...) @DRM_DEV_ERROR(%struct.device* %17, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str, i64 0, i64 0))
  %19 = load i32, i32* @ENOMEM, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %7, align 4
  br label %147

21:                                               ; preds = %1
  %22 = load %struct.device*, %struct.device** %4, align 8
  %23 = load %struct.exynos_mic*, %struct.exynos_mic** %5, align 8
  %24 = getelementptr inbounds %struct.exynos_mic, %struct.exynos_mic* %23, i32 0, i32 4
  store %struct.device* %22, %struct.device** %24, align 8
  %25 = load %struct.device*, %struct.device** %4, align 8
  %26 = getelementptr inbounds %struct.device, %struct.device* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @of_address_to_resource(i32 %27, i32 0, %struct.resource* %6)
  store i32 %28, i32* %7, align 4
  %29 = load i32, i32* %7, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %34

31:                                               ; preds = %21
  %32 = load %struct.device*, %struct.device** %4, align 8
  %33 = call i32 (%struct.device*, i8*, ...) @DRM_DEV_ERROR(%struct.device* %32, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0))
  br label %147

34:                                               ; preds = %21
  %35 = load %struct.device*, %struct.device** %4, align 8
  %36 = getelementptr inbounds %struct.resource, %struct.resource* %6, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @resource_size(%struct.resource* %6)
  %39 = call i32 @devm_ioremap(%struct.device* %35, i32 %37, i32 %38)
  %40 = load %struct.exynos_mic*, %struct.exynos_mic** %5, align 8
  %41 = getelementptr inbounds %struct.exynos_mic, %struct.exynos_mic* %40, i32 0, i32 3
  store i32 %39, i32* %41, align 4
  %42 = load %struct.exynos_mic*, %struct.exynos_mic** %5, align 8
  %43 = getelementptr inbounds %struct.exynos_mic, %struct.exynos_mic* %42, i32 0, i32 3
  %44 = load i32, i32* %43, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %51, label %46

46:                                               ; preds = %34
  %47 = load %struct.device*, %struct.device** %4, align 8
  %48 = call i32 (%struct.device*, i8*, ...) @DRM_DEV_ERROR(%struct.device* %47, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i64 0, i64 0))
  %49 = load i32, i32* @ENOMEM, align 4
  %50 = sub nsw i32 0, %49
  store i32 %50, i32* %7, align 4
  br label %147

51:                                               ; preds = %34
  %52 = load %struct.device*, %struct.device** %4, align 8
  %53 = getelementptr inbounds %struct.device, %struct.device* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = call i32 @syscon_regmap_lookup_by_phandle(i32 %54, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.3, i64 0, i64 0))
  %56 = load %struct.exynos_mic*, %struct.exynos_mic** %5, align 8
  %57 = getelementptr inbounds %struct.exynos_mic, %struct.exynos_mic* %56, i32 0, i32 2
  store i32 %55, i32* %57, align 8
  %58 = load %struct.exynos_mic*, %struct.exynos_mic** %5, align 8
  %59 = getelementptr inbounds %struct.exynos_mic, %struct.exynos_mic* %58, i32 0, i32 2
  %60 = load i32, i32* %59, align 8
  %61 = call i64 @IS_ERR(i32 %60)
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %70

63:                                               ; preds = %51
  %64 = load %struct.device*, %struct.device** %4, align 8
  %65 = call i32 (%struct.device*, i8*, ...) @DRM_DEV_ERROR(%struct.device* %64, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.4, i64 0, i64 0))
  %66 = load %struct.exynos_mic*, %struct.exynos_mic** %5, align 8
  %67 = getelementptr inbounds %struct.exynos_mic, %struct.exynos_mic* %66, i32 0, i32 2
  %68 = load i32, i32* %67, align 8
  %69 = call i32 @PTR_ERR(i32 %68)
  store i32 %69, i32* %7, align 4
  br label %147

70:                                               ; preds = %51
  store i32 0, i32* %8, align 4
  br label %71

71:                                               ; preds = %115, %70
  %72 = load i32, i32* %8, align 4
  %73 = load i32, i32* @NUM_CLKS, align 4
  %74 = icmp slt i32 %72, %73
  br i1 %74, label %75, label %118

75:                                               ; preds = %71
  %76 = load %struct.device*, %struct.device** %4, align 8
  %77 = load i32*, i32** @clk_names, align 8
  %78 = load i32, i32* %8, align 4
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds i32, i32* %77, i64 %79
  %81 = load i32, i32* %80, align 4
  %82 = call i32 @devm_clk_get(%struct.device* %76, i32 %81)
  %83 = load %struct.exynos_mic*, %struct.exynos_mic** %5, align 8
  %84 = getelementptr inbounds %struct.exynos_mic, %struct.exynos_mic* %83, i32 0, i32 1
  %85 = load i32*, i32** %84, align 8
  %86 = load i32, i32* %8, align 4
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds i32, i32* %85, i64 %87
  store i32 %82, i32* %88, align 4
  %89 = load %struct.exynos_mic*, %struct.exynos_mic** %5, align 8
  %90 = getelementptr inbounds %struct.exynos_mic, %struct.exynos_mic* %89, i32 0, i32 1
  %91 = load i32*, i32** %90, align 8
  %92 = load i32, i32* %8, align 4
  %93 = sext i32 %92 to i64
  %94 = getelementptr inbounds i32, i32* %91, i64 %93
  %95 = load i32, i32* %94, align 4
  %96 = call i64 @IS_ERR(i32 %95)
  %97 = icmp ne i64 %96, 0
  br i1 %97, label %98, label %114

98:                                               ; preds = %75
  %99 = load %struct.device*, %struct.device** %4, align 8
  %100 = load i32*, i32** @clk_names, align 8
  %101 = load i32, i32* %8, align 4
  %102 = sext i32 %101 to i64
  %103 = getelementptr inbounds i32, i32* %100, i64 %102
  %104 = load i32, i32* %103, align 4
  %105 = call i32 (%struct.device*, i8*, ...) @DRM_DEV_ERROR(%struct.device* %99, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.5, i64 0, i64 0), i32 %104)
  %106 = load %struct.exynos_mic*, %struct.exynos_mic** %5, align 8
  %107 = getelementptr inbounds %struct.exynos_mic, %struct.exynos_mic* %106, i32 0, i32 1
  %108 = load i32*, i32** %107, align 8
  %109 = load i32, i32* %8, align 4
  %110 = sext i32 %109 to i64
  %111 = getelementptr inbounds i32, i32* %108, i64 %110
  %112 = load i32, i32* %111, align 4
  %113 = call i32 @PTR_ERR(i32 %112)
  store i32 %113, i32* %7, align 4
  br label %147

114:                                              ; preds = %75
  br label %115

115:                                              ; preds = %114
  %116 = load i32, i32* %8, align 4
  %117 = add nsw i32 %116, 1
  store i32 %117, i32* %8, align 4
  br label %71

118:                                              ; preds = %71
  %119 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %120 = load %struct.exynos_mic*, %struct.exynos_mic** %5, align 8
  %121 = call i32 @platform_set_drvdata(%struct.platform_device* %119, %struct.exynos_mic* %120)
  %122 = load %struct.exynos_mic*, %struct.exynos_mic** %5, align 8
  %123 = getelementptr inbounds %struct.exynos_mic, %struct.exynos_mic* %122, i32 0, i32 0
  %124 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %123, i32 0, i32 1
  store i32* @mic_bridge_funcs, i32** %124, align 8
  %125 = load %struct.device*, %struct.device** %4, align 8
  %126 = getelementptr inbounds %struct.device, %struct.device* %125, i32 0, i32 0
  %127 = load i32, i32* %126, align 4
  %128 = load %struct.exynos_mic*, %struct.exynos_mic** %5, align 8
  %129 = getelementptr inbounds %struct.exynos_mic, %struct.exynos_mic* %128, i32 0, i32 0
  %130 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %129, i32 0, i32 0
  store i32 %127, i32* %130, align 8
  %131 = load %struct.exynos_mic*, %struct.exynos_mic** %5, align 8
  %132 = getelementptr inbounds %struct.exynos_mic, %struct.exynos_mic* %131, i32 0, i32 0
  %133 = call i32 @drm_bridge_add(%struct.TYPE_2__* %132)
  %134 = load %struct.device*, %struct.device** %4, align 8
  %135 = call i32 @pm_runtime_enable(%struct.device* %134)
  %136 = load %struct.device*, %struct.device** %4, align 8
  %137 = call i32 @component_add(%struct.device* %136, i32* @exynos_mic_component_ops)
  store i32 %137, i32* %7, align 4
  %138 = load i32, i32* %7, align 4
  %139 = icmp ne i32 %138, 0
  br i1 %139, label %140, label %141

140:                                              ; preds = %118
  br label %144

141:                                              ; preds = %118
  %142 = load %struct.device*, %struct.device** %4, align 8
  %143 = call i32 @DRM_DEV_DEBUG_KMS(%struct.device* %142, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.6, i64 0, i64 0))
  store i32 0, i32* %2, align 4
  br label %149

144:                                              ; preds = %140
  %145 = load %struct.device*, %struct.device** %4, align 8
  %146 = call i32 @pm_runtime_disable(%struct.device* %145)
  br label %147

147:                                              ; preds = %144, %98, %63, %46, %31, %16
  %148 = load i32, i32* %7, align 4
  store i32 %148, i32* %2, align 4
  br label %149

149:                                              ; preds = %147, %141
  %150 = load i32, i32* %2, align 4
  ret i32 %150
}

declare dso_local %struct.exynos_mic* @devm_kzalloc(%struct.device*, i32, i32) #1

declare dso_local i32 @DRM_DEV_ERROR(%struct.device*, i8*, ...) #1

declare dso_local i32 @of_address_to_resource(i32, i32, %struct.resource*) #1

declare dso_local i32 @devm_ioremap(%struct.device*, i32, i32) #1

declare dso_local i32 @resource_size(%struct.resource*) #1

declare dso_local i32 @syscon_regmap_lookup_by_phandle(i32, i8*) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @PTR_ERR(i32) #1

declare dso_local i32 @devm_clk_get(%struct.device*, i32) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.exynos_mic*) #1

declare dso_local i32 @drm_bridge_add(%struct.TYPE_2__*) #1

declare dso_local i32 @pm_runtime_enable(%struct.device*) #1

declare dso_local i32 @component_add(%struct.device*, i32*) #1

declare dso_local i32 @DRM_DEV_DEBUG_KMS(%struct.device*, i8*) #1

declare dso_local i32 @pm_runtime_disable(%struct.device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
