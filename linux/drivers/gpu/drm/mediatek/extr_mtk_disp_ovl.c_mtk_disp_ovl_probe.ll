; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/mediatek/extr_mtk_disp_ovl.c_mtk_disp_ovl_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/mediatek/extr_mtk_disp_ovl.c_mtk_disp_ovl_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.device }
%struct.device = type { i32 }
%struct.mtk_disp_ovl = type { i32, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@MTK_DISP_OVL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"Failed to identify by alias: %d\0A\00", align 1
@mtk_disp_ovl_funcs = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [36 x i8] c"Failed to initialize component: %d\0A\00", align 1
@mtk_disp_ovl_irq_handler = common dso_local global i32 0, align 4
@IRQF_TRIGGER_NONE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [30 x i8] c"Failed to request irq %d: %d\0A\00", align 1
@mtk_disp_ovl_component_ops = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [29 x i8] c"Failed to add component: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @mtk_disp_ovl_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mtk_disp_ovl_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.mtk_disp_ovl*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %9 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %10 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %9, i32 0, i32 0
  store %struct.device* %10, %struct.device** %4, align 8
  %11 = load %struct.device*, %struct.device** %4, align 8
  %12 = load i32, i32* @GFP_KERNEL, align 4
  %13 = call %struct.mtk_disp_ovl* @devm_kzalloc(%struct.device* %11, i32 8, i32 %12)
  store %struct.mtk_disp_ovl* %13, %struct.mtk_disp_ovl** %5, align 8
  %14 = load %struct.mtk_disp_ovl*, %struct.mtk_disp_ovl** %5, align 8
  %15 = icmp ne %struct.mtk_disp_ovl* %14, null
  br i1 %15, label %19, label %16

16:                                               ; preds = %1
  %17 = load i32, i32* @ENOMEM, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %2, align 4
  br label %90

19:                                               ; preds = %1
  %20 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %21 = call i32 @platform_get_irq(%struct.platform_device* %20, i32 0)
  store i32 %21, i32* %7, align 4
  %22 = load i32, i32* %7, align 4
  %23 = icmp slt i32 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %19
  %25 = load i32, i32* %7, align 4
  store i32 %25, i32* %2, align 4
  br label %90

26:                                               ; preds = %19
  %27 = load %struct.device*, %struct.device** %4, align 8
  %28 = getelementptr inbounds %struct.device, %struct.device* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = load i32, i32* @MTK_DISP_OVL, align 4
  %31 = call i32 @mtk_ddp_comp_get_id(i32 %29, i32 %30)
  store i32 %31, i32* %6, align 4
  %32 = load i32, i32* %6, align 4
  %33 = icmp slt i32 %32, 0
  br i1 %33, label %34, label %39

34:                                               ; preds = %26
  %35 = load %struct.device*, %struct.device** %4, align 8
  %36 = load i32, i32* %6, align 4
  %37 = call i32 (%struct.device*, i8*, i32, ...) @dev_err(%struct.device* %35, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i32 %36)
  %38 = load i32, i32* %6, align 4
  store i32 %38, i32* %2, align 4
  br label %90

39:                                               ; preds = %26
  %40 = load %struct.device*, %struct.device** %4, align 8
  %41 = load %struct.device*, %struct.device** %4, align 8
  %42 = getelementptr inbounds %struct.device, %struct.device* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = load %struct.mtk_disp_ovl*, %struct.mtk_disp_ovl** %5, align 8
  %45 = getelementptr inbounds %struct.mtk_disp_ovl, %struct.mtk_disp_ovl* %44, i32 0, i32 1
  %46 = load i32, i32* %6, align 4
  %47 = call i32 @mtk_ddp_comp_init(%struct.device* %40, i32 %43, i32* %45, i32 %46, i32* @mtk_disp_ovl_funcs)
  store i32 %47, i32* %8, align 4
  %48 = load i32, i32* %8, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %55

50:                                               ; preds = %39
  %51 = load %struct.device*, %struct.device** %4, align 8
  %52 = load i32, i32* %8, align 4
  %53 = call i32 (%struct.device*, i8*, i32, ...) @dev_err(%struct.device* %51, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0), i32 %52)
  %54 = load i32, i32* %8, align 4
  store i32 %54, i32* %2, align 4
  br label %90

