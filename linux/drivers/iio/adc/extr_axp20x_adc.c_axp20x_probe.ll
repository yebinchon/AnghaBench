; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/adc/extr_axp20x_adc.c_axp20x_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/adc/extr_axp20x_adc.c_axp20x_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.device }
%struct.device = type { i32, i32 }
%struct.axp20x_adc_iio = type { i32, %struct.axp_data* }
%struct.axp_data = type { i64, i32, i32 (%struct.axp20x_adc_iio.0*, i32)*, i32, i32, i32, i32 }
%struct.axp20x_adc_iio.0 = type opaque
%struct.iio_dev = type { i32, i32, i32, i32, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, %struct.device* }
%struct.axp20x_dev = type { i32 }
%struct.platform_device_id = type { i32, i64 }

@ENOMEM = common dso_local global i32 0, align 4
@INDIO_DIRECT_MODE = common dso_local global i32 0, align 4
@AXP20X_ADC_EN1 = common dso_local global i32 0, align 4
@AXP20X_ADC_EN2 = common dso_local global i32 0, align 4
@AXP20X_ADC_EN2_MASK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"failed to register IIO maps: %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [31 x i8] c"could not register the device\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @axp20x_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @axp20x_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.axp20x_adc_iio*, align 8
  %5 = alloca %struct.iio_dev*, align 8
  %6 = alloca %struct.axp20x_dev*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.platform_device_id*, align 8
  %9 = alloca %struct.device*, align 8
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %10 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %11 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.device, %struct.device* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 4
  %14 = call %struct.axp20x_dev* @dev_get_drvdata(i32 %13)
  store %struct.axp20x_dev* %14, %struct.axp20x_dev** %6, align 8
  %15 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %16 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %15, i32 0, i32 0
  %17 = call %struct.iio_dev* @devm_iio_device_alloc(%struct.device* %16, i32 16)
  store %struct.iio_dev* %17, %struct.iio_dev** %5, align 8
  %18 = load %struct.iio_dev*, %struct.iio_dev** %5, align 8
  %19 = icmp ne %struct.iio_dev* %18, null
  br i1 %19, label %23, label %20

20:                                               ; preds = %1
  %21 = load i32, i32* @ENOMEM, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %2, align 4
  br label %179

23:                                               ; preds = %1
  %24 = load %struct.iio_dev*, %struct.iio_dev** %5, align 8
  %25 = call %struct.axp20x_adc_iio* @iio_priv(%struct.iio_dev* %24)
  store %struct.axp20x_adc_iio* %25, %struct.axp20x_adc_iio** %4, align 8
  %26 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %27 = load %struct.iio_dev*, %struct.iio_dev** %5, align 8
  %28 = call i32 @platform_set_drvdata(%struct.platform_device* %26, %struct.iio_dev* %27)
  %29 = load %struct.axp20x_dev*, %struct.axp20x_dev** %6, align 8
  %30 = getelementptr inbounds %struct.axp20x_dev, %struct.axp20x_dev* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = load %struct.axp20x_adc_iio*, %struct.axp20x_adc_iio** %4, align 8
  %33 = getelementptr inbounds %struct.axp20x_adc_iio, %struct.axp20x_adc_iio* %32, i32 0, i32 0
  store i32 %31, i32* %33, align 8
  %34 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %35 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %34, i32 0, i32 0
  %36 = load %struct.iio_dev*, %struct.iio_dev** %5, align 8
  %37 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %36, i32 0, i32 5
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 1
  store %struct.device* %35, %struct.device** %38, align 8
  %39 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %40 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.device, %struct.device* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = load %struct.iio_dev*, %struct.iio_dev** %5, align 8
  %44 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %43, i32 0, i32 5
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i32 0, i32 0
  store i32 %42, i32* %45, align 8
  %46 = load i32, i32* @INDIO_DIRECT_MODE, align 4
  %47 = load %struct.iio_dev*, %struct.iio_dev** %5, align 8
  %48 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %47, i32 0, i32 4
  store i32 %46, i32* %48, align 8
  %49 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %50 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.device, %struct.device* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %63, label %54

