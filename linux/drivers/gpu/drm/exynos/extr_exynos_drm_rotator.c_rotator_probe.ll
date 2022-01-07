; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/exynos/extr_exynos_drm_rotator.c_rotator_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/exynos/extr_exynos_drm_rotator.c_rotator_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.device }
%struct.device = type { i32 }
%struct.resource = type { i32 }
%struct.rot_context = type { i32, i32, %struct.device*, i32, i32 }
%struct.rot_variant = type { i32, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@IORESOURCE_MEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [19 x i8] c"failed to get irq\0A\00", align 1
@rotator_irq_handler = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [23 x i8] c"failed to request irq\0A\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"rotator\00", align 1
@.str.3 = private unnamed_addr constant [21 x i8] c"failed to get clock\0A\00", align 1
@ROTATOR_AUTOSUSPEND_DELAY = common dso_local global i32 0, align 4
@rotator_component_ops = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @rotator_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rotator_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.resource*, align 8
  %6 = alloca %struct.rot_context*, align 8
  %7 = alloca %struct.rot_variant*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %10 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %11 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %10, i32 0, i32 0
  store %struct.device* %11, %struct.device** %4, align 8
  %12 = load %struct.device*, %struct.device** %4, align 8
  %13 = load i32, i32* @GFP_KERNEL, align 4
  %14 = call %struct.rot_context* @devm_kzalloc(%struct.device* %12, i32 24, i32 %13)
  store %struct.rot_context* %14, %struct.rot_context** %6, align 8
  %15 = load %struct.rot_context*, %struct.rot_context** %6, align 8
  %16 = icmp ne %struct.rot_context* %15, null
  br i1 %16, label %20, label %17

17:                                               ; preds = %1
  %18 = load i32, i32* @ENOMEM, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %2, align 4
  br label %117

20:                                               ; preds = %1
  %21 = load %struct.device*, %struct.device** %4, align 8
  %22 = call %struct.rot_variant* @of_device_get_match_data(%struct.device* %21)
  store %struct.rot_variant* %22, %struct.rot_variant** %7, align 8
  %23 = load %struct.rot_variant*, %struct.rot_variant** %7, align 8
  %24 = getelementptr inbounds %struct.rot_variant, %struct.rot_variant* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = load %struct.rot_context*, %struct.rot_context** %6, align 8
  %27 = getelementptr inbounds %struct.rot_context, %struct.rot_context* %26, i32 0, i32 4
  store i32 %25, i32* %27, align 4
  %28 = load %struct.rot_variant*, %struct.rot_variant** %7, align 8
  %29 = getelementptr inbounds %struct.rot_variant, %struct.rot_variant* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = load %struct.rot_context*, %struct.rot_context** %6, align 8
  %32 = getelementptr inbounds %struct.rot_context, %struct.rot_context* %31, i32 0, i32 3
  store i32 %30, i32* %32, align 8
  %33 = load %struct.device*, %struct.device** %4, align 8
  %34 = load %struct.rot_context*, %struct.rot_context** %6, align 8
  %35 = getelementptr inbounds %struct.rot_context, %struct.rot_context* %34, i32 0, i32 2
  store %struct.device* %33, %struct.device** %35, align 8
  %36 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %37 = load i32, i32* @IORESOURCE_MEM, align 4
  %38 = call %struct.resource* @platform_get_resource(%struct.platform_device* %36, i32 %37, i32 0)
  store %struct.resource* %38, %struct.resource** %5, align 8
  %39 = load %struct.device*, %struct.device** %4, align 8
  %40 = load %struct.resource*, %struct.resource** %5, align 8
  %41 = call i32 @devm_ioremap_resource(%struct.device* %39, %struct.resource* %40)
  %42 = load %struct.rot_context*, %struct.rot_context** %6, align 8
  %43 = getelementptr inbounds %struct.rot_context, %struct.rot_context* %42, i32 0, i32 1
  store i32 %41, i32* %43, align 4
  %44 = load %struct.rot_context*, %struct.rot_context** %6, align 8
  %45 = getelementptr inbounds %struct.rot_context, %struct.rot_context* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = call i64 @IS_ERR(i32 %46)
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %54

49:                                               ; preds = %20
  %50 = load %struct.rot_context*, %struct.rot_context** %6, align 8
  %51 = getelementptr inbounds %struct.rot_context, %struct.rot_context* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = call i32 @PTR_ERR(i32 %52)
  store i32 %53, i32* %2, align 4
  br label %117

54:                                               ; preds = %20
  %55 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %56 = call i32 @platform_get_irq(%struct.platform_device* %55, i32 0)
  store i32 %56, i32* %8, align 4
  %57 = load i32, i32* %8, align 4
  %58 = icmp slt i32 %57, 0
  br i1 %58, label %59, label %63

59:                                               ; preds = %54
  %60 = load %struct.device*, %struct.device** %4, align 8
  %61 = call i32 @dev_err(%struct.device* %60, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0))
  %62 = load i32, i32* %8, align 4
  store i32 %62, i32* %2, align 4
  br label %117

