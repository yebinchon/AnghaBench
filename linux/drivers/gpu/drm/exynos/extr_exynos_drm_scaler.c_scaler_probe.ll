; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/exynos/extr_exynos_drm_scaler.c_scaler_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/exynos/extr_exynos_drm_scaler.c_scaler_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.device }
%struct.device = type { i32 }
%struct.resource = type { i32 }
%struct.scaler_context = type { i32*, %struct.scaler_data*, i32, %struct.device* }
%struct.scaler_data = type { i32, i32* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@IORESOURCE_MEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [19 x i8] c"failed to get irq\0A\00", align 1
@scaler_irq_handler = common dso_local global i32 0, align 4
@IRQF_ONESHOT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [11 x i8] c"drm_scaler\00", align 1
@.str.2 = private unnamed_addr constant [23 x i8] c"failed to request irq\0A\00", align 1
@.str.3 = private unnamed_addr constant [21 x i8] c"failed to get clock\0A\00", align 1
@SCALER_AUTOSUSPEND_DELAY = common dso_local global i32 0, align 4
@scaler_component_ops = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @scaler_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @scaler_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.resource*, align 8
  %6 = alloca %struct.scaler_context*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %10 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %11 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %10, i32 0, i32 0
  store %struct.device* %11, %struct.device** %4, align 8
  %12 = load %struct.device*, %struct.device** %4, align 8
  %13 = load i32, i32* @GFP_KERNEL, align 4
  %14 = call %struct.scaler_context* @devm_kzalloc(%struct.device* %12, i32 32, i32 %13)
  store %struct.scaler_context* %14, %struct.scaler_context** %6, align 8
  %15 = load %struct.scaler_context*, %struct.scaler_context** %6, align 8
  %16 = icmp ne %struct.scaler_context* %15, null
  br i1 %16, label %20, label %17

17:                                               ; preds = %1
  %18 = load i32, i32* @ENOMEM, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %2, align 4
  br label %143

20:                                               ; preds = %1
  %21 = load %struct.device*, %struct.device** %4, align 8
  %22 = call i64 @of_device_get_match_data(%struct.device* %21)
  %23 = inttoptr i64 %22 to %struct.scaler_data*
  %24 = load %struct.scaler_context*, %struct.scaler_context** %6, align 8
  %25 = getelementptr inbounds %struct.scaler_context, %struct.scaler_context* %24, i32 0, i32 1
  store %struct.scaler_data* %23, %struct.scaler_data** %25, align 8
  %26 = load %struct.device*, %struct.device** %4, align 8
  %27 = load %struct.scaler_context*, %struct.scaler_context** %6, align 8
  %28 = getelementptr inbounds %struct.scaler_context, %struct.scaler_context* %27, i32 0, i32 3
  store %struct.device* %26, %struct.device** %28, align 8
  %29 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %30 = load i32, i32* @IORESOURCE_MEM, align 4
  %31 = call %struct.resource* @platform_get_resource(%struct.platform_device* %29, i32 %30, i32 0)
  store %struct.resource* %31, %struct.resource** %5, align 8
  %32 = load %struct.device*, %struct.device** %4, align 8
  %33 = load %struct.resource*, %struct.resource** %5, align 8
  %34 = call i32 @devm_ioremap_resource(%struct.device* %32, %struct.resource* %33)
  %35 = load %struct.scaler_context*, %struct.scaler_context** %6, align 8
  %36 = getelementptr inbounds %struct.scaler_context, %struct.scaler_context* %35, i32 0, i32 2
  store i32 %34, i32* %36, align 8
  %37 = load %struct.scaler_context*, %struct.scaler_context** %6, align 8
  %38 = getelementptr inbounds %struct.scaler_context, %struct.scaler_context* %37, i32 0, i32 2
  %39 = load i32, i32* %38, align 8
  %40 = call i64 @IS_ERR(i32 %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %47

42:                                               ; preds = %20
  %43 = load %struct.scaler_context*, %struct.scaler_context** %6, align 8
  %44 = getelementptr inbounds %struct.scaler_context, %struct.scaler_context* %43, i32 0, i32 2
  %45 = load i32, i32* %44, align 8
  %46 = call i32 @PTR_ERR(i32 %45)
  store i32 %46, i32* %2, align 4
  br label %143

47:                                               ; preds = %20
  %48 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %49 = call i32 @platform_get_irq(%struct.platform_device* %48, i32 0)
  store i32 %49, i32* %7, align 4
  %50 = load i32, i32* %7, align 4
  %51 = icmp slt i32 %50, 0
  br i1 %51, label %52, label %56

52:                                               ; preds = %47
  %53 = load %struct.device*, %struct.device** %4, align 8
  %54 = call i32 @dev_err(%struct.device* %53, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0))
  %55 = load i32, i32* %7, align 4
  store i32 %55, i32* %2, align 4
  br label %143

56:                                               ; preds = %47
  %57 = load %struct.device*, %struct.device** %4, align 8
  %58 = load i32, i32* %7, align 4
  %59 = load i32, i32* @scaler_irq_handler, align 4
  %60 = load i32, i32* @IRQF_ONESHOT, align 4
  %61 = load %struct.scaler_context*, %struct.scaler_context** %6, align 8
  %62 = call i32 @devm_request_threaded_irq(%struct.device* %57, i32 %58, i32* null, i32 %59, i32 %60, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0), %struct.scaler_context* %61)
  store i32 %62, i32* %8, align 4
  %63 = load i32, i32* %8, align 4
  %64 = icmp slt i32 %63, 0
  br i1 %64, label %65, label %69