54:                                               ; preds = %23
  %55 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %56 = call %struct.platform_device_id* @platform_get_device_id(%struct.platform_device* %55)
  store %struct.platform_device_id* %56, %struct.platform_device_id** %8, align 8
  %57 = load %struct.platform_device_id*, %struct.platform_device_id** %8, align 8
  %58 = getelementptr inbounds %struct.platform_device_id, %struct.platform_device_id* %57, i32 0, i32 1
  %59 = load i64, i64* %58, align 8
  %60 = inttoptr i64 %59 to %struct.axp_data*
  %61 = load %struct.axp20x_adc_iio*, %struct.axp20x_adc_iio** %4, align 8
  %62 = getelementptr inbounds %struct.axp20x_adc_iio, %struct.axp20x_adc_iio* %61, i32 0, i32 1
  store %struct.axp_data* %60, %struct.axp_data** %62, align 8
  br label %71

63:                                               ; preds = %23
  %64 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %65 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %64, i32 0, i32 0
  store %struct.device* %65, %struct.device** %9, align 8
  %66 = load %struct.device*, %struct.device** %9, align 8
  %67 = call i64 @of_device_get_match_data(%struct.device* %66)
  %68 = inttoptr i64 %67 to %struct.axp_data*
  %69 = load %struct.axp20x_adc_iio*, %struct.axp20x_adc_iio** %4, align 8
  %70 = getelementptr inbounds %struct.axp20x_adc_iio, %struct.axp20x_adc_iio* %69, i32 0, i32 1
  store %struct.axp_data* %68, %struct.axp_data** %70, align 8
  br label %71

71:                                               ; preds = %63, %54
  %72 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %73 = call %struct.platform_device_id* @platform_get_device_id(%struct.platform_device* %72)
  %74 = getelementptr inbounds %struct.platform_device_id, %struct.platform_device_id* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 8
  %76 = load %struct.iio_dev*, %struct.iio_dev** %5, align 8
  %77 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %76, i32 0, i32 3
  store i32 %75, i32* %77, align 4
  %78 = load %struct.axp20x_adc_iio*, %struct.axp20x_adc_iio** %4, align 8
  %79 = getelementptr inbounds %struct.axp20x_adc_iio, %struct.axp20x_adc_iio* %78, i32 0, i32 1
  %80 = load %struct.axp_data*, %struct.axp_data** %79, align 8
  %81 = getelementptr inbounds %struct.axp_data, %struct.axp_data* %80, i32 0, i32 6
  %82 = load i32, i32* %81, align 4
  %83 = load %struct.iio_dev*, %struct.iio_dev** %5, align 8
  %84 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %83, i32 0, i32 2
  store i32 %82, i32* %84, align 8
  %85 = load %struct.axp20x_adc_iio*, %struct.axp20x_adc_iio** %4, align 8
  %86 = getelementptr inbounds %struct.axp20x_adc_iio, %struct.axp20x_adc_iio* %85, i32 0, i32 1
  %87 = load %struct.axp_data*, %struct.axp_data** %86, align 8
  %88 = getelementptr inbounds %struct.axp_data, %struct.axp_data* %87, i32 0, i32 5
  %89 = load i32, i32* %88, align 8
  %90 = load %struct.iio_dev*, %struct.iio_dev** %5, align 8
  %91 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %90, i32 0, i32 1
  store i32 %89, i32* %91, align 4
  %92 = load %struct.axp20x_adc_iio*, %struct.axp20x_adc_iio** %4, align 8
  %93 = getelementptr inbounds %struct.axp20x_adc_iio, %struct.axp20x_adc_iio* %92, i32 0, i32 1
  %94 = load %struct.axp_data*, %struct.axp_data** %93, align 8
  %95 = getelementptr inbounds %struct.axp_data, %struct.axp_data* %94, i32 0, i32 4
  %96 = load i32, i32* %95, align 4
  %97 = load %struct.iio_dev*, %struct.iio_dev** %5, align 8
  %98 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %97, i32 0, i32 0
  store i32 %96, i32* %98, align 8
  %99 = load %struct.axp20x_adc_iio*, %struct.axp20x_adc_iio** %4, align 8
  %100 = getelementptr inbounds %struct.axp20x_adc_iio, %struct.axp20x_adc_iio* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 8
  %102 = load i32, i32* @AXP20X_ADC_EN1, align 4
  %103 = load %struct.axp20x_adc_iio*, %struct.axp20x_adc_iio** %4, align 8
  %104 = getelementptr inbounds %struct.axp20x_adc_iio, %struct.axp20x_adc_iio* %103, i32 0, i32 1
  %105 = load %struct.axp_data*, %struct.axp_data** %104, align 8
  %106 = getelementptr inbounds %struct.axp_data, %struct.axp_data* %105, i32 0, i32 3
  %107 = load i32, i32* %106, align 8
  %108 = call i32 @regmap_write(i32 %101, i32 %102, i32 %107)
  %109 = load %struct.axp20x_adc_iio*, %struct.axp20x_adc_iio** %4, align 8
  %110 = getelementptr inbounds %struct.axp20x_adc_iio, %struct.axp20x_adc_iio* %109, i32 0, i32 1
  %111 = load %struct.axp_data*, %struct.axp_data** %110, align 8
  %112 = getelementptr inbounds %struct.axp_data, %struct.axp_data* %111, i32 0, i32 0
  %113 = load i64, i64* %112, align 8
  %114 = icmp ne i64 %113, 0
  br i1 %114, label %115, label %123

