; ModuleID = '/home/carl/AnghaBench/linux/drivers/extcon/extr_extcon-intel-mrfld.c_mrfld_extcon_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/extcon/extr_extcon-intel-mrfld.c_mrfld_extcon_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { i32, %struct.device }
%struct.device = type { i32 }
%struct.intel_soc_pmic = type { %struct.regmap* }
%struct.regmap = type { i32 }
%struct.mrfld_extcon_data = type { i32, i32, %struct.regmap*, %struct.device* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@mrfld_extcon_cable = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"can't register extcon device: %d\0A\00", align 1
@mrfld_extcon_interrupt = common dso_local global i32 0, align 4
@IRQF_ONESHOT = common dso_local global i32 0, align 4
@IRQF_SHARED = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [32 x i8] c"can't register IRQ handler: %d\0A\00", align 1
@BCOVE_ID = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [24 x i8] c"can't read PMIC ID: %d\0A\00", align 1
@BCOVE_MIRQLVL1 = common dso_local global i32 0, align 4
@BCOVE_LVL1_CHGR = common dso_local global i32 0, align 4
@BCOVE_MCHGRIRQ1 = common dso_local global i32 0, align 4
@BCOVE_CHGRIRQ_ALL = common dso_local global i32 0, align 4
@BCOVE_USBIDCTRL = common dso_local global i32 0, align 4
@BCOVE_USBIDCTRL_ALL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @mrfld_extcon_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mrfld_extcon_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.intel_soc_pmic*, align 8
  %6 = alloca %struct.regmap*, align 8
  %7 = alloca %struct.mrfld_extcon_data*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %11 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %12 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %11, i32 0, i32 1
  store %struct.device* %12, %struct.device** %4, align 8
  %13 = load %struct.device*, %struct.device** %4, align 8
  %14 = getelementptr inbounds %struct.device, %struct.device* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = call %struct.intel_soc_pmic* @dev_get_drvdata(i32 %15)
  store %struct.intel_soc_pmic* %16, %struct.intel_soc_pmic** %5, align 8
  %17 = load %struct.intel_soc_pmic*, %struct.intel_soc_pmic** %5, align 8
  %18 = getelementptr inbounds %struct.intel_soc_pmic, %struct.intel_soc_pmic* %17, i32 0, i32 0
  %19 = load %struct.regmap*, %struct.regmap** %18, align 8
  store %struct.regmap* %19, %struct.regmap** %6, align 8
  %20 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %21 = call i32 @platform_get_irq(%struct.platform_device* %20, i32 0)
  store i32 %21, i32* %9, align 4
  %22 = load i32, i32* %9, align 4
  %23 = icmp slt i32 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %1
  %25 = load i32, i32* %9, align 4
  store i32 %25, i32* %2, align 4
  br label %126

26:                                               ; preds = %1
  %27 = load %struct.device*, %struct.device** %4, align 8
  %28 = load i32, i32* @GFP_KERNEL, align 4
  %29 = call %struct.mrfld_extcon_data* @devm_kzalloc(%struct.device* %27, i32 24, i32 %28)
  store %struct.mrfld_extcon_data* %29, %struct.mrfld_extcon_data** %7, align 8
  %30 = load %struct.mrfld_extcon_data*, %struct.mrfld_extcon_data** %7, align 8
  %31 = icmp ne %struct.mrfld_extcon_data* %30, null
  br i1 %31, label %35, label %32

32:                                               ; preds = %26
  %33 = load i32, i32* @ENOMEM, align 4
  %34 = sub nsw i32 0, %33
  store i32 %34, i32* %2, align 4
  br label %126

35:                                               ; preds = %26
  %36 = load %struct.device*, %struct.device** %4, align 8
  %37 = load %struct.mrfld_extcon_data*, %struct.mrfld_extcon_data** %7, align 8
  %38 = getelementptr inbounds %struct.mrfld_extcon_data, %struct.mrfld_extcon_data* %37, i32 0, i32 3
  store %struct.device* %36, %struct.device** %38, align 8
  %39 = load %struct.regmap*, %struct.regmap** %6, align 8
  %40 = load %struct.mrfld_extcon_data*, %struct.mrfld_extcon_data** %7, align 8
  %41 = getelementptr inbounds %struct.mrfld_extcon_data, %struct.mrfld_extcon_data* %40, i32 0, i32 2
  store %struct.regmap* %39, %struct.regmap** %41, align 8
  %42 = load %struct.device*, %struct.device** %4, align 8
  %43 = load i32, i32* @mrfld_extcon_cable, align 4
  %44 = call i32 @devm_extcon_dev_allocate(%struct.device* %42, i32 %43)
  %45 = load %struct.mrfld_extcon_data*, %struct.mrfld_extcon_data** %7, align 8
  %46 = getelementptr inbounds %struct.mrfld_extcon_data, %struct.mrfld_extcon_data* %45, i32 0, i32 1
  store i32 %44, i32* %46, align 4
  %47 = load %struct.mrfld_extcon_data*, %struct.mrfld_extcon_data** %7, align 8
  %48 = getelementptr inbounds %struct.mrfld_extcon_data, %struct.mrfld_extcon_data* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = call i64 @IS_ERR(i32 %49)
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %55

52:                                               ; preds = %35
  %53 = load i32, i32* @ENOMEM, align 4
  %54 = sub nsw i32 0, %53
  store i32 %54, i32* %2, align 4
  br label %126

55:                                               ; preds = %35
  %56 = load %struct.device*, %struct.device** %4, align 8
  %57 = load %struct.mrfld_extcon_data*, %struct.mrfld_extcon_data** %7, align 8
  %58 = getelementptr inbounds %struct.mrfld_extcon_data, %struct.mrfld_extcon_data* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 4
  %60 = call i32 @devm_extcon_dev_register(%struct.device* %56, i32 %59)
  store i32 %60, i32* %10, align 4
  %61 = load i32, i32* %10, align 4
  %62 = icmp slt i32 %61, 0
  br i1 %62, label %63, label %68

63:                                               ; preds = %55
  %64 = load %struct.device*, %struct.device** %4, align 8
  %65 = load i32, i32* %10, align 4
  %66 = call i32 @dev_err(%struct.device* %64, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i32 %65)
  %67 = load i32, i32* %10, align 4
  store i32 %67, i32* %2, align 4
  br label %126

68:                                               ; preds = %55
  %69 = load %struct.device*, %struct.device** %4, align 8
  %70 = load i32, i32* %9, align 4
  %71 = load i32, i32* @mrfld_extcon_interrupt, align 4
  %72 = load i32, i32* @IRQF_ONESHOT, align 4
  %73 = load i32, i32* @IRQF_SHARED, align 4
  %74 = or i32 %72, %73
  %75 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %76 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  %78 = load %struct.mrfld_extcon_data*, %struct.mrfld_extcon_data** %7, align 8
  %79 = call i32 @devm_request_threaded_irq(%struct.device* %69, i32 %70, i32* null, i32 %71, i32 %74, i32 %77, %struct.mrfld_extcon_data* %78)
  store i32 %79, i32* %10, align 4
  %80 = load i32, i32* %10, align 4
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %87

82:                                               ; preds = %68
  %83 = load %struct.device*, %struct.device** %4, align 8
  %84 = load i32, i32* %10, align 4
  %85 = call i32 @dev_err(%struct.device* %83, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0), i32 %84)
  %86 = load i32, i32* %10, align 4
  store i32 %86, i32* %2, align 4
  br label %126