55:                                               ; preds = %39
  %56 = load %struct.device*, %struct.device** %4, align 8
  %57 = call i32 @of_device_get_match_data(%struct.device* %56)
  %58 = load %struct.mtk_disp_ovl*, %struct.mtk_disp_ovl** %5, align 8
  %59 = getelementptr inbounds %struct.mtk_disp_ovl, %struct.mtk_disp_ovl* %58, i32 0, i32 0
  store i32 %57, i32* %59, align 4
  %60 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %61 = load %struct.mtk_disp_ovl*, %struct.mtk_disp_ovl** %5, align 8
  %62 = call i32 @platform_set_drvdata(%struct.platform_device* %60, %struct.mtk_disp_ovl* %61)
  %63 = load %struct.device*, %struct.device** %4, align 8
  %64 = load i32, i32* %7, align 4
  %65 = load i32, i32* @mtk_disp_ovl_irq_handler, align 4
  %66 = load i32, i32* @IRQF_TRIGGER_NONE, align 4
  %67 = load %struct.device*, %struct.device** %4, align 8
  %68 = call i32 @dev_name(%struct.device* %67)
  %69 = load %struct.mtk_disp_ovl*, %struct.mtk_disp_ovl** %5, align 8
  %70 = call i32 @devm_request_irq(%struct.device* %63, i32 %64, i32 %65, i32 %66, i32 %68, %struct.mtk_disp_ovl* %69)
  store i32 %70, i32* %8, align 4
  %71 = load i32, i32* %8, align 4
  %72 = icmp slt i32 %71, 0
  br i1 %72, label %73, label %79

73:                                               ; preds = %55
  %74 = load %struct.device*, %struct.device** %4, align 8
  %75 = load i32, i32* %7, align 4
  %76 = load i32, i32* %8, align 4
  %77 = call i32 (%struct.device*, i8*, i32, ...) @dev_err(%struct.device* %74, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i64 0, i64 0), i32 %75, i32 %76)
  %78 = load i32, i32* %8, align 4
  store i32 %78, i32* %2, align 4
  br label %90

79:                                               ; preds = %55
  %80 = load %struct.device*, %struct.device** %4, align 8
  %81 = call i32 @component_add(%struct.device* %80, i32* @mtk_disp_ovl_component_ops)
  store i32 %81, i32* %8, align 4
  %82 = load i32, i32* %8, align 4
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %88

84:                                               ; preds = %79
  %85 = load %struct.device*, %struct.device** %4, align 8
  %86 = load i32, i32* %8, align 4
  %87 = call i32 (%struct.device*, i8*, i32, ...) @dev_err(%struct.device* %85, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.3, i64 0, i64 0), i32 %86)
  br label %88

88:                                               ; preds = %84, %79
  %89 = load i32, i32* %8, align 4
  store i32 %89, i32* %2, align 4
  br label %90

90:                                               ; preds = %88, %73, %50, %34, %24, %16
  %91 = load i32, i32* %2, align 4
  ret i32 %91
}

declare dso_local %struct.mtk_disp_ovl* @devm_kzalloc(%struct.device*, i32, i32) #1

declare dso_local i32 @platform_get_irq(%struct.platform_device*, i32) #1

declare dso_local i32 @mtk_ddp_comp_get_id(i32, i32) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, i32, ...) #1

declare dso_local i32 @mtk_ddp_comp_init(%struct.device*, i32, i32*, i32, i32*) #1

declare dso_local i32 @of_device_get_match_data(%struct.device*) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.mtk_disp_ovl*) #1

declare dso_local i32 @devm_request_irq(%struct.device*, i32, i32, i32, i32, %struct.mtk_disp_ovl*) #1

declare dso_local i32 @dev_name(%struct.device*) #1

declare dso_local i32 @component_add(%struct.device*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
