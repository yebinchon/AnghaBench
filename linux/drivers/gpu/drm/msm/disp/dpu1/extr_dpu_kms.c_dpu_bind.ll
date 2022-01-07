; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/disp/dpu1/extr_dpu_kms.c_dpu_bind.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/disp/dpu1/extr_dpu_kms.c_dpu_bind.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.drm_device = type { %struct.msm_drm_private* }
%struct.msm_drm_private = type { i32* }
%struct.platform_device = type { i32 }
%struct.dpu_kms = type { i32, i32, %struct.platform_device*, %struct.drm_device*, %struct.dss_module_power }
%struct.dss_module_power = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"failed to parse clocks, ret=%d\0A\00", align 1
@kms_funcs = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.device*, i8*)* @dpu_bind to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dpu_bind(%struct.device* %0, %struct.device* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.device*, align 8
  %6 = alloca %struct.device*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.drm_device*, align 8
  %9 = alloca %struct.platform_device*, align 8
  %10 = alloca %struct.msm_drm_private*, align 8
  %11 = alloca %struct.dpu_kms*, align 8
  %12 = alloca %struct.dss_module_power*, align 8
  %13 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %5, align 8
  store %struct.device* %1, %struct.device** %6, align 8
  store i8* %2, i8** %7, align 8
  %14 = load %struct.device*, %struct.device** %6, align 8
  %15 = call %struct.drm_device* @dev_get_drvdata(%struct.device* %14)
  store %struct.drm_device* %15, %struct.drm_device** %8, align 8
  %16 = load %struct.device*, %struct.device** %5, align 8
  %17 = call %struct.platform_device* @to_platform_device(%struct.device* %16)
  store %struct.platform_device* %17, %struct.platform_device** %9, align 8
  %18 = load %struct.drm_device*, %struct.drm_device** %8, align 8
  %19 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %18, i32 0, i32 0
  %20 = load %struct.msm_drm_private*, %struct.msm_drm_private** %19, align 8
  store %struct.msm_drm_private* %20, %struct.msm_drm_private** %10, align 8
  store i32 0, i32* %13, align 4
  %21 = load %struct.platform_device*, %struct.platform_device** %9, align 8
  %22 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %21, i32 0, i32 0
  %23 = load i32, i32* @GFP_KERNEL, align 4
  %24 = call %struct.dpu_kms* @devm_kzalloc(i32* %22, i32 32, i32 %23)
  store %struct.dpu_kms* %24, %struct.dpu_kms** %11, align 8
  %25 = load %struct.dpu_kms*, %struct.dpu_kms** %11, align 8
  %26 = icmp ne %struct.dpu_kms* %25, null
  br i1 %26, label %30, label %27

27:                                               ; preds = %3
  %28 = load i32, i32* @ENOMEM, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %4, align 4
  br label %65

30:                                               ; preds = %3
  %31 = load %struct.dpu_kms*, %struct.dpu_kms** %11, align 8
  %32 = getelementptr inbounds %struct.dpu_kms, %struct.dpu_kms* %31, i32 0, i32 4
  store %struct.dss_module_power* %32, %struct.dss_module_power** %12, align 8
  %33 = load %struct.platform_device*, %struct.platform_device** %9, align 8
  %34 = load %struct.dss_module_power*, %struct.dss_module_power** %12, align 8
  %35 = call i32 @msm_dss_parse_clock(%struct.platform_device* %33, %struct.dss_module_power* %34)
  store i32 %35, i32* %13, align 4
  %36 = load i32, i32* %13, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %42

38:                                               ; preds = %30
  %39 = load i32, i32* %13, align 4
  %40 = call i32 @DPU_ERROR(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i32 %39)
  %41 = load i32, i32* %13, align 4
  store i32 %41, i32* %4, align 4
  br label %65

42:                                               ; preds = %30
  %43 = load %struct.platform_device*, %struct.platform_device** %9, align 8
  %44 = load %struct.dpu_kms*, %struct.dpu_kms** %11, align 8
  %45 = call i32 @platform_set_drvdata(%struct.platform_device* %43, %struct.dpu_kms* %44)
  %46 = load %struct.dpu_kms*, %struct.dpu_kms** %11, align 8
  %47 = getelementptr inbounds %struct.dpu_kms, %struct.dpu_kms* %46, i32 0, i32 1
  %48 = call i32 @msm_kms_init(i32* %47, i32* @kms_funcs)
  %49 = load %struct.drm_device*, %struct.drm_device** %8, align 8
  %50 = load %struct.dpu_kms*, %struct.dpu_kms** %11, align 8
  %51 = getelementptr inbounds %struct.dpu_kms, %struct.dpu_kms* %50, i32 0, i32 3
  store %struct.drm_device* %49, %struct.drm_device** %51, align 8
  %52 = load %struct.platform_device*, %struct.platform_device** %9, align 8
  %53 = load %struct.dpu_kms*, %struct.dpu_kms** %11, align 8
  %54 = getelementptr inbounds %struct.dpu_kms, %struct.dpu_kms* %53, i32 0, i32 2
  store %struct.platform_device* %52, %struct.platform_device** %54, align 8
  %55 = load %struct.platform_device*, %struct.platform_device** %9, align 8
  %56 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %55, i32 0, i32 0
  %57 = call i32 @pm_runtime_enable(i32* %56)
  %58 = load %struct.dpu_kms*, %struct.dpu_kms** %11, align 8
  %59 = getelementptr inbounds %struct.dpu_kms, %struct.dpu_kms* %58, i32 0, i32 0
  store i32 1, i32* %59, align 8
  %60 = load %struct.dpu_kms*, %struct.dpu_kms** %11, align 8
  %61 = getelementptr inbounds %struct.dpu_kms, %struct.dpu_kms* %60, i32 0, i32 1
  %62 = load %struct.msm_drm_private*, %struct.msm_drm_private** %10, align 8
  %63 = getelementptr inbounds %struct.msm_drm_private, %struct.msm_drm_private* %62, i32 0, i32 0
  store i32* %61, i32** %63, align 8
  %64 = load i32, i32* %13, align 4
  store i32 %64, i32* %4, align 4
  br label %65

65:                                               ; preds = %42, %38, %27
  %66 = load i32, i32* %4, align 4
  ret i32 %66
}

declare dso_local %struct.drm_device* @dev_get_drvdata(%struct.device*) #1

declare dso_local %struct.platform_device* @to_platform_device(%struct.device*) #1

declare dso_local %struct.dpu_kms* @devm_kzalloc(i32*, i32, i32) #1

declare dso_local i32 @msm_dss_parse_clock(%struct.platform_device*, %struct.dss_module_power*) #1

declare dso_local i32 @DPU_ERROR(i8*, i32) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.dpu_kms*) #1

declare dso_local i32 @msm_kms_init(i32*, i32*) #1

declare dso_local i32 @pm_runtime_enable(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
