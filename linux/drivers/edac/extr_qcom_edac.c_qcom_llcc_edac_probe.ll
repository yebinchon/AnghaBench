; ModuleID = '/home/carl/AnghaBench/linux/drivers/edac/extr_qcom_edac.c_qcom_llcc_edac_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/edac/extr_qcom_edac.c_qcom_llcc_edac_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.device }
%struct.device = type { %struct.llcc_drv_data* }
%struct.llcc_drv_data = type { i32, i32, i32 }
%struct.edac_device_ctl_info = type { i8*, %struct.device*, %struct.llcc_drv_data*, i32, i8*, i8* }

@.str = private unnamed_addr constant [10 x i8] c"qcom-llcc\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"bank\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [5 x i8] c"llcc\00", align 1
@LLCC_ERP_PANIC_ON_UE = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@llcc_ecc_irq_handler = common dso_local global i32 0, align 4
@IRQF_TRIGGER_HIGH = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [9 x i8] c"llcc_ecc\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @qcom_llcc_edac_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qcom_llcc_edac_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.llcc_drv_data*, align 8
  %5 = alloca %struct.edac_device_ctl_info*, align 8
  %6 = alloca %struct.device*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %9 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %10 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.device, %struct.device* %10, i32 0, i32 0
  %12 = load %struct.llcc_drv_data*, %struct.llcc_drv_data** %11, align 8
  store %struct.llcc_drv_data* %12, %struct.llcc_drv_data** %4, align 8
  %13 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %14 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %13, i32 0, i32 0
  store %struct.device* %14, %struct.device** %6, align 8
  %15 = load %struct.llcc_drv_data*, %struct.llcc_drv_data** %4, align 8
  %16 = getelementptr inbounds %struct.llcc_drv_data, %struct.llcc_drv_data* %15, i32 0, i32 2
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @qcom_llcc_core_setup(i32 %17)
  store i32 %18, i32* %8, align 4
  %19 = load i32, i32* %8, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %23

21:                                               ; preds = %1
  %22 = load i32, i32* %8, align 4
  store i32 %22, i32* %2, align 4
  br label %92

23:                                               ; preds = %1
  %24 = load %struct.llcc_drv_data*, %struct.llcc_drv_data** %4, align 8
  %25 = getelementptr inbounds %struct.llcc_drv_data, %struct.llcc_drv_data* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = call i32 (...) @edac_device_alloc_index()
  %28 = call %struct.edac_device_ctl_info* @edac_device_alloc_ctl_info(i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 1, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i32 %26, i32 1, i32* null, i32 0, i32 %27)
  store %struct.edac_device_ctl_info* %28, %struct.edac_device_ctl_info** %5, align 8
  %29 = load %struct.edac_device_ctl_info*, %struct.edac_device_ctl_info** %5, align 8
  %30 = icmp ne %struct.edac_device_ctl_info* %29, null
  br i1 %30, label %34, label %31

31:                                               ; preds = %23
  %32 = load i32, i32* @ENOMEM, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %2, align 4
  br label %92

34:                                               ; preds = %23
  %35 = load %struct.device*, %struct.device** %6, align 8
  %36 = load %struct.edac_device_ctl_info*, %struct.edac_device_ctl_info** %5, align 8
  %37 = getelementptr inbounds %struct.edac_device_ctl_info, %struct.edac_device_ctl_info* %36, i32 0, i32 1
  store %struct.device* %35, %struct.device** %37, align 8
  %38 = load %struct.device*, %struct.device** %6, align 8
  %39 = call i8* @dev_name(%struct.device* %38)
  %40 = load %struct.edac_device_ctl_info*, %struct.edac_device_ctl_info** %5, align 8
  %41 = getelementptr inbounds %struct.edac_device_ctl_info, %struct.edac_device_ctl_info* %40, i32 0, i32 5
  store i8* %39, i8** %41, align 8
  %42 = load %struct.device*, %struct.device** %6, align 8
  %43 = call i8* @dev_name(%struct.device* %42)
  %44 = load %struct.edac_device_ctl_info*, %struct.edac_device_ctl_info** %5, align 8
  %45 = getelementptr inbounds %struct.edac_device_ctl_info, %struct.edac_device_ctl_info* %44, i32 0, i32 4
  store i8* %43, i8** %45, align 8
  %46 = load %struct.edac_device_ctl_info*, %struct.edac_device_ctl_info** %5, align 8
  %47 = getelementptr inbounds %struct.edac_device_ctl_info, %struct.edac_device_ctl_info* %46, i32 0, i32 0
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i8** %47, align 8
  %48 = load i32, i32* @LLCC_ERP_PANIC_ON_UE, align 4
  %49 = load %struct.edac_device_ctl_info*, %struct.edac_device_ctl_info** %5, align 8
  %50 = getelementptr inbounds %struct.edac_device_ctl_info, %struct.edac_device_ctl_info* %49, i32 0, i32 3
  store i32 %48, i32* %50, align 8
  %51 = load %struct.llcc_drv_data*, %struct.llcc_drv_data** %4, align 8
  %52 = load %struct.edac_device_ctl_info*, %struct.edac_device_ctl_info** %5, align 8
  %53 = getelementptr inbounds %struct.edac_device_ctl_info, %struct.edac_device_ctl_info* %52, i32 0, i32 2
  store %struct.llcc_drv_data* %51, %struct.llcc_drv_data** %53, align 8
  %54 = load %struct.edac_device_ctl_info*, %struct.edac_device_ctl_info** %5, align 8
  %55 = call i32 @edac_device_add_device(%struct.edac_device_ctl_info* %54)
  store i32 %55, i32* %8, align 4
  %56 = load i32, i32* %8, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %59

