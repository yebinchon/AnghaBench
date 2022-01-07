; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/adc/extr_palmas_gpadc.c_palmas_gpadc_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/adc/extr_palmas_gpadc.c_palmas_gpadc_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32 }
%struct.platform_device = type { %struct.TYPE_11__ }
%struct.TYPE_11__ = type { i32, i64 }
%struct.palmas_gpadc = type { i32, i32, i32, i32, i32, %struct.TYPE_10__*, %struct.TYPE_11__*, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.palmas_platform_data = type { %struct.palmas_gpadc_platform_data* }
%struct.palmas_gpadc_platform_data = type { i32, i32, i64, i64, i32, i32 }
%struct.iio_dev = type { i32, i32, i32, i32*, %struct.TYPE_9__, i32 }
%struct.TYPE_9__ = type { %struct.TYPE_11__* }

@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"iio_device_alloc failed\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@palmas_gpadc_info = common dso_local global %struct.TYPE_10__* null, align 8
@PALMAS_GPADC_EOC_SW_IRQ = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [21 x i8] c"get virq failed: %d\0A\00", align 1
@palmas_gpadc_irq = common dso_local global i32 0, align 4
@IRQF_ONESHOT = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [27 x i8] c"request irq %d failed: %d\0A\00", align 1
@palmas_gpadc_irq_auto = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [18 x i8] c"palmas-adc-auto-0\00", align 1
@.str.4 = private unnamed_addr constant [33 x i8] c"request auto0 irq %d failed: %d\0A\00", align 1
@.str.5 = private unnamed_addr constant [18 x i8] c"palmas-adc-auto-1\00", align 1
@.str.6 = private unnamed_addr constant [33 x i8] c"request auto1 irq %d failed: %d\0A\00", align 1
@PALMAS_ADC_CH0_CURRENT_SRC_0 = common dso_local global i32 0, align 4
@PALMAS_ADC_CH0_CURRENT_SRC_5 = common dso_local global i32 0, align 4
@PALMAS_ADC_CH0_CURRENT_SRC_15 = common dso_local global i32 0, align 4
@PALMAS_ADC_CH0_CURRENT_SRC_20 = common dso_local global i32 0, align 4
@PALMAS_ADC_CH3_CURRENT_SRC_0 = common dso_local global i32 0, align 4
@PALMAS_ADC_CH3_CURRENT_SRC_10 = common dso_local global i32 0, align 4
@PALMAS_ADC_CH3_CURRENT_SRC_400 = common dso_local global i32 0, align 4
@PALMAS_ADC_CH3_CURRENT_SRC_800 = common dso_local global i32 0, align 4
@MOD_NAME = common dso_local global i32 0, align 4
@palmas_gpadc_iio_info = common dso_local global i32 0, align 4
@INDIO_DIRECT_MODE = common dso_local global i32 0, align 4
@palmas_gpadc_iio_channel = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [34 x i8] c"iio_device_register() failed: %d\0A\00", align 1
@PALMAS_ADC_CH_MAX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @palmas_gpadc_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @palmas_gpadc_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.palmas_gpadc*, align 8
  %5 = alloca %struct.palmas_platform_data*, align 8
  %6 = alloca %struct.palmas_gpadc_platform_data*, align 8
  %7 = alloca %struct.iio_dev*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  store %struct.palmas_gpadc_platform_data* null, %struct.palmas_gpadc_platform_data** %6, align 8
  %10 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %11 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = call %struct.palmas_platform_data* @dev_get_platdata(i32 %13)
  store %struct.palmas_platform_data* %14, %struct.palmas_platform_data** %5, align 8
  %15 = load %struct.palmas_platform_data*, %struct.palmas_platform_data** %5, align 8
  %16 = icmp ne %struct.palmas_platform_data* %15, null
  br i1 %16, label %17, label %26

17:                                               ; preds = %1
  %18 = load %struct.palmas_platform_data*, %struct.palmas_platform_data** %5, align 8
  %19 = getelementptr inbounds %struct.palmas_platform_data, %struct.palmas_platform_data* %18, i32 0, i32 0
  %20 = load %struct.palmas_gpadc_platform_data*, %struct.palmas_gpadc_platform_data** %19, align 8
  %21 = icmp ne %struct.palmas_gpadc_platform_data* %20, null
  br i1 %21, label %22, label %26

22:                                               ; preds = %17
  %23 = load %struct.palmas_platform_data*, %struct.palmas_platform_data** %5, align 8
  %24 = getelementptr inbounds %struct.palmas_platform_data, %struct.palmas_platform_data* %23, i32 0, i32 0
  %25 = load %struct.palmas_gpadc_platform_data*, %struct.palmas_gpadc_platform_data** %24, align 8
  store %struct.palmas_gpadc_platform_data* %25, %struct.palmas_gpadc_platform_data** %6, align 8
  br label %26

26:                                               ; preds = %22, %17, %1
  %27 = load %struct.palmas_gpadc_platform_data*, %struct.palmas_gpadc_platform_data** %6, align 8
  %28 = icmp ne %struct.palmas_gpadc_platform_data* %27, null
  br i1 %28, label %43, label %29

29:                                               ; preds = %26
  %30 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %31 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %31, i32 0, i32 1
  %33 = load i64, i64* %32, align 8
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %43

35:                                               ; preds = %29
  %36 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %37 = call i32 @palmas_gpadc_get_adc_dt_data(%struct.platform_device* %36, %struct.palmas_gpadc_platform_data** %6)
  store i32 %37, i32* %8, align 4
  %38 = load i32, i32* %8, align 4
  %39 = icmp slt i32 %38, 0
  br i1 %39, label %40, label %42

40:                                               ; preds = %35
  %41 = load i32, i32* %8, align 4
  store i32 %41, i32* %2, align 4
  br label %386

42:                                               ; preds = %35
  br label %43

43:                                               ; preds = %42, %29, %26
  %44 = load %struct.palmas_gpadc_platform_data*, %struct.palmas_gpadc_platform_data** %6, align 8
  %45 = icmp ne %struct.palmas_gpadc_platform_data* %44, null
  br i1 %45, label %49, label %46

46:                                               ; preds = %43
  %47 = load i32, i32* @EINVAL, align 4
  %48 = sub nsw i32 0, %47
  store i32 %48, i32* %2, align 4
  br label %386

49:                                               ; preds = %43
  %50 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %51 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %50, i32 0, i32 0
  %52 = call %struct.iio_dev* @devm_iio_device_alloc(%struct.TYPE_11__* %51, i32 72)
  store %struct.iio_dev* %52, %struct.iio_dev** %7, align 8
  %53 = load %struct.iio_dev*, %struct.iio_dev** %7, align 8
  %54 = icmp ne %struct.iio_dev* %53, null
  br i1 %54, label %61, label %55

55:                                               ; preds = %49
  %56 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %57 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %56, i32 0, i32 0
  %58 = call i32 (%struct.TYPE_11__*, i8*, ...) @dev_err(%struct.TYPE_11__* %57, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  %59 = load i32, i32* @ENOMEM, align 4
  %60 = sub nsw i32 0, %59
  store i32 %60, i32* %2, align 4
  br label %386

61:                                               ; preds = %49
  %62 = load %struct.iio_dev*, %struct.iio_dev** %7, align 8
  %63 = call %struct.palmas_gpadc* @iio_priv(%struct.iio_dev* %62)
  store %struct.palmas_gpadc* %63, %struct.palmas_gpadc** %4, align 8
  %64 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %65 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %64, i32 0, i32 0
  %66 = load %struct.palmas_gpadc*, %struct.palmas_gpadc** %4, align 8
  %67 = getelementptr inbounds %struct.palmas_gpadc, %struct.palmas_gpadc* %66, i32 0, i32 6
  store %struct.TYPE_11__* %65, %struct.TYPE_11__** %67, align 8
  %68 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %69 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %68, i32 0, i32 0
  %70 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 8
  %72 = call i32 @dev_get_drvdata(i32 %71)
  %73 = load %struct.palmas_gpadc*, %struct.palmas_gpadc** %4, align 8
  %74 = getelementptr inbounds %struct.palmas_gpadc, %struct.palmas_gpadc* %73, i32 0, i32 12
  store i32 %72, i32* %74, align 4
  %75 = load %struct.TYPE_10__*, %struct.TYPE_10__** @palmas_gpadc_info, align 8
  %76 = load %struct.palmas_gpadc*, %struct.palmas_gpadc** %4, align 8
  %77 = getelementptr inbounds %struct.palmas_gpadc, %struct.palmas_gpadc* %76, i32 0, i32 5
  store %struct.TYPE_10__* %75, %struct.TYPE_10__** %77, align 8
  %78 = load %struct.palmas_gpadc*, %struct.palmas_gpadc** %4, align 8
  %79 = getelementptr inbounds %struct.palmas_gpadc, %struct.palmas_gpadc* %78, i32 0, i32 14
  %80 = call i32 @init_completion(i32* %79)
  %81 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %82 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %81, i32 0, i32 0
  %83 = load %struct.iio_dev*, %struct.iio_dev** %7, align 8
  %84 = call i32 @dev_set_drvdata(%struct.TYPE_11__* %82, %struct.iio_dev* %83)
  %85 = load %struct.palmas_gpadc_platform_data*, %struct.palmas_gpadc_platform_data** %6, align 8
  %86 = getelementptr inbounds %struct.palmas_gpadc_platform_data, %struct.palmas_gpadc_platform_data* %85, i32 0, i32 5
  %87 = load i32, i32* %86, align 4
  %88 = load %struct.palmas_gpadc*, %struct.palmas_gpadc** %4, align 8
  %89 = getelementptr inbounds %struct.palmas_gpadc, %struct.palmas_gpadc* %88, i32 0, i32 13
  store i32 %87, i32* %89, align 8
  %90 = load %struct.palmas_gpadc*, %struct.palmas_gpadc** %4, align 8
  %91 = getelementptr inbounds %struct.palmas_gpadc, %struct.palmas_gpadc* %90, i32 0, i32 12
  %92 = load i32, i32* %91, align 4
  %93 = load i32, i32* @PALMAS_GPADC_EOC_SW_IRQ, align 4
  %94 = call i32 @palmas_irq_get_virq(i32 %92, i32 %93)
  %95 = load %struct.palmas_gpadc*, %struct.palmas_gpadc** %4, align 8
  %96 = getelementptr inbounds %struct.palmas_gpadc, %struct.palmas_gpadc* %95, i32 0, i32 0
  store i32 %94, i32* %96, align 8
  %97 = load %struct.palmas_gpadc*, %struct.palmas_gpadc** %4, align 8
  %98 = getelementptr inbounds %struct.palmas_gpadc, %struct.palmas_gpadc* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 8
  %100 = icmp slt i32 %99, 0
  br i1 %100, label %101, label %112

101:                                              ; preds = %61
  %102 = load %struct.palmas_gpadc*, %struct.palmas_gpadc** %4, align 8
  %103 = getelementptr inbounds %struct.palmas_gpadc, %struct.palmas_gpadc* %102, i32 0, i32 6
  %104 = load %struct.TYPE_11__*, %struct.TYPE_11__** %103, align 8
  %105 = load %struct.palmas_gpadc*, %struct.palmas_gpadc** %4, align 8
  %106 = getelementptr inbounds %struct.palmas_gpadc, %struct.palmas_gpadc* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 8
  %108 = call i32 (%struct.TYPE_11__*, i8*, ...) @dev_err(%struct.TYPE_11__* %104, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0), i32 %107)
  %109 = load %struct.palmas_gpadc*, %struct.palmas_gpadc** %4, align 8
  %110 = getelementptr inbounds %struct.palmas_gpadc, %struct.palmas_gpadc* %109, i32 0, i32 0
  %111 = load i32, i32* %110, align 8
  store i32 %111, i32* %8, align 4
  br label %384

112:                                              ; preds = %61
  %113 = load %struct.palmas_gpadc*, %struct.palmas_gpadc** %4, align 8
  %114 = getelementptr inbounds %struct.palmas_gpadc, %struct.palmas_gpadc* %113, i32 0, i32 0
  %115 = load i32, i32* %114, align 8
  %116 = load i32, i32* @palmas_gpadc_irq, align 4
  %117 = load i32, i32* @IRQF_ONESHOT, align 4
  %118 = load %struct.palmas_gpadc*, %struct.palmas_gpadc** %4, align 8
  %119 = getelementptr inbounds %struct.palmas_gpadc, %struct.palmas_gpadc* %118, i32 0, i32 6
  %120 = load %struct.TYPE_11__*, %struct.TYPE_11__** %119, align 8
  %121 = call i8* @dev_name(%struct.TYPE_11__* %120)
  %122 = load %struct.palmas_gpadc*, %struct.palmas_gpadc** %4, align 8
  %123 = call i32 @request_threaded_irq(i32 %115, i32* null, i32 %116, i32 %117, i8* %121, %struct.palmas_gpadc* %122)
  store i32 %123, i32* %8, align 4
  %124 = load i32, i32* %8, align 4
  %125 = icmp slt i32 %124, 0
  br i1 %125, label %126, label %135

126:                                              ; preds = %112
  %127 = load %struct.palmas_gpadc*, %struct.palmas_gpadc** %4, align 8
  %128 = getelementptr inbounds %struct.palmas_gpadc, %struct.palmas_gpadc* %127, i32 0, i32 6
  %129 = load %struct.TYPE_11__*, %struct.TYPE_11__** %128, align 8
  %130 = load %struct.palmas_gpadc*, %struct.palmas_gpadc** %4, align 8
  %131 = getelementptr inbounds %struct.palmas_gpadc, %struct.palmas_gpadc* %130, i32 0, i32 0
  %132 = load i32, i32* %131, align 8
  %133 = load i32, i32* %8, align 4
  %134 = call i32 (%struct.TYPE_11__*, i8*, ...) @dev_err(%struct.TYPE_11__* %129, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0), i32 %132, i32 %133)
  br label %384

