; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/touchscreen/extr_colibri-vf50-ts.c_vf50_ts_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/touchscreen/extr_colibri-vf50-ts.c_vf50_ts_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.device }
%struct.device = type { i32 }
%struct.input_dev = type { i32, i32, %struct.TYPE_4__, %struct.TYPE_3__, i32 }
%struct.TYPE_4__ = type { %struct.device* }
%struct.TYPE_3__ = type { i32 }
%struct.iio_channel = type { i64 }
%struct.vf50_touch_device = type { i64, i32, i32, i32, i32, %struct.input_dev*, i32, %struct.iio_channel*, %struct.platform_device* }

@vf50_ts_channel_release = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [46 x i8] c"Failed to register iio channel release action\00", align 1
@COLI_TOUCH_REQ_ADC_CHAN = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [35 x i8] c"Inadequate ADC channels specified\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [21 x i8] c"vf50-ts-min-pressure\00", align 1
@.str.3 = private unnamed_addr constant [36 x i8] c"Failed to allocate TS input device\0A\00", align 1
@DRIVER_NAME = common dso_local global i32 0, align 4
@BUS_HOST = common dso_local global i32 0, align 4
@vf50_ts_open = common dso_local global i32 0, align 4
@vf50_ts_close = common dso_local global i32 0, align 4
@EV_KEY = common dso_local global i32 0, align 4
@BTN_TOUCH = common dso_local global i32 0, align 4
@ABS_X = common dso_local global i32 0, align 4
@VF_ADC_MAX = common dso_local global i32 0, align 4
@ABS_Y = common dso_local global i32 0, align 4
@ABS_PRESSURE = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [33 x i8] c"Failed to register input device\0A\00", align 1
@.str.5 = private unnamed_addr constant [3 x i8] c"xp\00", align 1
@GPIOD_OUT_LOW = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [3 x i8] c"xm\00", align 1
@.str.7 = private unnamed_addr constant [3 x i8] c"yp\00", align 1
@.str.8 = private unnamed_addr constant [3 x i8] c"ym\00", align 1
@vf50_ts_irq_bh = common dso_local global i32 0, align 4
@IRQF_ONESHOT = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [11 x i8] c"vf50 touch\00", align 1
@.str.10 = private unnamed_addr constant [30 x i8] c"Failed to request IRQ %d: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @vf50_ts_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vf50_ts_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.input_dev*, align 8
  %5 = alloca %struct.iio_channel*, align 8
  %6 = alloca %struct.device*, align 8
  %7 = alloca %struct.vf50_touch_device*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %10 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %11 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %10, i32 0, i32 0
  store %struct.device* %11, %struct.device** %6, align 8
  %12 = load %struct.device*, %struct.device** %6, align 8
  %13 = call %struct.iio_channel* @iio_channel_get_all(%struct.device* %12)
  store %struct.iio_channel* %13, %struct.iio_channel** %5, align 8
  %14 = load %struct.iio_channel*, %struct.iio_channel** %5, align 8
  %15 = call i64 @IS_ERR(%struct.iio_channel* %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %20

17:                                               ; preds = %1
  %18 = load %struct.iio_channel*, %struct.iio_channel** %5, align 8
  %19 = call i32 @PTR_ERR(%struct.iio_channel* %18)
  store i32 %19, i32* %2, align 4
  br label %213

20:                                               ; preds = %1
  %21 = load %struct.device*, %struct.device** %6, align 8
  %22 = load i32, i32* @vf50_ts_channel_release, align 4
  %23 = load %struct.iio_channel*, %struct.iio_channel** %5, align 8
  %24 = call i32 @devm_add_action(%struct.device* %21, i32 %22, %struct.iio_channel* %23)
  store i32 %24, i32* %9, align 4
  %25 = load i32, i32* %9, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %33

27:                                               ; preds = %20
  %28 = load %struct.iio_channel*, %struct.iio_channel** %5, align 8
  %29 = call i32 @iio_channel_release_all(%struct.iio_channel* %28)
  %30 = load %struct.device*, %struct.device** %6, align 8
  %31 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %30, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str, i64 0, i64 0))
  %32 = load i32, i32* %9, align 4
  store i32 %32, i32* %2, align 4
  br label %213

