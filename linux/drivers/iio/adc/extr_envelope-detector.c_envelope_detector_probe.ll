; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/adc/extr_envelope-detector.c_envelope_detector_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/adc/extr_envelope-detector.c_envelope_detector_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.device }
%struct.device = type { i32 }
%struct.iio_dev = type { i32, i32*, i32*, %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32, %struct.device* }
%struct.envelope = type { i32, i64, i32, i32, i32, i32, i32, i32, i32, i32 }

@ENOMEM = common dso_local global i32 0, align 4
@envelope_detector_timeout = common dso_local global i32 0, align 4
@envelope_detector_info = common dso_local global i32 0, align 4
@envelope_detector_iio_channel = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c"dac\00", align 1
@EPROBE_DEFER = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [33 x i8] c"failed to get dac input channel\0A\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"comp\00", align 1
@envelope_detector_comp_isr = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [18 x i8] c"envelope-detector\00", align 1
@.str.4 = private unnamed_addr constant [29 x i8] c"failed to request interrupt\0A\00", align 1
@IRQF_TRIGGER_RISING = common dso_local global i32 0, align 4
@IRQF_TRIGGER_FALLING = common dso_local global i32 0, align 4
@IRQF_TRIGGER_HIGH = common dso_local global i32 0, align 4
@IRQF_TRIGGER_LOW = common dso_local global i32 0, align 4
@IIO_VOLTAGE = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [26 x i8] c"dac is of the wrong type\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [45 x i8] c"dac does not indicate its raw maximum value\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @envelope_detector_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @envelope_detector_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.iio_dev*, align 8
  %6 = alloca %struct.envelope*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %9 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %10 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %9, i32 0, i32 0
  store %struct.device* %10, %struct.device** %4, align 8
  %11 = load %struct.device*, %struct.device** %4, align 8
  %12 = call %struct.iio_dev* @devm_iio_device_alloc(%struct.device* %11, i32 48)
  store %struct.iio_dev* %12, %struct.iio_dev** %5, align 8
  %13 = load %struct.iio_dev*, %struct.iio_dev** %5, align 8
  %14 = icmp ne %struct.iio_dev* %13, null
  br i1 %14, label %18, label %15

15:                                               ; preds = %1
  %16 = load i32, i32* @ENOMEM, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %2, align 4
  br label %213