135:                                              ; preds = %112
  %136 = load %struct.palmas_gpadc_platform_data*, %struct.palmas_gpadc_platform_data** %6, align 8
  %137 = getelementptr inbounds %struct.palmas_gpadc_platform_data, %struct.palmas_gpadc_platform_data* %136, i32 0, i32 2
  %138 = load i64, i64* %137, align 8
  %139 = icmp ne i64 %138, 0
  br i1 %139, label %140, label %173

140:                                              ; preds = %135
  %141 = load %struct.palmas_gpadc*, %struct.palmas_gpadc** %4, align 8
  %142 = getelementptr inbounds %struct.palmas_gpadc, %struct.palmas_gpadc* %141, i32 0, i32 11
  %143 = load %struct.palmas_gpadc_platform_data*, %struct.palmas_gpadc_platform_data** %6, align 8
  %144 = getelementptr inbounds %struct.palmas_gpadc_platform_data, %struct.palmas_gpadc_platform_data* %143, i32 0, i32 2
  %145 = load i64, i64* %144, align 8
  %146 = call i32 @memcpy(i32* %142, i64 %145, i32 4)
  %147 = load %struct.palmas_gpadc*, %struct.palmas_gpadc** %4, align 8
  %148 = getelementptr inbounds %struct.palmas_gpadc, %struct.palmas_gpadc* %147, i32 0, i32 1
  store i32 1, i32* %148, align 4
  %149 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %150 = call i8* @platform_get_irq(%struct.platform_device* %149, i32 1)
  %151 = ptrtoint i8* %150 to i32
  %152 = load %struct.palmas_gpadc*, %struct.palmas_gpadc** %4, align 8
  %153 = getelementptr inbounds %struct.palmas_gpadc, %struct.palmas_gpadc* %152, i32 0, i32 2
  store i32 %151, i32* %153, align 8
  %154 = load %struct.palmas_gpadc*, %struct.palmas_gpadc** %4, align 8
  %155 = getelementptr inbounds %struct.palmas_gpadc, %struct.palmas_gpadc* %154, i32 0, i32 2
  %156 = load i32, i32* %155, align 8
  %157 = load i32, i32* @palmas_gpadc_irq_auto, align 4
  %158 = load i32, i32* @IRQF_ONESHOT, align 4
  %159 = load %struct.palmas_gpadc*, %struct.palmas_gpadc** %4, align 8
  %160 = call i32 @request_threaded_irq(i32 %156, i32* null, i32 %157, i32 %158, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.3, i64 0, i64 0), %struct.palmas_gpadc* %159)
  store i32 %160, i32* %8, align 4
  %161 = load i32, i32* %8, align 4
  %162 = icmp slt i32 %161, 0
  br i1 %162, label %163, label %172