33:                                               ; preds = %20
  store i32 0, i32* %8, align 4
  br label %34

34:                                               ; preds = %42, %33
  %35 = load %struct.iio_channel*, %struct.iio_channel** %5, align 8
  %36 = load i32, i32* %8, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds %struct.iio_channel, %struct.iio_channel* %35, i64 %37
  %39 = getelementptr inbounds %struct.iio_channel, %struct.iio_channel* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %45

42:                                               ; preds = %34
  %43 = load i32, i32* %8, align 4
  %44 = add nsw i32 %43, 1
  store i32 %44, i32* %8, align 4
  br label %34

45:                                               ; preds = %34
  %46 = load i32, i32* %8, align 4
  %47 = load i32, i32* @COLI_TOUCH_REQ_ADC_CHAN, align 4
  %48 = icmp ne i32 %46, %47
  br i1 %48, label %49, label %54

49:                                               ; preds = %45
  %50 = load %struct.device*, %struct.device** %6, align 8
  %51 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %50, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0))
  %52 = load i32, i32* @EINVAL, align 4
  %53 = sub nsw i32 0, %52
  store i32 %53, i32* %2, align 4
  br label %213

54:                                               ; preds = %45
  %55 = load %struct.device*, %struct.device** %6, align 8
  %56 = load i32, i32* @GFP_KERNEL, align 4
  %57 = call %struct.vf50_touch_device* @devm_kzalloc(%struct.device* %55, i32 56, i32 %56)
  store %struct.vf50_touch_device* %57, %struct.vf50_touch_device** %7, align 8
  %58 = load %struct.vf50_touch_device*, %struct.vf50_touch_device** %7, align 8
  %59 = icmp ne %struct.vf50_touch_device* %58, null
  br i1 %59, label %63, label %60

60:                                               ; preds = %54
  %61 = load i32, i32* @ENOMEM, align 4
  %62 = sub nsw i32 0, %61
  store i32 %62, i32* %2, align 4
  br label %213

63:                                               ; preds = %54
  %64 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %65 = load %struct.vf50_touch_device*, %struct.vf50_touch_device** %7, align 8
  %66 = getelementptr inbounds %struct.vf50_touch_device, %struct.vf50_touch_device* %65, i32 0, i32 8
  store %struct.platform_device* %64, %struct.platform_device** %66, align 8
  %67 = load %struct.iio_channel*, %struct.iio_channel** %5, align 8
  %68 = load %struct.vf50_touch_device*, %struct.vf50_touch_device** %7, align 8
  %69 = getelementptr inbounds %struct.vf50_touch_device, %struct.vf50_touch_device* %68, i32 0, i32 7
  store %struct.iio_channel* %67, %struct.iio_channel** %69, align 8
  %70 = load %struct.device*, %struct.device** %6, align 8
  %71 = getelementptr inbounds %struct.device, %struct.device* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = load %struct.vf50_touch_device*, %struct.vf50_touch_device** %7, align 8
  %74 = getelementptr inbounds %struct.vf50_touch_device, %struct.vf50_touch_device* %73, i32 0, i32 6
  %75 = call i32 @of_property_read_u32(i32 %72, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0), i32* %74)
  store i32 %75, i32* %9, align 4
  %76 = load i32, i32* %9, align 4
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %80

78:                                               ; preds = %63
  %79 = load i32, i32* %9, align 4
  store i32 %79, i32* %2, align 4
  br label %213

80:                                               ; preds = %63
  %81 = load %struct.device*, %struct.device** %6, align 8
  %82 = call %struct.input_dev* @devm_input_allocate_device(%struct.device* %81)
  store %struct.input_dev* %82, %struct.input_dev** %4, align 8
  %83 = load %struct.input_dev*, %struct.input_dev** %4, align 8
  %84 = icmp ne %struct.input_dev* %83, null
  br i1 %84, label %90, label %85

