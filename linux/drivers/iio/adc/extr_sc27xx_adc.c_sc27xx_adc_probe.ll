; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/adc/extr_sc27xx_adc.c_sc27xx_adc_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/adc/extr_sc27xx_adc.c_sc27xx_adc_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.device }
%struct.device = type { i32, %struct.device_node* }
%struct.device_node = type { i32 }
%struct.sc27xx_adc_data = type { i64, %struct.device*, %struct.sc27xx_adc_data*, i32, i32 }
%struct.iio_dev = type { i32, i32, i32*, i32, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.device* }

@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"failed to get ADC regmap\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [4 x i8] c"reg\00", align 1
@.str.2 = private unnamed_addr constant [32 x i8] c"failed to get ADC base address\0A\00", align 1
@.str.3 = private unnamed_addr constant [29 x i8] c"failed to get hwspinlock id\0A\00", align 1
@.str.4 = private unnamed_addr constant [30 x i8] c"failed to request hwspinlock\0A\00", align 1
@ENXIO = common dso_local global i32 0, align 4
@sc27xx_adc_free_hwlock = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [33 x i8] c"failed to add hwspinlock action\0A\00", align 1
@.str.6 = private unnamed_addr constant [29 x i8] c"failed to enable ADC module\0A\00", align 1
@sc27xx_adc_disable = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [34 x i8] c"failed to add ADC disable action\0A\00", align 1
@INDIO_DIRECT_MODE = common dso_local global i32 0, align 4
@sc27xx_info = common dso_local global i32 0, align 4
@sc27xx_channels = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [29 x i8] c"could not register iio (ADC)\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @sc27xx_adc_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sc27xx_adc_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.device_node*, align 8
  %6 = alloca %struct.sc27xx_adc_data*, align 8
  %7 = alloca %struct.iio_dev*, align 8
  %8 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %9 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %10 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %9, i32 0, i32 0
  store %struct.device* %10, %struct.device** %4, align 8
  %11 = load %struct.device*, %struct.device** %4, align 8
  %12 = getelementptr inbounds %struct.device, %struct.device* %11, i32 0, i32 1
  %13 = load %struct.device_node*, %struct.device_node** %12, align 8
  store %struct.device_node* %13, %struct.device_node** %5, align 8
  %14 = load %struct.device*, %struct.device** %4, align 8
  %15 = call %struct.iio_dev* @devm_iio_device_alloc(%struct.device* %14, i32 32)
  store %struct.iio_dev* %15, %struct.iio_dev** %7, align 8
  %16 = load %struct.iio_dev*, %struct.iio_dev** %7, align 8
  %17 = icmp ne %struct.iio_dev* %16, null
  br i1 %17, label %21, label %18

18:                                               ; preds = %1
  %19 = load i32, i32* @ENOMEM, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %2, align 4
  br label %154

21:                                               ; preds = %1
  %22 = load %struct.iio_dev*, %struct.iio_dev** %7, align 8
  %23 = call %struct.sc27xx_adc_data* @iio_priv(%struct.iio_dev* %22)
  store %struct.sc27xx_adc_data* %23, %struct.sc27xx_adc_data** %6, align 8
  %24 = load %struct.device*, %struct.device** %4, align 8
  %25 = getelementptr inbounds %struct.device, %struct.device* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = call i32 @dev_get_regmap(i32 %26, i32* null)
  %28 = load %struct.sc27xx_adc_data*, %struct.sc27xx_adc_data** %6, align 8
  %29 = getelementptr inbounds %struct.sc27xx_adc_data, %struct.sc27xx_adc_data* %28, i32 0, i32 4
  store i32 %27, i32* %29, align 4
  %30 = load %struct.sc27xx_adc_data*, %struct.sc27xx_adc_data** %6, align 8
  %31 = getelementptr inbounds %struct.sc27xx_adc_data, %struct.sc27xx_adc_data* %30, i32 0, i32 4
  %32 = load i32, i32* %31, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %39, label %34

34:                                               ; preds = %21
  %35 = load %struct.device*, %struct.device** %4, align 8
  %36 = call i32 @dev_err(%struct.device* %35, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  %37 = load i32, i32* @ENODEV, align 4
  %38 = sub nsw i32 0, %37
  store i32 %38, i32* %2, align 4
  br label %154

39:                                               ; preds = %21
  %40 = load %struct.device_node*, %struct.device_node** %5, align 8
  %41 = load %struct.sc27xx_adc_data*, %struct.sc27xx_adc_data** %6, align 8
  %42 = getelementptr inbounds %struct.sc27xx_adc_data, %struct.sc27xx_adc_data* %41, i32 0, i32 3
  %43 = call i32 @of_property_read_u32(%struct.device_node* %40, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i32* %42)
  store i32 %43, i32* %8, align 4
  %44 = load i32, i32* %8, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %50

46:                                               ; preds = %39
  %47 = load %struct.device*, %struct.device** %4, align 8
  %48 = call i32 @dev_err(%struct.device* %47, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2, i64 0, i64 0))
  %49 = load i32, i32* %8, align 4
  store i32 %49, i32* %2, align 4
  br label %154