63:                                               ; preds = %54
  %64 = load %struct.device*, %struct.device** %4, align 8
  %65 = load i32, i32* %8, align 4
  %66 = load i32, i32* @rotator_irq_handler, align 4
  %67 = load %struct.device*, %struct.device** %4, align 8
  %68 = call i32 @dev_name(%struct.device* %67)
  %69 = load %struct.rot_context*, %struct.rot_context** %6, align 8
  %70 = call i32 @devm_request_irq(%struct.device* %64, i32 %65, i32 %66, i32 0, i32 %68, %struct.rot_context* %69)
  store i32 %70, i32* %9, align 4
  %71 = load i32, i32* %9, align 4
  %72 = icmp slt i32 %71, 0
  br i1 %72, label %73, label %77

73:                                               ; preds = %63
  %74 = load %struct.device*, %struct.device** %4, align 8
  %75 = call i32 @dev_err(%struct.device* %74, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0))
  %76 = load i32, i32* %9, align 4
  store i32 %76, i32* %2, align 4
  br label %117

77:                                               ; preds = %63
  %78 = load %struct.device*, %struct.device** %4, align 8
  %79 = call i32 @devm_clk_get(%struct.device* %78, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0))
  %80 = load %struct.rot_context*, %struct.rot_context** %6, align 8
  %81 = getelementptr inbounds %struct.rot_context, %struct.rot_context* %80, i32 0, i32 0
  store i32 %79, i32* %81, align 8
  %82 = load %struct.rot_context*, %struct.rot_context** %6, align 8
  %83 = getelementptr inbounds %struct.rot_context, %struct.rot_context* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 8
  %85 = call i64 @IS_ERR(i32 %84)
  %86 = icmp ne i64 %85, 0
  br i1 %86, label %87, label %94

87:                                               ; preds = %77
  %88 = load %struct.device*, %struct.device** %4, align 8
  %89 = call i32 @dev_err(%struct.device* %88, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i64 0, i64 0))
  %90 = load %struct.rot_context*, %struct.rot_context** %6, align 8
  %91 = getelementptr inbounds %struct.rot_context, %struct.rot_context* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 8
  %93 = call i32 @PTR_ERR(i32 %92)
  store i32 %93, i32* %2, align 4
  br label %117

94:                                               ; preds = %77
  %95 = load %struct.device*, %struct.device** %4, align 8
  %96 = call i32 @pm_runtime_use_autosuspend(%struct.device* %95)
  %97 = load %struct.device*, %struct.device** %4, align 8
  %98 = load i32, i32* @ROTATOR_AUTOSUSPEND_DELAY, align 4
  %99 = call i32 @pm_runtime_set_autosuspend_delay(%struct.device* %97, i32 %98)
  %100 = load %struct.device*, %struct.device** %4, align 8
  %101 = call i32 @pm_runtime_enable(%struct.device* %100)
  %102 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %103 = load %struct.rot_context*, %struct.rot_context** %6, align 8
  %104 = call i32 @platform_set_drvdata(%struct.platform_device* %102, %struct.rot_context* %103)
  %105 = load %struct.device*, %struct.device** %4, align 8
  %106 = call i32 @component_add(%struct.device* %105, i32* @rotator_component_ops)
  store i32 %106, i32* %9, align 4
  %107 = load i32, i32* %9, align 4
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %109, label %110

109:                                              ; preds = %94
  br label %111

110:                                              ; preds = %94
  store i32 0, i32* %2, align 4
  br label %117

111:                                              ; preds = %109
  %112 = load %struct.device*, %struct.device** %4, align 8
  %113 = call i32 @pm_runtime_dont_use_autosuspend(%struct.device* %112)
  %114 = load %struct.device*, %struct.device** %4, align 8
  %115 = call i32 @pm_runtime_disable(%struct.device* %114)
  %116 = load i32, i32* %9, align 4
  store i32 %116, i32* %2, align 4
  br label %117

117:                                              ; preds = %111, %110, %87, %73, %59, %49, %17
  %118 = load i32, i32* %2, align 4
  ret i32 %118
}

declare dso_local %struct.rot_context* @devm_kzalloc(%struct.device*, i32, i32) #1

declare dso_local %struct.rot_variant* @of_device_get_match_data(%struct.device*) #1

declare dso_local %struct.resource* @platform_get_resource(%struct.platform_device*, i32, i32) #1

declare dso_local i32 @devm_ioremap_resource(%struct.device*, %struct.resource*) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @PTR_ERR(i32) #1

declare dso_local i32 @platform_get_irq(%struct.platform_device*, i32) #1

declare dso_local i32 @dev_err(%struct.device*, i8*) #1

declare dso_local i32 @devm_request_irq(%struct.device*, i32, i32, i32, i32, %struct.rot_context*) #1

declare dso_local i32 @dev_name(%struct.device*) #1

declare dso_local i32 @devm_clk_get(%struct.device*, i8*) #1

declare dso_local i32 @pm_runtime_use_autosuspend(%struct.device*) #1

declare dso_local i32 @pm_runtime_set_autosuspend_delay(%struct.device*, i32) #1

declare dso_local i32 @pm_runtime_enable(%struct.device*) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.rot_context*) #1

declare dso_local i32 @component_add(%struct.device*, i32*) #1

declare dso_local i32 @pm_runtime_dont_use_autosuspend(%struct.device*) #1

declare dso_local i32 @pm_runtime_disable(%struct.device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
