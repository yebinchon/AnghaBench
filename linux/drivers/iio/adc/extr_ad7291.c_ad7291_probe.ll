; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/adc/extr_ad7291.c_ad7291_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/adc/extr_ad7291.c_ad7291_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_client = type { i64, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32, %struct.ad7291_platform_data* }
%struct.ad7291_platform_data = type { i64 }
%struct.i2c_device_id = type { i32 }
%struct.ad7291_chip_info = type { i32, i64, %struct.i2c_client*, i32 }
%struct.iio_dev = type { i32, i32*, %struct.TYPE_4__, i32, i32, i32 }
%struct.TYPE_4__ = type { i32, %struct.TYPE_5__* }

@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"vref\00", align 1
@AD7291_NOISE_DELAY = common dso_local global i32 0, align 4
@AD7291_T_SENSE_MASK = common dso_local global i32 0, align 4
@AD7291_ALERT_POLARITY = common dso_local global i32 0, align 4
@AD7291_EXT_REF = common dso_local global i32 0, align 4
@ad7291_channels = common dso_local global i32 0, align 4
@ad7291_info = common dso_local global i32 0, align 4
@INDIO_DIRECT_MODE = common dso_local global i32 0, align 4
@AD7291_COMMAND = common dso_local global i32 0, align 4
@AD7291_RESET = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@ad7291_event_handler = common dso_local global i32 0, align 4
@IRQF_TRIGGER_LOW = common dso_local global i32 0, align 4
@IRQF_ONESHOT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_client*, %struct.i2c_device_id*)* @ad7291_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ad7291_probe(%struct.i2c_client* %0, %struct.i2c_device_id* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.i2c_client*, align 8
  %5 = alloca %struct.i2c_device_id*, align 8
  %6 = alloca %struct.ad7291_platform_data*, align 8
  %7 = alloca %struct.ad7291_chip_info*, align 8
  %8 = alloca %struct.iio_dev*, align 8
  %9 = alloca i32, align 4
  store %struct.i2c_client* %0, %struct.i2c_client** %4, align 8
  store %struct.i2c_device_id* %1, %struct.i2c_device_id** %5, align 8
  %10 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %11 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %10, i32 0, i32 1
  %12 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %11, i32 0, i32 1
  %13 = load %struct.ad7291_platform_data*, %struct.ad7291_platform_data** %12, align 8
  store %struct.ad7291_platform_data* %13, %struct.ad7291_platform_data** %6, align 8
  %14 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %15 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %14, i32 0, i32 1
  %16 = call %struct.iio_dev* @devm_iio_device_alloc(%struct.TYPE_5__* %15, i32 32)
  store %struct.iio_dev* %16, %struct.iio_dev** %8, align 8
  %17 = load %struct.iio_dev*, %struct.iio_dev** %8, align 8
  %18 = icmp ne %struct.iio_dev* %17, null
  br i1 %18, label %22, label %19

19:                                               ; preds = %2
  %20 = load i32, i32* @ENOMEM, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %3, align 4
  br label %191

22:                                               ; preds = %2
  %23 = load %struct.iio_dev*, %struct.iio_dev** %8, align 8
  %24 = call %struct.ad7291_chip_info* @iio_priv(%struct.iio_dev* %23)
  store %struct.ad7291_chip_info* %24, %struct.ad7291_chip_info** %7, align 8
  %25 = load %struct.ad7291_platform_data*, %struct.ad7291_platform_data** %6, align 8
  %26 = icmp ne %struct.ad7291_platform_data* %25, null
  br i1 %26, label %27, label %58

27:                                               ; preds = %22
  %28 = load %struct.ad7291_platform_data*, %struct.ad7291_platform_data** %6, align 8
  %29 = getelementptr inbounds %struct.ad7291_platform_data, %struct.ad7291_platform_data* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %58

32:                                               ; preds = %27
  %33 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %34 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %33, i32 0, i32 1
  %35 = call i64 @devm_regulator_get(%struct.TYPE_5__* %34, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  %36 = load %struct.ad7291_chip_info*, %struct.ad7291_chip_info** %7, align 8
  %37 = getelementptr inbounds %struct.ad7291_chip_info, %struct.ad7291_chip_info* %36, i32 0, i32 1
  store i64 %35, i64* %37, align 8
  %38 = load %struct.ad7291_chip_info*, %struct.ad7291_chip_info** %7, align 8
  %39 = getelementptr inbounds %struct.ad7291_chip_info, %struct.ad7291_chip_info* %38, i32 0, i32 1
  %40 = load i64, i64* %39, align 8
  %41 = call i64 @IS_ERR(i64 %40)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %48

43:                                               ; preds = %32
  %44 = load %struct.ad7291_chip_info*, %struct.ad7291_chip_info** %7, align 8
  %45 = getelementptr inbounds %struct.ad7291_chip_info, %struct.ad7291_chip_info* %44, i32 0, i32 1
  %46 = load i64, i64* %45, align 8
  %47 = call i32 @PTR_ERR(i64 %46)
  store i32 %47, i32* %3, align 4
  br label %191

48:                                               ; preds = %32
  %49 = load %struct.ad7291_chip_info*, %struct.ad7291_chip_info** %7, align 8
  %50 = getelementptr inbounds %struct.ad7291_chip_info, %struct.ad7291_chip_info* %49, i32 0, i32 1
  %51 = load i64, i64* %50, align 8
  %52 = call i32 @regulator_enable(i64 %51)
  store i32 %52, i32* %9, align 4
  %53 = load i32, i32* %9, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %57

55:                                               ; preds = %48
  %56 = load i32, i32* %9, align 4
  store i32 %56, i32* %3, align 4
  br label %191

57:                                               ; preds = %48
  br label %58

58:                                               ; preds = %57, %27, %22
  %59 = load %struct.ad7291_chip_info*, %struct.ad7291_chip_info** %7, align 8
  %60 = getelementptr inbounds %struct.ad7291_chip_info, %struct.ad7291_chip_info* %59, i32 0, i32 3
  %61 = call i32 @mutex_init(i32* %60)
  %62 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %63 = load %struct.iio_dev*, %struct.iio_dev** %8, align 8
  %64 = call i32 @i2c_set_clientdata(%struct.i2c_client* %62, %struct.iio_dev* %63)
  %65 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %66 = load %struct.ad7291_chip_info*, %struct.ad7291_chip_info** %7, align 8
  %67 = getelementptr inbounds %struct.ad7291_chip_info, %struct.ad7291_chip_info* %66, i32 0, i32 2
  store %struct.i2c_client* %65, %struct.i2c_client** %67, align 8
  %68 = load i32, i32* @AD7291_NOISE_DELAY, align 4
  %69 = load i32, i32* @AD7291_T_SENSE_MASK, align 4
  %70 = or i32 %68, %69
  %71 = load i32, i32* @AD7291_ALERT_POLARITY, align 4
  %72 = or i32 %70, %71
  %73 = load %struct.ad7291_chip_info*, %struct.ad7291_chip_info** %7, align 8
  %74 = getelementptr inbounds %struct.ad7291_chip_info, %struct.ad7291_chip_info* %73, i32 0, i32 0
  store i32 %72, i32* %74, align 8
  %75 = load %struct.ad7291_platform_data*, %struct.ad7291_platform_data** %6, align 8
  %76 = icmp ne %struct.ad7291_platform_data* %75, null
  br i1 %76, label %77, label %88

77:                                               ; preds = %58
  %78 = load %struct.ad7291_platform_data*, %struct.ad7291_platform_data** %6, align 8
  %79 = getelementptr inbounds %struct.ad7291_platform_data, %struct.ad7291_platform_data* %78, i32 0, i32 0
  %80 = load i64, i64* %79, align 8
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %82, label %88

82:                                               ; preds = %77
  %83 = load i32, i32* @AD7291_EXT_REF, align 4
  %84 = load %struct.ad7291_chip_info*, %struct.ad7291_chip_info** %7, align 8
  %85 = getelementptr inbounds %struct.ad7291_chip_info, %struct.ad7291_chip_info* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 8
  %87 = or i32 %86, %83
  store i32 %87, i32* %85, align 8
  br label %88

88:                                               ; preds = %82, %77, %58
  %89 = load %struct.i2c_device_id*, %struct.i2c_device_id** %5, align 8
  %90 = getelementptr inbounds %struct.i2c_device_id, %struct.i2c_device_id* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 4
  %92 = load %struct.iio_dev*, %struct.iio_dev** %8, align 8
  %93 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %92, i32 0, i32 5
  store i32 %91, i32* %93, align 8
  %94 = load i32, i32* @ad7291_channels, align 4
  %95 = load %struct.iio_dev*, %struct.iio_dev** %8, align 8
  %96 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %95, i32 0, i32 4
  store i32 %94, i32* %96, align 4
  %97 = load i32, i32* @ad7291_channels, align 4
  %98 = call i32 @ARRAY_SIZE(i32 %97)
  %99 = load %struct.iio_dev*, %struct.iio_dev** %8, align 8
  %100 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %99, i32 0, i32 3
  store i32 %98, i32* %100, align 8
  %101 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %102 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %101, i32 0, i32 1
  %103 = load %struct.iio_dev*, %struct.iio_dev** %8, align 8
  %104 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %103, i32 0, i32 2
  %105 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %104, i32 0, i32 1
  store %struct.TYPE_5__* %102, %struct.TYPE_5__** %105, align 8
  %106 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %107 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %106, i32 0, i32 1
  %108 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %107, i32 0, i32 0
  %109 = load i32, i32* %108, align 8
  %110 = load %struct.iio_dev*, %struct.iio_dev** %8, align 8
  %111 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %110, i32 0, i32 2
  %112 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %111, i32 0, i32 0
  store i32 %109, i32* %112, align 8
  %113 = load %struct.iio_dev*, %struct.iio_dev** %8, align 8
  %114 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %113, i32 0, i32 1
  store i32* @ad7291_info, i32** %114, align 8
  %115 = load i32, i32* @INDIO_DIRECT_MODE, align 4
  %116 = load %struct.iio_dev*, %struct.iio_dev** %8, align 8
  %117 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %116, i32 0, i32 0
  store i32 %115, i32* %117, align 8
  %118 = load %struct.ad7291_chip_info*, %struct.ad7291_chip_info** %7, align 8
  %119 = load i32, i32* @AD7291_COMMAND, align 4
  %120 = load i32, i32* @AD7291_RESET, align 4
  %121 = call i32 @ad7291_i2c_write(%struct.ad7291_chip_info* %118, i32 %119, i32 %120)
  store i32 %121, i32* %9, align 4
  %122 = load i32, i32* %9, align 4
  %123 = icmp ne i32 %122, 0
  br i1 %123, label %124, label %127

124:                                              ; preds = %88
  %125 = load i32, i32* @EIO, align 4
  %126 = sub nsw i32 0, %125
  store i32 %126, i32* %9, align 4
  br label %179

127:                                              ; preds = %88
  %128 = load %struct.ad7291_chip_info*, %struct.ad7291_chip_info** %7, align 8
  %129 = load i32, i32* @AD7291_COMMAND, align 4
  %130 = load %struct.ad7291_chip_info*, %struct.ad7291_chip_info** %7, align 8
  %131 = getelementptr inbounds %struct.ad7291_chip_info, %struct.ad7291_chip_info* %130, i32 0, i32 0
  %132 = load i32, i32* %131, align 8
  %133 = call i32 @ad7291_i2c_write(%struct.ad7291_chip_info* %128, i32 %129, i32 %132)
  store i32 %133, i32* %9, align 4
  %134 = load i32, i32* %9, align 4
  %135 = icmp ne i32 %134, 0
  br i1 %135, label %136, label %139

136:                                              ; preds = %127
  %137 = load i32, i32* @EIO, align 4
  %138 = sub nsw i32 0, %137
  store i32 %138, i32* %9, align 4
  br label %179

139:                                              ; preds = %127
  %140 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %141 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %140, i32 0, i32 0
  %142 = load i64, i64* %141, align 8
  %143 = icmp sgt i64 %142, 0
  br i1 %143, label %144, label %160

144:                                              ; preds = %139
  %145 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %146 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %145, i32 0, i32 0
  %147 = load i64, i64* %146, align 8
  %148 = load i32, i32* @IRQF_TRIGGER_LOW, align 4
  %149 = load i32, i32* @IRQF_ONESHOT, align 4
  %150 = or i32 %148, %149
  %151 = load %struct.i2c_device_id*, %struct.i2c_device_id** %5, align 8
  %152 = getelementptr inbounds %struct.i2c_device_id, %struct.i2c_device_id* %151, i32 0, i32 0
  %153 = load i32, i32* %152, align 4
  %154 = load %struct.iio_dev*, %struct.iio_dev** %8, align 8
  %155 = call i32 @request_threaded_irq(i64 %147, i32* null, i32* @ad7291_event_handler, i32 %150, i32 %153, %struct.iio_dev* %154)
  store i32 %155, i32* %9, align 4
  %156 = load i32, i32* %9, align 4
  %157 = icmp ne i32 %156, 0
  br i1 %157, label %158, label %159

158:                                              ; preds = %144
  br label %179

159:                                              ; preds = %144
  br label %160

160:                                              ; preds = %159, %139
  %161 = load %struct.iio_dev*, %struct.iio_dev** %8, align 8
  %162 = call i32 @iio_device_register(%struct.iio_dev* %161)
  store i32 %162, i32* %9, align 4
  %163 = load i32, i32* %9, align 4
  %164 = icmp ne i32 %163, 0
  br i1 %164, label %165, label %166

165:                                              ; preds = %160
  br label %167

166:                                              ; preds = %160
  store i32 0, i32* %3, align 4
  br label %191

167:                                              ; preds = %165
  %168 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %169 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %168, i32 0, i32 0
  %170 = load i64, i64* %169, align 8
  %171 = icmp ne i64 %170, 0
  br i1 %171, label %172, label %178

172:                                              ; preds = %167
  %173 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %174 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %173, i32 0, i32 0
  %175 = load i64, i64* %174, align 8
  %176 = load %struct.iio_dev*, %struct.iio_dev** %8, align 8
  %177 = call i32 @free_irq(i64 %175, %struct.iio_dev* %176)
  br label %178

178:                                              ; preds = %172, %167
  br label %179

179:                                              ; preds = %178, %158, %136, %124
  %180 = load %struct.ad7291_chip_info*, %struct.ad7291_chip_info** %7, align 8
  %181 = getelementptr inbounds %struct.ad7291_chip_info, %struct.ad7291_chip_info* %180, i32 0, i32 1
  %182 = load i64, i64* %181, align 8
  %183 = icmp ne i64 %182, 0
  br i1 %183, label %184, label %189

184:                                              ; preds = %179
  %185 = load %struct.ad7291_chip_info*, %struct.ad7291_chip_info** %7, align 8
  %186 = getelementptr inbounds %struct.ad7291_chip_info, %struct.ad7291_chip_info* %185, i32 0, i32 1
  %187 = load i64, i64* %186, align 8
  %188 = call i32 @regulator_disable(i64 %187)
  br label %189

189:                                              ; preds = %184, %179
  %190 = load i32, i32* %9, align 4
  store i32 %190, i32* %3, align 4
  br label %191

191:                                              ; preds = %189, %166, %55, %43, %19
  %192 = load i32, i32* %3, align 4
  ret i32 %192
}

declare dso_local %struct.iio_dev* @devm_iio_device_alloc(%struct.TYPE_5__*, i32) #1

declare dso_local %struct.ad7291_chip_info* @iio_priv(%struct.iio_dev*) #1

declare dso_local i64 @devm_regulator_get(%struct.TYPE_5__*, i8*) #1

declare dso_local i64 @IS_ERR(i64) #1

declare dso_local i32 @PTR_ERR(i64) #1

declare dso_local i32 @regulator_enable(i64) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @i2c_set_clientdata(%struct.i2c_client*, %struct.iio_dev*) #1

declare dso_local i32 @ARRAY_SIZE(i32) #1

declare dso_local i32 @ad7291_i2c_write(%struct.ad7291_chip_info*, i32, i32) #1

declare dso_local i32 @request_threaded_irq(i64, i32*, i32*, i32, i32, %struct.iio_dev*) #1

declare dso_local i32 @iio_device_register(%struct.iio_dev*) #1

declare dso_local i32 @free_irq(i64, %struct.iio_dev*) #1

declare dso_local i32 @regulator_disable(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