50:                                               ; preds = %39
  %51 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %52 = call i64 @platform_get_irq(%struct.platform_device* %51, i32 0)
  %53 = load %struct.sc27xx_adc_data*, %struct.sc27xx_adc_data** %6, align 8
  %54 = getelementptr inbounds %struct.sc27xx_adc_data, %struct.sc27xx_adc_data* %53, i32 0, i32 0
  store i64 %52, i64* %54, align 8
  %55 = load %struct.sc27xx_adc_data*, %struct.sc27xx_adc_data** %6, align 8
  %56 = getelementptr inbounds %struct.sc27xx_adc_data, %struct.sc27xx_adc_data* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = icmp slt i64 %57, 0
  br i1 %58, label %59, label %64

59:                                               ; preds = %50
  %60 = load %struct.sc27xx_adc_data*, %struct.sc27xx_adc_data** %6, align 8
  %61 = getelementptr inbounds %struct.sc27xx_adc_data, %struct.sc27xx_adc_data* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = trunc i64 %62 to i32
  store i32 %63, i32* %2, align 4
  br label %154

64:                                               ; preds = %50
  %65 = load %struct.device_node*, %struct.device_node** %5, align 8
  %66 = call i32 @of_hwspin_lock_get_id(%struct.device_node* %65, i32 0)
  store i32 %66, i32* %8, align 4
  %67 = load i32, i32* %8, align 4
  %68 = icmp slt i32 %67, 0
  br i1 %68, label %69, label %73

69:                                               ; preds = %64
  %70 = load %struct.device*, %struct.device** %4, align 8
  %71 = call i32 @dev_err(%struct.device* %70, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.3, i64 0, i64 0))
  %72 = load i32, i32* %8, align 4
  store i32 %72, i32* %2, align 4
  br label %154

73:                                               ; preds = %64
  %74 = load i32, i32* %8, align 4
  %75 = call %struct.sc27xx_adc_data* @hwspin_lock_request_specific(i32 %74)
  %76 = load %struct.sc27xx_adc_data*, %struct.sc27xx_adc_data** %6, align 8
  %77 = getelementptr inbounds %struct.sc27xx_adc_data, %struct.sc27xx_adc_data* %76, i32 0, i32 2
  store %struct.sc27xx_adc_data* %75, %struct.sc27xx_adc_data** %77, align 8
  %78 = load %struct.sc27xx_adc_data*, %struct.sc27xx_adc_data** %6, align 8
  %79 = getelementptr inbounds %struct.sc27xx_adc_data, %struct.sc27xx_adc_data* %78, i32 0, i32 2
  %80 = load %struct.sc27xx_adc_data*, %struct.sc27xx_adc_data** %79, align 8
  %81 = icmp ne %struct.sc27xx_adc_data* %80, null
  br i1 %81, label %87, label %82

82:                                               ; preds = %73
  %83 = load %struct.device*, %struct.device** %4, align 8
  %84 = call i32 @dev_err(%struct.device* %83, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.4, i64 0, i64 0))
  %85 = load i32, i32* @ENXIO, align 4
  %86 = sub nsw i32 0, %85
  store i32 %86, i32* %2, align 4
  br label %154

87:                                               ; preds = %73
  %88 = load %struct.device*, %struct.device** %4, align 8
  %89 = load i32, i32* @sc27xx_adc_free_hwlock, align 4
  %90 = load %struct.sc27xx_adc_data*, %struct.sc27xx_adc_data** %6, align 8
  %91 = getelementptr inbounds %struct.sc27xx_adc_data, %struct.sc27xx_adc_data* %90, i32 0, i32 2
  %92 = load %struct.sc27xx_adc_data*, %struct.sc27xx_adc_data** %91, align 8
  %93 = call i32 @devm_add_action_or_reset(%struct.device* %88, i32 %89, %struct.sc27xx_adc_data* %92)
  store i32 %93, i32* %8, align 4
  %94 = load i32, i32* %8, align 4
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %96, label %100

96:                                               ; preds = %87
  %97 = load %struct.device*, %struct.device** %4, align 8
  %98 = call i32 @dev_err(%struct.device* %97, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.5, i64 0, i64 0))
  %99 = load i32, i32* %8, align 4
  store i32 %99, i32* %2, align 4
  br label %154

100:                                              ; preds = %87
  %101 = load %struct.device*, %struct.device** %4, align 8
  %102 = load %struct.sc27xx_adc_data*, %struct.sc27xx_adc_data** %6, align 8
  %103 = getelementptr inbounds %struct.sc27xx_adc_data, %struct.sc27xx_adc_data* %102, i32 0, i32 1
  store %struct.device* %101, %struct.device** %103, align 8
  %104 = load %struct.sc27xx_adc_data*, %struct.sc27xx_adc_data** %6, align 8
  %105 = call i32 @sc27xx_adc_enable(%struct.sc27xx_adc_data* %104)
  store i32 %105, i32* %8, align 4
  %106 = load i32, i32* %8, align 4
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %108, label %112