85:                                               ; preds = %80
  %86 = load %struct.device*, %struct.device** %6, align 8
  %87 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %86, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.3, i64 0, i64 0))
  %88 = load i32, i32* @ENOMEM, align 4
  %89 = sub nsw i32 0, %88
  store i32 %89, i32* %2, align 4
  br label %213

90:                                               ; preds = %80
  %91 = load i32, i32* @DRIVER_NAME, align 4
  %92 = load %struct.input_dev*, %struct.input_dev** %4, align 8
  %93 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %92, i32 0, i32 4
  store i32 %91, i32* %93, align 4
  %94 = load i32, i32* @BUS_HOST, align 4
  %95 = load %struct.input_dev*, %struct.input_dev** %4, align 8
  %96 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %95, i32 0, i32 3
  %97 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %96, i32 0, i32 0
  store i32 %94, i32* %97, align 8
  %98 = load %struct.device*, %struct.device** %6, align 8
  %99 = load %struct.input_dev*, %struct.input_dev** %4, align 8
  %100 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %99, i32 0, i32 2
  %101 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %100, i32 0, i32 0
  store %struct.device* %98, %struct.device** %101, align 8
  %102 = load i32, i32* @vf50_ts_open, align 4
  %103 = load %struct.input_dev*, %struct.input_dev** %4, align 8
  %104 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %103, i32 0, i32 1
  store i32 %102, i32* %104, align 4
  %105 = load i32, i32* @vf50_ts_close, align 4
  %106 = load %struct.input_dev*, %struct.input_dev** %4, align 8
  %107 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %106, i32 0, i32 0
  store i32 %105, i32* %107, align 8
  %108 = load %struct.input_dev*, %struct.input_dev** %4, align 8
  %109 = load i32, i32* @EV_KEY, align 4
  %110 = load i32, i32* @BTN_TOUCH, align 4
  %111 = call i32 @input_set_capability(%struct.input_dev* %108, i32 %109, i32 %110)
  %112 = load %struct.input_dev*, %struct.input_dev** %4, align 8
  %113 = load i32, i32* @ABS_X, align 4
  %114 = load i32, i32* @VF_ADC_MAX, align 4
  %115 = call i32 @input_set_abs_params(%struct.input_dev* %112, i32 %113, i32 0, i32 %114, i32 0, i32 0)
  %116 = load %struct.input_dev*, %struct.input_dev** %4, align 8
  %117 = load i32, i32* @ABS_Y, align 4
  %118 = load i32, i32* @VF_ADC_MAX, align 4
  %119 = call i32 @input_set_abs_params(%struct.input_dev* %116, i32 %117, i32 0, i32 %118, i32 0, i32 0)
  %120 = load %struct.input_dev*, %struct.input_dev** %4, align 8
  %121 = load i32, i32* @ABS_PRESSURE, align 4
  %122 = load i32, i32* @VF_ADC_MAX, align 4
  %123 = call i32 @input_set_abs_params(%struct.input_dev* %120, i32 %121, i32 0, i32 %122, i32 0, i32 0)
  %124 = load %struct.input_dev*, %struct.input_dev** %4, align 8
  %125 = load %struct.vf50_touch_device*, %struct.vf50_touch_device** %7, align 8
  %126 = getelementptr inbounds %struct.vf50_touch_device, %struct.vf50_touch_device* %125, i32 0, i32 5
  store %struct.input_dev* %124, %struct.input_dev** %126, align 8
  %127 = load %struct.input_dev*, %struct.input_dev** %4, align 8
  %128 = load %struct.vf50_touch_device*, %struct.vf50_touch_device** %7, align 8
  %129 = call i32 @input_set_drvdata(%struct.input_dev* %127, %struct.vf50_touch_device* %128)
  %130 = load %struct.input_dev*, %struct.input_dev** %4, align 8
  %131 = call i32 @input_register_device(%struct.input_dev* %130)
  store i32 %131, i32* %9, align 4
  %132 = load i32, i32* %9, align 4
  %133 = icmp ne i32 %132, 0
  br i1 %133, label %134, label %138

134:                                              ; preds = %90
  %135 = load %struct.device*, %struct.device** %6, align 8
  %136 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %135, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.4, i64 0, i64 0))
  %137 = load i32, i32* %9, align 4
  store i32 %137, i32* %2, align 4
  br label %213

