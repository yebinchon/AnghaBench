; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/adc/extr_hx711.c_hx711_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/adc/extr_hx711.c_hx711_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32 }
%struct.platform_device = type { %struct.device }
%struct.device = type { %struct.device_node* }
%struct.device_node = type { i32 }
%struct.hx711_data = type { i32, i32, i32, i32, i8*, i8*, i8*, i32, %struct.device* }
%struct.iio_dev = type { i8*, i32, i32, i32, i32*, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { %struct.device* }

@.str = private unnamed_addr constant [31 x i8] c"failed to allocate IIO device\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [4 x i8] c"sck\00", align 1
@GPIOD_OUT_LOW = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [34 x i8] c"failed to get sck-gpiod: err=%ld\0A\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"dout\00", align 1
@GPIOD_IN = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [35 x i8] c"failed to get dout-gpiod: err=%ld\0A\00", align 1
@.str.5 = private unnamed_addr constant [5 x i8] c"avdd\00", align 1
@HX711_GAIN_MAX = common dso_local global i32 0, align 4
@hx711_gain_to_scale = common dso_local global %struct.TYPE_4__* null, align 8
@.str.6 = private unnamed_addr constant [16 x i8] c"clock-frequency\00", align 1
@.str.7 = private unnamed_addr constant [44 x i8] c"clock-frequency too low - assuming 400 kHz\0A\00", align 1
@.str.8 = private unnamed_addr constant [6 x i8] c"hx711\00", align 1
@hx711_iio_info = common dso_local global i32 0, align 4
@INDIO_DIRECT_MODE = common dso_local global i32 0, align 4
@hx711_chan_spec = common dso_local global i32 0, align 4
@iio_pollfunc_store_time = common dso_local global i32 0, align 4
@hx711_trigger = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [38 x i8] c"setup of iio triggered buffer failed\0A\00", align 1
@.str.10 = private unnamed_addr constant [30 x i8] c"Couldn't register the device\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @hx711_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hx711_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.device_node*, align 8
  %6 = alloca %struct.hx711_data*, align 8
  %7 = alloca %struct.iio_dev*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %10 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %11 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %10, i32 0, i32 0
  store %struct.device* %11, %struct.device** %4, align 8
  %12 = load %struct.device*, %struct.device** %4, align 8
  %13 = getelementptr inbounds %struct.device, %struct.device* %12, i32 0, i32 0
  %14 = load %struct.device_node*, %struct.device_node** %13, align 8
  store %struct.device_node* %14, %struct.device_node** %5, align 8
  %15 = load %struct.device*, %struct.device** %4, align 8
  %16 = call %struct.iio_dev* @devm_iio_device_alloc(%struct.device* %15, i32 56)
  store %struct.iio_dev* %16, %struct.iio_dev** %7, align 8
  %17 = load %struct.iio_dev*, %struct.iio_dev** %7, align 8
  %18 = icmp ne %struct.iio_dev* %17, null
  br i1 %18, label %24, label %19

19:                                               ; preds = %1
  %20 = load %struct.device*, %struct.device** %4, align 8
  %21 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %20, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  %22 = load i32, i32* @ENOMEM, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %2, align 4
  br label %209

24:                                               ; preds = %1
  %25 = load %struct.iio_dev*, %struct.iio_dev** %7, align 8
  %26 = call %struct.hx711_data* @iio_priv(%struct.iio_dev* %25)
  store %struct.hx711_data* %26, %struct.hx711_data** %6, align 8
  %27 = load %struct.device*, %struct.device** %4, align 8
  %28 = load %struct.hx711_data*, %struct.hx711_data** %6, align 8
  %29 = getelementptr inbounds %struct.hx711_data, %struct.hx711_data* %28, i32 0, i32 8
  store %struct.device* %27, %struct.device** %29, align 8
  %30 = load %struct.hx711_data*, %struct.hx711_data** %6, align 8
  %31 = getelementptr inbounds %struct.hx711_data, %struct.hx711_data* %30, i32 0, i32 7
  %32 = call i32 @mutex_init(i32* %31)
  %33 = load %struct.device*, %struct.device** %4, align 8
  %34 = load i32, i32* @GPIOD_OUT_LOW, align 4
  %35 = call i8* @devm_gpiod_get(%struct.device* %33, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i32 %34)
  %36 = load %struct.hx711_data*, %struct.hx711_data** %6, align 8
  %37 = getelementptr inbounds %struct.hx711_data, %struct.hx711_data* %36, i32 0, i32 6
  store i8* %35, i8** %37, align 8
  %38 = load %struct.hx711_data*, %struct.hx711_data** %6, align 8
  %39 = getelementptr inbounds %struct.hx711_data, %struct.hx711_data* %38, i32 0, i32 6
  %40 = load i8*, i8** %39, align 8
  %41 = call i64 @IS_ERR(i8* %40)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %54

43:                                               ; preds = %24
  %44 = load %struct.device*, %struct.device** %4, align 8
  %45 = load %struct.hx711_data*, %struct.hx711_data** %6, align 8
  %46 = getelementptr inbounds %struct.hx711_data, %struct.hx711_data* %45, i32 0, i32 6
  %47 = load i8*, i8** %46, align 8
  %48 = call i32 @PTR_ERR(i8* %47)
  %49 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %44, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.2, i64 0, i64 0), i32 %48)
  %50 = load %struct.hx711_data*, %struct.hx711_data** %6, align 8
  %51 = getelementptr inbounds %struct.hx711_data, %struct.hx711_data* %50, i32 0, i32 6
  %52 = load i8*, i8** %51, align 8
  %53 = call i32 @PTR_ERR(i8* %52)
  store i32 %53, i32* %2, align 4
  br label %209

