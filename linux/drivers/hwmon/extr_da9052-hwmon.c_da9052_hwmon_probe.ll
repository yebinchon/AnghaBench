; ModuleID = '/home/carl/AnghaBench/linux/drivers/hwmon/extr_da9052-hwmon.c_da9052_hwmon_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hwmon/extr_da9052-hwmon.c_da9052_hwmon_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.device }
%struct.device = type { i32 }
%struct.da9052_hwmon = type { i32, i64, %struct.TYPE_6__*, i64, i32, i32 }
%struct.TYPE_6__ = type { %struct.device* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [15 x i8] c"dlg,tsi-as-adc\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"tsiref\00", align 1
@.str.2 = private unnamed_addr constant [25 x i8] c"failed to get tsiref: %d\00", align 1
@.str.3 = private unnamed_addr constant [27 x i8] c"invalid TSIREF voltage: %d\00", align 1
@ENXIO = common dso_local global i32 0, align 4
@DA9052_TSI_CONT_A_REG = common dso_local global i32 0, align 4
@DA9052_ADC_CONT_REG = common dso_local global i32 0, align 4
@DA9052_ADCCONT_ADCMODE = common dso_local global i32 0, align 4
@DA9052_IRQ_TSIREADY = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [13 x i8] c"tsiready-irq\00", align 1
@da9052_tsi_datardy_irq = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [34 x i8] c"Failed to register TSIRDY IRQ: %d\00", align 1
@.str.6 = private unnamed_addr constant [7 x i8] c"da9052\00", align 1
@da9052_groups = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @da9052_hwmon_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @da9052_hwmon_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.da9052_hwmon*, align 8
  %6 = alloca %struct.device*, align 8
  %7 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %8 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %9 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %8, i32 0, i32 0
  store %struct.device* %9, %struct.device** %4, align 8
  %10 = load %struct.device*, %struct.device** %4, align 8
  %11 = load i32, i32* @GFP_KERNEL, align 4
  %12 = call %struct.da9052_hwmon* @devm_kzalloc(%struct.device* %10, i32 40, i32 %11)
  store %struct.da9052_hwmon* %12, %struct.da9052_hwmon** %5, align 8
  %13 = load %struct.da9052_hwmon*, %struct.da9052_hwmon** %5, align 8
  %14 = icmp ne %struct.da9052_hwmon* %13, null
  br i1 %14, label %18, label %15

15:                                               ; preds = %1
  %16 = load i32, i32* @ENOMEM, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %2, align 4
  br label %183

18:                                               ; preds = %1
  %19 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %20 = load %struct.da9052_hwmon*, %struct.da9052_hwmon** %5, align 8
  %21 = call i32 @platform_set_drvdata(%struct.platform_device* %19, %struct.da9052_hwmon* %20)
  %22 = load %struct.da9052_hwmon*, %struct.da9052_hwmon** %5, align 8
  %23 = getelementptr inbounds %struct.da9052_hwmon, %struct.da9052_hwmon* %22, i32 0, i32 5
  %24 = call i32 @mutex_init(i32* %23)
  %25 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %26 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.device, %struct.device* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = call %struct.TYPE_6__* @dev_get_drvdata(i32 %28)
  %30 = load %struct.da9052_hwmon*, %struct.da9052_hwmon** %5, align 8
  %31 = getelementptr inbounds %struct.da9052_hwmon, %struct.da9052_hwmon* %30, i32 0, i32 2
  store %struct.TYPE_6__* %29, %struct.TYPE_6__** %31, align 8
  %32 = load %struct.da9052_hwmon*, %struct.da9052_hwmon** %5, align 8
  %33 = getelementptr inbounds %struct.da9052_hwmon, %struct.da9052_hwmon* %32, i32 0, i32 4
  %34 = call i32 @init_completion(i32* %33)
  %35 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %36 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.device, %struct.device* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = call i64 @device_property_read_bool(i32 %38, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0))
  %40 = load %struct.da9052_hwmon*, %struct.da9052_hwmon** %5, align 8
  %41 = getelementptr inbounds %struct.da9052_hwmon, %struct.da9052_hwmon* %40, i32 0, i32 3
  store i64 %39, i64* %41, align 8
  %42 = load %struct.da9052_hwmon*, %struct.da9052_hwmon** %5, align 8
  %43 = getelementptr inbounds %struct.da9052_hwmon, %struct.da9052_hwmon* %42, i32 0, i32 3
  %44 = load i64, i64* %43, align 8
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %147

