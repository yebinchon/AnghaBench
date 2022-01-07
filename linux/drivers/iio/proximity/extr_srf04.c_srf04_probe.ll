; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/proximity/extr_srf04.c_srf04_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/proximity/extr_srf04.c_srf04_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.device, i32 }
%struct.device = type { i32 }
%struct.srf04_data = type { i64, %struct.device*, i8*, i8*, i32, i32, i32, i32 }
%struct.iio_dev = type { i8*, i32, i32, i32, i32*, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { %struct.device* }
%struct.TYPE_4__ = type { i32 }

@.str = private unnamed_addr constant [31 x i8] c"failed to allocate IIO device\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@of_srf04_match = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [5 x i8] c"trig\00", align 1
@GPIOD_OUT_LOW = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [35 x i8] c"failed to get trig-gpios: err=%ld\0A\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"echo\00", align 1
@GPIOD_IN = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [35 x i8] c"failed to get echo-gpios: err=%ld\0A\00", align 1
@.str.5 = private unnamed_addr constant [30 x i8] c"cansleep-GPIOs not supported\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [18 x i8] c"gpiod_to_irq: %d\0A\00", align 1
@srf04_handle_irq = common dso_local global i32 0, align 4
@IRQF_TRIGGER_RISING = common dso_local global i32 0, align 4
@IRQF_TRIGGER_FALLING = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [17 x i8] c"request_irq: %d\0A\00", align 1
@.str.8 = private unnamed_addr constant [6 x i8] c"srf04\00", align 1
@srf04_iio_info = common dso_local global i32 0, align 4
@INDIO_DIRECT_MODE = common dso_local global i32 0, align 4
@srf04_chan_spec = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @srf04_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @srf04_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.srf04_data*, align 8
  %6 = alloca %struct.iio_dev*, align 8
  %7 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %8 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %9 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %8, i32 0, i32 0
  store %struct.device* %9, %struct.device** %4, align 8
  %10 = load %struct.device*, %struct.device** %4, align 8
  %11 = call %struct.iio_dev* @devm_iio_device_alloc(%struct.device* %10, i32 48)
  store %struct.iio_dev* %11, %struct.iio_dev** %6, align 8
  %12 = load %struct.iio_dev*, %struct.iio_dev** %6, align 8
  %13 = icmp ne %struct.iio_dev* %12, null
  br i1 %13, label %19, label %14

14:                                               ; preds = %1
  %15 = load %struct.device*, %struct.device** %4, align 8
  %16 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %15, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  %17 = load i32, i32* @ENOMEM, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %2, align 4
  br label %170

19:                                               ; preds = %1
  %20 = load %struct.iio_dev*, %struct.iio_dev** %6, align 8
  %21 = call %struct.srf04_data* @iio_priv(%struct.iio_dev* %20)
  store %struct.srf04_data* %21, %struct.srf04_data** %5, align 8
  %22 = load %struct.device*, %struct.device** %4, align 8
  %23 = load %struct.srf04_data*, %struct.srf04_data** %5, align 8
  %24 = getelementptr inbounds %struct.srf04_data, %struct.srf04_data* %23, i32 0, i32 1
  store %struct.device* %22, %struct.device** %24, align 8
  %25 = load i32, i32* @of_srf04_match, align 4
  %26 = load %struct.device*, %struct.device** %4, align 8
  %27 = call %struct.TYPE_4__* @of_match_device(i32 %25, %struct.device* %26)
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.srf04_data*, %struct.srf04_data** %5, align 8
  %31 = getelementptr inbounds %struct.srf04_data, %struct.srf04_data* %30, i32 0, i32 7
  store i32 %29, i32* %31, align 4
  %32 = load %struct.srf04_data*, %struct.srf04_data** %5, align 8
  %33 = getelementptr inbounds %struct.srf04_data, %struct.srf04_data* %32, i32 0, i32 6
  %34 = call i32 @mutex_init(i32* %33)
  %35 = load %struct.srf04_data*, %struct.srf04_data** %5, align 8
  %36 = getelementptr inbounds %struct.srf04_data, %struct.srf04_data* %35, i32 0, i32 5
  %37 = call i32 @init_completion(i32* %36)
  %38 = load %struct.srf04_data*, %struct.srf04_data** %5, align 8
  %39 = getelementptr inbounds %struct.srf04_data, %struct.srf04_data* %38, i32 0, i32 4
  %40 = call i32 @init_completion(i32* %39)
  %41 = load %struct.device*, %struct.device** %4, align 8
  %42 = load i32, i32* @GPIOD_OUT_LOW, align 4
  %43 = call i8* @devm_gpiod_get(%struct.device* %41, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i32 %42)
  %44 = load %struct.srf04_data*, %struct.srf04_data** %5, align 8
  %45 = getelementptr inbounds %struct.srf04_data, %struct.srf04_data* %44, i32 0, i32 3
  store i8* %43, i8** %45, align 8
  %46 = load %struct.srf04_data*, %struct.srf04_data** %5, align 8
  %47 = getelementptr inbounds %struct.srf04_data, %struct.srf04_data* %46, i32 0, i32 3
  %48 = load i8*, i8** %47, align 8
  %49 = call i64 @IS_ERR(i8* %48)
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %62

51:                                               ; preds = %19
  %52 = load %struct.device*, %struct.device** %4, align 8
  %53 = load %struct.srf04_data*, %struct.srf04_data** %5, align 8
  %54 = getelementptr inbounds %struct.srf04_data, %struct.srf04_data* %53, i32 0, i32 3
  %55 = load i8*, i8** %54, align 8
  %56 = call i32 @PTR_ERR(i8* %55)
  %57 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %52, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.2, i64 0, i64 0), i32 %56)
  %58 = load %struct.srf04_data*, %struct.srf04_data** %5, align 8
  %59 = getelementptr inbounds %struct.srf04_data, %struct.srf04_data* %58, i32 0, i32 3
  %60 = load i8*, i8** %59, align 8
  %61 = call i32 @PTR_ERR(i8* %60)
  store i32 %61, i32* %2, align 4
  br label %170