138:                                              ; preds = %90
  %139 = load %struct.device*, %struct.device** %6, align 8
  %140 = load %struct.vf50_touch_device*, %struct.vf50_touch_device** %7, align 8
  %141 = getelementptr inbounds %struct.vf50_touch_device, %struct.vf50_touch_device* %140, i32 0, i32 4
  %142 = load i32, i32* @GPIOD_OUT_LOW, align 4
  %143 = call i32 @vf50_ts_get_gpiod(%struct.device* %139, i32* %141, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i64 0, i64 0), i32 %142)
  store i32 %143, i32* %9, align 4
  %144 = load i32, i32* %9, align 4
  %145 = icmp ne i32 %144, 0
  br i1 %145, label %146, label %148

146:                                              ; preds = %138
  %147 = load i32, i32* %9, align 4
  store i32 %147, i32* %2, align 4
  br label %213

148:                                              ; preds = %138
  %149 = load %struct.device*, %struct.device** %6, align 8
  %150 = load %struct.vf50_touch_device*, %struct.vf50_touch_device** %7, align 8
  %151 = getelementptr inbounds %struct.vf50_touch_device, %struct.vf50_touch_device* %150, i32 0, i32 3
  %152 = load i32, i32* @GPIOD_OUT_LOW, align 4
  %153 = call i32 @vf50_ts_get_gpiod(%struct.device* %149, i32* %151, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.6, i64 0, i64 0), i32 %152)
  store i32 %153, i32* %9, align 4
  %154 = load i32, i32* %9, align 4
  %155 = icmp ne i32 %154, 0
  br i1 %155, label %156, label %158

156:                                              ; preds = %148
  %157 = load i32, i32* %9, align 4
  store i32 %157, i32* %2, align 4
  br label %213

158:                                              ; preds = %148
  %159 = load %struct.device*, %struct.device** %6, align 8
  %160 = load %struct.vf50_touch_device*, %struct.vf50_touch_device** %7, align 8
  %161 = getelementptr inbounds %struct.vf50_touch_device, %struct.vf50_touch_device* %160, i32 0, i32 2
  %162 = load i32, i32* @GPIOD_OUT_LOW, align 4
  %163 = call i32 @vf50_ts_get_gpiod(%struct.device* %159, i32* %161, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.7, i64 0, i64 0), i32 %162)
  store i32 %163, i32* %9, align 4
  %164 = load i32, i32* %9, align 4
  %165 = icmp ne i32 %164, 0
  br i1 %165, label %166, label %168

166:                                              ; preds = %158
  %167 = load i32, i32* %9, align 4
  store i32 %167, i32* %2, align 4
  br label %213

168:                                              ; preds = %158
  %169 = load %struct.device*, %struct.device** %6, align 8
  %170 = load %struct.vf50_touch_device*, %struct.vf50_touch_device** %7, align 8
  %171 = getelementptr inbounds %struct.vf50_touch_device, %struct.vf50_touch_device* %170, i32 0, i32 1
  %172 = load i32, i32* @GPIOD_OUT_LOW, align 4
  %173 = call i32 @vf50_ts_get_gpiod(%struct.device* %169, i32* %171, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.8, i64 0, i64 0), i32 %172)
  store i32 %173, i32* %9, align 4
  %174 = load i32, i32* %9, align 4
  %175 = icmp ne i32 %174, 0
  br i1 %175, label %176, label %178

176:                                              ; preds = %168
  %177 = load i32, i32* %9, align 4
  store i32 %177, i32* %2, align 4
  br label %213

178:                                              ; preds = %168
  %179 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %180 = call i64 @platform_get_irq(%struct.platform_device* %179, i32 0)
  %181 = load %struct.vf50_touch_device*, %struct.vf50_touch_device** %7, align 8
  %182 = getelementptr inbounds %struct.vf50_touch_device, %struct.vf50_touch_device* %181, i32 0, i32 0
  store i64 %180, i64* %182, align 8
  %183 = load %struct.vf50_touch_device*, %struct.vf50_touch_device** %7, align 8
  %184 = getelementptr inbounds %struct.vf50_touch_device, %struct.vf50_touch_device* %183, i32 0, i32 0
  %185 = load i64, i64* %184, align 8
  %186 = icmp slt i64 %185, 0
  br i1 %186, label %187, label %192

