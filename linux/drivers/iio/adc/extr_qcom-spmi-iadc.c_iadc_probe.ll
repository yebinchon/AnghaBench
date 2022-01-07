; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/adc/extr_qcom-spmi-iadc.c_iadc_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/adc/extr_qcom-spmi-iadc.c_iadc_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { i32, %struct.device }
%struct.device = type { i32, %struct.device_node* }
%struct.device_node = type { i32 }
%struct.iio_dev = type { i32, i32, i32*, i32, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.device_node*, %struct.device* }
%struct.iadc_chip = type { i32, %struct.device*, i32*, i32, i32, i32, i32 }

@ENOMEM = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c"reg\00", align 1
@.str.1 = private unnamed_addr constant [37 x i8] c"sense resistors %d and %d micro Ohm\0A\00", align 1
@IADC_INT_RSENSE = common dso_local global i64 0, align 8
@IADC_EXT_RSENSE = common dso_local global i64 0, align 8
@EPROBE_DEFER = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [14 x i8] c"reset failed\0A\00", align 1
@iadc_isr = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [10 x i8] c"spmi-iadc\00", align 1
@.str.4 = private unnamed_addr constant [27 x i8] c"failed offset calibration\0A\00", align 1
@INDIO_DIRECT_MODE = common dso_local global i32 0, align 4
@iadc_info = common dso_local global i32 0, align 4
@iadc_channels = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @iadc_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @iadc_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.device_node*, align 8
  %5 = alloca %struct.device*, align 8
  %6 = alloca %struct.iio_dev*, align 8
  %7 = alloca %struct.iadc_chip*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %11 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %12 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %11, i32 0, i32 1
  %13 = getelementptr inbounds %struct.device, %struct.device* %12, i32 0, i32 1
  %14 = load %struct.device_node*, %struct.device_node** %13, align 8
  store %struct.device_node* %14, %struct.device_node** %4, align 8
  %15 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %16 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %15, i32 0, i32 1
  store %struct.device* %16, %struct.device** %5, align 8
  %17 = load %struct.device*, %struct.device** %5, align 8
  %18 = call %struct.iio_dev* @devm_iio_device_alloc(%struct.device* %17, i32 40)
  store %struct.iio_dev* %18, %struct.iio_dev** %6, align 8
  %19 = load %struct.iio_dev*, %struct.iio_dev** %6, align 8
  %20 = icmp ne %struct.iio_dev* %19, null
  br i1 %20, label %24, label %21

21:                                               ; preds = %1
  %22 = load i32, i32* @ENOMEM, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %2, align 4
  br label %179

24:                                               ; preds = %1
  %25 = load %struct.iio_dev*, %struct.iio_dev** %6, align 8
  %26 = call %struct.iadc_chip* @iio_priv(%struct.iio_dev* %25)
  store %struct.iadc_chip* %26, %struct.iadc_chip** %7, align 8
  %27 = load %struct.device*, %struct.device** %5, align 8
  %28 = load %struct.iadc_chip*, %struct.iadc_chip** %7, align 8
  %29 = getelementptr inbounds %struct.iadc_chip, %struct.iadc_chip* %28, i32 0, i32 1
  store %struct.device* %27, %struct.device** %29, align 8
  %30 = load %struct.device*, %struct.device** %5, align 8
  %31 = getelementptr inbounds %struct.device, %struct.device* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = call i32 @dev_get_regmap(i32 %32, i32* null)
  %34 = load %struct.iadc_chip*, %struct.iadc_chip** %7, align 8
  %35 = getelementptr inbounds %struct.iadc_chip, %struct.iadc_chip* %34, i32 0, i32 6
  store i32 %33, i32* %35, align 4
  %36 = load %struct.iadc_chip*, %struct.iadc_chip** %7, align 8
  %37 = getelementptr inbounds %struct.iadc_chip, %struct.iadc_chip* %36, i32 0, i32 6
  %38 = load i32, i32* %37, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %43, label %40

40:                                               ; preds = %24
  %41 = load i32, i32* @ENODEV, align 4
  %42 = sub nsw i32 0, %41
  store i32 %42, i32* %2, align 4
  br label %179

