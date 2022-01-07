; ModuleID = '/home/carl/AnghaBench/linux/drivers/extcon/extr_extcon-intel-cht-wc.c_cht_wc_extcon_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/extcon/extr_extcon-intel-cht-wc.c_cht_wc_extcon_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { i32, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }
%struct.intel_soc_pmic = type { i32 }
%struct.cht_wc_extcon_data = type { %struct.TYPE_6__*, i32, i32, i32 }

@CHT_WC_PWRSRC_VBUS = common dso_local global i64 0, align 8
@CHT_WC_PWRSRC_USBID_MASK = common dso_local global i64 0, align 8
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@EXTCON_NONE = common dso_local global i32 0, align 4
@cht_wc_extcon_cables = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"Error registering extcon device: %d\0A\00", align 1
@MUX_SEL_PMIC = common dso_local global i32 0, align 4
@cht_wc_extcon_isr = common dso_local global i32 0, align 4
@IRQF_ONESHOT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [32 x i8] c"Error requesting interrupt: %d\0A\00", align 1
@CHT_WC_PWRSRC_IRQ_MASK = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [28 x i8] c"Error writing irq-mask: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @cht_wc_extcon_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cht_wc_extcon_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.intel_soc_pmic*, align 8
  %5 = alloca %struct.cht_wc_extcon_data*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %9 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %10 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %9, i32 0, i32 1
  %11 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = call %struct.intel_soc_pmic* @dev_get_drvdata(i32 %12)
  store %struct.intel_soc_pmic* %13, %struct.intel_soc_pmic** %4, align 8
  %14 = load i64, i64* @CHT_WC_PWRSRC_VBUS, align 8
  %15 = load i64, i64* @CHT_WC_PWRSRC_USBID_MASK, align 8
  %16 = or i64 %14, %15
  %17 = xor i64 %16, -1
  store i64 %17, i64* %6, align 8
  %18 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %19 = call i32 @platform_get_irq(%struct.platform_device* %18, i32 0)
  store i32 %19, i32* %7, align 4
  %20 = load i32, i32* %7, align 4
  %21 = icmp slt i32 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %1
  %23 = load i32, i32* %7, align 4
  store i32 %23, i32* %2, align 4
  br label %138

24:                                               ; preds = %1
  %25 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %26 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %25, i32 0, i32 1
  %27 = load i32, i32* @GFP_KERNEL, align 4
  %28 = call %struct.cht_wc_extcon_data* @devm_kzalloc(%struct.TYPE_6__* %26, i32 24, i32 %27)
  store %struct.cht_wc_extcon_data* %28, %struct.cht_wc_extcon_data** %5, align 8
  %29 = load %struct.cht_wc_extcon_data*, %struct.cht_wc_extcon_data** %5, align 8
  %30 = icmp ne %struct.cht_wc_extcon_data* %29, null
  br i1 %30, label %34, label %31

31:                                               ; preds = %24
  %32 = load i32, i32* @ENOMEM, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %2, align 4
  br label %138

34:                                               ; preds = %24
  %35 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %36 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %35, i32 0, i32 1
  %37 = load %struct.cht_wc_extcon_data*, %struct.cht_wc_extcon_data** %5, align 8
  %38 = getelementptr inbounds %struct.cht_wc_extcon_data, %struct.cht_wc_extcon_data* %37, i32 0, i32 0
  store %struct.TYPE_6__* %36, %struct.TYPE_6__** %38, align 8
  %39 = load %struct.intel_soc_pmic*, %struct.intel_soc_pmic** %4, align 8
  %40 = getelementptr inbounds %struct.intel_soc_pmic, %struct.intel_soc_pmic* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = load %struct.cht_wc_extcon_data*, %struct.cht_wc_extcon_data** %5, align 8
  %43 = getelementptr inbounds %struct.cht_wc_extcon_data, %struct.cht_wc_extcon_data* %42, i32 0, i32 1
  store i32 %41, i32* %43, align 8
  %44 = load i32, i32* @EXTCON_NONE, align 4
  %45 = load %struct.cht_wc_extcon_data*, %struct.cht_wc_extcon_data** %5, align 8
  %46 = getelementptr inbounds %struct.cht_wc_extcon_data, %struct.cht_wc_extcon_data* %45, i32 0, i32 3
  store i32 %44, i32* %46, align 8
  %47 = load %struct.cht_wc_extcon_data*, %struct.cht_wc_extcon_data** %5, align 8
  %48 = getelementptr inbounds %struct.cht_wc_extcon_data, %struct.cht_wc_extcon_data* %47, i32 0, i32 0
  %49 = load %struct.TYPE_6__*, %struct.TYPE_6__** %48, align 8
  %50 = load i32, i32* @cht_wc_extcon_cables, align 4
  %51 = call i32 @devm_extcon_dev_allocate(%struct.TYPE_6__* %49, i32 %50)
  %52 = load %struct.cht_wc_extcon_data*, %struct.cht_wc_extcon_data** %5, align 8
  %53 = getelementptr inbounds %struct.cht_wc_extcon_data, %struct.cht_wc_extcon_data* %52, i32 0, i32 2
  store i32 %51, i32* %53, align 4
  %54 = load %struct.cht_wc_extcon_data*, %struct.cht_wc_extcon_data** %5, align 8
  %55 = getelementptr inbounds %struct.cht_wc_extcon_data, %struct.cht_wc_extcon_data* %54, i32 0, i32 2
  %56 = load i32, i32* %55, align 4
  %57 = call i64 @IS_ERR(i32 %56)
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %64

