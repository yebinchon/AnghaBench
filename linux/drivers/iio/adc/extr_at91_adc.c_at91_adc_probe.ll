; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/adc/extr_at91_adc.c_at91_adc_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/adc/extr_at91_adc.c_at91_adc_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.TYPE_15__ }
%struct.TYPE_15__ = type { %struct.TYPE_12__*, i64 }
%struct.TYPE_12__ = type { i32 }
%struct.iio_dev = type { i32*, i32, i32, %struct.TYPE_11__ }
%struct.TYPE_11__ = type { %struct.TYPE_15__* }
%struct.at91_adc_state = type { i64, i32, i8*, i8*, i32, i32, i32, i64, i64, %struct.TYPE_14__*, i32, %struct.TYPE_13__*, i8* }
%struct.TYPE_14__ = type { i32, i32 }
%struct.TYPE_13__ = type { i32 (i32, i32)*, i64 }
%struct.resource = type { i32 }

@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"No platform data available.\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@INDIO_DIRECT_MODE = common dso_local global i32 0, align 4
@at91_adc_info = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@IORESOURCE_MEM = common dso_local global i32 0, align 4
@AT91_ADC_CR = common dso_local global i32 0, align 4
@AT91_ADC_SWRST = common dso_local global i32 0, align 4
@AT91_ADC_IDR = common dso_local global i32 0, align 4
@at91_adc_9x5_interrupt = common dso_local global i32 0, align 4
@at91_adc_rl_interrupt = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [25 x i8] c"Failed to allocate IRQ.\0A\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"adc_clk\00", align 1
@.str.3 = private unnamed_addr constant [26 x i8] c"Failed to get the clock.\0A\00", align 1
@.str.4 = private unnamed_addr constant [40 x i8] c"Could not prepare or enable the clock.\0A\00", align 1
@.str.5 = private unnamed_addr constant [11 x i8] c"adc_op_clk\00", align 1
@.str.6 = private unnamed_addr constant [30 x i8] c"Failed to get the ADC clock.\0A\00", align 1
@.str.7 = private unnamed_addr constant [44 x i8] c"Could not prepare or enable the ADC clock.\0A\00", align 1
@.str.8 = private unnamed_addr constant [61 x i8] c"Master clock is set as: %d Hz, adc_clk should set as: %d Hz\0A\00", align 1
@.str.9 = private unnamed_addr constant [28 x i8] c"No startup time available.\0A\00", align 1
@AT91_ADC_LOWRES = common dso_local global i32 0, align 4
@AT91_ADC_SLEEP = common dso_local global i32 0, align 4
@AT91_ADC_SHTIM = common dso_local global i32 0, align 4
@AT91_ADC_MR = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [35 x i8] c"Couldn't initialize the channels.\0A\00", align 1
@.str.11 = private unnamed_addr constant [33 x i8] c"Couldn't initialize the buffer.\0A\00", align 1
@.str.12 = private unnamed_addr constant [30 x i8] c"Couldn't setup the triggers.\0A\00", align 1
@.str.13 = private unnamed_addr constant [31 x i8] c"Couldn't register the device.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @at91_adc_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @at91_adc_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.iio_dev*, align 8
  %12 = alloca %struct.at91_adc_state*, align 8
  %13 = alloca %struct.resource*, align 8
  %14 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %15 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %16 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %15, i32 0, i32 0
  %17 = call %struct.iio_dev* @devm_iio_device_alloc(%struct.TYPE_15__* %16, i32 96)
  store %struct.iio_dev* %17, %struct.iio_dev** %11, align 8
  %18 = load %struct.iio_dev*, %struct.iio_dev** %11, align 8
  %19 = icmp ne %struct.iio_dev* %18, null
  br i1 %19, label %23, label %20

20:                                               ; preds = %1
  %21 = load i32, i32* @ENOMEM, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %2, align 4
  br label %401

23:                                               ; preds = %1
  %24 = load %struct.iio_dev*, %struct.iio_dev** %11, align 8
  %25 = call %struct.at91_adc_state* @iio_priv(%struct.iio_dev* %24)
  store %struct.at91_adc_state* %25, %struct.at91_adc_state** %12, align 8
  %26 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %27 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %27, i32 0, i32 1
  %29 = load i64, i64* %28, align 8
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %35