163:                                              ; preds = %140
  %164 = load %struct.palmas_gpadc*, %struct.palmas_gpadc** %4, align 8
  %165 = getelementptr inbounds %struct.palmas_gpadc, %struct.palmas_gpadc* %164, i32 0, i32 6
  %166 = load %struct.TYPE_11__*, %struct.TYPE_11__** %165, align 8
  %167 = load %struct.palmas_gpadc*, %struct.palmas_gpadc** %4, align 8
  %168 = getelementptr inbounds %struct.palmas_gpadc, %struct.palmas_gpadc* %167, i32 0, i32 2
  %169 = load i32, i32* %168, align 8
  %170 = load i32, i32* %8, align 4
  %171 = call i32 (%struct.TYPE_11__*, i8*, ...) @dev_err(%struct.TYPE_11__* %166, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.4, i64 0, i64 0), i32 %169, i32 %170)
  br label %378

172:                                              ; preds = %140
  br label %173

173:                                              ; preds = %172, %135
  %174 = load %struct.palmas_gpadc_platform_data*, %struct.palmas_gpadc_platform_data** %6, align 8
  %175 = getelementptr inbounds %struct.palmas_gpadc_platform_data, %struct.palmas_gpadc_platform_data* %174, i32 0, i32 3
  %176 = load i64, i64* %175, align 8
  %177 = icmp ne i64 %176, 0
  br i1 %177, label %178, label %211

