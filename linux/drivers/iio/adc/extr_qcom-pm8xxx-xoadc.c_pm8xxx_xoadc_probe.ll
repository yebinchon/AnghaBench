; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/adc/extr_qcom-pm8xxx-xoadc.c_pm8xxx_xoadc_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/adc/extr_qcom-pm8xxx-xoadc.c_pm8xxx_xoadc_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.device }
%struct.device = type { i32, %struct.device_node* }
%struct.device_node = type { i32 }
%struct.xoadc_variant = type { i32 }
%struct.pm8xxx_xoadc = type { i32, i32, i32, %struct.regmap*, i32, i32, %struct.xoadc_variant*, %struct.device* }
%struct.regmap = type { i32 }
%struct.iio_dev = type { i32, i32, i32*, i32, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.device_node*, %struct.device* }

@ENODEV = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"parent regmap unavailable.\0A\00", align 1
@ENXIO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [10 x i8] c"xoadc-ref\00", align 1
@.str.2 = private unnamed_addr constant [36 x i8] c"failed to get XOADC VREF regulator\0A\00", align 1
@.str.3 = private unnamed_addr constant [39 x i8] c"failed to enable XOADC VREF regulator\0A\00", align 1
@pm8xxx_eoc_irq = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [23 x i8] c"unable to request IRQ\0A\00", align 1
@INDIO_DIRECT_MODE = common dso_local global i32 0, align 4
@pm8xxx_xoadc_info = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [25 x i8] c"%s XOADC driver enabled\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @pm8xxx_xoadc_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pm8xxx_xoadc_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.xoadc_variant*, align 8
  %5 = alloca %struct.pm8xxx_xoadc*, align 8
  %6 = alloca %struct.iio_dev*, align 8
  %7 = alloca %struct.device_node*, align 8
  %8 = alloca %struct.regmap*, align 8
  %9 = alloca %struct.device*, align 8
  %10 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %11 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %12 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.device, %struct.device* %12, i32 0, i32 1
  %14 = load %struct.device_node*, %struct.device_node** %13, align 8
  store %struct.device_node* %14, %struct.device_node** %7, align 8
  %15 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %16 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %15, i32 0, i32 0
  store %struct.device* %16, %struct.device** %9, align 8
  %17 = load %struct.device*, %struct.device** %9, align 8
  %18 = call %struct.xoadc_variant* @of_device_get_match_data(%struct.device* %17)
  store %struct.xoadc_variant* %18, %struct.xoadc_variant** %4, align 8
  %19 = load %struct.xoadc_variant*, %struct.xoadc_variant** %4, align 8
  %20 = icmp ne %struct.xoadc_variant* %19, null
  br i1 %20, label %24, label %21

21:                                               ; preds = %1
  %22 = load i32, i32* @ENODEV, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %2, align 4
  br label %170

24:                                               ; preds = %1
  %25 = load %struct.device*, %struct.device** %9, align 8
  %26 = call %struct.iio_dev* @devm_iio_device_alloc(%struct.device* %25, i32 48)
  store %struct.iio_dev* %26, %struct.iio_dev** %6, align 8
  %27 = load %struct.iio_dev*, %struct.iio_dev** %6, align 8
  %28 = icmp ne %struct.iio_dev* %27, null
  br i1 %28, label %32, label %29

29:                                               ; preds = %24
  %30 = load i32, i32* @ENOMEM, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %2, align 4
  br label %170