62:                                               ; preds = %19
  %63 = load %struct.device*, %struct.device** %4, align 8
  %64 = load i32, i32* @GPIOD_IN, align 4
  %65 = call i8* @devm_gpiod_get(%struct.device* %63, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0), i32 %64)
  %66 = load %struct.srf04_data*, %struct.srf04_data** %5, align 8
  %67 = getelementptr inbounds %struct.srf04_data, %struct.srf04_data* %66, i32 0, i32 2
  store i8* %65, i8** %67, align 8
  %68 = load %struct.srf04_data*, %struct.srf04_data** %5, align 8
  %69 = getelementptr inbounds %struct.srf04_data, %struct.srf04_data* %68, i32 0, i32 2
  %70 = load i8*, i8** %69, align 8
  %71 = call i64 @IS_ERR(i8* %70)
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %73, label %84

73:                                               ; preds = %62
  %74 = load %struct.device*, %struct.device** %4, align 8
  %75 = load %struct.srf04_data*, %struct.srf04_data** %5, align 8
  %76 = getelementptr inbounds %struct.srf04_data, %struct.srf04_data* %75, i32 0, i32 2
  %77 = load i8*, i8** %76, align 8
  %78 = call i32 @PTR_ERR(i8* %77)
  %79 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %74, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.4, i64 0, i64 0), i32 %78)
  %80 = load %struct.srf04_data*, %struct.srf04_data** %5, align 8
  %81 = getelementptr inbounds %struct.srf04_data, %struct.srf04_data* %80, i32 0, i32 2
  %82 = load i8*, i8** %81, align 8
  %83 = call i32 @PTR_ERR(i8* %82)
  store i32 %83, i32* %2, align 4
  br label %170