31:                                               ; preds = %23
  %32 = load %struct.at91_adc_state*, %struct.at91_adc_state** %12, align 8
  %33 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %34 = call i32 @at91_adc_probe_dt(%struct.at91_adc_state* %32, %struct.platform_device* %33)
  store i32 %34, i32* %10, align 4
  br label %39

35:                                               ; preds = %23
  %36 = load %struct.at91_adc_state*, %struct.at91_adc_state** %12, align 8
  %37 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %38 = call i32 @at91_adc_probe_pdata(%struct.at91_adc_state* %36, %struct.platform_device* %37)
  store i32 %38, i32* %10, align 4
  br label %39

39:                                               ; preds = %35, %31
  %40 = load i32, i32* %10, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %48

42:                                               ; preds = %39
  %43 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %44 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %43, i32 0, i32 0
  %45 = call i32 @dev_err(%struct.TYPE_15__* %44, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  %46 = load i32, i32* @EINVAL, align 4
  %47 = sub nsw i32 0, %46
  store i32 %47, i32* %2, align 4
  br label %401

48:                                               ; preds = %39
  %49 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %50 = load %struct.iio_dev*, %struct.iio_dev** %11, align 8
  %51 = call i32 @platform_set_drvdata(%struct.platform_device* %49, %struct.iio_dev* %50)
  %52 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %53 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %52, i32 0, i32 0
  %54 = load %struct.iio_dev*, %struct.iio_dev** %11, align 8
  %55 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %54, i32 0, i32 3
  %56 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %55, i32 0, i32 0
  store %struct.TYPE_15__* %53, %struct.TYPE_15__** %56, align 8
  %57 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %58 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %57, i32 0, i32 0
  %59 = call i32 @dev_name(%struct.TYPE_15__* %58)
  %60 = load %struct.iio_dev*, %struct.iio_dev** %11, align 8
  %61 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %60, i32 0, i32 2
  store i32 %59, i32* %61, align 4
  %62 = load i32, i32* @INDIO_DIRECT_MODE, align 4
  %63 = load %struct.iio_dev*, %struct.iio_dev** %11, align 8
  %64 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %63, i32 0, i32 1
  store i32 %62, i32* %64, align 8
  %65 = load %struct.iio_dev*, %struct.iio_dev** %11, align 8
  %66 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %65, i32 0, i32 0
  store i32* @at91_adc_info, i32** %66, align 8
  %67 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %68 = call i64 @platform_get_irq(%struct.platform_device* %67, i32 0)
  %69 = load %struct.at91_adc_state*, %struct.at91_adc_state** %12, align 8
  %70 = getelementptr inbounds %struct.at91_adc_state, %struct.at91_adc_state* %69, i32 0, i32 0
  store i64 %68, i64* %70, align 8
  %71 = load %struct.at91_adc_state*, %struct.at91_adc_state** %12, align 8
  %72 = getelementptr inbounds %struct.at91_adc_state, %struct.at91_adc_state* %71, i32 0, i32 0
  %73 = load i64, i64* %72, align 8
  %74 = icmp slt i64 %73, 0
  br i1 %74, label %75, label %78

75:                                               ; preds = %48
  %76 = load i32, i32* @ENODEV, align 4
  %77 = sub nsw i32 0, %76
  store i32 %77, i32* %2, align 4
  br label %401

78:                                               ; preds = %48
  %79 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %80 = load i32, i32* @IORESOURCE_MEM, align 4
  %81 = call %struct.resource* @platform_get_resource(%struct.platform_device* %79, i32 %80, i32 0)
  store %struct.resource* %81, %struct.resource** %13, align 8
  %82 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %83 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %82, i32 0, i32 0
  %84 = load %struct.resource*, %struct.resource** %13, align 8
  %85 = call i8* @devm_ioremap_resource(%struct.TYPE_15__* %83, %struct.resource* %84)
  %86 = load %struct.at91_adc_state*, %struct.at91_adc_state** %12, align 8
  %87 = getelementptr inbounds %struct.at91_adc_state, %struct.at91_adc_state* %86, i32 0, i32 12
  store i8* %85, i8** %87, align 8
  %88 = load %struct.at91_adc_state*, %struct.at91_adc_state** %12, align 8
  %89 = getelementptr inbounds %struct.at91_adc_state, %struct.at91_adc_state* %88, i32 0, i32 12
  %90 = load i8*, i8** %89, align 8
  %91 = call i64 @IS_ERR(i8* %90)
  %92 = icmp ne i64 %91, 0
  br i1 %92, label %93, label %98

93:                                               ; preds = %78
  %94 = load %struct.at91_adc_state*, %struct.at91_adc_state** %12, align 8
  %95 = getelementptr inbounds %struct.at91_adc_state, %struct.at91_adc_state* %94, i32 0, i32 12
  %96 = load i8*, i8** %95, align 8
  %97 = call i32 @PTR_ERR(i8* %96)
  store i32 %97, i32* %2, align 4
  br label %401

98:                                               ; preds = %78
  %99 = load %struct.at91_adc_state*, %struct.at91_adc_state** %12, align 8
  %100 = load i32, i32* @AT91_ADC_CR, align 4
  %101 = load i32, i32* @AT91_ADC_SWRST, align 4
  %102 = call i32 @at91_adc_writel(%struct.at91_adc_state* %99, i32 %100, i32 %101)
  %103 = load %struct.at91_adc_state*, %struct.at91_adc_state** %12, align 8
  %104 = load i32, i32* @AT91_ADC_IDR, align 4
  %105 = call i32 @at91_adc_writel(%struct.at91_adc_state* %103, i32 %104, i32 -1)
  %106 = load %struct.at91_adc_state*, %struct.at91_adc_state** %12, align 8
  %107 = getelementptr inbounds %struct.at91_adc_state, %struct.at91_adc_state* %106, i32 0, i32 11
  %108 = load %struct.TYPE_13__*, %struct.TYPE_13__** %107, align 8
  %109 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %108, i32 0, i32 1
  %110 = load i64, i64* %109, align 8
  %111 = icmp ne i64 %110, 0
  br i1 %111, label %112, label %125

112:                                              ; preds = %98
  %113 = load %struct.at91_adc_state*, %struct.at91_adc_state** %12, align 8
  %114 = getelementptr inbounds %struct.at91_adc_state, %struct.at91_adc_state* %113, i32 0, i32 0
  %115 = load i64, i64* %114, align 8
  %116 = load i32, i32* @at91_adc_9x5_interrupt, align 4
  %117 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %118 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %117, i32 0, i32 0
  %119 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %118, i32 0, i32 0
  %120 = load %struct.TYPE_12__*, %struct.TYPE_12__** %119, align 8
  %121 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %120, i32 0, i32 0
  %122 = load i32, i32* %121, align 4
  %123 = load %struct.iio_dev*, %struct.iio_dev** %11, align 8
  %124 = call i32 @request_irq(i64 %115, i32 %116, i32 0, i32 %122, %struct.iio_dev* %123)
  store i32 %124, i32* %10, align 4
  br label %138

125:                                              ; preds = %98
  %126 = load %struct.at91_adc_state*, %struct.at91_adc_state** %12, align 8
  %127 = getelementptr inbounds %struct.at91_adc_state, %struct.at91_adc_state* %126, i32 0, i32 0
  %128 = load i64, i64* %127, align 8
  %129 = load i32, i32* @at91_adc_rl_interrupt, align 4
  %130 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %131 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %130, i32 0, i32 0
  %132 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %131, i32 0, i32 0
  %133 = load %struct.TYPE_12__*, %struct.TYPE_12__** %132, align 8
  %134 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %133, i32 0, i32 0
  %135 = load i32, i32* %134, align 4
  %136 = load %struct.iio_dev*, %struct.iio_dev** %11, align 8
  %137 = call i32 @request_irq(i64 %128, i32 %129, i32 0, i32 %135, %struct.iio_dev* %136)
  store i32 %137, i32* %10, align 4
  br label %138

138:                                              ; preds = %125, %112
  %139 = load i32, i32* %10, align 4
  %140 = icmp ne i32 %139, 0
  br i1 %140, label %141, label %146

141:                                              ; preds = %138
  %142 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %143 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %142, i32 0, i32 0
  %144 = call i32 @dev_err(%struct.TYPE_15__* %143, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0))
  %145 = load i32, i32* %10, align 4
  store i32 %145, i32* %2, align 4
  br label %401