178:                                              ; preds = %173
  %179 = load %struct.palmas_gpadc*, %struct.palmas_gpadc** %4, align 8
  %180 = getelementptr inbounds %struct.palmas_gpadc, %struct.palmas_gpadc* %179, i32 0, i32 10
  %181 = load %struct.palmas_gpadc_platform_data*, %struct.palmas_gpadc_platform_data** %6, align 8
  %182 = getelementptr inbounds %struct.palmas_gpadc_platform_data, %struct.palmas_gpadc_platform_data* %181, i32 0, i32 3
  %183 = load i64, i64* %182, align 8
  %184 = call i32 @memcpy(i32* %180, i64 %183, i32 4)
  %185 = load %struct.palmas_gpadc*, %struct.palmas_gpadc** %4, align 8
  %186 = getelementptr inbounds %struct.palmas_gpadc, %struct.palmas_gpadc* %185, i32 0, i32 3
  store i32 1, i32* %186, align 4
  %187 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %188 = call i8* @platform_get_irq(%struct.platform_device* %187, i32 2)
  %189 = ptrtoint i8* %188 to i32
  %190 = load %struct.palmas_gpadc*, %struct.palmas_gpadc** %4, align 8
  %191 = getelementptr inbounds %struct.palmas_gpadc, %struct.palmas_gpadc* %190, i32 0, i32 4
  store i32 %189, i32* %191, align 8
  %192 = load %struct.palmas_gpadc*, %struct.palmas_gpadc** %4, align 8
  %193 = getelementptr inbounds %struct.palmas_gpadc, %struct.palmas_gpadc* %192, i32 0, i32 4
  %194 = load i32, i32* %193, align 8
  %195 = load i32, i32* @palmas_gpadc_irq_auto, align 4
  %196 = load i32, i32* @IRQF_ONESHOT, align 4
  %197 = load %struct.palmas_gpadc*, %struct.palmas_gpadc** %4, align 8
  %198 = call i32 @request_threaded_irq(i32 %194, i32* null, i32 %195, i32 %196, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.5, i64 0, i64 0), %struct.palmas_gpadc* %197)
  store i32 %198, i32* %8, align 4
  %199 = load i32, i32* %8, align 4
  %200 = icmp slt i32 %199, 0
  br i1 %200, label %201, label %210

