; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/dac/extr_dpot-dac.c_dpot_dac_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/dac/extr_dpot-dac.c_dpot_dac_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.device }
%struct.device = type { i32 }
%struct.iio_dev = type { i32, i32*, i32, i32*, %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { %struct.device* }
%struct.dpot_dac = type { i32, i32, i32 }

@ENOMEM = common dso_local global i32 0, align 4
@dpot_dac_info = common dso_local global i32 0, align 4
@INDIO_DIRECT_MODE = common dso_local global i32 0, align 4
@dpot_dac_iio_channel = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"vref\00", align 1
@EPROBE_DEFER = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [30 x i8] c"failed to get vref regulator\0A\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"dpot\00", align 1
@.str.3 = private unnamed_addr constant [34 x i8] c"failed to get dpot input channel\0A\00", align 1
@IIO_RESISTANCE = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [27 x i8] c"dpot is of the wrong type\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [37 x i8] c"failed to enable the vref regulator\0A\00", align 1
@.str.6 = private unnamed_addr constant [31 x i8] c"failed to register iio device\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @dpot_dac_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dpot_dac_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.iio_dev*, align 8
  %6 = alloca %struct.dpot_dac*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %9 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %10 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %9, i32 0, i32 0
  store %struct.device* %10, %struct.device** %4, align 8
  %11 = load %struct.device*, %struct.device** %4, align 8
  %12 = call %struct.iio_dev* @devm_iio_device_alloc(%struct.device* %11, i32 12)
  store %struct.iio_dev* %12, %struct.iio_dev** %5, align 8
  %13 = load %struct.iio_dev*, %struct.iio_dev** %5, align 8
  %14 = icmp ne %struct.iio_dev* %13, null
  br i1 %14, label %18, label %15

15:                                               ; preds = %1
  %16 = load i32, i32* @ENOMEM, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %2, align 4
  br label %147

18:                                               ; preds = %1
  %19 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %20 = load %struct.iio_dev*, %struct.iio_dev** %5, align 8
  %21 = call i32 @platform_set_drvdata(%struct.platform_device* %19, %struct.iio_dev* %20)
  %22 = load %struct.iio_dev*, %struct.iio_dev** %5, align 8
  %23 = call %struct.dpot_dac* @iio_priv(%struct.iio_dev* %22)
  store %struct.dpot_dac* %23, %struct.dpot_dac** %6, align 8
  %24 = load %struct.device*, %struct.device** %4, align 8
  %25 = call i32 @dev_name(%struct.device* %24)
  %26 = load %struct.iio_dev*, %struct.iio_dev** %5, align 8
  %27 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %26, i32 0, i32 5
  store i32 %25, i32* %27, align 8
  %28 = load %struct.device*, %struct.device** %4, align 8
  %29 = load %struct.iio_dev*, %struct.iio_dev** %5, align 8
  %30 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %29, i32 0, i32 4
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 0
  store %struct.device* %28, %struct.device** %31, align 8
  %32 = load %struct.iio_dev*, %struct.iio_dev** %5, align 8
  %33 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %32, i32 0, i32 3
  store i32* @dpot_dac_info, i32** %33, align 8
  %34 = load i32, i32* @INDIO_DIRECT_MODE, align 4
  %35 = load %struct.iio_dev*, %struct.iio_dev** %5, align 8
  %36 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %35, i32 0, i32 2
  store i32 %34, i32* %36, align 8
  %37 = load %struct.iio_dev*, %struct.iio_dev** %5, align 8
  %38 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %37, i32 0, i32 1
  store i32* @dpot_dac_iio_channel, i32** %38, align 8
  %39 = load %struct.iio_dev*, %struct.iio_dev** %5, align 8
  %40 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %39, i32 0, i32 0
  store i32 1, i32* %40, align 8
  %41 = load %struct.device*, %struct.device** %4, align 8
  %42 = call i32 @devm_regulator_get(%struct.device* %41, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  %43 = load %struct.dpot_dac*, %struct.dpot_dac** %6, align 8
  %44 = getelementptr inbounds %struct.dpot_dac, %struct.dpot_dac* %43, i32 0, i32 1
  store i32 %42, i32* %44, align 4
  %45 = load %struct.dpot_dac*, %struct.dpot_dac** %6, align 8
  %46 = getelementptr inbounds %struct.dpot_dac, %struct.dpot_dac* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = call i64 @IS_ERR(i32 %47)
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %67

50:                                               ; preds = %18
  %51 = load %struct.dpot_dac*, %struct.dpot_dac** %6, align 8
  %52 = getelementptr inbounds %struct.dpot_dac, %struct.dpot_dac* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  %54 = call i32 @PTR_ERR(i32 %53)
  %55 = load i32, i32* @EPROBE_DEFER, align 4
  %56 = sub nsw i32 0, %55
  %57 = icmp ne i32 %54, %56
  br i1 %57, label %58, label %62

58:                                               ; preds = %50
  %59 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %60 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %59, i32 0, i32 0
  %61 = call i32 @dev_err(%struct.device* %60, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0))
  br label %62

62:                                               ; preds = %58, %50
  %63 = load %struct.dpot_dac*, %struct.dpot_dac** %6, align 8
  %64 = getelementptr inbounds %struct.dpot_dac, %struct.dpot_dac* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 4
  %66 = call i32 @PTR_ERR(i32 %65)
  store i32 %66, i32* %2, align 4
  br label %147

67:                                               ; preds = %18
  %68 = load %struct.device*, %struct.device** %4, align 8
  %69 = call i32 @devm_iio_channel_get(%struct.device* %68, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0))
  %70 = load %struct.dpot_dac*, %struct.dpot_dac** %6, align 8
  %71 = getelementptr inbounds %struct.dpot_dac, %struct.dpot_dac* %70, i32 0, i32 2
  store i32 %69, i32* %71, align 4
  %72 = load %struct.dpot_dac*, %struct.dpot_dac** %6, align 8
  %73 = getelementptr inbounds %struct.dpot_dac, %struct.dpot_dac* %72, i32 0, i32 2
  %74 = load i32, i32* %73, align 4
  %75 = call i64 @IS_ERR(i32 %74)
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %77, label %93