87:                                               ; preds = %68
  %88 = load %struct.regmap*, %struct.regmap** %6, align 8
  %89 = load i32, i32* @BCOVE_ID, align 4
  %90 = call i32 @regmap_read(%struct.regmap* %88, i32 %89, i32* %8)
  store i32 %90, i32* %10, align 4
  %91 = load i32, i32* %10, align 4
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %93, label %98

93:                                               ; preds = %87
  %94 = load %struct.device*, %struct.device** %4, align 8
  %95 = load i32, i32* %10, align 4
  %96 = call i32 @dev_err(%struct.device* %94, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i64 0, i64 0), i32 %95)
  %97 = load i32, i32* %10, align 4
  store i32 %97, i32* %2, align 4
  br label %126

98:                                               ; preds = %87
  %99 = load i32, i32* %8, align 4
  %100 = load %struct.mrfld_extcon_data*, %struct.mrfld_extcon_data** %7, align 8
  %101 = getelementptr inbounds %struct.mrfld_extcon_data, %struct.mrfld_extcon_data* %100, i32 0, i32 0
  store i32 %99, i32* %101, align 8
  %102 = load %struct.mrfld_extcon_data*, %struct.mrfld_extcon_data** %7, align 8
  %103 = call i32 @mrfld_extcon_sw_control(%struct.mrfld_extcon_data* %102, i32 1)
  store i32 %103, i32* %10, align 4
  %104 = load i32, i32* %10, align 4
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %106, label %108

