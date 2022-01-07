; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/adc/extr_cpcap-adc.c_cpcap_adc_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/adc/extr_cpcap-adc.c_cpcap_adc_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.TYPE_11__ }
%struct.TYPE_11__ = type { i32, i32 }
%struct.of_device_id = type { i64 }
%struct.cpcap_adc = type { i64, i32, i32, %struct.TYPE_11__*, i32, i32, i64 }
%struct.iio_dev = type { i32, i32*, i32, i32, i32, %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i32, %struct.TYPE_11__* }

@cpcap_adc_id_table = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"no configuration data found\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [31 x i8] c"failed to allocate iio device\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@INDIO_DIRECT_MODE = common dso_local global i32 0, align 4
@INDIO_BUFFER_SOFTWARE = common dso_local global i32 0, align 4
@cpcap_adc_channels = common dso_local global i32 0, align 4
@cpcap_adc_info = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [8 x i8] c"adcdone\00", align 1
@cpcap_adc_irq_thread = common dso_local global i32 0, align 4
@IRQF_TRIGGER_NONE = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [10 x i8] c"cpcap-adc\00", align 1
@.str.4 = private unnamed_addr constant [23 x i8] c"could not get irq: %i\0A\00", align 1
@.str.5 = private unnamed_addr constant [25 x i8] c"CPCAP ADC device probed\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @cpcap_adc_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cpcap_adc_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.of_device_id*, align 8
  %5 = alloca %struct.cpcap_adc*, align 8
  %6 = alloca %struct.iio_dev*, align 8
  %7 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %8 = load i32, i32* @cpcap_adc_id_table, align 4
  %9 = call i32 @of_match_ptr(i32 %8)
  %10 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %11 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %10, i32 0, i32 0
  %12 = call %struct.of_device_id* @of_match_device(i32 %9, %struct.TYPE_11__* %11)
  store %struct.of_device_id* %12, %struct.of_device_id** %4, align 8
  %13 = load %struct.of_device_id*, %struct.of_device_id** %4, align 8
  %14 = icmp ne %struct.of_device_id* %13, null
  br i1 %14, label %18, label %15

15:                                               ; preds = %1
  %16 = load i32, i32* @EINVAL, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %2, align 4
  br label %166

18:                                               ; preds = %1
  %19 = load %struct.of_device_id*, %struct.of_device_id** %4, align 8
  %20 = getelementptr inbounds %struct.of_device_id, %struct.of_device_id* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %29, label %23

23:                                               ; preds = %18
  %24 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %25 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %24, i32 0, i32 0
  %26 = call i32 (%struct.TYPE_11__*, i8*, ...) @dev_err(%struct.TYPE_11__* %25, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  %27 = load i32, i32* @ENODEV, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %2, align 4
  br label %166

29:                                               ; preds = %18
  %30 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %31 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %30, i32 0, i32 0
  %32 = call %struct.iio_dev* @devm_iio_device_alloc(%struct.TYPE_11__* %31, i32 40)
  store %struct.iio_dev* %32, %struct.iio_dev** %6, align 8
  %33 = load %struct.iio_dev*, %struct.iio_dev** %6, align 8
  %34 = icmp ne %struct.iio_dev* %33, null
  br i1 %34, label %41, label %35

35:                                               ; preds = %29
  %36 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %37 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %36, i32 0, i32 0
  %38 = call i32 (%struct.TYPE_11__*, i8*, ...) @dev_err(%struct.TYPE_11__* %37, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0))
  %39 = load i32, i32* @ENOMEM, align 4
  %40 = sub nsw i32 0, %39
  store i32 %40, i32* %2, align 4
  br label %166