77:                                               ; preds = %67
  %78 = load %struct.dpot_dac*, %struct.dpot_dac** %6, align 8
  %79 = getelementptr inbounds %struct.dpot_dac, %struct.dpot_dac* %78, i32 0, i32 2
  %80 = load i32, i32* %79, align 4
  %81 = call i32 @PTR_ERR(i32 %80)
  %82 = load i32, i32* @EPROBE_DEFER, align 4
  %83 = sub nsw i32 0, %82
  %84 = icmp ne i32 %81, %83
  br i1 %84, label %85, label %88

85:                                               ; preds = %77
  %86 = load %struct.device*, %struct.device** %4, align 8
  %87 = call i32 @dev_err(%struct.device* %86, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.3, i64 0, i64 0))
  br label %88

88:                                               ; preds = %85, %77
  %89 = load %struct.dpot_dac*, %struct.dpot_dac** %6, align 8
  %90 = getelementptr inbounds %struct.dpot_dac, %struct.dpot_dac* %89, i32 0, i32 2
  %91 = load i32, i32* %90, align 4
  %92 = call i32 @PTR_ERR(i32 %91)
  store i32 %92, i32* %2, align 4
  br label %147

93:                                               ; preds = %67
  %94 = load %struct.dpot_dac*, %struct.dpot_dac** %6, align 8
  %95 = getelementptr inbounds %struct.dpot_dac, %struct.dpot_dac* %94, i32 0, i32 2
  %96 = load i32, i32* %95, align 4
  %97 = call i32 @iio_get_channel_type(i32 %96, i32* %7)
  store i32 %97, i32* %8, align 4
  %98 = load i32, i32* %8, align 4
  %99 = icmp slt i32 %98, 0
  br i1 %99, label %100, label %102

100:                                              ; preds = %93
  %101 = load i32, i32* %8, align 4
  store i32 %101, i32* %2, align 4
  br label %147

102:                                              ; preds = %93
  %103 = load i32, i32* %7, align 4
  %104 = load i32, i32* @IIO_RESISTANCE, align 4
  %105 = icmp ne i32 %103, %104
  br i1 %105, label %106, label %111