54:                                               ; preds = %24
  %55 = load %struct.device*, %struct.device** %4, align 8
  %56 = load i32, i32* @GPIOD_IN, align 4
  %57 = call i8* @devm_gpiod_get(%struct.device* %55, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0), i32 %56)
  %58 = load %struct.hx711_data*, %struct.hx711_data** %6, align 8
  %59 = getelementptr inbounds %struct.hx711_data, %struct.hx711_data* %58, i32 0, i32 5
  store i8* %57, i8** %59, align 8
  %60 = load %struct.hx711_data*, %struct.hx711_data** %6, align 8
  %61 = getelementptr inbounds %struct.hx711_data, %struct.hx711_data* %60, i32 0, i32 5
  %62 = load i8*, i8** %61, align 8
  %63 = call i64 @IS_ERR(i8* %62)
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %76

65:                                               ; preds = %54
  %66 = load %struct.device*, %struct.device** %4, align 8
  %67 = load %struct.hx711_data*, %struct.hx711_data** %6, align 8
  %68 = getelementptr inbounds %struct.hx711_data, %struct.hx711_data* %67, i32 0, i32 5
  %69 = load i8*, i8** %68, align 8
  %70 = call i32 @PTR_ERR(i8* %69)
  %71 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %66, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.4, i64 0, i64 0), i32 %70)
  %72 = load %struct.hx711_data*, %struct.hx711_data** %6, align 8
  %73 = getelementptr inbounds %struct.hx711_data, %struct.hx711_data* %72, i32 0, i32 5
  %74 = load i8*, i8** %73, align 8
  %75 = call i32 @PTR_ERR(i8* %74)
  store i32 %75, i32* %2, align 4
  br label %209

76:                                               ; preds = %54
  %77 = load %struct.device*, %struct.device** %4, align 8
  %78 = call i8* @devm_regulator_get(%struct.device* %77, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0))
  %79 = load %struct.hx711_data*, %struct.hx711_data** %6, align 8
  %80 = getelementptr inbounds %struct.hx711_data, %struct.hx711_data* %79, i32 0, i32 4
  store i8* %78, i8** %80, align 8
  %81 = load %struct.hx711_data*, %struct.hx711_data** %6, align 8
  %82 = getelementptr inbounds %struct.hx711_data, %struct.hx711_data* %81, i32 0, i32 4
  %83 = load i8*, i8** %82, align 8
  %84 = call i64 @IS_ERR(i8* %83)
  %85 = icmp ne i64 %84, 0
  br i1 %85, label %86, label %91

86:                                               ; preds = %76
  %87 = load %struct.hx711_data*, %struct.hx711_data** %6, align 8
  %88 = getelementptr inbounds %struct.hx711_data, %struct.hx711_data* %87, i32 0, i32 4
  %89 = load i8*, i8** %88, align 8
  %90 = call i32 @PTR_ERR(i8* %89)
  store i32 %90, i32* %2, align 4
  br label %209

91:                                               ; preds = %76
  %92 = load %struct.hx711_data*, %struct.hx711_data** %6, align 8
  %93 = getelementptr inbounds %struct.hx711_data, %struct.hx711_data* %92, i32 0, i32 4
  %94 = load i8*, i8** %93, align 8
  %95 = call i32 @regulator_enable(i8* %94)
  store i32 %95, i32* %8, align 4
  %96 = load i32, i32* %8, align 4
  %97 = icmp slt i32 %96, 0
  br i1 %97, label %98, label %100

98:                                               ; preds = %91
  %99 = load i32, i32* %8, align 4
  store i32 %99, i32* %2, align 4
  br label %209

100:                                              ; preds = %91
  %101 = load %struct.hx711_data*, %struct.hx711_data** %6, align 8
  %102 = getelementptr inbounds %struct.hx711_data, %struct.hx711_data* %101, i32 0, i32 4
  %103 = load i8*, i8** %102, align 8
  %104 = call i32 @regulator_get_voltage(i8* %103)
  store i32 %104, i32* %8, align 4
  %105 = load i32, i32* %8, align 4
  %106 = icmp slt i32 %105, 0
  br i1 %106, label %107, label %108