201:                                              ; preds = %178
  %202 = load %struct.palmas_gpadc*, %struct.palmas_gpadc** %4, align 8
  %203 = getelementptr inbounds %struct.palmas_gpadc, %struct.palmas_gpadc* %202, i32 0, i32 6
  %204 = load %struct.TYPE_11__*, %struct.TYPE_11__** %203, align 8
  %205 = load %struct.palmas_gpadc*, %struct.palmas_gpadc** %4, align 8
  %206 = getelementptr inbounds %struct.palmas_gpadc, %struct.palmas_gpadc* %205, i32 0, i32 4
  %207 = load i32, i32* %206, align 8
  %208 = load i32, i32* %8, align 4
  %209 = call i32 (%struct.TYPE_11__*, i8*, ...) @dev_err(%struct.TYPE_11__* %204, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.6, i64 0, i64 0), i32 %207, i32 %208)
  br label %366

210:                                              ; preds = %178
  br label %211

211:                                              ; preds = %210, %173
  %212 = load %struct.palmas_gpadc_platform_data*, %struct.palmas_gpadc_platform_data** %6, align 8
  %213 = getelementptr inbounds %struct.palmas_gpadc_platform_data, %struct.palmas_gpadc_platform_data* %212, i32 0, i32 0
  %214 = load i32, i32* %213, align 8
  %215 = icmp sle i32 %214, 1
  br i1 %215, label %216, label %220

216:                                              ; preds = %211
  %217 = load i32, i32* @PALMAS_ADC_CH0_CURRENT_SRC_0, align 4
  %218 = load %struct.palmas_gpadc*, %struct.palmas_gpadc** %4, align 8
  %219 = getelementptr inbounds %struct.palmas_gpadc, %struct.palmas_gpadc* %218, i32 0, i32 9
  store i32 %217, i32* %219, align 8
  br label %244

220:                                              ; preds = %211
  %221 = load %struct.palmas_gpadc_platform_data*, %struct.palmas_gpadc_platform_data** %6, align 8
  %222 = getelementptr inbounds %struct.palmas_gpadc_platform_data, %struct.palmas_gpadc_platform_data* %221, i32 0, i32 0
  %223 = load i32, i32* %222, align 8
  %224 = icmp sle i32 %223, 5
  br i1 %224, label %225, label %229

225:                                              ; preds = %220
  %226 = load i32, i32* @PALMAS_ADC_CH0_CURRENT_SRC_5, align 4
  %227 = load %struct.palmas_gpadc*, %struct.palmas_gpadc** %4, align 8
  %228 = getelementptr inbounds %struct.palmas_gpadc, %struct.palmas_gpadc* %227, i32 0, i32 9
  store i32 %226, i32* %228, align 8
  br label %243

229:                                              ; preds = %220
  %230 = load %struct.palmas_gpadc_platform_data*, %struct.palmas_gpadc_platform_data** %6, align 8
  %231 = getelementptr inbounds %struct.palmas_gpadc_platform_data, %struct.palmas_gpadc_platform_data* %230, i32 0, i32 0
  %232 = load i32, i32* %231, align 8
  %233 = icmp sle i32 %232, 15
  br i1 %233, label %234, label %238

234:                                              ; preds = %229
  %235 = load i32, i32* @PALMAS_ADC_CH0_CURRENT_SRC_15, align 4
  %236 = load %struct.palmas_gpadc*, %struct.palmas_gpadc** %4, align 8
  %237 = getelementptr inbounds %struct.palmas_gpadc, %struct.palmas_gpadc* %236, i32 0, i32 9
  store i32 %235, i32* %237, align 8
  br label %242