46:                                               ; preds = %18
  %47 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %48 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.device, %struct.device* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = call i64 @devm_regulator_get(i32 %50, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0))
  %52 = load %struct.da9052_hwmon*, %struct.da9052_hwmon** %5, align 8
  %53 = getelementptr inbounds %struct.da9052_hwmon, %struct.da9052_hwmon* %52, i32 0, i32 1
  store i64 %51, i64* %53, align 8
  %54 = load %struct.da9052_hwmon*, %struct.da9052_hwmon** %5, align 8
  %55 = getelementptr inbounds %struct.da9052_hwmon, %struct.da9052_hwmon* %54, i32 0, i32 1
  %56 = load i64, i64* %55, align 8
  %57 = call i64 @IS_ERR(i64 %56)
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %69

59:                                               ; preds = %46
  %60 = load %struct.da9052_hwmon*, %struct.da9052_hwmon** %5, align 8
  %61 = getelementptr inbounds %struct.da9052_hwmon, %struct.da9052_hwmon* %60, i32 0, i32 1
  %62 = load i64, i64* %61, align 8
  %63 = call i32 @PTR_ERR(i64 %62)
  store i32 %63, i32* %7, align 4
  %64 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %65 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %64, i32 0, i32 0
  %66 = load i32, i32* %7, align 4
  %67 = call i32 @dev_err(%struct.device* %65, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0), i32 %66)
  %68 = load i32, i32* %7, align 4
  store i32 %68, i32* %2, align 4
  br label %183

69:                                               ; preds = %46
  %70 = load %struct.da9052_hwmon*, %struct.da9052_hwmon** %5, align 8
  %71 = getelementptr inbounds %struct.da9052_hwmon, %struct.da9052_hwmon* %70, i32 0, i32 1
  %72 = load i64, i64* %71, align 8
  %73 = call i32 @regulator_enable(i64 %72)
  store i32 %73, i32* %7, align 4
  %74 = load i32, i32* %7, align 4
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %78

76:                                               ; preds = %69
  %77 = load i32, i32* %7, align 4
  store i32 %77, i32* %2, align 4
  br label %183

78:                                               ; preds = %69
  %79 = load %struct.da9052_hwmon*, %struct.da9052_hwmon** %5, align 8
  %80 = getelementptr inbounds %struct.da9052_hwmon, %struct.da9052_hwmon* %79, i32 0, i32 1
  %81 = load i64, i64* %80, align 8
  %82 = call i32 @regulator_get_voltage(i64 %81)
  %83 = load %struct.da9052_hwmon*, %struct.da9052_hwmon** %5, align 8
  %84 = getelementptr inbounds %struct.da9052_hwmon, %struct.da9052_hwmon* %83, i32 0, i32 0
  store i32 %82, i32* %84, align 8
  %85 = load %struct.da9052_hwmon*, %struct.da9052_hwmon** %5, align 8
  %86 = getelementptr inbounds %struct.da9052_hwmon, %struct.da9052_hwmon* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 8
  %88 = icmp slt i32 %87, 0
  br i1 %88, label %89, label %93

89:                                               ; preds = %78
  %90 = load %struct.da9052_hwmon*, %struct.da9052_hwmon** %5, align 8
  %91 = getelementptr inbounds %struct.da9052_hwmon, %struct.da9052_hwmon* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 8
  store i32 %92, i32* %7, align 4
  br label %171

93:                                               ; preds = %78
  %94 = load %struct.da9052_hwmon*, %struct.da9052_hwmon** %5, align 8
  %95 = getelementptr inbounds %struct.da9052_hwmon, %struct.da9052_hwmon* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 8
  %97 = sdiv i32 %96, 1000
  store i32 %97, i32* %95, align 8
  %98 = load %struct.da9052_hwmon*, %struct.da9052_hwmon** %5, align 8
  %99 = getelementptr inbounds %struct.da9052_hwmon, %struct.da9052_hwmon* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 8
  %101 = icmp slt i32 %100, 1800
  br i1 %101, label %107, label %102