187:                                              ; preds = %178
  %188 = load %struct.vf50_touch_device*, %struct.vf50_touch_device** %7, align 8
  %189 = getelementptr inbounds %struct.vf50_touch_device, %struct.vf50_touch_device* %188, i32 0, i32 0
  %190 = load i64, i64* %189, align 8
  %191 = trunc i64 %190 to i32
  store i32 %191, i32* %2, align 4
  br label %213

192:                                              ; preds = %178
  %193 = load %struct.device*, %struct.device** %6, align 8
  %194 = load %struct.vf50_touch_device*, %struct.vf50_touch_device** %7, align 8
  %195 = getelementptr inbounds %struct.vf50_touch_device, %struct.vf50_touch_device* %194, i32 0, i32 0
  %196 = load i64, i64* %195, align 8
  %197 = trunc i64 %196 to i32
  %198 = load i32, i32* @vf50_ts_irq_bh, align 4
  %199 = load i32, i32* @IRQF_ONESHOT, align 4
  %200 = load %struct.vf50_touch_device*, %struct.vf50_touch_device** %7, align 8
  %201 = call i32 @devm_request_threaded_irq(%struct.device* %193, i32 %197, i32* null, i32 %198, i32 %199, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.9, i64 0, i64 0), %struct.vf50_touch_device* %200)
  store i32 %201, i32* %9, align 4
  %202 = load i32, i32* %9, align 4
  %203 = icmp ne i32 %202, 0
  br i1 %203, label %204, label %212

204:                                              ; preds = %192
  %205 = load %struct.device*, %struct.device** %6, align 8
  %206 = load %struct.vf50_touch_device*, %struct.vf50_touch_device** %7, align 8
  %207 = getelementptr inbounds %struct.vf50_touch_device, %struct.vf50_touch_device* %206, i32 0, i32 0
  %208 = load i64, i64* %207, align 8
  %209 = load i32, i32* %9, align 4
  %210 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %205, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.10, i64 0, i64 0), i64 %208, i32 %209)
  %211 = load i32, i32* %9, align 4
  store i32 %211, i32* %2, align 4
  br label %213

212:                                              ; preds = %192
  store i32 0, i32* %2, align 4
  br label %213

213:                                              ; preds = %212, %204, %187, %176, %166, %156, %146, %134, %85, %78, %60, %49, %27, %17
  %214 = load i32, i32* %2, align 4
  ret i32 %214
}

declare dso_local %struct.iio_channel* @iio_channel_get_all(%struct.device*) #1

declare dso_local i64 @IS_ERR(%struct.iio_channel*) #1

declare dso_local i32 @PTR_ERR(%struct.iio_channel*) #1

declare dso_local i32 @devm_add_action(%struct.device*, i32, %struct.iio_channel*) #1

declare dso_local i32 @iio_channel_release_all(%struct.iio_channel*) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, ...) #1

declare dso_local %struct.vf50_touch_device* @devm_kzalloc(%struct.device*, i32, i32) #1

declare dso_local i32 @of_property_read_u32(i32, i8*, i32*) #1

declare dso_local %struct.input_dev* @devm_input_allocate_device(%struct.device*) #1

declare dso_local i32 @input_set_capability(%struct.input_dev*, i32, i32) #1

declare dso_local i32 @input_set_abs_params(%struct.input_dev*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @input_set_drvdata(%struct.input_dev*, %struct.vf50_touch_device*) #1

declare dso_local i32 @input_register_device(%struct.input_dev*) #1

declare dso_local i32 @vf50_ts_get_gpiod(%struct.device*, i32*, i8*, i32) #1

declare dso_local i64 @platform_get_irq(%struct.platform_device*, i32) #1

declare dso_local i32 @devm_request_threaded_irq(%struct.device*, i32, i32*, i32, i32, i8*, %struct.vf50_touch_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