238:                                              ; preds = %229
  %239 = load i32, i32* @PALMAS_ADC_CH0_CURRENT_SRC_20, align 4
  %240 = load %struct.palmas_gpadc*, %struct.palmas_gpadc** %4, align 8
  %241 = getelementptr inbounds %struct.palmas_gpadc, %struct.palmas_gpadc* %240, i32 0, i32 9
  store i32 %239, i32* %241, align 8
  br label %242

242:                                              ; preds = %238, %234
  br label %243

243:                                              ; preds = %242, %225
  br label %244

244:                                              ; preds = %243, %216
  %245 = load %struct.palmas_gpadc_platform_data*, %struct.palmas_gpadc_platform_data** %6, align 8
  %246 = getelementptr inbounds %struct.palmas_gpadc_platform_data, %struct.palmas_gpadc_platform_data* %245, i32 0, i32 1
  %247 = load i32, i32* %246, align 4
  %248 = icmp sle i32 %247, 1
  br i1 %248, label %249, label %253

249:                                              ; preds = %244
  %250 = load i32, i32* @PALMAS_ADC_CH3_CURRENT_SRC_0, align 4
  %251 = load %struct.palmas_gpadc*, %struct.palmas_gpadc** %4, align 8
  %252 = getelementptr inbounds %struct.palmas_gpadc, %struct.palmas_gpadc* %251, i32 0, i32 8
  store i32 %250, i32* %252, align 4
  br label %277

253:                                              ; preds = %244
  %254 = load %struct.palmas_gpadc_platform_data*, %struct.palmas_gpadc_platform_data** %6, align 8
  %255 = getelementptr inbounds %struct.palmas_gpadc_platform_data, %struct.palmas_gpadc_platform_data* %254, i32 0, i32 1
  %256 = load i32, i32* %255, align 4
  %257 = icmp sle i32 %256, 10
  br i1 %257, label %258, label %262

258:                                              ; preds = %253
  %259 = load i32, i32* @PALMAS_ADC_CH3_CURRENT_SRC_10, align 4
  %260 = load %struct.palmas_gpadc*, %struct.palmas_gpadc** %4, align 8
  %261 = getelementptr inbounds %struct.palmas_gpadc, %struct.palmas_gpadc* %260, i32 0, i32 8
  store i32 %259, i32* %261, align 4
  br label %276

262:                                              ; preds = %253
  %263 = load %struct.palmas_gpadc_platform_data*, %struct.palmas_gpadc_platform_data** %6, align 8
  %264 = getelementptr inbounds %struct.palmas_gpadc_platform_data, %struct.palmas_gpadc_platform_data* %263, i32 0, i32 1
  %265 = load i32, i32* %264, align 4
  %266 = icmp sle i32 %265, 400
  br i1 %266, label %267, label %271

267:                                              ; preds = %262
  %268 = load i32, i32* @PALMAS_ADC_CH3_CURRENT_SRC_400, align 4
  %269 = load %struct.palmas_gpadc*, %struct.palmas_gpadc** %4, align 8
  %270 = getelementptr inbounds %struct.palmas_gpadc, %struct.palmas_gpadc* %269, i32 0, i32 8
  store i32 %268, i32* %270, align 4
  br label %275

271:                                              ; preds = %262
  %272 = load i32, i32* @PALMAS_ADC_CH3_CURRENT_SRC_800, align 4
  %273 = load %struct.palmas_gpadc*, %struct.palmas_gpadc** %4, align 8
  %274 = getelementptr inbounds %struct.palmas_gpadc, %struct.palmas_gpadc* %273, i32 0, i32 8
  store i32 %272, i32* %274, align 4
  br label %275

275:                                              ; preds = %271, %267
  br label %276

276:                                              ; preds = %275, %258
  br label %277