102:                                              ; preds = %93
  %103 = load %struct.da9052_hwmon*, %struct.da9052_hwmon** %5, align 8
  %104 = getelementptr inbounds %struct.da9052_hwmon, %struct.da9052_hwmon* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 8
  %106 = icmp sgt i32 %105, 2600
  br i1 %106, label %107, label %119

107:                                              ; preds = %102, %93
  %108 = load %struct.da9052_hwmon*, %struct.da9052_hwmon** %5, align 8
  %109 = getelementptr inbounds %struct.da9052_hwmon, %struct.da9052_hwmon* %108, i32 0, i32 2
  %110 = load %struct.TYPE_6__*, %struct.TYPE_6__** %109, align 8
  %111 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %110, i32 0, i32 0
  %112 = load %struct.device*, %struct.device** %111, align 8
  %113 = load %struct.da9052_hwmon*, %struct.da9052_hwmon** %5, align 8
  %114 = getelementptr inbounds %struct.da9052_hwmon, %struct.da9052_hwmon* %113, i32 0, i32 0
  %115 = load i32, i32* %114, align 8
  %116 = call i32 @dev_err(%struct.device* %112, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.3, i64 0, i64 0), i32 %115)
  %117 = load i32, i32* @ENXIO, align 4
  %118 = sub nsw i32 0, %117
  store i32 %118, i32* %7, align 4
  br label %171

119:                                              ; preds = %102
  %120 = load %struct.da9052_hwmon*, %struct.da9052_hwmon** %5, align 8
  %121 = getelementptr inbounds %struct.da9052_hwmon, %struct.da9052_hwmon* %120, i32 0, i32 2
  %122 = load %struct.TYPE_6__*, %struct.TYPE_6__** %121, align 8
  %123 = load i32, i32* @DA9052_TSI_CONT_A_REG, align 4
  %124 = call i32 @da9052_reg_write(%struct.TYPE_6__* %122, i32 %123, i32 0)
  %125 = load %struct.da9052_hwmon*, %struct.da9052_hwmon** %5, align 8
  %126 = getelementptr inbounds %struct.da9052_hwmon, %struct.da9052_hwmon* %125, i32 0, i32 2
  %127 = load %struct.TYPE_6__*, %struct.TYPE_6__** %126, align 8
  %128 = load i32, i32* @DA9052_ADC_CONT_REG, align 4
  %129 = load i32, i32* @DA9052_ADCCONT_ADCMODE, align 4
  %130 = load i32, i32* @DA9052_ADCCONT_ADCMODE, align 4
  %131 = call i32 @da9052_reg_update(%struct.TYPE_6__* %127, i32 %128, i32 %129, i32 %130)
  %132 = load %struct.da9052_hwmon*, %struct.da9052_hwmon** %5, align 8
  %133 = getelementptr inbounds %struct.da9052_hwmon, %struct.da9052_hwmon* %132, i32 0, i32 2
  %134 = load %struct.TYPE_6__*, %struct.TYPE_6__** %133, align 8
  %135 = load i32, i32* @DA9052_IRQ_TSIREADY, align 4
  %136 = load i32, i32* @da9052_tsi_datardy_irq, align 4
  %137 = load %struct.da9052_hwmon*, %struct.da9052_hwmon** %5, align 8
  %138 = call i32 @da9052_request_irq(%struct.TYPE_6__* %134, i32 %135, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.4, i64 0, i64 0), i32 %136, %struct.da9052_hwmon* %137)
  store i32 %138, i32* %7, align 4
  %139 = load i32, i32* %7, align 4
  %140 = icmp ne i32 %139, 0
  br i1 %140, label %141, label %146

141:                                              ; preds = %119
  %142 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %143 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %142, i32 0, i32 0
  %144 = load i32, i32* %7, align 4
  %145 = call i32 @dev_err(%struct.device* %143, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.5, i64 0, i64 0), i32 %144)
  br label %171

146:                                              ; preds = %119
  br label %147