18:                                               ; preds = %1
  %19 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %20 = load %struct.iio_dev*, %struct.iio_dev** %5, align 8
  %21 = call i32 @platform_set_drvdata(%struct.platform_device* %19, %struct.iio_dev* %20)
  %22 = load %struct.iio_dev*, %struct.iio_dev** %5, align 8
  %23 = call %struct.envelope* @iio_priv(%struct.iio_dev* %22)
  store %struct.envelope* %23, %struct.envelope** %6, align 8
  %24 = load %struct.envelope*, %struct.envelope** %6, align 8
  %25 = getelementptr inbounds %struct.envelope, %struct.envelope* %24, i32 0, i32 0
  store i32 50, i32* %25, align 8
  %26 = load %struct.envelope*, %struct.envelope** %6, align 8
  %27 = getelementptr inbounds %struct.envelope, %struct.envelope* %26, i32 0, i32 9
  %28 = call i32 @spin_lock_init(i32* %27)
  %29 = load %struct.envelope*, %struct.envelope** %6, align 8
  %30 = getelementptr inbounds %struct.envelope, %struct.envelope* %29, i32 0, i32 8
  %31 = call i32 @mutex_init(i32* %30)
  %32 = load %struct.envelope*, %struct.envelope** %6, align 8
  %33 = getelementptr inbounds %struct.envelope, %struct.envelope* %32, i32 0, i32 7
  %34 = call i32 @init_completion(i32* %33)
  %35 = load %struct.envelope*, %struct.envelope** %6, align 8
  %36 = getelementptr inbounds %struct.envelope, %struct.envelope* %35, i32 0, i32 6
  %37 = load i32, i32* @envelope_detector_timeout, align 4
  %38 = call i32 @INIT_DELAYED_WORK(i32* %36, i32 %37)
  %39 = load %struct.device*, %struct.device** %4, align 8
  %40 = call i32 @dev_name(%struct.device* %39)
  %41 = load %struct.iio_dev*, %struct.iio_dev** %5, align 8
  %42 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %41, i32 0, i32 4
  store i32 %40, i32* %42, align 8
  %43 = load %struct.device*, %struct.device** %4, align 8
  %44 = load %struct.iio_dev*, %struct.iio_dev** %5, align 8
  %45 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %44, i32 0, i32 3
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i32 0, i32 1
  store %struct.device* %43, %struct.device** %46, align 8
  %47 = load %struct.device*, %struct.device** %4, align 8
  %48 = getelementptr inbounds %struct.device, %struct.device* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = load %struct.iio_dev*, %struct.iio_dev** %5, align 8
  %51 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %50, i32 0, i32 3
  %52 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %51, i32 0, i32 0
  store i32 %49, i32* %52, align 8
  %53 = load %struct.iio_dev*, %struct.iio_dev** %5, align 8
  %54 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %53, i32 0, i32 2
  store i32* @envelope_detector_info, i32** %54, align 8
  %55 = load %struct.iio_dev*, %struct.iio_dev** %5, align 8
  %56 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %55, i32 0, i32 1
  store i32* @envelope_detector_iio_channel, i32** %56, align 8
  %57 = load %struct.iio_dev*, %struct.iio_dev** %5, align 8
  %58 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %57, i32 0, i32 0
  store i32 1, i32* %58, align 8
  %59 = load %struct.device*, %struct.device** %4, align 8
  %60 = call i32 @devm_iio_channel_get(%struct.device* %59, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  %61 = load %struct.envelope*, %struct.envelope** %6, align 8
  %62 = getelementptr inbounds %struct.envelope, %struct.envelope* %61, i32 0, i32 5
  store i32 %60, i32* %62, align 4
  %63 = load %struct.envelope*, %struct.envelope** %6, align 8
  %64 = getelementptr inbounds %struct.envelope, %struct.envelope* %63, i32 0, i32 5
  %65 = load i32, i32* %64, align 4
  %66 = call i64 @IS_ERR(i32 %65)
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %84

68:                                               ; preds = %18
  %69 = load %struct.envelope*, %struct.envelope** %6, align 8
  %70 = getelementptr inbounds %struct.envelope, %struct.envelope* %69, i32 0, i32 5
  %71 = load i32, i32* %70, align 4
  %72 = call i32 @PTR_ERR(i32 %71)
  %73 = load i32, i32* @EPROBE_DEFER, align 4
  %74 = sub nsw i32 0, %73
  %75 = icmp ne i32 %72, %74
  br i1 %75, label %76, label %79

76:                                               ; preds = %68
  %77 = load %struct.device*, %struct.device** %4, align 8
  %78 = call i32 @dev_err(%struct.device* %77, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0))
  br label %79

79:                                               ; preds = %76, %68
  %80 = load %struct.envelope*, %struct.envelope** %6, align 8
  %81 = getelementptr inbounds %struct.envelope, %struct.envelope* %80, i32 0, i32 5
  %82 = load i32, i32* %81, align 4
  %83 = call i32 @PTR_ERR(i32 %82)
  store i32 %83, i32* %2, align 4
  br label %213

84:                                               ; preds = %18
  %85 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %86 = call i64 @platform_get_irq_byname(%struct.platform_device* %85, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0))
  %87 = load %struct.envelope*, %struct.envelope** %6, align 8
  %88 = getelementptr inbounds %struct.envelope, %struct.envelope* %87, i32 0, i32 1
  store i64 %86, i64* %88, align 8
  %89 = load %struct.envelope*, %struct.envelope** %6, align 8
  %90 = getelementptr inbounds %struct.envelope, %struct.envelope* %89, i32 0, i32 1
  %91 = load i64, i64* %90, align 8
  %92 = icmp slt i64 %91, 0
  br i1 %92, label %93, label %98

93:                                               ; preds = %84
  %94 = load %struct.envelope*, %struct.envelope** %6, align 8
  %95 = getelementptr inbounds %struct.envelope, %struct.envelope* %94, i32 0, i32 1
  %96 = load i64, i64* %95, align 8
  %97 = trunc i64 %96 to i32
  store i32 %97, i32* %2, align 4
  br label %213

98:                                               ; preds = %84
  %99 = load %struct.device*, %struct.device** %4, align 8
  %100 = load %struct.envelope*, %struct.envelope** %6, align 8
  %101 = getelementptr inbounds %struct.envelope, %struct.envelope* %100, i32 0, i32 1
  %102 = load i64, i64* %101, align 8
  %103 = trunc i64 %102 to i32
  %104 = load i32, i32* @envelope_detector_comp_isr, align 4
  %105 = load %struct.envelope*, %struct.envelope** %6, align 8
  %106 = call i32 @devm_request_irq(%struct.device* %99, i32 %103, i32 %104, i32 0, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.3, i64 0, i64 0), %struct.envelope* %105)
  store i32 %106, i32* %8, align 4
  %107 = load i32, i32* %8, align 4
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %109, label %119