277:                                              ; preds = %276, %249
  %278 = load %struct.palmas_gpadc_platform_data*, %struct.palmas_gpadc_platform_data** %6, align 8
  %279 = getelementptr inbounds %struct.palmas_gpadc_platform_data, %struct.palmas_gpadc_platform_data* %278, i32 0, i32 4
  %280 = load i32, i32* %279, align 8
  %281 = load %struct.palmas_gpadc*, %struct.palmas_gpadc** %4, align 8
  %282 = getelementptr inbounds %struct.palmas_gpadc, %struct.palmas_gpadc* %281, i32 0, i32 7
  store i32 %280, i32* %282, align 8
  %283 = load i32, i32* @MOD_NAME, align 4
  %284 = load %struct.iio_dev*, %struct.iio_dev** %7, align 8
  %285 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %284, i32 0, i32 5
  store i32 %283, i32* %285, align 8
  %286 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %287 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %286, i32 0, i32 0
  %288 = load %struct.iio_dev*, %struct.iio_dev** %7, align 8
  %289 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %288, i32 0, i32 4
  %290 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %289, i32 0, i32 0
  store %struct.TYPE_11__* %287, %struct.TYPE_11__** %290, align 8
  %291 = load %struct.iio_dev*, %struct.iio_dev** %7, align 8
  %292 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %291, i32 0, i32 3
  store i32* @palmas_gpadc_iio_info, i32** %292, align 8
  %293 = load i32, i32* @INDIO_DIRECT_MODE, align 4
  %294 = load %struct.iio_dev*, %struct.iio_dev** %7, align 8
  %295 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %294, i32 0, i32 2
  store i32 %293, i32* %295, align 8
  %296 = load i32, i32* @palmas_gpadc_iio_channel, align 4
  %297 = load %struct.iio_dev*, %struct.iio_dev** %7, align 8
  %298 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %297, i32 0, i32 1
  store i32 %296, i32* %298, align 4
  %299 = load i32, i32* @palmas_gpadc_iio_channel, align 4
  %300 = call i32 @ARRAY_SIZE(i32 %299)
  %301 = load %struct.iio_dev*, %struct.iio_dev** %7, align 8
  %302 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %301, i32 0, i32 0
  store i32 %300, i32* %302, align 8
  %303 = load %struct.iio_dev*, %struct.iio_dev** %7, align 8
  %304 = call i32 @iio_device_register(%struct.iio_dev* %303)
  store i32 %304, i32* %8, align 4
  %305 = load i32, i32* %8, align 4
  %306 = icmp slt i32 %305, 0
  br i1 %306, label %307, label %313

307:                                              ; preds = %277
  %308 = load %struct.palmas_gpadc*, %struct.palmas_gpadc** %4, align 8
  %309 = getelementptr inbounds %struct.palmas_gpadc, %struct.palmas_gpadc* %308, i32 0, i32 6
  %310 = load %struct.TYPE_11__*, %struct.TYPE_11__** %309, align 8
  %311 = load i32, i32* %8, align 4
  %312 = call i32 (%struct.TYPE_11__*, i8*, ...) @dev_err(%struct.TYPE_11__* %310, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.7, i64 0, i64 0), i32 %311)
  br label %354

313:                                              ; preds = %277
  %314 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %315 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %314, i32 0, i32 0
  %316 = call i32 @device_set_wakeup_capable(%struct.TYPE_11__* %315, i32 1)
  store i32 0, i32* %9, align 4
  br label %317

317:                                              ; preds = %336, %313
  %318 = load i32, i32* %9, align 4
  %319 = load i32, i32* @PALMAS_ADC_CH_MAX, align 4
  %320 = icmp slt i32 %318, %319
  br i1 %320, label %321, label %339

321:                                              ; preds = %317
  %322 = load %struct.palmas_gpadc*, %struct.palmas_gpadc** %4, align 8
  %323 = getelementptr inbounds %struct.palmas_gpadc, %struct.palmas_gpadc* %322, i32 0, i32 5
  %324 = load %struct.TYPE_10__*, %struct.TYPE_10__** %323, align 8
  %325 = load i32, i32* %9, align 4
  %326 = sext i32 %325 to i64
  %327 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %324, i64 %326
  %328 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %327, i32 0, i32 0
  %329 = load i32, i32* %328, align 4
  %330 = icmp ne i32 %329, 0
  br i1 %330, label %335, label %331

331:                                              ; preds = %321
  %332 = load %struct.palmas_gpadc*, %struct.palmas_gpadc** %4, align 8
  %333 = load i32, i32* %9, align 4
  %334 = call i32 @palmas_gpadc_calibrate(%struct.palmas_gpadc* %332, i32 %333)
  br label %335

335:                                              ; preds = %331, %321
  br label %336

336:                                              ; preds = %335
  %337 = load i32, i32* %9, align 4
  %338 = add nsw i32 %337, 1
  store i32 %338, i32* %9, align 4
  br label %317

339:                                              ; preds = %317
  %340 = load %struct.palmas_gpadc*, %struct.palmas_gpadc** %4, align 8
  %341 = getelementptr inbounds %struct.palmas_gpadc, %struct.palmas_gpadc* %340, i32 0, i32 1
  %342 = load i32, i32* %341, align 4
  %343 = icmp ne i32 %342, 0
  br i1 %343, label %349, label %344

344:                                              ; preds = %339
  %345 = load %struct.palmas_gpadc*, %struct.palmas_gpadc** %4, align 8
  %346 = getelementptr inbounds %struct.palmas_gpadc, %struct.palmas_gpadc* %345, i32 0, i32 3
  %347 = load i32, i32* %346, align 4
  %348 = icmp ne i32 %347, 0
  br i1 %348, label %349, label %353

349:                                              ; preds = %344, %339
  %350 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %351 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %350, i32 0, i32 0
  %352 = call i32 @device_wakeup_enable(%struct.TYPE_11__* %351)
  br label %353