115:                                              ; preds = %71
  %116 = load %struct.axp20x_adc_iio*, %struct.axp20x_adc_iio** %4, align 8
  %117 = getelementptr inbounds %struct.axp20x_adc_iio, %struct.axp20x_adc_iio* %116, i32 0, i32 0
  %118 = load i32, i32* %117, align 8
  %119 = load i32, i32* @AXP20X_ADC_EN2, align 4
  %120 = load i32, i32* @AXP20X_ADC_EN2_MASK, align 4
  %121 = load i32, i32* @AXP20X_ADC_EN2_MASK, align 4
  %122 = call i32 @regmap_update_bits(i32 %118, i32 %119, i32 %120, i32 %121)
  br label %123

123:                                              ; preds = %115, %71
  %124 = load %struct.axp20x_adc_iio*, %struct.axp20x_adc_iio** %4, align 8
  %125 = getelementptr inbounds %struct.axp20x_adc_iio, %struct.axp20x_adc_iio* %124, i32 0, i32 1
  %126 = load %struct.axp_data*, %struct.axp_data** %125, align 8
  %127 = getelementptr inbounds %struct.axp_data, %struct.axp_data* %126, i32 0, i32 2
  %128 = load i32 (%struct.axp20x_adc_iio.0*, i32)*, i32 (%struct.axp20x_adc_iio.0*, i32)** %127, align 8
  %129 = load %struct.axp20x_adc_iio*, %struct.axp20x_adc_iio** %4, align 8
  %130 = bitcast %struct.axp20x_adc_iio* %129 to %struct.axp20x_adc_iio.0*
  %131 = call i32 %128(%struct.axp20x_adc_iio.0* %130, i32 100)
  %132 = load %struct.iio_dev*, %struct.iio_dev** %5, align 8
  %133 = load %struct.axp20x_adc_iio*, %struct.axp20x_adc_iio** %4, align 8
  %134 = getelementptr inbounds %struct.axp20x_adc_iio, %struct.axp20x_adc_iio* %133, i32 0, i32 1
  %135 = load %struct.axp_data*, %struct.axp_data** %134, align 8
  %136 = getelementptr inbounds %struct.axp_data, %struct.axp_data* %135, i32 0, i32 1
  %137 = load i32, i32* %136, align 8
  %138 = call i32 @iio_map_array_register(%struct.iio_dev* %132, i32 %137)
  store i32 %138, i32* %7, align 4
  %139 = load i32, i32* %7, align 4
  %140 = icmp slt i32 %139, 0
  br i1 %140, label %141, label %146