146:                                              ; preds = %138
  %147 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %148 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %147, i32 0, i32 0
  %149 = call i8* @devm_clk_get(%struct.TYPE_15__* %148, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0))
  %150 = load %struct.at91_adc_state*, %struct.at91_adc_state** %12, align 8
  %151 = getelementptr inbounds %struct.at91_adc_state, %struct.at91_adc_state* %150, i32 0, i32 2
  store i8* %149, i8** %151, align 8
  %152 = load %struct.at91_adc_state*, %struct.at91_adc_state** %12, align 8
  %153 = getelementptr inbounds %struct.at91_adc_state, %struct.at91_adc_state* %152, i32 0, i32 2
  %154 = load i8*, i8** %153, align 8
  %155 = call i64 @IS_ERR(i8* %154)
  %156 = icmp ne i64 %155, 0
  br i1 %156, label %157, label %165

157:                                              ; preds = %146
  %158 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %159 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %158, i32 0, i32 0
  %160 = call i32 @dev_err(%struct.TYPE_15__* %159, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.3, i64 0, i64 0))
  %161 = load %struct.at91_adc_state*, %struct.at91_adc_state** %12, align 8
  %162 = getelementptr inbounds %struct.at91_adc_state, %struct.at91_adc_state* %161, i32 0, i32 2
  %163 = load i8*, i8** %162, align 8
  %164 = call i32 @PTR_ERR(i8* %163)
  store i32 %164, i32* %10, align 4
  br label %394