65:                                               ; preds = %56
  %66 = load %struct.device*, %struct.device** %4, align 8
  %67 = call i32 @dev_err(%struct.device* %66, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i64 0, i64 0))
  %68 = load i32, i32* %8, align 4
  store i32 %68, i32* %2, align 4
  br label %143

69:                                               ; preds = %56
  store i32 0, i32* %9, align 4
  br label %70

70:                                               ; preds = %117, %69
  %71 = load i32, i32* %9, align 4
  %72 = load %struct.scaler_context*, %struct.scaler_context** %6, align 8
  %73 = getelementptr inbounds %struct.scaler_context, %struct.scaler_context* %72, i32 0, i32 1
  %74 = load %struct.scaler_data*, %struct.scaler_data** %73, align 8
  %75 = getelementptr inbounds %struct.scaler_data, %struct.scaler_data* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 8
  %77 = icmp slt i32 %71, %76
  br i1 %77, label %78, label %120

78:                                               ; preds = %70
  %79 = load %struct.device*, %struct.device** %4, align 8
  %80 = load %struct.scaler_context*, %struct.scaler_context** %6, align 8
  %81 = getelementptr inbounds %struct.scaler_context, %struct.scaler_context* %80, i32 0, i32 1
  %82 = load %struct.scaler_data*, %struct.scaler_data** %81, align 8
  %83 = getelementptr inbounds %struct.scaler_data, %struct.scaler_data* %82, i32 0, i32 1
  %84 = load i32*, i32** %83, align 8
  %85 = load i32, i32* %9, align 4
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds i32, i32* %84, i64 %86
  %88 = load i32, i32* %87, align 4
  %89 = call i32 @devm_clk_get(%struct.device* %79, i32 %88)
  %90 = load %struct.scaler_context*, %struct.scaler_context** %6, align 8
  %91 = getelementptr inbounds %struct.scaler_context, %struct.scaler_context* %90, i32 0, i32 0
  %92 = load i32*, i32** %91, align 8
  %93 = load i32, i32* %9, align 4
  %94 = sext i32 %93 to i64
  %95 = getelementptr inbounds i32, i32* %92, i64 %94
  store i32 %89, i32* %95, align 4
  %96 = load %struct.scaler_context*, %struct.scaler_context** %6, align 8
  %97 = getelementptr inbounds %struct.scaler_context, %struct.scaler_context* %96, i32 0, i32 0
  %98 = load i32*, i32** %97, align 8
  %99 = load i32, i32* %9, align 4
  %100 = sext i32 %99 to i64
  %101 = getelementptr inbounds i32, i32* %98, i64 %100
  %102 = load i32, i32* %101, align 4
  %103 = call i64 @IS_ERR(i32 %102)
  %104 = icmp ne i64 %103, 0
  br i1 %104, label %105, label %116