43:                                               ; preds = %24
  %44 = load %struct.iadc_chip*, %struct.iadc_chip** %7, align 8
  %45 = getelementptr inbounds %struct.iadc_chip, %struct.iadc_chip* %44, i32 0, i32 5
  %46 = call i32 @init_completion(i32* %45)
  %47 = load %struct.iadc_chip*, %struct.iadc_chip** %7, align 8
  %48 = getelementptr inbounds %struct.iadc_chip, %struct.iadc_chip* %47, i32 0, i32 4
  %49 = call i32 @mutex_init(i32* %48)
  %50 = load %struct.device_node*, %struct.device_node** %4, align 8
  %51 = call i32 @of_property_read_u32(%struct.device_node* %50, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32* %10)
  store i32 %51, i32* %8, align 4
  %52 = load i32, i32* %8, align 4
  %53 = icmp slt i32 %52, 0
  br i1 %53, label %54, label %57

54:                                               ; preds = %43
  %55 = load i32, i32* @ENODEV, align 4
  %56 = sub nsw i32 0, %55
  store i32 %56, i32* %2, align 4
  br label %179

57:                                               ; preds = %43
  %58 = load i32, i32* %10, align 4
  %59 = load %struct.iadc_chip*, %struct.iadc_chip** %7, align 8
  %60 = getelementptr inbounds %struct.iadc_chip, %struct.iadc_chip* %59, i32 0, i32 3
  store i32 %58, i32* %60, align 8
  %61 = load %struct.iadc_chip*, %struct.iadc_chip** %7, align 8
  %62 = call i32 @iadc_version_check(%struct.iadc_chip* %61)
  store i32 %62, i32* %8, align 4
  %63 = load i32, i32* %8, align 4
  %64 = icmp slt i32 %63, 0
  br i1 %64, label %65, label %68

65:                                               ; preds = %57
  %66 = load i32, i32* @ENODEV, align 4
  %67 = sub nsw i32 0, %66
  store i32 %67, i32* %2, align 4
  br label %179

68:                                               ; preds = %57
  %69 = load %struct.iadc_chip*, %struct.iadc_chip** %7, align 8
  %70 = load %struct.device_node*, %struct.device_node** %4, align 8
  %71 = call i32 @iadc_rsense_read(%struct.iadc_chip* %69, %struct.device_node* %70)
  store i32 %71, i32* %8, align 4
  %72 = load i32, i32* %8, align 4
  %73 = icmp slt i32 %72, 0
  br i1 %73, label %74, label %77

74:                                               ; preds = %68
  %75 = load i32, i32* @ENODEV, align 4
  %76 = sub nsw i32 0, %75
  store i32 %76, i32* %2, align 4
  br label %179

77:                                               ; preds = %68
  %78 = load %struct.iadc_chip*, %struct.iadc_chip** %7, align 8
  %79 = getelementptr inbounds %struct.iadc_chip, %struct.iadc_chip* %78, i32 0, i32 1
  %80 = load %struct.device*, %struct.device** %79, align 8
  %81 = load %struct.iadc_chip*, %struct.iadc_chip** %7, align 8
  %82 = getelementptr inbounds %struct.iadc_chip, %struct.iadc_chip* %81, i32 0, i32 2
  %83 = load i32*, i32** %82, align 8
  %84 = load i64, i64* @IADC_INT_RSENSE, align 8
  %85 = getelementptr inbounds i32, i32* %83, i64 %84
  %86 = load i32, i32* %85, align 4
  %87 = load %struct.iadc_chip*, %struct.iadc_chip** %7, align 8
  %88 = getelementptr inbounds %struct.iadc_chip, %struct.iadc_chip* %87, i32 0, i32 2
  %89 = load i32*, i32** %88, align 8
  %90 = load i64, i64* @IADC_EXT_RSENSE, align 8
  %91 = getelementptr inbounds i32, i32* %89, i64 %90
  %92 = load i32, i32* %91, align 4
  %93 = call i32 @dev_dbg(%struct.device* %80, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0), i32 %86, i32 %92)
  %94 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %95 = call i32 @platform_get_irq(%struct.platform_device* %94, i32 0)
  store i32 %95, i32* %9, align 4
  %96 = load i32, i32* %9, align 4
  %97 = load i32, i32* @EPROBE_DEFER, align 4
  %98 = sub nsw i32 0, %97
  %99 = icmp eq i32 %96, %98
  br i1 %99, label %100, label %102