41:                                               ; preds = %29
  %42 = load %struct.iio_dev*, %struct.iio_dev** %6, align 8
  %43 = call %struct.cpcap_adc* @iio_priv(%struct.iio_dev* %42)
  store %struct.cpcap_adc* %43, %struct.cpcap_adc** %5, align 8
  %44 = load %struct.of_device_id*, %struct.of_device_id** %4, align 8
  %45 = getelementptr inbounds %struct.of_device_id, %struct.of_device_id* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = load %struct.cpcap_adc*, %struct.cpcap_adc** %5, align 8
  %48 = getelementptr inbounds %struct.cpcap_adc, %struct.cpcap_adc* %47, i32 0, i32 6
  store i64 %46, i64* %48, align 8
  %49 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %50 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %49, i32 0, i32 0
  %51 = load %struct.cpcap_adc*, %struct.cpcap_adc** %5, align 8
  %52 = getelementptr inbounds %struct.cpcap_adc, %struct.cpcap_adc* %51, i32 0, i32 3
  store %struct.TYPE_11__* %50, %struct.TYPE_11__** %52, align 8
  %53 = load %struct.cpcap_adc*, %struct.cpcap_adc** %5, align 8
  %54 = getelementptr inbounds %struct.cpcap_adc, %struct.cpcap_adc* %53, i32 0, i32 5
  %55 = call i32 @mutex_init(i32* %54)
  %56 = load %struct.cpcap_adc*, %struct.cpcap_adc** %5, align 8
  %57 = getelementptr inbounds %struct.cpcap_adc, %struct.cpcap_adc* %56, i32 0, i32 4
  %58 = call i32 @init_waitqueue_head(i32* %57)
  %59 = load i32, i32* @INDIO_DIRECT_MODE, align 4
  %60 = load i32, i32* @INDIO_BUFFER_SOFTWARE, align 4
  %61 = or i32 %59, %60
  %62 = load %struct.iio_dev*, %struct.iio_dev** %6, align 8
  %63 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %62, i32 0, i32 0
  store i32 %61, i32* %63, align 8
  %64 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %65 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %64, i32 0, i32 0
  %66 = load %struct.iio_dev*, %struct.iio_dev** %6, align 8
  %67 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %66, i32 0, i32 5
  %68 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %67, i32 0, i32 1
  store %struct.TYPE_11__* %65, %struct.TYPE_11__** %68, align 8
  %69 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %70 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %69, i32 0, i32 0
  %71 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 4
  %73 = load %struct.iio_dev*, %struct.iio_dev** %6, align 8
  %74 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %73, i32 0, i32 5
  %75 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %74, i32 0, i32 0
  store i32 %72, i32* %75, align 8
  %76 = load i32, i32* @cpcap_adc_channels, align 4
  %77 = load %struct.iio_dev*, %struct.iio_dev** %6, align 8
  %78 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %77, i32 0, i32 4
  store i32 %76, i32* %78, align 8
  %79 = load i32, i32* @cpcap_adc_channels, align 4
  %80 = call i32 @ARRAY_SIZE(i32 %79)
  %81 = load %struct.iio_dev*, %struct.iio_dev** %6, align 8
  %82 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %81, i32 0, i32 3
  store i32 %80, i32* %82, align 4
  %83 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %84 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %83, i32 0, i32 0
  %85 = call i32 @dev_name(%struct.TYPE_11__* %84)
  %86 = load %struct.iio_dev*, %struct.iio_dev** %6, align 8
  %87 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %86, i32 0, i32 2
  store i32 %85, i32* %87, align 8
  %88 = load %struct.iio_dev*, %struct.iio_dev** %6, align 8
  %89 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %88, i32 0, i32 1
  store i32* @cpcap_adc_info, i32** %89, align 8
  %90 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %91 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %90, i32 0, i32 0
  %92 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 4
  %94 = call i32 @dev_get_regmap(i32 %93, i32* null)
  %95 = load %struct.cpcap_adc*, %struct.cpcap_adc** %5, align 8
  %96 = getelementptr inbounds %struct.cpcap_adc, %struct.cpcap_adc* %95, i32 0, i32 2
  store i32 %94, i32* %96, align 4
  %97 = load %struct.cpcap_adc*, %struct.cpcap_adc** %5, align 8
  %98 = getelementptr inbounds %struct.cpcap_adc, %struct.cpcap_adc* %97, i32 0, i32 2
  %99 = load i32, i32* %98, align 4
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %104, label %101

101:                                              ; preds = %41
  %102 = load i32, i32* @ENODEV, align 4
  %103 = sub nsw i32 0, %102
  store i32 %103, i32* %2, align 4
  br label %166

104:                                              ; preds = %41
  %105 = load %struct.cpcap_adc*, %struct.cpcap_adc** %5, align 8
  %106 = getelementptr inbounds %struct.cpcap_adc, %struct.cpcap_adc* %105, i32 0, i32 3
  %107 = load %struct.TYPE_11__*, %struct.TYPE_11__** %106, align 8
  %108 = load %struct.cpcap_adc*, %struct.cpcap_adc** %5, align 8
  %109 = getelementptr inbounds %struct.cpcap_adc, %struct.cpcap_adc* %108, i32 0, i32 2
  %110 = load i32, i32* %109, align 4
  %111 = load %struct.cpcap_adc*, %struct.cpcap_adc** %5, align 8
  %112 = getelementptr inbounds %struct.cpcap_adc, %struct.cpcap_adc* %111, i32 0, i32 1
  %113 = call i32 @cpcap_get_vendor(%struct.TYPE_11__* %107, i32 %110, i32* %112)
  store i32 %113, i32* %7, align 4
  %114 = load i32, i32* %7, align 4
  %115 = icmp ne i32 %114, 0
  br i1 %115, label %116, label %118

116:                                              ; preds = %104
  %117 = load i32, i32* %7, align 4
  store i32 %117, i32* %2, align 4
  br label %166