147:                                              ; preds = %146, %18
  %148 = load %struct.device*, %struct.device** %4, align 8
  %149 = load %struct.da9052_hwmon*, %struct.da9052_hwmon** %5, align 8
  %150 = load i32, i32* @da9052_groups, align 4
  %151 = call %struct.device* @devm_hwmon_device_register_with_groups(%struct.device* %148, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6, i64 0, i64 0), %struct.da9052_hwmon* %149, i32 %150)
  store %struct.device* %151, %struct.device** %6, align 8
  %152 = load %struct.device*, %struct.device** %6, align 8
  %153 = call i32 @PTR_ERR_OR_ZERO(%struct.device* %152)
  store i32 %153, i32* %7, align 4
  %154 = load i32, i32* %7, align 4
  %155 = icmp ne i32 %154, 0
  br i1 %155, label %156, label %157

156:                                              ; preds = %147
  br label %158

157:                                              ; preds = %147
  store i32 0, i32* %2, align 4
  br label %183

158:                                              ; preds = %156
  %159 = load %struct.da9052_hwmon*, %struct.da9052_hwmon** %5, align 8
  %160 = getelementptr inbounds %struct.da9052_hwmon, %struct.da9052_hwmon* %159, i32 0, i32 3
  %161 = load i64, i64* %160, align 8
  %162 = icmp ne i64 %161, 0
  br i1 %162, label %163, label %170

163:                                              ; preds = %158
  %164 = load %struct.da9052_hwmon*, %struct.da9052_hwmon** %5, align 8
  %165 = getelementptr inbounds %struct.da9052_hwmon, %struct.da9052_hwmon* %164, i32 0, i32 2
  %166 = load %struct.TYPE_6__*, %struct.TYPE_6__** %165, align 8
  %167 = load i32, i32* @DA9052_IRQ_TSIREADY, align 4
  %168 = load %struct.da9052_hwmon*, %struct.da9052_hwmon** %5, align 8
  %169 = call i32 @da9052_free_irq(%struct.TYPE_6__* %166, i32 %167, %struct.da9052_hwmon* %168)
  br label %170

170:                                              ; preds = %163, %158
  br label %171

171:                                              ; preds = %170, %141, %107, %89
  %172 = load %struct.da9052_hwmon*, %struct.da9052_hwmon** %5, align 8
  %173 = getelementptr inbounds %struct.da9052_hwmon, %struct.da9052_hwmon* %172, i32 0, i32 1
  %174 = load i64, i64* %173, align 8
  %175 = icmp ne i64 %174, 0
  br i1 %175, label %176, label %181

176:                                              ; preds = %171
  %177 = load %struct.da9052_hwmon*, %struct.da9052_hwmon** %5, align 8
  %178 = getelementptr inbounds %struct.da9052_hwmon, %struct.da9052_hwmon* %177, i32 0, i32 1
  %179 = load i64, i64* %178, align 8
  %180 = call i32 @regulator_disable(i64 %179)
  br label %181

181:                                              ; preds = %176, %171
  %182 = load i32, i32* %7, align 4
  store i32 %182, i32* %2, align 4
  br label %183

183:                                              ; preds = %181, %157, %76, %59, %15
  %184 = load i32, i32* %2, align 4
  ret i32 %184
}

declare dso_local %struct.da9052_hwmon* @devm_kzalloc(%struct.device*, i32, i32) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.da9052_hwmon*) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local %struct.TYPE_6__* @dev_get_drvdata(i32) #1

declare dso_local i32 @init_completion(i32*) #1

declare dso_local i64 @device_property_read_bool(i32, i8*) #1

declare dso_local i64 @devm_regulator_get(i32, i8*) #1

declare dso_local i64 @IS_ERR(i64) #1

declare dso_local i32 @PTR_ERR(i64) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, i32) #1

declare dso_local i32 @regulator_enable(i64) #1

declare dso_local i32 @regulator_get_voltage(i64) #1

declare dso_local i32 @da9052_reg_write(%struct.TYPE_6__*, i32, i32) #1

declare dso_local i32 @da9052_reg_update(%struct.TYPE_6__*, i32, i32, i32) #1

declare dso_local i32 @da9052_request_irq(%struct.TYPE_6__*, i32, i8*, i32, %struct.da9052_hwmon*) #1

declare dso_local %struct.device* @devm_hwmon_device_register_with_groups(%struct.device*, i8*, %struct.da9052_hwmon*, i32) #1

declare dso_local i32 @PTR_ERR_OR_ZERO(%struct.device*) #1

declare dso_local i32 @da9052_free_irq(%struct.TYPE_6__*, i32, %struct.da9052_hwmon*) #1

declare dso_local i32 @regulator_disable(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