100:                                              ; preds = %77
  %101 = load i32, i32* %9, align 4
  store i32 %101, i32* %2, align 4
  br label %179

102:                                              ; preds = %77
  %103 = load i32, i32* %9, align 4
  %104 = icmp slt i32 %103, 0
  br i1 %104, label %105, label %108

105:                                              ; preds = %102
  %106 = load %struct.iadc_chip*, %struct.iadc_chip** %7, align 8
  %107 = getelementptr inbounds %struct.iadc_chip, %struct.iadc_chip* %106, i32 0, i32 0
  store i32 1, i32* %107, align 8
  br label %108

108:                                              ; preds = %105, %102
  %109 = load %struct.iadc_chip*, %struct.iadc_chip** %7, align 8
  %110 = call i32 @iadc_reset(%struct.iadc_chip* %109)
  store i32 %110, i32* %8, align 4
  %111 = load i32, i32* %8, align 4
  %112 = icmp slt i32 %111, 0
  br i1 %112, label %113, label %117

113:                                              ; preds = %108
  %114 = load %struct.device*, %struct.device** %5, align 8
  %115 = call i32 @dev_err(%struct.device* %114, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i64 0, i64 0))
  %116 = load i32, i32* %8, align 4
  store i32 %116, i32* %2, align 4
  br label %179

117:                                              ; preds = %108
  %118 = load %struct.iadc_chip*, %struct.iadc_chip** %7, align 8
  %119 = getelementptr inbounds %struct.iadc_chip, %struct.iadc_chip* %118, i32 0, i32 0
  %120 = load i32, i32* %119, align 8
  %121 = icmp ne i32 %120, 0
  br i1 %121, label %136, label %122

122:                                              ; preds = %117
  %123 = load %struct.device*, %struct.device** %5, align 8
  %124 = load i32, i32* %9, align 4
  %125 = load i32, i32* @iadc_isr, align 4
  %126 = load %struct.iadc_chip*, %struct.iadc_chip** %7, align 8
  %127 = call i32 @devm_request_irq(%struct.device* %123, i32 %124, i32 %125, i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i64 0, i64 0), %struct.iadc_chip* %126)
  store i32 %127, i32* %8, align 4
  %128 = load i32, i32* %8, align 4
  %129 = icmp ne i32 %128, 0
  br i1 %129, label %133, label %130

130:                                              ; preds = %122
  %131 = load i32, i32* %9, align 4
  %132 = call i32 @enable_irq_wake(i32 %131)
  br label %135

133:                                              ; preds = %122
  %134 = load i32, i32* %8, align 4
  store i32 %134, i32* %2, align 4
  br label %179

135:                                              ; preds = %130
  br label %141

136:                                              ; preds = %117
  %137 = load %struct.iadc_chip*, %struct.iadc_chip** %7, align 8
  %138 = getelementptr inbounds %struct.iadc_chip, %struct.iadc_chip* %137, i32 0, i32 1
  %139 = load %struct.device*, %struct.device** %138, align 8
  %140 = call i32 @device_init_wakeup(%struct.device* %139, i32 1)
  br label %141

141:                                              ; preds = %136, %135
  %142 = load %struct.iadc_chip*, %struct.iadc_chip** %7, align 8
  %143 = call i32 @iadc_update_offset(%struct.iadc_chip* %142)
  store i32 %143, i32* %8, align 4
  %144 = load i32, i32* %8, align 4
  %145 = icmp slt i32 %144, 0
  br i1 %145, label %146, label %150