353:                                              ; preds = %349, %344
  store i32 0, i32* %2, align 4
  br label %386

354:                                              ; preds = %307
  %355 = load %struct.palmas_gpadc_platform_data*, %struct.palmas_gpadc_platform_data** %6, align 8
  %356 = getelementptr inbounds %struct.palmas_gpadc_platform_data, %struct.palmas_gpadc_platform_data* %355, i32 0, i32 3
  %357 = load i64, i64* %356, align 8
  %358 = icmp ne i64 %357, 0
  br i1 %358, label %359, label %365

359:                                              ; preds = %354
  %360 = load %struct.palmas_gpadc*, %struct.palmas_gpadc** %4, align 8
  %361 = getelementptr inbounds %struct.palmas_gpadc, %struct.palmas_gpadc* %360, i32 0, i32 4
  %362 = load i32, i32* %361, align 8
  %363 = load %struct.palmas_gpadc*, %struct.palmas_gpadc** %4, align 8
  %364 = call i32 @free_irq(i32 %362, %struct.palmas_gpadc* %363)
  br label %365

365:                                              ; preds = %359, %354
  br label %366

366:                                              ; preds = %365, %201
  %367 = load %struct.palmas_gpadc_platform_data*, %struct.palmas_gpadc_platform_data** %6, align 8
  %368 = getelementptr inbounds %struct.palmas_gpadc_platform_data, %struct.palmas_gpadc_platform_data* %367, i32 0, i32 2
  %369 = load i64, i64* %368, align 8
  %370 = icmp ne i64 %369, 0
  br i1 %370, label %371, label %377

371:                                              ; preds = %366
  %372 = load %struct.palmas_gpadc*, %struct.palmas_gpadc** %4, align 8
  %373 = getelementptr inbounds %struct.palmas_gpadc, %struct.palmas_gpadc* %372, i32 0, i32 2
  %374 = load i32, i32* %373, align 8
  %375 = load %struct.palmas_gpadc*, %struct.palmas_gpadc** %4, align 8
  %376 = call i32 @free_irq(i32 %374, %struct.palmas_gpadc* %375)
  br label %377

377:                                              ; preds = %371, %366
  br label %378

378:                                              ; preds = %377, %163
  %379 = load %struct.palmas_gpadc*, %struct.palmas_gpadc** %4, align 8
  %380 = getelementptr inbounds %struct.palmas_gpadc, %struct.palmas_gpadc* %379, i32 0, i32 0
  %381 = load i32, i32* %380, align 8
  %382 = load %struct.palmas_gpadc*, %struct.palmas_gpadc** %4, align 8
  %383 = call i32 @free_irq(i32 %381, %struct.palmas_gpadc* %382)
  br label %384

384:                                              ; preds = %378, %126, %101
  %385 = load i32, i32* %8, align 4
  store i32 %385, i32* %2, align 4
  br label %386

386:                                              ; preds = %384, %353, %55, %46, %40
  %387 = load i32, i32* %2, align 4
  ret i32 %387
}

declare dso_local %struct.palmas_platform_data* @dev_get_platdata(i32) #1

declare dso_local i32 @palmas_gpadc_get_adc_dt_data(%struct.platform_device*, %struct.palmas_gpadc_platform_data**) #1

declare dso_local %struct.iio_dev* @devm_iio_device_alloc(%struct.TYPE_11__*, i32) #1

declare dso_local i32 @dev_err(%struct.TYPE_11__*, i8*, ...) #1

declare dso_local %struct.palmas_gpadc* @iio_priv(%struct.iio_dev*) #1

declare dso_local i32 @dev_get_drvdata(i32) #1

declare dso_local i32 @init_completion(i32*) #1

declare dso_local i32 @dev_set_drvdata(%struct.TYPE_11__*, %struct.iio_dev*) #1

declare dso_local i32 @palmas_irq_get_virq(i32, i32) #1

declare dso_local i32 @request_threaded_irq(i32, i32*, i32, i32, i8*, %struct.palmas_gpadc*) #1

declare dso_local i8* @dev_name(%struct.TYPE_11__*) #1

declare dso_local i32 @memcpy(i32*, i64, i32) #1

declare dso_local i8* @platform_get_irq(%struct.platform_device*, i32) #1

declare dso_local i32 @ARRAY_SIZE(i32) #1

declare dso_local i32 @iio_device_register(%struct.iio_dev*) #1

declare dso_local i32 @device_set_wakeup_capable(%struct.TYPE_11__*, i32) #1

declare dso_local i32 @palmas_gpadc_calibrate(%struct.palmas_gpadc*, i32) #1

declare dso_local i32 @device_wakeup_enable(%struct.TYPE_11__*) #1

declare dso_local i32 @free_irq(i32, %struct.palmas_gpadc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