118:                                              ; preds = %104
  %119 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %120 = load %struct.iio_dev*, %struct.iio_dev** %6, align 8
  %121 = call i32 @platform_set_drvdata(%struct.platform_device* %119, %struct.iio_dev* %120)
  %122 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %123 = call i64 @platform_get_irq_byname(%struct.platform_device* %122, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0))
  %124 = load %struct.cpcap_adc*, %struct.cpcap_adc** %5, align 8
  %125 = getelementptr inbounds %struct.cpcap_adc, %struct.cpcap_adc* %124, i32 0, i32 0
  store i64 %123, i64* %125, align 8
  %126 = load %struct.cpcap_adc*, %struct.cpcap_adc** %5, align 8
  %127 = getelementptr inbounds %struct.cpcap_adc, %struct.cpcap_adc* %126, i32 0, i32 0
  %128 = load i64, i64* %127, align 8
  %129 = icmp slt i64 %128, 0
  br i1 %129, label %130, label %133

130:                                              ; preds = %118
  %131 = load i32, i32* @ENODEV, align 4
  %132 = sub nsw i32 0, %131
  store i32 %132, i32* %2, align 4
  br label %166

133:                                              ; preds = %118
  %134 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %135 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %134, i32 0, i32 0
  %136 = load %struct.cpcap_adc*, %struct.cpcap_adc** %5, align 8
  %137 = getelementptr inbounds %struct.cpcap_adc, %struct.cpcap_adc* %136, i32 0, i32 0
  %138 = load i64, i64* %137, align 8
  %139 = load i32, i32* @cpcap_adc_irq_thread, align 4
  %140 = load i32, i32* @IRQF_TRIGGER_NONE, align 4
  %141 = load %struct.iio_dev*, %struct.iio_dev** %6, align 8
  %142 = call i32 @devm_request_threaded_irq(%struct.TYPE_11__* %135, i64 %138, i32* null, i32 %139, i32 %140, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i64 0, i64 0), %struct.iio_dev* %141)
  store i32 %142, i32* %7, align 4
  %143 = load i32, i32* %7, align 4
  %144 = icmp ne i32 %143, 0
  br i1 %144, label %145, label %151

145:                                              ; preds = %133
  %146 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %147 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %146, i32 0, i32 0
  %148 = load i32, i32* %7, align 4
  %149 = call i32 (%struct.TYPE_11__*, i8*, ...) @dev_err(%struct.TYPE_11__* %147, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.4, i64 0, i64 0), i32 %148)
  %150 = load i32, i32* %7, align 4
  store i32 %150, i32* %2, align 4
  br label %166

151:                                              ; preds = %133
  %152 = load %struct.cpcap_adc*, %struct.cpcap_adc** %5, align 8
  %153 = call i32 @cpcap_adc_calibrate(%struct.cpcap_adc* %152)
  store i32 %153, i32* %7, align 4
  %154 = load i32, i32* %7, align 4
  %155 = icmp ne i32 %154, 0
  br i1 %155, label %156, label %158

156:                                              ; preds = %151
  %157 = load i32, i32* %7, align 4
  store i32 %157, i32* %2, align 4
  br label %166

158:                                              ; preds = %151
  %159 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %160 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %159, i32 0, i32 0
  %161 = call i32 @dev_info(%struct.TYPE_11__* %160, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.5, i64 0, i64 0))
  %162 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %163 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %162, i32 0, i32 0
  %164 = load %struct.iio_dev*, %struct.iio_dev** %6, align 8
  %165 = call i32 @devm_iio_device_register(%struct.TYPE_11__* %163, %struct.iio_dev* %164)
  store i32 %165, i32* %2, align 4
  br label %166

166:                                              ; preds = %158, %156, %145, %130, %116, %101, %35, %23, %15
  %167 = load i32, i32* %2, align 4
  ret i32 %167
}

declare dso_local %struct.of_device_id* @of_match_device(i32, %struct.TYPE_11__*) #1

declare dso_local i32 @of_match_ptr(i32) #1

declare dso_local i32 @dev_err(%struct.TYPE_11__*, i8*, ...) #1

declare dso_local %struct.iio_dev* @devm_iio_device_alloc(%struct.TYPE_11__*, i32) #1

declare dso_local %struct.cpcap_adc* @iio_priv(%struct.iio_dev*) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @init_waitqueue_head(i32*) #1

declare dso_local i32 @ARRAY_SIZE(i32) #1

declare dso_local i32 @dev_name(%struct.TYPE_11__*) #1

declare dso_local i32 @dev_get_regmap(i32, i32*) #1

declare dso_local i32 @cpcap_get_vendor(%struct.TYPE_11__*, i32, i32*) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.iio_dev*) #1

declare dso_local i64 @platform_get_irq_byname(%struct.platform_device*, i8*) #1

declare dso_local i32 @devm_request_threaded_irq(%struct.TYPE_11__*, i64, i32*, i32, i32, i8*, %struct.iio_dev*) #1

declare dso_local i32 @cpcap_adc_calibrate(%struct.cpcap_adc*) #1

declare dso_local i32 @dev_info(%struct.TYPE_11__*, i8*) #1

declare dso_local i32 @devm_iio_device_register(%struct.TYPE_11__*, %struct.iio_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