109:                                              ; preds = %98
  %110 = load i32, i32* %8, align 4
  %111 = load i32, i32* @EPROBE_DEFER, align 4
  %112 = sub nsw i32 0, %111
  %113 = icmp ne i32 %110, %112
  br i1 %113, label %114, label %117

114:                                              ; preds = %109
  %115 = load %struct.device*, %struct.device** %4, align 8
  %116 = call i32 @dev_err(%struct.device* %115, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.4, i64 0, i64 0))
  br label %117

117:                                              ; preds = %114, %109
  %118 = load i32, i32* %8, align 4
  store i32 %118, i32* %2, align 4
  br label %213

119:                                              ; preds = %98
  %120 = load %struct.envelope*, %struct.envelope** %6, align 8
  %121 = getelementptr inbounds %struct.envelope, %struct.envelope* %120, i32 0, i32 1
  %122 = load i64, i64* %121, align 8
  %123 = trunc i64 %122 to i32
  %124 = call i32 @irq_get_trigger_type(i32 %123)
  %125 = load %struct.envelope*, %struct.envelope** %6, align 8
  %126 = getelementptr inbounds %struct.envelope, %struct.envelope* %125, i32 0, i32 2
  store i32 %124, i32* %126, align 8
  %127 = load %struct.envelope*, %struct.envelope** %6, align 8
  %128 = getelementptr inbounds %struct.envelope, %struct.envelope* %127, i32 0, i32 2
  %129 = load i32, i32* %128, align 8
  %130 = load i32, i32* @IRQF_TRIGGER_RISING, align 4
  %131 = and i32 %129, %130
  %132 = icmp ne i32 %131, 0
  br i1 %132, label %133, label %139

133:                                              ; preds = %119
  %134 = load i32, i32* @IRQF_TRIGGER_FALLING, align 4
  %135 = load %struct.envelope*, %struct.envelope** %6, align 8
  %136 = getelementptr inbounds %struct.envelope, %struct.envelope* %135, i32 0, i32 3
  %137 = load i32, i32* %136, align 4
  %138 = or i32 %137, %134
  store i32 %138, i32* %136, align 4
  br label %139

139:                                              ; preds = %133, %119
  %140 = load %struct.envelope*, %struct.envelope** %6, align 8
  %141 = getelementptr inbounds %struct.envelope, %struct.envelope* %140, i32 0, i32 2
  %142 = load i32, i32* %141, align 8
  %143 = load i32, i32* @IRQF_TRIGGER_FALLING, align 4
  %144 = and i32 %142, %143
  %145 = icmp ne i32 %144, 0
  br i1 %145, label %146, label %152

146:                                              ; preds = %139
  %147 = load i32, i32* @IRQF_TRIGGER_RISING, align 4
  %148 = load %struct.envelope*, %struct.envelope** %6, align 8
  %149 = getelementptr inbounds %struct.envelope, %struct.envelope* %148, i32 0, i32 3
  %150 = load i32, i32* %149, align 4
  %151 = or i32 %150, %147
  store i32 %151, i32* %149, align 4
  br label %152

152:                                              ; preds = %146, %139
  %153 = load %struct.envelope*, %struct.envelope** %6, align 8
  %154 = getelementptr inbounds %struct.envelope, %struct.envelope* %153, i32 0, i32 2
  %155 = load i32, i32* %154, align 8
  %156 = load i32, i32* @IRQF_TRIGGER_HIGH, align 4
  %157 = and i32 %155, %156
  %158 = icmp ne i32 %157, 0
  br i1 %158, label %159, label %165

159:                                              ; preds = %152
  %160 = load i32, i32* @IRQF_TRIGGER_LOW, align 4
  %161 = load %struct.envelope*, %struct.envelope** %6, align 8
  %162 = getelementptr inbounds %struct.envelope, %struct.envelope* %161, i32 0, i32 3
  %163 = load i32, i32* %162, align 4
  %164 = or i32 %163, %160
  store i32 %164, i32* %162, align 4
  br label %165

165:                                              ; preds = %159, %152
  %166 = load %struct.envelope*, %struct.envelope** %6, align 8
  %167 = getelementptr inbounds %struct.envelope, %struct.envelope* %166, i32 0, i32 2
  %168 = load i32, i32* %167, align 8
  %169 = load i32, i32* @IRQF_TRIGGER_LOW, align 4
  %170 = and i32 %168, %169
  %171 = icmp ne i32 %170, 0
  br i1 %171, label %172, label %178