58:                                               ; preds = %34
  br label %88

59:                                               ; preds = %34
  %60 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %61 = load %struct.edac_device_ctl_info*, %struct.edac_device_ctl_info** %5, align 8
  %62 = call i32 @platform_set_drvdata(%struct.platform_device* %60, %struct.edac_device_ctl_info* %61)
  %63 = load %struct.llcc_drv_data*, %struct.llcc_drv_data** %4, align 8
  %64 = getelementptr inbounds %struct.llcc_drv_data, %struct.llcc_drv_data* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  store i32 %65, i32* %7, align 4
  %66 = load i32, i32* %7, align 4
  %67 = icmp slt i32 %66, 0
  br i1 %67, label %68, label %71

68:                                               ; preds = %59
  %69 = load i32, i32* @ENODEV, align 4
  %70 = sub nsw i32 0, %69
  store i32 %70, i32* %8, align 4
  br label %83

71:                                               ; preds = %59
  %72 = load %struct.device*, %struct.device** %6, align 8
  %73 = load i32, i32* %7, align 4
  %74 = load i32, i32* @llcc_ecc_irq_handler, align 4
  %75 = load i32, i32* @IRQF_TRIGGER_HIGH, align 4
  %76 = load %struct.edac_device_ctl_info*, %struct.edac_device_ctl_info** %5, align 8
  %77 = call i32 @devm_request_irq(%struct.device* %72, i32 %73, i32 %74, i32 %75, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0), %struct.edac_device_ctl_info* %76)
  store i32 %77, i32* %8, align 4
  %78 = load i32, i32* %8, align 4
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %81

80:                                               ; preds = %71
  br label %83

81:                                               ; preds = %71
  %82 = load i32, i32* %8, align 4
  store i32 %82, i32* %2, align 4
  br label %92

83:                                               ; preds = %80, %68
  %84 = load %struct.edac_device_ctl_info*, %struct.edac_device_ctl_info** %5, align 8
  %85 = getelementptr inbounds %struct.edac_device_ctl_info, %struct.edac_device_ctl_info* %84, i32 0, i32 1
  %86 = load %struct.device*, %struct.device** %85, align 8
  %87 = call i32 @edac_device_del_device(%struct.device* %86)
  br label %88

88:                                               ; preds = %83, %58
  %89 = load %struct.edac_device_ctl_info*, %struct.edac_device_ctl_info** %5, align 8
  %90 = call i32 @edac_device_free_ctl_info(%struct.edac_device_ctl_info* %89)
  %91 = load i32, i32* %8, align 4
  store i32 %91, i32* %2, align 4
  br label %92

92:                                               ; preds = %88, %81, %31, %21
  %93 = load i32, i32* %2, align 4
  ret i32 %93
}

declare dso_local i32 @qcom_llcc_core_setup(i32) #1

declare dso_local %struct.edac_device_ctl_info* @edac_device_alloc_ctl_info(i32, i8*, i32, i8*, i32, i32, i32*, i32, i32) #1

declare dso_local i32 @edac_device_alloc_index(...) #1

declare dso_local i8* @dev_name(%struct.device*) #1

declare dso_local i32 @edac_device_add_device(%struct.edac_device_ctl_info*) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.edac_device_ctl_info*) #1

declare dso_local i32 @devm_request_irq(%struct.device*, i32, i32, i32, i8*, %struct.edac_device_ctl_info*) #1

declare dso_local i32 @edac_device_del_device(%struct.device*) #1

declare dso_local i32 @edac_device_free_ctl_info(%struct.edac_device_ctl_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