165:                                              ; preds = %146
  %166 = load %struct.at91_adc_state*, %struct.at91_adc_state** %12, align 8
  %167 = getelementptr inbounds %struct.at91_adc_state, %struct.at91_adc_state* %166, i32 0, i32 2
  %168 = load i8*, i8** %167, align 8
  %169 = call i32 @clk_prepare_enable(i8* %168)
  store i32 %169, i32* %10, align 4
  %170 = load i32, i32* %10, align 4
  %171 = icmp ne i32 %170, 0
  br i1 %171, label %172, label %176

172:                                              ; preds = %165
  %173 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %174 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %173, i32 0, i32 0
  %175 = call i32 @dev_err(%struct.TYPE_15__* %174, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.4, i64 0, i64 0))
  br label %394

176:                                              ; preds = %165
  %177 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %178 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %177, i32 0, i32 0
  %179 = call i8* @devm_clk_get(%struct.TYPE_15__* %178, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.5, i64 0, i64 0))
  %180 = load %struct.at91_adc_state*, %struct.at91_adc_state** %12, align 8
  %181 = getelementptr inbounds %struct.at91_adc_state, %struct.at91_adc_state* %180, i32 0, i32 3
  store i8* %179, i8** %181, align 8
  %182 = load %struct.at91_adc_state*, %struct.at91_adc_state** %12, align 8
  %183 = getelementptr inbounds %struct.at91_adc_state, %struct.at91_adc_state* %182, i32 0, i32 3
  %184 = load i8*, i8** %183, align 8
  %185 = call i64 @IS_ERR(i8* %184)
  %186 = icmp ne i64 %185, 0
  br i1 %186, label %187, label %195

187:                                              ; preds = %176
  %188 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %189 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %188, i32 0, i32 0
  %190 = call i32 @dev_err(%struct.TYPE_15__* %189, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.6, i64 0, i64 0))
  %191 = load %struct.at91_adc_state*, %struct.at91_adc_state** %12, align 8
  %192 = getelementptr inbounds %struct.at91_adc_state, %struct.at91_adc_state* %191, i32 0, i32 3
  %193 = load i8*, i8** %192, align 8
  %194 = call i32 @PTR_ERR(i8* %193)
  store i32 %194, i32* %10, align 4
  br label %389

195:                                              ; preds = %176
  %196 = load %struct.at91_adc_state*, %struct.at91_adc_state** %12, align 8
  %197 = getelementptr inbounds %struct.at91_adc_state, %struct.at91_adc_state* %196, i32 0, i32 3
  %198 = load i8*, i8** %197, align 8
  %199 = call i32 @clk_prepare_enable(i8* %198)
  store i32 %199, i32* %10, align 4
  %200 = load i32, i32* %10, align 4
  %201 = icmp ne i32 %200, 0
  br i1 %201, label %202, label %206

202:                                              ; preds = %195
  %203 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %204 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %203, i32 0, i32 0
  %205 = call i32 @dev_err(%struct.TYPE_15__* %204, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.7, i64 0, i64 0))
  br label %389