106:                                              ; preds = %102
  %107 = load %struct.device*, %struct.device** %4, align 8
  %108 = call i32 @dev_err(%struct.device* %107, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.4, i64 0, i64 0))
  %109 = load i32, i32* @EINVAL, align 4
  %110 = sub nsw i32 0, %109
  store i32 %110, i32* %2, align 4
  br label %147

111:                                              ; preds = %102
  %112 = load %struct.iio_dev*, %struct.iio_dev** %5, align 8
  %113 = call i32 @dpot_dac_channel_max_ohms(%struct.iio_dev* %112)
  store i32 %113, i32* %8, align 4
  %114 = load i32, i32* %8, align 4
  %115 = icmp slt i32 %114, 0
  br i1 %115, label %116, label %118

116:                                              ; preds = %111
  %117 = load i32, i32* %8, align 4
  store i32 %117, i32* %2, align 4
  br label %147

118:                                              ; preds = %111
  %119 = load i32, i32* %8, align 4
  %120 = load %struct.dpot_dac*, %struct.dpot_dac** %6, align 8
  %121 = getelementptr inbounds %struct.dpot_dac, %struct.dpot_dac* %120, i32 0, i32 0
  store i32 %119, i32* %121, align 4
  %122 = load %struct.dpot_dac*, %struct.dpot_dac** %6, align 8
  %123 = getelementptr inbounds %struct.dpot_dac, %struct.dpot_dac* %122, i32 0, i32 1
  %124 = load i32, i32* %123, align 4
  %125 = call i32 @regulator_enable(i32 %124)
  store i32 %125, i32* %8, align 4
  %126 = load i32, i32* %8, align 4
  %127 = icmp ne i32 %126, 0
  br i1 %127, label %128, label %132

128:                                              ; preds = %118
  %129 = load %struct.device*, %struct.device** %4, align 8
  %130 = call i32 @dev_err(%struct.device* %129, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.5, i64 0, i64 0))
  %131 = load i32, i32* %8, align 4
  store i32 %131, i32* %2, align 4
  br label %147

132:                                              ; preds = %118
  %133 = load %struct.iio_dev*, %struct.iio_dev** %5, align 8
  %134 = call i32 @iio_device_register(%struct.iio_dev* %133)
  store i32 %134, i32* %8, align 4
  %135 = load i32, i32* %8, align 4
  %136 = icmp ne i32 %135, 0
  br i1 %136, label %137, label %140

137:                                              ; preds = %132
  %138 = load %struct.device*, %struct.device** %4, align 8
  %139 = call i32 @dev_err(%struct.device* %138, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.6, i64 0, i64 0))
  br label %141

140:                                              ; preds = %132
  store i32 0, i32* %2, align 4
  br label %147

141:                                              ; preds = %137
  %142 = load %struct.dpot_dac*, %struct.dpot_dac** %6, align 8
  %143 = getelementptr inbounds %struct.dpot_dac, %struct.dpot_dac* %142, i32 0, i32 1
  %144 = load i32, i32* %143, align 4
  %145 = call i32 @regulator_disable(i32 %144)
  %146 = load i32, i32* %8, align 4
  store i32 %146, i32* %2, align 4
  br label %147

147:                                              ; preds = %141, %140, %128, %116, %106, %100, %88, %62, %15
  %148 = load i32, i32* %2, align 4
  ret i32 %148
}

declare dso_local %struct.iio_dev* @devm_iio_device_alloc(%struct.device*, i32) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.iio_dev*) #1

declare dso_local %struct.dpot_dac* @iio_priv(%struct.iio_dev*) #1

declare dso_local i32 @dev_name(%struct.device*) #1

declare dso_local i32 @devm_regulator_get(%struct.device*, i8*) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @PTR_ERR(i32) #1

declare dso_local i32 @dev_err(%struct.device*, i8*) #1

declare dso_local i32 @devm_iio_channel_get(%struct.device*, i8*) #1

declare dso_local i32 @iio_get_channel_type(i32, i32*) #1

declare dso_local i32 @dpot_dac_channel_max_ohms(%struct.iio_dev*) #1

declare dso_local i32 @regulator_enable(i32) #1

declare dso_local i32 @iio_device_register(%struct.iio_dev*) #1

declare dso_local i32 @regulator_disable(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