32:                                               ; preds = %24
  %33 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %34 = load %struct.iio_dev*, %struct.iio_dev** %6, align 8
  %35 = call i32 @platform_set_drvdata(%struct.platform_device* %33, %struct.iio_dev* %34)
  %36 = load %struct.iio_dev*, %struct.iio_dev** %6, align 8
  %37 = call %struct.pm8xxx_xoadc* @iio_priv(%struct.iio_dev* %36)
  store %struct.pm8xxx_xoadc* %37, %struct.pm8xxx_xoadc** %5, align 8
  %38 = load %struct.device*, %struct.device** %9, align 8
  %39 = load %struct.pm8xxx_xoadc*, %struct.pm8xxx_xoadc** %5, align 8
  %40 = getelementptr inbounds %struct.pm8xxx_xoadc, %struct.pm8xxx_xoadc* %39, i32 0, i32 7
  store %struct.device* %38, %struct.device** %40, align 8
  %41 = load %struct.xoadc_variant*, %struct.xoadc_variant** %4, align 8
  %42 = load %struct.pm8xxx_xoadc*, %struct.pm8xxx_xoadc** %5, align 8
  %43 = getelementptr inbounds %struct.pm8xxx_xoadc, %struct.pm8xxx_xoadc* %42, i32 0, i32 6
  store %struct.xoadc_variant* %41, %struct.xoadc_variant** %43, align 8
  %44 = load %struct.pm8xxx_xoadc*, %struct.pm8xxx_xoadc** %5, align 8
  %45 = getelementptr inbounds %struct.pm8xxx_xoadc, %struct.pm8xxx_xoadc* %44, i32 0, i32 5
  %46 = call i32 @init_completion(i32* %45)
  %47 = load %struct.pm8xxx_xoadc*, %struct.pm8xxx_xoadc** %5, align 8
  %48 = getelementptr inbounds %struct.pm8xxx_xoadc, %struct.pm8xxx_xoadc* %47, i32 0, i32 4
  %49 = call i32 @mutex_init(i32* %48)
  %50 = load %struct.pm8xxx_xoadc*, %struct.pm8xxx_xoadc** %5, align 8
  %51 = load %struct.device_node*, %struct.device_node** %7, align 8
  %52 = call i32 @pm8xxx_xoadc_parse_channels(%struct.pm8xxx_xoadc* %50, %struct.device_node* %51)
  store i32 %52, i32* %10, align 4
  %53 = load i32, i32* %10, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %57

55:                                               ; preds = %32
  %56 = load i32, i32* %10, align 4
  store i32 %56, i32* %2, align 4
  br label %170

57:                                               ; preds = %32
  %58 = load %struct.device*, %struct.device** %9, align 8
  %59 = getelementptr inbounds %struct.device, %struct.device* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = call %struct.regmap* @dev_get_regmap(i32 %60, i32* null)
  store %struct.regmap* %61, %struct.regmap** %8, align 8
  %62 = load %struct.regmap*, %struct.regmap** %8, align 8
  %63 = icmp ne %struct.regmap* %62, null
  br i1 %63, label %69, label %64

64:                                               ; preds = %57
  %65 = load %struct.device*, %struct.device** %9, align 8
  %66 = call i32 @dev_err(%struct.device* %65, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  %67 = load i32, i32* @ENXIO, align 4
  %68 = sub nsw i32 0, %67
  store i32 %68, i32* %2, align 4
  br label %170

69:                                               ; preds = %57
  %70 = load %struct.regmap*, %struct.regmap** %8, align 8
  %71 = load %struct.pm8xxx_xoadc*, %struct.pm8xxx_xoadc** %5, align 8
  %72 = getelementptr inbounds %struct.pm8xxx_xoadc, %struct.pm8xxx_xoadc* %71, i32 0, i32 3
  store %struct.regmap* %70, %struct.regmap** %72, align 8
  %73 = load %struct.device*, %struct.device** %9, align 8
  %74 = call i32 @devm_regulator_get(%struct.device* %73, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0))
  %75 = load %struct.pm8xxx_xoadc*, %struct.pm8xxx_xoadc** %5, align 8
  %76 = getelementptr inbounds %struct.pm8xxx_xoadc, %struct.pm8xxx_xoadc* %75, i32 0, i32 0
  store i32 %74, i32* %76, align 8
  %77 = load %struct.pm8xxx_xoadc*, %struct.pm8xxx_xoadc** %5, align 8
  %78 = getelementptr inbounds %struct.pm8xxx_xoadc, %struct.pm8xxx_xoadc* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 8
  %80 = call i64 @IS_ERR(i32 %79)
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %82, label %89

82:                                               ; preds = %69
  %83 = load %struct.device*, %struct.device** %9, align 8
  %84 = call i32 @dev_err(%struct.device* %83, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.2, i64 0, i64 0))
  %85 = load %struct.pm8xxx_xoadc*, %struct.pm8xxx_xoadc** %5, align 8
  %86 = getelementptr inbounds %struct.pm8xxx_xoadc, %struct.pm8xxx_xoadc* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 8
  %88 = call i32 @PTR_ERR(i32 %87)
  store i32 %88, i32* %2, align 4
  br label %170