146:                                              ; preds = %141
  %147 = load %struct.device*, %struct.device** %5, align 8
  %148 = call i32 @dev_err(%struct.device* %147, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.4, i64 0, i64 0))
  %149 = load i32, i32* %8, align 4
  store i32 %149, i32* %2, align 4
  br label %179

150:                                              ; preds = %141
  %151 = load %struct.device*, %struct.device** %5, align 8
  %152 = load %struct.iio_dev*, %struct.iio_dev** %6, align 8
  %153 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %152, i32 0, i32 5
  %154 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %153, i32 0, i32 1
  store %struct.device* %151, %struct.device** %154, align 8
  %155 = load %struct.device_node*, %struct.device_node** %4, align 8
  %156 = load %struct.iio_dev*, %struct.iio_dev** %6, align 8
  %157 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %156, i32 0, i32 5
  %158 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %157, i32 0, i32 0
  store %struct.device_node* %155, %struct.device_node** %158, align 8
  %159 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %160 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %159, i32 0, i32 0
  %161 = load i32, i32* %160, align 8
  %162 = load %struct.iio_dev*, %struct.iio_dev** %6, align 8
  %163 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %162, i32 0, i32 4
  store i32 %161, i32* %163, align 4
  %164 = load i32, i32* @INDIO_DIRECT_MODE, align 4
  %165 = load %struct.iio_dev*, %struct.iio_dev** %6, align 8
  %166 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %165, i32 0, i32 3
  store i32 %164, i32* %166, align 8
  %167 = load %struct.iio_dev*, %struct.iio_dev** %6, align 8
  %168 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %167, i32 0, i32 2
  store i32* @iadc_info, i32** %168, align 8
  %169 = load i32, i32* @iadc_channels, align 4
  %170 = load %struct.iio_dev*, %struct.iio_dev** %6, align 8
  %171 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %170, i32 0, i32 1
  store i32 %169, i32* %171, align 4
  %172 = load i32, i32* @iadc_channels, align 4
  %173 = call i32 @ARRAY_SIZE(i32 %172)
  %174 = load %struct.iio_dev*, %struct.iio_dev** %6, align 8
  %175 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %174, i32 0, i32 0
  store i32 %173, i32* %175, align 8
  %176 = load %struct.device*, %struct.device** %5, align 8
  %177 = load %struct.iio_dev*, %struct.iio_dev** %6, align 8
  %178 = call i32 @devm_iio_device_register(%struct.device* %176, %struct.iio_dev* %177)
  store i32 %178, i32* %2, align 4
  br label %179

179:                                              ; preds = %150, %146, %133, %113, %100, %74, %65, %54, %40, %21
  %180 = load i32, i32* %2, align 4
  ret i32 %180
}

declare dso_local %struct.iio_dev* @devm_iio_device_alloc(%struct.device*, i32) #1

declare dso_local %struct.iadc_chip* @iio_priv(%struct.iio_dev*) #1

declare dso_local i32 @dev_get_regmap(i32, i32*) #1

declare dso_local i32 @init_completion(i32*) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @of_property_read_u32(%struct.device_node*, i8*, i32*) #1

declare dso_local i32 @iadc_version_check(%struct.iadc_chip*) #1

declare dso_local i32 @iadc_rsense_read(%struct.iadc_chip*, %struct.device_node*) #1

declare dso_local i32 @dev_dbg(%struct.device*, i8*, i32, i32) #1

declare dso_local i32 @platform_get_irq(%struct.platform_device*, i32) #1

declare dso_local i32 @iadc_reset(%struct.iadc_chip*) #1

declare dso_local i32 @dev_err(%struct.device*, i8*) #1

declare dso_local i32 @devm_request_irq(%struct.device*, i32, i32, i32, i8*, %struct.iadc_chip*) #1

declare dso_local i32 @enable_irq_wake(i32) #1

declare dso_local i32 @device_init_wakeup(%struct.device*, i32) #1

declare dso_local i32 @iadc_update_offset(%struct.iadc_chip*) #1

declare dso_local i32 @ARRAY_SIZE(i32) #1

declare dso_local i32 @devm_iio_device_register(%struct.device*, %struct.iio_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