84:                                               ; preds = %62
  %85 = load %struct.srf04_data*, %struct.srf04_data** %5, align 8
  %86 = getelementptr inbounds %struct.srf04_data, %struct.srf04_data* %85, i32 0, i32 2
  %87 = load i8*, i8** %86, align 8
  %88 = call i64 @gpiod_cansleep(i8* %87)
  %89 = icmp ne i64 %88, 0
  br i1 %89, label %90, label %97

90:                                               ; preds = %84
  %91 = load %struct.srf04_data*, %struct.srf04_data** %5, align 8
  %92 = getelementptr inbounds %struct.srf04_data, %struct.srf04_data* %91, i32 0, i32 1
  %93 = load %struct.device*, %struct.device** %92, align 8
  %94 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %93, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.5, i64 0, i64 0))
  %95 = load i32, i32* @ENODEV, align 4
  %96 = sub nsw i32 0, %95
  store i32 %96, i32* %2, align 4
  br label %170

97:                                               ; preds = %84
  %98 = load %struct.srf04_data*, %struct.srf04_data** %5, align 8
  %99 = getelementptr inbounds %struct.srf04_data, %struct.srf04_data* %98, i32 0, i32 2
  %100 = load i8*, i8** %99, align 8
  %101 = call i64 @gpiod_to_irq(i8* %100)
  %102 = load %struct.srf04_data*, %struct.srf04_data** %5, align 8
  %103 = getelementptr inbounds %struct.srf04_data, %struct.srf04_data* %102, i32 0, i32 0
  store i64 %101, i64* %103, align 8
  %104 = load %struct.srf04_data*, %struct.srf04_data** %5, align 8
  %105 = getelementptr inbounds %struct.srf04_data, %struct.srf04_data* %104, i32 0, i32 0
  %106 = load i64, i64* %105, align 8
  %107 = icmp slt i64 %106, 0
  br i1 %107, label %108, label %120

108:                                              ; preds = %97
  %109 = load %struct.srf04_data*, %struct.srf04_data** %5, align 8
  %110 = getelementptr inbounds %struct.srf04_data, %struct.srf04_data* %109, i32 0, i32 1
  %111 = load %struct.device*, %struct.device** %110, align 8
  %112 = load %struct.srf04_data*, %struct.srf04_data** %5, align 8
  %113 = getelementptr inbounds %struct.srf04_data, %struct.srf04_data* %112, i32 0, i32 0
  %114 = load i64, i64* %113, align 8
  %115 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %111, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.6, i64 0, i64 0), i64 %114)
  %116 = load %struct.srf04_data*, %struct.srf04_data** %5, align 8
  %117 = getelementptr inbounds %struct.srf04_data, %struct.srf04_data* %116, i32 0, i32 0
  %118 = load i64, i64* %117, align 8
  %119 = trunc i64 %118 to i32
  store i32 %119, i32* %2, align 4
  br label %170

120:                                              ; preds = %97
  %121 = load %struct.device*, %struct.device** %4, align 8
  %122 = load %struct.srf04_data*, %struct.srf04_data** %5, align 8
  %123 = getelementptr inbounds %struct.srf04_data, %struct.srf04_data* %122, i32 0, i32 0
  %124 = load i64, i64* %123, align 8
  %125 = trunc i64 %124 to i32
  %126 = load i32, i32* @srf04_handle_irq, align 4
  %127 = load i32, i32* @IRQF_TRIGGER_RISING, align 4
  %128 = load i32, i32* @IRQF_TRIGGER_FALLING, align 4
  %129 = or i32 %127, %128
  %130 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %131 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %130, i32 0, i32 1
  %132 = load i32, i32* %131, align 4
  %133 = load %struct.iio_dev*, %struct.iio_dev** %6, align 8
  %134 = call i32 @devm_request_irq(%struct.device* %121, i32 %125, i32 %126, i32 %129, i32 %132, %struct.iio_dev* %133)
  store i32 %134, i32* %7, align 4
  %135 = load i32, i32* %7, align 4
  %136 = icmp slt i32 %135, 0
  br i1 %136, label %137, label %144