107:                                              ; preds = %100
  br label %203

108:                                              ; preds = %100
  %109 = load i32, i32* %8, align 4
  %110 = mul nsw i32 %109, 100
  store i32 %110, i32* %8, align 4
  store i32 0, i32* %9, align 4
  br label %111

111:                                              ; preds = %130, %108
  %112 = load i32, i32* %9, align 4
  %113 = load i32, i32* @HX711_GAIN_MAX, align 4
  %114 = icmp slt i32 %112, %113
  br i1 %114, label %115, label %133

115:                                              ; preds = %111
  %116 = load i32, i32* %8, align 4
  %117 = load %struct.TYPE_4__*, %struct.TYPE_4__** @hx711_gain_to_scale, align 8
  %118 = load i32, i32* %9, align 4
  %119 = sext i32 %118 to i64
  %120 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %117, i64 %119
  %121 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %120, i32 0, i32 1
  %122 = load i32, i32* %121, align 4
  %123 = sdiv i32 %116, %122
  %124 = sdiv i32 %123, 1678
  %125 = load %struct.TYPE_4__*, %struct.TYPE_4__** @hx711_gain_to_scale, align 8
  %126 = load i32, i32* %9, align 4
  %127 = sext i32 %126 to i64
  %128 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %125, i64 %127
  %129 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %128, i32 0, i32 0
  store i32 %124, i32* %129, align 4
  br label %130

130:                                              ; preds = %115
  %131 = load i32, i32* %9, align 4
  %132 = add nsw i32 %131, 1
  store i32 %132, i32* %9, align 4
  br label %111

133:                                              ; preds = %111
  %134 = load %struct.hx711_data*, %struct.hx711_data** %6, align 8
  %135 = getelementptr inbounds %struct.hx711_data, %struct.hx711_data* %134, i32 0, i32 0
  store i32 128, i32* %135, align 8
  %136 = load %struct.hx711_data*, %struct.hx711_data** %6, align 8
  %137 = getelementptr inbounds %struct.hx711_data, %struct.hx711_data* %136, i32 0, i32 1
  store i32 128, i32* %137, align 4
  %138 = load %struct.hx711_data*, %struct.hx711_data** %6, align 8
  %139 = getelementptr inbounds %struct.hx711_data, %struct.hx711_data* %138, i32 0, i32 2
  store i32 400000, i32* %139, align 8
  %140 = load %struct.device_node*, %struct.device_node** %5, align 8
  %141 = load %struct.hx711_data*, %struct.hx711_data** %6, align 8
  %142 = getelementptr inbounds %struct.hx711_data, %struct.hx711_data* %141, i32 0, i32 2
  %143 = call i32 @of_property_read_u32(%struct.device_node* %140, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.6, i64 0, i64 0), i32* %142)
  store i32 %143, i32* %8, align 4
  %144 = load %struct.hx711_data*, %struct.hx711_data** %6, align 8
  %145 = getelementptr inbounds %struct.hx711_data, %struct.hx711_data* %144, i32 0, i32 2
  %146 = load i32, i32* %145, align 8
  %147 = icmp slt i32 %146, 20000
  br i1 %147, label %148, label %153

148:                                              ; preds = %133
  %149 = load %struct.device*, %struct.device** %4, align 8
  %150 = call i32 @dev_warn(%struct.device* %149, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.7, i64 0, i64 0))
  %151 = load %struct.hx711_data*, %struct.hx711_data** %6, align 8
  %152 = getelementptr inbounds %struct.hx711_data, %struct.hx711_data* %151, i32 0, i32 2
  store i32 400000, i32* %152, align 8
  br label %153