206:                                              ; preds = %195
  %207 = load %struct.at91_adc_state*, %struct.at91_adc_state** %12, align 8
  %208 = getelementptr inbounds %struct.at91_adc_state, %struct.at91_adc_state* %207, i32 0, i32 2
  %209 = load i8*, i8** %208, align 8
  %210 = call i32 @clk_get_rate(i8* %209)
  store i32 %210, i32* %5, align 4
  %211 = load %struct.at91_adc_state*, %struct.at91_adc_state** %12, align 8
  %212 = getelementptr inbounds %struct.at91_adc_state, %struct.at91_adc_state* %211, i32 0, i32 3
  %213 = load i8*, i8** %212, align 8
  %214 = call i32 @clk_get_rate(i8* %213)
  store i32 %214, i32* %7, align 4
  %215 = load i32, i32* %7, align 4
  %216 = udiv i32 %215, 1000
  store i32 %216, i32* %8, align 4
  %217 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %218 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %217, i32 0, i32 0
  %219 = load i32, i32* %5, align 4
  %220 = load i32, i32* %7, align 4
  %221 = call i32 @dev_dbg(%struct.TYPE_15__* %218, i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.8, i64 0, i64 0), i32 %219, i32 %220)
  %222 = load i32, i32* %5, align 4
  %223 = load i32, i32* %7, align 4
  %224 = mul i32 2, %223
  %225 = udiv i32 %222, %224
  %226 = sub i32 %225, 1
  store i32 %226, i32* %4, align 4
  %227 = load %struct.at91_adc_state*, %struct.at91_adc_state** %12, align 8
  %228 = getelementptr inbounds %struct.at91_adc_state, %struct.at91_adc_state* %227, i32 0, i32 10
  %229 = load i32, i32* %228, align 8
  %230 = icmp ne i32 %229, 0
  br i1 %230, label %237, label %231

231:                                              ; preds = %206
  %232 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %233 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %232, i32 0, i32 0
  %234 = call i32 @dev_err(%struct.TYPE_15__* %233, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.9, i64 0, i64 0))
  %235 = load i32, i32* @EINVAL, align 4
  %236 = sub nsw i32 0, %235
  store i32 %236, i32* %10, align 4
  br label %384

237:                                              ; preds = %206
  %238 = load %struct.at91_adc_state*, %struct.at91_adc_state** %12, align 8
  %239 = getelementptr inbounds %struct.at91_adc_state, %struct.at91_adc_state* %238, i32 0, i32 11
  %240 = load %struct.TYPE_13__*, %struct.TYPE_13__** %239, align 8
  %241 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %240, i32 0, i32 0
  %242 = load i32 (i32, i32)*, i32 (i32, i32)** %241, align 8
  %243 = load %struct.at91_adc_state*, %struct.at91_adc_state** %12, align 8
  %244 = getelementptr inbounds %struct.at91_adc_state, %struct.at91_adc_state* %243, i32 0, i32 10
  %245 = load i32, i32* %244, align 8
  %246 = load i32, i32* %8, align 4
  %247 = call i32 %242(i32 %245, i32 %246)
  store i32 %247, i32* %6, align 4
  %248 = load %struct.at91_adc_state*, %struct.at91_adc_state** %12, align 8
  %249 = getelementptr inbounds %struct.at91_adc_state, %struct.at91_adc_state* %248, i32 0, i32 1
  %250 = load i32, i32* %249, align 8
  %251 = icmp ugt i32 %250, 0
  br i1 %251, label %252, label %261

252:                                              ; preds = %237
  %253 = load %struct.at91_adc_state*, %struct.at91_adc_state** %12, align 8
  %254 = getelementptr inbounds %struct.at91_adc_state, %struct.at91_adc_state* %253, i32 0, i32 1
  %255 = load i32, i32* %254, align 8
  %256 = load i32, i32* %8, align 4
  %257 = mul i32 %255, %256
  %258 = udiv i32 %257, 1000
  %259 = sub i32 %258, 1
  %260 = call i32 @round_up(i32 %259, i32 1)
  store i32 %260, i32* %9, align 4
  br label %262

261:                                              ; preds = %237
  store i32 0, i32* %9, align 4
  br label %262