141:                                              ; preds = %123
  %142 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %143 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %142, i32 0, i32 0
  %144 = load i32, i32* %7, align 4
  %145 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %143, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i32 %144)
  br label %159

146:                                              ; preds = %123
  %147 = load %struct.iio_dev*, %struct.iio_dev** %5, align 8
  %148 = call i32 @iio_device_register(%struct.iio_dev* %147)
  store i32 %148, i32* %7, align 4
  %149 = load i32, i32* %7, align 4
  %150 = icmp slt i32 %149, 0
  br i1 %150, label %151, label %155

151:                                              ; preds = %146
  %152 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %153 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %152, i32 0, i32 0
  %154 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %153, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0))
  br label %156

155:                                              ; preds = %146
  store i32 0, i32* %2, align 4
  br label %179

156:                                              ; preds = %151
  %157 = load %struct.iio_dev*, %struct.iio_dev** %5, align 8
  %158 = call i32 @iio_map_array_unregister(%struct.iio_dev* %157)
  br label %159

159:                                              ; preds = %156, %141
  %160 = load %struct.axp20x_adc_iio*, %struct.axp20x_adc_iio** %4, align 8
  %161 = getelementptr inbounds %struct.axp20x_adc_iio, %struct.axp20x_adc_iio* %160, i32 0, i32 0
  %162 = load i32, i32* %161, align 8
  %163 = load i32, i32* @AXP20X_ADC_EN1, align 4
  %164 = call i32 @regmap_write(i32 %162, i32 %163, i32 0)
  %165 = load %struct.axp20x_adc_iio*, %struct.axp20x_adc_iio** %4, align 8
  %166 = getelementptr inbounds %struct.axp20x_adc_iio, %struct.axp20x_adc_iio* %165, i32 0, i32 1
  %167 = load %struct.axp_data*, %struct.axp_data** %166, align 8
  %168 = getelementptr inbounds %struct.axp_data, %struct.axp_data* %167, i32 0, i32 0
  %169 = load i64, i64* %168, align 8
  %170 = icmp ne i64 %169, 0
  br i1 %170, label %171, label %177

171:                                              ; preds = %159
  %172 = load %struct.axp20x_adc_iio*, %struct.axp20x_adc_iio** %4, align 8
  %173 = getelementptr inbounds %struct.axp20x_adc_iio, %struct.axp20x_adc_iio* %172, i32 0, i32 0
  %174 = load i32, i32* %173, align 8
  %175 = load i32, i32* @AXP20X_ADC_EN2, align 4
  %176 = call i32 @regmap_write(i32 %174, i32 %175, i32 0)
  br label %177

177:                                              ; preds = %171, %159
  %178 = load i32, i32* %7, align 4
  store i32 %178, i32* %2, align 4
  br label %179

179:                                              ; preds = %177, %155, %20
  %180 = load i32, i32* %2, align 4
  ret i32 %180
}

declare dso_local %struct.axp20x_dev* @dev_get_drvdata(i32) #1

declare dso_local %struct.iio_dev* @devm_iio_device_alloc(%struct.device*, i32) #1

declare dso_local %struct.axp20x_adc_iio* @iio_priv(%struct.iio_dev*) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.iio_dev*) #1

declare dso_local %struct.platform_device_id* @platform_get_device_id(%struct.platform_device*) #1

declare dso_local i64 @of_device_get_match_data(%struct.device*) #1

declare dso_local i32 @regmap_write(i32, i32, i32) #1

declare dso_local i32 @regmap_update_bits(i32, i32, i32, i32) #1

declare dso_local i32 @iio_map_array_register(%struct.iio_dev*, i32) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, ...) #1

declare dso_local i32 @iio_device_register(%struct.iio_dev*) #1

declare dso_local i32 @iio_map_array_unregister(%struct.iio_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