153:                                              ; preds = %148, %133
  %154 = load %struct.hx711_data*, %struct.hx711_data** %6, align 8
  %155 = getelementptr inbounds %struct.hx711_data, %struct.hx711_data* %154, i32 0, i32 2
  %156 = load i32, i32* %155, align 8
  %157 = sdiv i32 1000000000, %156
  %158 = load %struct.hx711_data*, %struct.hx711_data** %6, align 8
  %159 = getelementptr inbounds %struct.hx711_data, %struct.hx711_data* %158, i32 0, i32 3
  store i32 %157, i32* %159, align 4
  %160 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %161 = load %struct.iio_dev*, %struct.iio_dev** %7, align 8
  %162 = call i32 @platform_set_drvdata(%struct.platform_device* %160, %struct.iio_dev* %161)
  %163 = load %struct.iio_dev*, %struct.iio_dev** %7, align 8
  %164 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %163, i32 0, i32 0
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.8, i64 0, i64 0), i8** %164, align 8
  %165 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %166 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %165, i32 0, i32 0
  %167 = load %struct.iio_dev*, %struct.iio_dev** %7, align 8
  %168 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %167, i32 0, i32 5
  %169 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %168, i32 0, i32 0
  store %struct.device* %166, %struct.device** %169, align 8
  %170 = load %struct.iio_dev*, %struct.iio_dev** %7, align 8
  %171 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %170, i32 0, i32 4
  store i32* @hx711_iio_info, i32** %171, align 8
  %172 = load i32, i32* @INDIO_DIRECT_MODE, align 4
  %173 = load %struct.iio_dev*, %struct.iio_dev** %7, align 8
  %174 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %173, i32 0, i32 3
  store i32 %172, i32* %174, align 8
  %175 = load i32, i32* @hx711_chan_spec, align 4
  %176 = load %struct.iio_dev*, %struct.iio_dev** %7, align 8
  %177 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %176, i32 0, i32 2
  store i32 %175, i32* %177, align 4
  %178 = load i32, i32* @hx711_chan_spec, align 4
  %179 = call i32 @ARRAY_SIZE(i32 %178)
  %180 = load %struct.iio_dev*, %struct.iio_dev** %7, align 8
  %181 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %180, i32 0, i32 1
  store i32 %179, i32* %181, align 8
  %182 = load %struct.iio_dev*, %struct.iio_dev** %7, align 8
  %183 = load i32, i32* @iio_pollfunc_store_time, align 4
  %184 = load i32, i32* @hx711_trigger, align 4
  %185 = call i32 @iio_triggered_buffer_setup(%struct.iio_dev* %182, i32 %183, i32 %184, i32* null)
  store i32 %185, i32* %8, align 4
  %186 = load i32, i32* %8, align 4
  %187 = icmp slt i32 %186, 0
  br i1 %187, label %188, label %191

188:                                              ; preds = %153
  %189 = load %struct.device*, %struct.device** %4, align 8
  %190 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %189, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.9, i64 0, i64 0))
  br label %203

191:                                              ; preds = %153
  %192 = load %struct.iio_dev*, %struct.iio_dev** %7, align 8
  %193 = call i32 @iio_device_register(%struct.iio_dev* %192)
  store i32 %193, i32* %8, align 4
  %194 = load i32, i32* %8, align 4
  %195 = icmp slt i32 %194, 0
  br i1 %195, label %196, label %199

196:                                              ; preds = %191
  %197 = load %struct.device*, %struct.device** %4, align 8
  %198 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %197, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.10, i64 0, i64 0))
  br label %200

199:                                              ; preds = %191
  store i32 0, i32* %2, align 4
  br label %209

200:                                              ; preds = %196
  %201 = load %struct.iio_dev*, %struct.iio_dev** %7, align 8
  %202 = call i32 @iio_triggered_buffer_cleanup(%struct.iio_dev* %201)
  br label %203

203:                                              ; preds = %200, %188, %107
  %204 = load %struct.hx711_data*, %struct.hx711_data** %6, align 8
  %205 = getelementptr inbounds %struct.hx711_data, %struct.hx711_data* %204, i32 0, i32 4
  %206 = load i8*, i8** %205, align 8
  %207 = call i32 @regulator_disable(i8* %206)
  %208 = load i32, i32* %8, align 4
  store i32 %208, i32* %2, align 4
  br label %209

209:                                              ; preds = %203, %199, %98, %86, %65, %43, %19
  %210 = load i32, i32* %2, align 4
  ret i32 %210
}

declare dso_local %struct.iio_dev* @devm_iio_device_alloc(%struct.device*, i32) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, ...) #1

declare dso_local %struct.hx711_data* @iio_priv(%struct.iio_dev*) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i8* @devm_gpiod_get(%struct.device*, i8*, i32) #1

declare dso_local i64 @IS_ERR(i8*) #1

declare dso_local i32 @PTR_ERR(i8*) #1

declare dso_local i8* @devm_regulator_get(%struct.device*, i8*) #1

declare dso_local i32 @regulator_enable(i8*) #1

declare dso_local i32 @regulator_get_voltage(i8*) #1

declare dso_local i32 @of_property_read_u32(%struct.device_node*, i8*, i32*) #1

declare dso_local i32 @dev_warn(%struct.device*, i8*) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.iio_dev*) #1

declare dso_local i32 @ARRAY_SIZE(i32) #1

declare dso_local i32 @iio_triggered_buffer_setup(%struct.iio_dev*, i32, i32, i32*) #1

declare dso_local i32 @iio_device_register(%struct.iio_dev*) #1

declare dso_local i32 @iio_triggered_buffer_cleanup(%struct.iio_dev*) #1

declare dso_local i32 @regulator_disable(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