262:                                              ; preds = %261, %252
  %263 = load i32, i32* %4, align 4
  %264 = call i32 @AT91_ADC_PRESCAL_(i32 %263)
  %265 = load %struct.at91_adc_state*, %struct.at91_adc_state** %12, align 8
  %266 = getelementptr inbounds %struct.at91_adc_state, %struct.at91_adc_state* %265, i32 0, i32 9
  %267 = load %struct.TYPE_14__*, %struct.TYPE_14__** %266, align 8
  %268 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %267, i32 0, i32 0
  %269 = load i32, i32* %268, align 4
  %270 = and i32 %264, %269
  store i32 %270, i32* %14, align 4
  %271 = load i32, i32* %6, align 4
  %272 = call i32 @AT91_ADC_STARTUP_(i32 %271)
  %273 = load %struct.at91_adc_state*, %struct.at91_adc_state** %12, align 8
  %274 = getelementptr inbounds %struct.at91_adc_state, %struct.at91_adc_state* %273, i32 0, i32 9
  %275 = load %struct.TYPE_14__*, %struct.TYPE_14__** %274, align 8
  %276 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %275, i32 0, i32 1
  %277 = load i32, i32* %276, align 4
  %278 = and i32 %272, %277
  %279 = load i32, i32* %14, align 4
  %280 = or i32 %279, %278
  store i32 %280, i32* %14, align 4
  %281 = load %struct.at91_adc_state*, %struct.at91_adc_state** %12, align 8
  %282 = getelementptr inbounds %struct.at91_adc_state, %struct.at91_adc_state* %281, i32 0, i32 8
  %283 = load i64, i64* %282, align 8
  %284 = icmp ne i64 %283, 0
  br i1 %284, label %285, label %289

285:                                              ; preds = %262
  %286 = load i32, i32* @AT91_ADC_LOWRES, align 4
  %287 = load i32, i32* %14, align 4
  %288 = or i32 %287, %286
  store i32 %288, i32* %14, align 4
  br label %289

289:                                              ; preds = %285, %262
  %290 = load %struct.at91_adc_state*, %struct.at91_adc_state** %12, align 8
  %291 = getelementptr inbounds %struct.at91_adc_state, %struct.at91_adc_state* %290, i32 0, i32 7
  %292 = load i64, i64* %291, align 8
  %293 = icmp ne i64 %292, 0
  br i1 %293, label %294, label %298

294:                                              ; preds = %289
  %295 = load i32, i32* @AT91_ADC_SLEEP, align 4
  %296 = load i32, i32* %14, align 4
  %297 = or i32 %296, %295
  store i32 %297, i32* %14, align 4
  br label %298

298:                                              ; preds = %294, %289
  %299 = load i32, i32* %9, align 4
  %300 = call i32 @AT91_ADC_SHTIM_(i32 %299)
  %301 = load i32, i32* @AT91_ADC_SHTIM, align 4
  %302 = and i32 %300, %301
  %303 = load i32, i32* %14, align 4
  %304 = or i32 %303, %302
  store i32 %304, i32* %14, align 4
  %305 = load %struct.at91_adc_state*, %struct.at91_adc_state** %12, align 8
  %306 = load i32, i32* @AT91_ADC_MR, align 4
  %307 = load i32, i32* %14, align 4
  %308 = call i32 @at91_adc_writel(%struct.at91_adc_state* %305, i32 %306, i32 %307)
  %309 = load %struct.iio_dev*, %struct.iio_dev** %11, align 8
  %310 = call i32 @at91_adc_channel_init(%struct.iio_dev* %309)
  store i32 %310, i32* %10, align 4
  %311 = load i32, i32* %10, align 4
  %312 = icmp slt i32 %311, 0
  br i1 %312, label %313, label %317

313:                                              ; preds = %298
  %314 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %315 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %314, i32 0, i32 0
  %316 = call i32 @dev_err(%struct.TYPE_15__* %315, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.10, i64 0, i64 0))
  br label %384

317:                                              ; preds = %298
  %318 = load %struct.at91_adc_state*, %struct.at91_adc_state** %12, align 8
  %319 = getelementptr inbounds %struct.at91_adc_state, %struct.at91_adc_state* %318, i32 0, i32 6
  %320 = call i32 @init_waitqueue_head(i32* %319)
  %321 = load %struct.at91_adc_state*, %struct.at91_adc_state** %12, align 8
  %322 = getelementptr inbounds %struct.at91_adc_state, %struct.at91_adc_state* %321, i32 0, i32 5
  %323 = call i32 @mutex_init(i32* %322)
  %324 = load %struct.at91_adc_state*, %struct.at91_adc_state** %12, align 8
  %325 = getelementptr inbounds %struct.at91_adc_state, %struct.at91_adc_state* %324, i32 0, i32 4
  %326 = load i32, i32* %325, align 8
  %327 = icmp ne i32 %326, 0
  br i1 %327, label %349, label %328