106:                                              ; preds = %98
  %107 = load i32, i32* %10, align 4
  store i32 %107, i32* %2, align 4
  br label %126

108:                                              ; preds = %98
  %109 = load %struct.mrfld_extcon_data*, %struct.mrfld_extcon_data** %7, align 8
  %110 = call i32 @mrfld_extcon_role_detect(%struct.mrfld_extcon_data* %109)
  %111 = load %struct.mrfld_extcon_data*, %struct.mrfld_extcon_data** %7, align 8
  %112 = load i32, i32* @BCOVE_MIRQLVL1, align 4
  %113 = load i32, i32* @BCOVE_LVL1_CHGR, align 4
  %114 = call i32 @mrfld_extcon_clear(%struct.mrfld_extcon_data* %111, i32 %112, i32 %113)
  %115 = load %struct.mrfld_extcon_data*, %struct.mrfld_extcon_data** %7, align 8
  %116 = load i32, i32* @BCOVE_MCHGRIRQ1, align 4
  %117 = load i32, i32* @BCOVE_CHGRIRQ_ALL, align 4
  %118 = call i32 @mrfld_extcon_clear(%struct.mrfld_extcon_data* %115, i32 %116, i32 %117)
  %119 = load %struct.mrfld_extcon_data*, %struct.mrfld_extcon_data** %7, align 8
  %120 = load i32, i32* @BCOVE_USBIDCTRL, align 4
  %121 = load i32, i32* @BCOVE_USBIDCTRL_ALL, align 4
  %122 = call i32 @mrfld_extcon_set(%struct.mrfld_extcon_data* %119, i32 %120, i32 %121)
  %123 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %124 = load %struct.mrfld_extcon_data*, %struct.mrfld_extcon_data** %7, align 8
  %125 = call i32 @platform_set_drvdata(%struct.platform_device* %123, %struct.mrfld_extcon_data* %124)
  store i32 0, i32* %2, align 4
  br label %126

126:                                              ; preds = %108, %106, %93, %82, %63, %52, %32, %24
  %127 = load i32, i32* %2, align 4
  ret i32 %127
}

declare dso_local %struct.intel_soc_pmic* @dev_get_drvdata(i32) #1

declare dso_local i32 @platform_get_irq(%struct.platform_device*, i32) #1

declare dso_local %struct.mrfld_extcon_data* @devm_kzalloc(%struct.device*, i32, i32) #1

declare dso_local i32 @devm_extcon_dev_allocate(%struct.device*, i32) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @devm_extcon_dev_register(%struct.device*, i32) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, i32) #1

declare dso_local i32 @devm_request_threaded_irq(%struct.device*, i32, i32*, i32, i32, i32, %struct.mrfld_extcon_data*) #1

declare dso_local i32 @regmap_read(%struct.regmap*, i32, i32*) #1

declare dso_local i32 @mrfld_extcon_sw_control(%struct.mrfld_extcon_data*, i32) #1

declare dso_local i32 @mrfld_extcon_role_detect(%struct.mrfld_extcon_data*) #1

declare dso_local i32 @mrfld_extcon_clear(%struct.mrfld_extcon_data*, i32, i32) #1

declare dso_local i32 @mrfld_extcon_set(%struct.mrfld_extcon_data*, i32, i32) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.mrfld_extcon_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