89:                                               ; preds = %69
  %90 = load %struct.pm8xxx_xoadc*, %struct.pm8xxx_xoadc** %5, align 8
  %91 = getelementptr inbounds %struct.pm8xxx_xoadc, %struct.pm8xxx_xoadc* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 8
  %93 = call i32 @regulator_enable(i32 %92)
  store i32 %93, i32* %10, align 4
  %94 = load i32, i32* %10, align 4
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %96, label %100

96:                                               ; preds = %89
  %97 = load %struct.device*, %struct.device** %9, align 8
  %98 = call i32 @dev_err(%struct.device* %97, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.3, i64 0, i64 0))
  %99 = load i32, i32* %10, align 4
  store i32 %99, i32* %2, align 4
  br label %170

100:                                              ; preds = %89
  %101 = load %struct.device*, %struct.device** %9, align 8
  %102 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %103 = call i32 @platform_get_irq(%struct.platform_device* %102, i32 0)
  %104 = load i32, i32* @pm8xxx_eoc_irq, align 4
  %105 = load %struct.xoadc_variant*, %struct.xoadc_variant** %4, align 8
  %106 = getelementptr inbounds %struct.xoadc_variant, %struct.xoadc_variant* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 4
  %108 = load %struct.iio_dev*, %struct.iio_dev** %6, align 8
  %109 = call i32 @devm_request_threaded_irq(%struct.device* %101, i32 %103, i32 %104, i32* null, i32 0, i32 %107, %struct.iio_dev* %108)
  store i32 %109, i32* %10, align 4
  %110 = load i32, i32* %10, align 4
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %112, label %115

112:                                              ; preds = %100
  %113 = load %struct.device*, %struct.device** %9, align 8
  %114 = call i32 @dev_err(%struct.device* %113, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.4, i64 0, i64 0))
  br label %164

115:                                              ; preds = %100
  %116 = load %struct.device*, %struct.device** %9, align 8
  %117 = load %struct.iio_dev*, %struct.iio_dev** %6, align 8
  %118 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %117, i32 0, i32 5
  %119 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %118, i32 0, i32 1
  store %struct.device* %116, %struct.device** %119, align 8
  %120 = load %struct.device_node*, %struct.device_node** %7, align 8
  %121 = load %struct.iio_dev*, %struct.iio_dev** %6, align 8
  %122 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %121, i32 0, i32 5
  %123 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %122, i32 0, i32 0
  store %struct.device_node* %120, %struct.device_node** %123, align 8
  %124 = load %struct.xoadc_variant*, %struct.xoadc_variant** %4, align 8
  %125 = getelementptr inbounds %struct.xoadc_variant, %struct.xoadc_variant* %124, i32 0, i32 0
  %126 = load i32, i32* %125, align 4
  %127 = load %struct.iio_dev*, %struct.iio_dev** %6, align 8
  %128 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %127, i32 0, i32 4
  store i32 %126, i32* %128, align 4
  %129 = load i32, i32* @INDIO_DIRECT_MODE, align 4
  %130 = load %struct.iio_dev*, %struct.iio_dev** %6, align 8
  %131 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %130, i32 0, i32 3
  store i32 %129, i32* %131, align 8
  %132 = load %struct.iio_dev*, %struct.iio_dev** %6, align 8
  %133 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %132, i32 0, i32 2
  store i32* @pm8xxx_xoadc_info, i32** %133, align 8
  %134 = load %struct.pm8xxx_xoadc*, %struct.pm8xxx_xoadc** %5, align 8
  %135 = getelementptr inbounds %struct.pm8xxx_xoadc, %struct.pm8xxx_xoadc* %134, i32 0, i32 2
  %136 = load i32, i32* %135, align 8
  %137 = load %struct.iio_dev*, %struct.iio_dev** %6, align 8
  %138 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %137, i32 0, i32 1
  store i32 %136, i32* %138, align 4
  %139 = load %struct.pm8xxx_xoadc*, %struct.pm8xxx_xoadc** %5, align 8
  %140 = getelementptr inbounds %struct.pm8xxx_xoadc, %struct.pm8xxx_xoadc* %139, i32 0, i32 1
  %141 = load i32, i32* %140, align 4
  %142 = load %struct.iio_dev*, %struct.iio_dev** %6, align 8
  %143 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %142, i32 0, i32 0
  store i32 %141, i32* %143, align 8
  %144 = load %struct.iio_dev*, %struct.iio_dev** %6, align 8
  %145 = call i32 @iio_device_register(%struct.iio_dev* %144)
  store i32 %145, i32* %10, align 4
  %146 = load i32, i32* %10, align 4
  %147 = icmp ne i32 %146, 0
  br i1 %147, label %148, label %149