105:                                              ; preds = %78
  %106 = load %struct.device*, %struct.device** %4, align 8
  %107 = call i32 @dev_err(%struct.device* %106, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i64 0, i64 0))
  %108 = load %struct.scaler_context*, %struct.scaler_context** %6, align 8
  %109 = getelementptr inbounds %struct.scaler_context, %struct.scaler_context* %108, i32 0, i32 0
  %110 = load i32*, i32** %109, align 8
  %111 = load i32, i32* %9, align 4
  %112 = sext i32 %111 to i64
  %113 = getelementptr inbounds i32, i32* %110, i64 %112
  %114 = load i32, i32* %113, align 4
  %115 = call i32 @PTR_ERR(i32 %114)
  store i32 %115, i32* %2, align 4
  br label %143

116:                                              ; preds = %78
  br label %117

117:                                              ; preds = %116
  %118 = load i32, i32* %9, align 4
  %119 = add nsw i32 %118, 1
  store i32 %119, i32* %9, align 4
  br label %70

120:                                              ; preds = %70
  %121 = load %struct.device*, %struct.device** %4, align 8
  %122 = call i32 @pm_runtime_use_autosuspend(%struct.device* %121)
  %123 = load %struct.device*, %struct.device** %4, align 8
  %124 = load i32, i32* @SCALER_AUTOSUSPEND_DELAY, align 4
  %125 = call i32 @pm_runtime_set_autosuspend_delay(%struct.device* %123, i32 %124)
  %126 = load %struct.device*, %struct.device** %4, align 8
  %127 = call i32 @pm_runtime_enable(%struct.device* %126)
  %128 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %129 = load %struct.scaler_context*, %struct.scaler_context** %6, align 8
  %130 = call i32 @platform_set_drvdata(%struct.platform_device* %128, %struct.scaler_context* %129)
  %131 = load %struct.device*, %struct.device** %4, align 8
  %132 = call i32 @component_add(%struct.device* %131, i32* @scaler_component_ops)
  store i32 %132, i32* %8, align 4
  %133 = load i32, i32* %8, align 4
  %134 = icmp ne i32 %133, 0
  br i1 %134, label %135, label %136

135:                                              ; preds = %120
  br label %137

136:                                              ; preds = %120
  store i32 0, i32* %2, align 4
  br label %143

137:                                              ; preds = %135
  %138 = load %struct.device*, %struct.device** %4, align 8
  %139 = call i32 @pm_runtime_dont_use_autosuspend(%struct.device* %138)
  %140 = load %struct.device*, %struct.device** %4, align 8
  %141 = call i32 @pm_runtime_disable(%struct.device* %140)
  %142 = load i32, i32* %8, align 4
  store i32 %142, i32* %2, align 4
  br label %143

143:                                              ; preds = %137, %136, %105, %65, %52, %42, %17
  %144 = load i32, i32* %2, align 4
  ret i32 %144
}

declare dso_local %struct.scaler_context* @devm_kzalloc(%struct.device*, i32, i32) #1

declare dso_local i64 @of_device_get_match_data(%struct.device*) #1

declare dso_local %struct.resource* @platform_get_resource(%struct.platform_device*, i32, i32) #1

declare dso_local i32 @devm_ioremap_resource(%struct.device*, %struct.resource*) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @PTR_ERR(i32) #1

declare dso_local i32 @platform_get_irq(%struct.platform_device*, i32) #1

declare dso_local i32 @dev_err(%struct.device*, i8*) #1

declare dso_local i32 @devm_request_threaded_irq(%struct.device*, i32, i32*, i32, i32, i8*, %struct.scaler_context*) #1

declare dso_local i32 @devm_clk_get(%struct.device*, i32) #1

declare dso_local i32 @pm_runtime_use_autosuspend(%struct.device*) #1

declare dso_local i32 @pm_runtime_set_autosuspend_delay(%struct.device*, i32) #1

declare dso_local i32 @pm_runtime_enable(%struct.device*) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.scaler_context*) #1

declare dso_local i32 @component_add(%struct.device*, i32*) #1

declare dso_local i32 @pm_runtime_dont_use_autosuspend(%struct.device*) #1

declare dso_local i32 @pm_runtime_disable(%struct.device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