108:                                              ; preds = %100
  %109 = load %struct.device*, %struct.device** %4, align 8
  %110 = call i32 @dev_err(%struct.device* %109, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.6, i64 0, i64 0))
  %111 = load i32, i32* %8, align 4
  store i32 %111, i32* %2, align 4
  br label %154

112:                                              ; preds = %100
  %113 = load %struct.device*, %struct.device** %4, align 8
  %114 = load i32, i32* @sc27xx_adc_disable, align 4
  %115 = load %struct.sc27xx_adc_data*, %struct.sc27xx_adc_data** %6, align 8
  %116 = call i32 @devm_add_action_or_reset(%struct.device* %113, i32 %114, %struct.sc27xx_adc_data* %115)
  store i32 %116, i32* %8, align 4
  %117 = load i32, i32* %8, align 4
  %118 = icmp ne i32 %117, 0
  br i1 %118, label %119, label %123

119:                                              ; preds = %112
  %120 = load %struct.device*, %struct.device** %4, align 8
  %121 = call i32 @dev_err(%struct.device* %120, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.7, i64 0, i64 0))
  %122 = load i32, i32* %8, align 4
  store i32 %122, i32* %2, align 4
  br label %154

123:                                              ; preds = %112
  %124 = load %struct.device*, %struct.device** %4, align 8
  %125 = load %struct.iio_dev*, %struct.iio_dev** %7, align 8
  %126 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %125, i32 0, i32 5
  %127 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %126, i32 0, i32 0
  store %struct.device* %124, %struct.device** %127, align 8
  %128 = load %struct.device*, %struct.device** %4, align 8
  %129 = call i32 @dev_name(%struct.device* %128)
  %130 = load %struct.iio_dev*, %struct.iio_dev** %7, align 8
  %131 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %130, i32 0, i32 4
  store i32 %129, i32* %131, align 4
  %132 = load i32, i32* @INDIO_DIRECT_MODE, align 4
  %133 = load %struct.iio_dev*, %struct.iio_dev** %7, align 8
  %134 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %133, i32 0, i32 3
  store i32 %132, i32* %134, align 8
  %135 = load %struct.iio_dev*, %struct.iio_dev** %7, align 8
  %136 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %135, i32 0, i32 2
  store i32* @sc27xx_info, i32** %136, align 8
  %137 = load i32, i32* @sc27xx_channels, align 4
  %138 = load %struct.iio_dev*, %struct.iio_dev** %7, align 8
  %139 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %138, i32 0, i32 1
  store i32 %137, i32* %139, align 4
  %140 = load i32, i32* @sc27xx_channels, align 4
  %141 = call i32 @ARRAY_SIZE(i32 %140)
  %142 = load %struct.iio_dev*, %struct.iio_dev** %7, align 8
  %143 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %142, i32 0, i32 0
  store i32 %141, i32* %143, align 8
  %144 = load %struct.device*, %struct.device** %4, align 8
  %145 = load %struct.iio_dev*, %struct.iio_dev** %7, align 8
  %146 = call i32 @devm_iio_device_register(%struct.device* %144, %struct.iio_dev* %145)
  store i32 %146, i32* %8, align 4
  %147 = load i32, i32* %8, align 4
  %148 = icmp ne i32 %147, 0
  br i1 %148, label %149, label %152

149:                                              ; preds = %123
  %150 = load %struct.device*, %struct.device** %4, align 8
  %151 = call i32 @dev_err(%struct.device* %150, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.8, i64 0, i64 0))
  br label %152

152:                                              ; preds = %149, %123
  %153 = load i32, i32* %8, align 4
  store i32 %153, i32* %2, align 4
  br label %154

154:                                              ; preds = %152, %119, %108, %96, %82, %69, %59, %46, %34, %18
  %155 = load i32, i32* %2, align 4
  ret i32 %155
}

declare dso_local %struct.iio_dev* @devm_iio_device_alloc(%struct.device*, i32) #1

declare dso_local %struct.sc27xx_adc_data* @iio_priv(%struct.iio_dev*) #1

declare dso_local i32 @dev_get_regmap(i32, i32*) #1

declare dso_local i32 @dev_err(%struct.device*, i8*) #1

declare dso_local i32 @of_property_read_u32(%struct.device_node*, i8*, i32*) #1

declare dso_local i64 @platform_get_irq(%struct.platform_device*, i32) #1

declare dso_local i32 @of_hwspin_lock_get_id(%struct.device_node*, i32) #1

declare dso_local %struct.sc27xx_adc_data* @hwspin_lock_request_specific(i32) #1

declare dso_local i32 @devm_add_action_or_reset(%struct.device*, i32, %struct.sc27xx_adc_data*) #1

declare dso_local i32 @sc27xx_adc_enable(%struct.sc27xx_adc_data*) #1

declare dso_local i32 @dev_name(%struct.device*) #1

declare dso_local i32 @ARRAY_SIZE(i32) #1

declare dso_local i32 @devm_iio_device_register(%struct.device*, %struct.iio_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