328:                                              ; preds = %317
  %329 = load %struct.iio_dev*, %struct.iio_dev** %11, align 8
  %330 = call i32 @at91_adc_buffer_init(%struct.iio_dev* %329)
  store i32 %330, i32* %10, align 4
  %331 = load i32, i32* %10, align 4
  %332 = icmp slt i32 %331, 0
  br i1 %332, label %333, label %337

333:                                              ; preds = %328
  %334 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %335 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %334, i32 0, i32 0
  %336 = call i32 @dev_err(%struct.TYPE_15__* %335, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.11, i64 0, i64 0))
  br label %384

337:                                              ; preds = %328
  %338 = load %struct.iio_dev*, %struct.iio_dev** %11, align 8
  %339 = call i32 @at91_adc_trigger_init(%struct.iio_dev* %338)
  store i32 %339, i32* %10, align 4
  %340 = load i32, i32* %10, align 4
  %341 = icmp slt i32 %340, 0
  br i1 %341, label %342, label %348

342:                                              ; preds = %337
  %343 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %344 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %343, i32 0, i32 0
  %345 = call i32 @dev_err(%struct.TYPE_15__* %344, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.12, i64 0, i64 0))
  %346 = load %struct.iio_dev*, %struct.iio_dev** %11, align 8
  %347 = call i32 @at91_adc_buffer_remove(%struct.iio_dev* %346)
  br label %384

348:                                              ; preds = %337
  br label %360

349:                                              ; preds = %317
  %350 = load %struct.at91_adc_state*, %struct.at91_adc_state** %12, align 8
  %351 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %352 = call i32 @at91_ts_register(%struct.at91_adc_state* %350, %struct.platform_device* %351)
  store i32 %352, i32* %10, align 4
  %353 = load i32, i32* %10, align 4
  %354 = icmp ne i32 %353, 0
  br i1 %354, label %355, label %356

355:                                              ; preds = %349
  br label %384

356:                                              ; preds = %349
  %357 = load %struct.at91_adc_state*, %struct.at91_adc_state** %12, align 8
  %358 = load i32, i32* %8, align 4
  %359 = call i32 @at91_ts_hw_init(%struct.at91_adc_state* %357, i32 %358)
  br label %360

360:                                              ; preds = %356, %348
  %361 = load %struct.iio_dev*, %struct.iio_dev** %11, align 8
  %362 = call i32 @iio_device_register(%struct.iio_dev* %361)
  store i32 %362, i32* %10, align 4
  %363 = load i32, i32* %10, align 4
  %364 = icmp slt i32 %363, 0
  br i1 %364, label %365, label %369

365:                                              ; preds = %360
  %366 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %367 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %366, i32 0, i32 0
  %368 = call i32 @dev_err(%struct.TYPE_15__* %367, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.13, i64 0, i64 0))
  br label %370

369:                                              ; preds = %360
  store i32 0, i32* %2, align 4
  br label %401

370:                                              ; preds = %365
  %371 = load %struct.at91_adc_state*, %struct.at91_adc_state** %12, align 8
  %372 = getelementptr inbounds %struct.at91_adc_state, %struct.at91_adc_state* %371, i32 0, i32 4
  %373 = load i32, i32* %372, align 8
  %374 = icmp ne i32 %373, 0
  br i1 %374, label %380, label %375

375:                                              ; preds = %370
  %376 = load %struct.iio_dev*, %struct.iio_dev** %11, align 8
  %377 = call i32 @at91_adc_trigger_remove(%struct.iio_dev* %376)
  %378 = load %struct.iio_dev*, %struct.iio_dev** %11, align 8
  %379 = call i32 @at91_adc_buffer_remove(%struct.iio_dev* %378)
  br label %383

380:                                              ; preds = %370
  %381 = load %struct.at91_adc_state*, %struct.at91_adc_state** %12, align 8
  %382 = call i32 @at91_ts_unregister(%struct.at91_adc_state* %381)
  br label %383

383:                                              ; preds = %380, %375
  br label %384