59:                                               ; preds = %34
  %60 = load %struct.cht_wc_extcon_data*, %struct.cht_wc_extcon_data** %5, align 8
  %61 = getelementptr inbounds %struct.cht_wc_extcon_data, %struct.cht_wc_extcon_data* %60, i32 0, i32 2
  %62 = load i32, i32* %61, align 4
  %63 = call i32 @PTR_ERR(i32 %62)
  store i32 %63, i32* %2, align 4
  br label %138

64:                                               ; preds = %34
  %65 = load %struct.cht_wc_extcon_data*, %struct.cht_wc_extcon_data** %5, align 8
  %66 = call i32 @cht_wc_extcon_set_5v_boost(%struct.cht_wc_extcon_data* %65, i32 0)
  %67 = load %struct.cht_wc_extcon_data*, %struct.cht_wc_extcon_data** %5, align 8
  %68 = call i32 @cht_wc_extcon_sw_control(%struct.cht_wc_extcon_data* %67, i32 1)
  store i32 %68, i32* %8, align 4
  %69 = load i32, i32* %8, align 4
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %72

71:                                               ; preds = %64
  br label %134

72:                                               ; preds = %64
  %73 = load %struct.cht_wc_extcon_data*, %struct.cht_wc_extcon_data** %5, align 8
  %74 = call i32 @cht_wc_extcon_enable_charging(%struct.cht_wc_extcon_data* %73, i32 0)
  %75 = load %struct.cht_wc_extcon_data*, %struct.cht_wc_extcon_data** %5, align 8
  %76 = getelementptr inbounds %struct.cht_wc_extcon_data, %struct.cht_wc_extcon_data* %75, i32 0, i32 0
  %77 = load %struct.TYPE_6__*, %struct.TYPE_6__** %76, align 8
  %78 = load %struct.cht_wc_extcon_data*, %struct.cht_wc_extcon_data** %5, align 8
  %79 = getelementptr inbounds %struct.cht_wc_extcon_data, %struct.cht_wc_extcon_data* %78, i32 0, i32 2
  %80 = load i32, i32* %79, align 4
  %81 = call i32 @devm_extcon_dev_register(%struct.TYPE_6__* %77, i32 %80)
  store i32 %81, i32* %8, align 4
  %82 = load i32, i32* %8, align 4
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %90

84:                                               ; preds = %72
  %85 = load %struct.cht_wc_extcon_data*, %struct.cht_wc_extcon_data** %5, align 8
  %86 = getelementptr inbounds %struct.cht_wc_extcon_data, %struct.cht_wc_extcon_data* %85, i32 0, i32 0
  %87 = load %struct.TYPE_6__*, %struct.TYPE_6__** %86, align 8
  %88 = load i32, i32* %8, align 4
  %89 = call i32 @dev_err(%struct.TYPE_6__* %87, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i32 %88)
  br label %134

90:                                               ; preds = %72
  %91 = load %struct.cht_wc_extcon_data*, %struct.cht_wc_extcon_data** %5, align 8
  %92 = load i32, i32* @MUX_SEL_PMIC, align 4
  %93 = call i32 @cht_wc_extcon_set_phymux(%struct.cht_wc_extcon_data* %91, i32 %92)
  %94 = load %struct.cht_wc_extcon_data*, %struct.cht_wc_extcon_data** %5, align 8
  %95 = call i32 @cht_wc_extcon_pwrsrc_event(%struct.cht_wc_extcon_data* %94)
  %96 = load %struct.cht_wc_extcon_data*, %struct.cht_wc_extcon_data** %5, align 8
  %97 = getelementptr inbounds %struct.cht_wc_extcon_data, %struct.cht_wc_extcon_data* %96, i32 0, i32 0
  %98 = load %struct.TYPE_6__*, %struct.TYPE_6__** %97, align 8
  %99 = load i32, i32* %7, align 4
  %100 = load i32, i32* @cht_wc_extcon_isr, align 4
  %101 = load i32, i32* @IRQF_ONESHOT, align 4
  %102 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %103 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 4
  %105 = load %struct.cht_wc_extcon_data*, %struct.cht_wc_extcon_data** %5, align 8
  %106 = call i32 @devm_request_threaded_irq(%struct.TYPE_6__* %98, i32 %99, i32* null, i32 %100, i32 %101, i32 %104, %struct.cht_wc_extcon_data* %105)
  store i32 %106, i32* %8, align 4
  %107 = load i32, i32* %8, align 4
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %109, label %115