148:                                              ; preds = %115
  br label %164

149:                                              ; preds = %115
  %150 = load %struct.pm8xxx_xoadc*, %struct.pm8xxx_xoadc** %5, align 8
  %151 = call i32 @pm8xxx_calibrate_device(%struct.pm8xxx_xoadc* %150)
  store i32 %151, i32* %10, align 4
  %152 = load i32, i32* %10, align 4
  %153 = icmp ne i32 %152, 0
  br i1 %153, label %154, label %155

154:                                              ; preds = %149
  br label %161

155:                                              ; preds = %149
  %156 = load %struct.device*, %struct.device** %9, align 8
  %157 = load %struct.xoadc_variant*, %struct.xoadc_variant** %4, align 8
  %158 = getelementptr inbounds %struct.xoadc_variant, %struct.xoadc_variant* %157, i32 0, i32 0
  %159 = load i32, i32* %158, align 4
  %160 = call i32 @dev_info(%struct.device* %156, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.5, i64 0, i64 0), i32 %159)
  store i32 0, i32* %2, align 4
  br label %170

161:                                              ; preds = %154
  %162 = load %struct.iio_dev*, %struct.iio_dev** %6, align 8
  %163 = call i32 @iio_device_unregister(%struct.iio_dev* %162)
  br label %164

164:                                              ; preds = %161, %148, %112
  %165 = load %struct.pm8xxx_xoadc*, %struct.pm8xxx_xoadc** %5, align 8
  %166 = getelementptr inbounds %struct.pm8xxx_xoadc, %struct.pm8xxx_xoadc* %165, i32 0, i32 0
  %167 = load i32, i32* %166, align 8
  %168 = call i32 @regulator_disable(i32 %167)
  %169 = load i32, i32* %10, align 4
  store i32 %169, i32* %2, align 4
  br label %170

170:                                              ; preds = %164, %155, %96, %82, %64, %55, %29, %21
  %171 = load i32, i32* %2, align 4
  ret i32 %171
}

declare dso_local %struct.xoadc_variant* @of_device_get_match_data(%struct.device*) #1

declare dso_local %struct.iio_dev* @devm_iio_device_alloc(%struct.device*, i32) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.iio_dev*) #1

declare dso_local %struct.pm8xxx_xoadc* @iio_priv(%struct.iio_dev*) #1

declare dso_local i32 @init_completion(i32*) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @pm8xxx_xoadc_parse_channels(%struct.pm8xxx_xoadc*, %struct.device_node*) #1

declare dso_local %struct.regmap* @dev_get_regmap(i32, i32*) #1

declare dso_local i32 @dev_err(%struct.device*, i8*) #1

declare dso_local i32 @devm_regulator_get(%struct.device*, i8*) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @PTR_ERR(i32) #1

declare dso_local i32 @regulator_enable(i32) #1

declare dso_local i32 @devm_request_threaded_irq(%struct.device*, i32, i32, i32*, i32, i32, %struct.iio_dev*) #1

declare dso_local i32 @platform_get_irq(%struct.platform_device*, i32) #1

declare dso_local i32 @iio_device_register(%struct.iio_dev*) #1

declare dso_local i32 @pm8xxx_calibrate_device(%struct.pm8xxx_xoadc*) #1

declare dso_local i32 @dev_info(%struct.device*, i8*, i32) #1

declare dso_local i32 @iio_device_unregister(%struct.iio_dev*) #1

declare dso_local i32 @regulator_disable(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