384:                                              ; preds = %383, %355, %342, %333, %313, %231
  %385 = load %struct.at91_adc_state*, %struct.at91_adc_state** %12, align 8
  %386 = getelementptr inbounds %struct.at91_adc_state, %struct.at91_adc_state* %385, i32 0, i32 3
  %387 = load i8*, i8** %386, align 8
  %388 = call i32 @clk_disable_unprepare(i8* %387)
  br label %389

389:                                              ; preds = %384, %202, %187
  %390 = load %struct.at91_adc_state*, %struct.at91_adc_state** %12, align 8
  %391 = getelementptr inbounds %struct.at91_adc_state, %struct.at91_adc_state* %390, i32 0, i32 2
  %392 = load i8*, i8** %391, align 8
  %393 = call i32 @clk_disable_unprepare(i8* %392)
  br label %394

394:                                              ; preds = %389, %172, %157
  %395 = load %struct.at91_adc_state*, %struct.at91_adc_state** %12, align 8
  %396 = getelementptr inbounds %struct.at91_adc_state, %struct.at91_adc_state* %395, i32 0, i32 0
  %397 = load i64, i64* %396, align 8
  %398 = load %struct.iio_dev*, %struct.iio_dev** %11, align 8
  %399 = call i32 @free_irq(i64 %397, %struct.iio_dev* %398)
  %400 = load i32, i32* %10, align 4
  store i32 %400, i32* %2, align 4
  br label %401

401:                                              ; preds = %394, %369, %141, %93, %75, %42, %20
  %402 = load i32, i32* %2, align 4
  ret i32 %402
}

declare dso_local %struct.iio_dev* @devm_iio_device_alloc(%struct.TYPE_15__*, i32) #1

declare dso_local %struct.at91_adc_state* @iio_priv(%struct.iio_dev*) #1

declare dso_local i32 @at91_adc_probe_dt(%struct.at91_adc_state*, %struct.platform_device*) #1

declare dso_local i32 @at91_adc_probe_pdata(%struct.at91_adc_state*, %struct.platform_device*) #1

declare dso_local i32 @dev_err(%struct.TYPE_15__*, i8*) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.iio_dev*) #1

declare dso_local i32 @dev_name(%struct.TYPE_15__*) #1

declare dso_local i64 @platform_get_irq(%struct.platform_device*, i32) #1

declare dso_local %struct.resource* @platform_get_resource(%struct.platform_device*, i32, i32) #1

declare dso_local i8* @devm_ioremap_resource(%struct.TYPE_15__*, %struct.resource*) #1

declare dso_local i64 @IS_ERR(i8*) #1

declare dso_local i32 @PTR_ERR(i8*) #1

declare dso_local i32 @at91_adc_writel(%struct.at91_adc_state*, i32, i32) #1

declare dso_local i32 @request_irq(i64, i32, i32, i32, %struct.iio_dev*) #1

declare dso_local i8* @devm_clk_get(%struct.TYPE_15__*, i8*) #1

declare dso_local i32 @clk_prepare_enable(i8*) #1

declare dso_local i32 @clk_get_rate(i8*) #1

declare dso_local i32 @dev_dbg(%struct.TYPE_15__*, i8*, i32, i32) #1

declare dso_local i32 @round_up(i32, i32) #1

declare dso_local i32 @AT91_ADC_PRESCAL_(i32) #1

declare dso_local i32 @AT91_ADC_STARTUP_(i32) #1

declare dso_local i32 @AT91_ADC_SHTIM_(i32) #1

declare dso_local i32 @at91_adc_channel_init(%struct.iio_dev*) #1

declare dso_local i32 @init_waitqueue_head(i32*) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @at91_adc_buffer_init(%struct.iio_dev*) #1

declare dso_local i32 @at91_adc_trigger_init(%struct.iio_dev*) #1

declare dso_local i32 @at91_adc_buffer_remove(%struct.iio_dev*) #1

declare dso_local i32 @at91_ts_register(%struct.at91_adc_state*, %struct.platform_device*) #1

declare dso_local i32 @at91_ts_hw_init(%struct.at91_adc_state*, i32) #1

declare dso_local i32 @iio_device_register(%struct.iio_dev*) #1

declare dso_local i32 @at91_adc_trigger_remove(%struct.iio_dev*) #1

declare dso_local i32 @at91_ts_unregister(%struct.at91_adc_state*) #1

declare dso_local i32 @clk_disable_unprepare(i8*) #1

declare dso_local i32 @free_irq(i64, %struct.iio_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