172:                                              ; preds = %165
  %173 = load i32, i32* @IRQF_TRIGGER_HIGH, align 4
  %174 = load %struct.envelope*, %struct.envelope** %6, align 8
  %175 = getelementptr inbounds %struct.envelope, %struct.envelope* %174, i32 0, i32 3
  %176 = load i32, i32* %175, align 4
  %177 = or i32 %176, %173
  store i32 %177, i32* %175, align 4
  br label %178

178:                                              ; preds = %172, %165
  %179 = load %struct.envelope*, %struct.envelope** %6, align 8
  %180 = getelementptr inbounds %struct.envelope, %struct.envelope* %179, i32 0, i32 5
  %181 = load i32, i32* %180, align 4
  %182 = call i32 @iio_get_channel_type(i32 %181, i32* %7)
  store i32 %182, i32* %8, align 4
  %183 = load i32, i32* %8, align 4
  %184 = icmp slt i32 %183, 0
  br i1 %184, label %185, label %187

185:                                              ; preds = %178
  %186 = load i32, i32* %8, align 4
  store i32 %186, i32* %2, align 4
  br label %213

187:                                              ; preds = %178
  %188 = load i32, i32* %7, align 4
  %189 = load i32, i32* @IIO_VOLTAGE, align 4
  %190 = icmp ne i32 %188, %189
  br i1 %190, label %191, label %196

191:                                              ; preds = %187
  %192 = load %struct.device*, %struct.device** %4, align 8
  %193 = call i32 @dev_err(%struct.device* %192, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.5, i64 0, i64 0))
  %194 = load i32, i32* @EINVAL, align 4
  %195 = sub nsw i32 0, %194
  store i32 %195, i32* %2, align 4
  br label %213

196:                                              ; preds = %187
  %197 = load %struct.envelope*, %struct.envelope** %6, align 8
  %198 = getelementptr inbounds %struct.envelope, %struct.envelope* %197, i32 0, i32 5
  %199 = load i32, i32* %198, align 4
  %200 = load %struct.envelope*, %struct.envelope** %6, align 8
  %201 = getelementptr inbounds %struct.envelope, %struct.envelope* %200, i32 0, i32 4
  %202 = call i32 @iio_read_max_channel_raw(i32 %199, i32* %201)
  store i32 %202, i32* %8, align 4
  %203 = load i32, i32* %8, align 4
  %204 = icmp slt i32 %203, 0
  br i1 %204, label %205, label %209

205:                                              ; preds = %196
  %206 = load %struct.device*, %struct.device** %4, align 8
  %207 = call i32 @dev_err(%struct.device* %206, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.6, i64 0, i64 0))
  %208 = load i32, i32* %8, align 4
  store i32 %208, i32* %2, align 4
  br label %213

209:                                              ; preds = %196
  %210 = load %struct.device*, %struct.device** %4, align 8
  %211 = load %struct.iio_dev*, %struct.iio_dev** %5, align 8
  %212 = call i32 @devm_iio_device_register(%struct.device* %210, %struct.iio_dev* %211)
  store i32 %212, i32* %2, align 4
  br label %213

213:                                              ; preds = %209, %205, %191, %185, %117, %93, %79, %15
  %214 = load i32, i32* %2, align 4
  ret i32 %214
}

declare dso_local %struct.iio_dev* @devm_iio_device_alloc(%struct.device*, i32) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.iio_dev*) #1

declare dso_local %struct.envelope* @iio_priv(%struct.iio_dev*) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @init_completion(i32*) #1

declare dso_local i32 @INIT_DELAYED_WORK(i32*, i32) #1

declare dso_local i32 @dev_name(%struct.device*) #1

declare dso_local i32 @devm_iio_channel_get(%struct.device*, i8*) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @PTR_ERR(i32) #1

declare dso_local i32 @dev_err(%struct.device*, i8*) #1

declare dso_local i64 @platform_get_irq_byname(%struct.platform_device*, i8*) #1

declare dso_local i32 @devm_request_irq(%struct.device*, i32, i32, i32, i8*, %struct.envelope*) #1

declare dso_local i32 @irq_get_trigger_type(i32) #1

declare dso_local i32 @iio_get_channel_type(i32, i32*) #1

declare dso_local i32 @iio_read_max_channel_raw(i32, i32*) #1

declare dso_local i32 @devm_iio_device_register(%struct.device*, %struct.iio_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