109:                                              ; preds = %90
  %110 = load %struct.cht_wc_extcon_data*, %struct.cht_wc_extcon_data** %5, align 8
  %111 = getelementptr inbounds %struct.cht_wc_extcon_data, %struct.cht_wc_extcon_data* %110, i32 0, i32 0
  %112 = load %struct.TYPE_6__*, %struct.TYPE_6__** %111, align 8
  %113 = load i32, i32* %8, align 4
  %114 = call i32 @dev_err(%struct.TYPE_6__* %112, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0), i32 %113)
  br label %134

115:                                              ; preds = %90
  %116 = load %struct.cht_wc_extcon_data*, %struct.cht_wc_extcon_data** %5, align 8
  %117 = getelementptr inbounds %struct.cht_wc_extcon_data, %struct.cht_wc_extcon_data* %116, i32 0, i32 1
  %118 = load i32, i32* %117, align 8
  %119 = load i32, i32* @CHT_WC_PWRSRC_IRQ_MASK, align 4
  %120 = load i64, i64* %6, align 8
  %121 = call i32 @regmap_write(i32 %118, i32 %119, i64 %120)
  store i32 %121, i32* %8, align 4
  %122 = load i32, i32* %8, align 4
  %123 = icmp ne i32 %122, 0
  br i1 %123, label %124, label %130

124:                                              ; preds = %115
  %125 = load %struct.cht_wc_extcon_data*, %struct.cht_wc_extcon_data** %5, align 8
  %126 = getelementptr inbounds %struct.cht_wc_extcon_data, %struct.cht_wc_extcon_data* %125, i32 0, i32 0
  %127 = load %struct.TYPE_6__*, %struct.TYPE_6__** %126, align 8
  %128 = load i32, i32* %8, align 4
  %129 = call i32 @dev_err(%struct.TYPE_6__* %127, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i64 0, i64 0), i32 %128)
  br label %134

130:                                              ; preds = %115
  %131 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %132 = load %struct.cht_wc_extcon_data*, %struct.cht_wc_extcon_data** %5, align 8
  %133 = call i32 @platform_set_drvdata(%struct.platform_device* %131, %struct.cht_wc_extcon_data* %132)
  store i32 0, i32* %2, align 4
  br label %138

134:                                              ; preds = %124, %109, %84, %71
  %135 = load %struct.cht_wc_extcon_data*, %struct.cht_wc_extcon_data** %5, align 8
  %136 = call i32 @cht_wc_extcon_sw_control(%struct.cht_wc_extcon_data* %135, i32 0)
  %137 = load i32, i32* %8, align 4
  store i32 %137, i32* %2, align 4
  br label %138

138:                                              ; preds = %134, %130, %59, %31, %22
  %139 = load i32, i32* %2, align 4
  ret i32 %139
}

declare dso_local %struct.intel_soc_pmic* @dev_get_drvdata(i32) #1

declare dso_local i32 @platform_get_irq(%struct.platform_device*, i32) #1

declare dso_local %struct.cht_wc_extcon_data* @devm_kzalloc(%struct.TYPE_6__*, i32, i32) #1

declare dso_local i32 @devm_extcon_dev_allocate(%struct.TYPE_6__*, i32) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @PTR_ERR(i32) #1

declare dso_local i32 @cht_wc_extcon_set_5v_boost(%struct.cht_wc_extcon_data*, i32) #1

declare dso_local i32 @cht_wc_extcon_sw_control(%struct.cht_wc_extcon_data*, i32) #1

declare dso_local i32 @cht_wc_extcon_enable_charging(%struct.cht_wc_extcon_data*, i32) #1

declare dso_local i32 @devm_extcon_dev_register(%struct.TYPE_6__*, i32) #1

declare dso_local i32 @dev_err(%struct.TYPE_6__*, i8*, i32) #1

declare dso_local i32 @cht_wc_extcon_set_phymux(%struct.cht_wc_extcon_data*, i32) #1

declare dso_local i32 @cht_wc_extcon_pwrsrc_event(%struct.cht_wc_extcon_data*) #1

declare dso_local i32 @devm_request_threaded_irq(%struct.TYPE_6__*, i32, i32*, i32, i32, i32, %struct.cht_wc_extcon_data*) #1

declare dso_local i32 @regmap_write(i32, i32, i64) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.cht_wc_extcon_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