137:                                              ; preds = %120
  %138 = load %struct.srf04_data*, %struct.srf04_data** %5, align 8
  %139 = getelementptr inbounds %struct.srf04_data, %struct.srf04_data* %138, i32 0, i32 1
  %140 = load %struct.device*, %struct.device** %139, align 8
  %141 = load i32, i32* %7, align 4
  %142 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %140, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.7, i64 0, i64 0), i32 %141)
  %143 = load i32, i32* %7, align 4
  store i32 %143, i32* %2, align 4
  br label %170

144:                                              ; preds = %120
  %145 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %146 = load %struct.iio_dev*, %struct.iio_dev** %6, align 8
  %147 = call i32 @platform_set_drvdata(%struct.platform_device* %145, %struct.iio_dev* %146)
  %148 = load %struct.iio_dev*, %struct.iio_dev** %6, align 8
  %149 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %148, i32 0, i32 0
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.8, i64 0, i64 0), i8** %149, align 8
  %150 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %151 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %150, i32 0, i32 0
  %152 = load %struct.iio_dev*, %struct.iio_dev** %6, align 8
  %153 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %152, i32 0, i32 5
  %154 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %153, i32 0, i32 0
  store %struct.device* %151, %struct.device** %154, align 8
  %155 = load %struct.iio_dev*, %struct.iio_dev** %6, align 8
  %156 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %155, i32 0, i32 4
  store i32* @srf04_iio_info, i32** %156, align 8
  %157 = load i32, i32* @INDIO_DIRECT_MODE, align 4
  %158 = load %struct.iio_dev*, %struct.iio_dev** %6, align 8
  %159 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %158, i32 0, i32 3
  store i32 %157, i32* %159, align 8
  %160 = load i32, i32* @srf04_chan_spec, align 4
  %161 = load %struct.iio_dev*, %struct.iio_dev** %6, align 8
  %162 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %161, i32 0, i32 2
  store i32 %160, i32* %162, align 4
  %163 = load i32, i32* @srf04_chan_spec, align 4
  %164 = call i32 @ARRAY_SIZE(i32 %163)
  %165 = load %struct.iio_dev*, %struct.iio_dev** %6, align 8
  %166 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %165, i32 0, i32 1
  store i32 %164, i32* %166, align 8
  %167 = load %struct.device*, %struct.device** %4, align 8
  %168 = load %struct.iio_dev*, %struct.iio_dev** %6, align 8
  %169 = call i32 @devm_iio_device_register(%struct.device* %167, %struct.iio_dev* %168)
  store i32 %169, i32* %2, align 4
  br label %170

170:                                              ; preds = %144, %137, %108, %90, %73, %51, %14
  %171 = load i32, i32* %2, align 4
  ret i32 %171
}

declare dso_local %struct.iio_dev* @devm_iio_device_alloc(%struct.device*, i32) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, ...) #1

declare dso_local %struct.srf04_data* @iio_priv(%struct.iio_dev*) #1

declare dso_local %struct.TYPE_4__* @of_match_device(i32, %struct.device*) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @init_completion(i32*) #1

declare dso_local i8* @devm_gpiod_get(%struct.device*, i8*, i32) #1

declare dso_local i64 @IS_ERR(i8*) #1

declare dso_local i32 @PTR_ERR(i8*) #1

declare dso_local i64 @gpiod_cansleep(i8*) #1

declare dso_local i64 @gpiod_to_irq(i8*) #1

declare dso_local i32 @devm_request_irq(%struct.device*, i32, i32, i32, i32, %struct.iio_dev*) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.iio_dev*) #1

declare dso_local i32 @ARRAY_SIZE(i32) #1

declare dso_local i32 @devm_iio_device_register(%struct.device*, %struct.iio_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
