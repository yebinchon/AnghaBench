; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/adc/extr_vf610_adc.c_vf610_adc_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/adc/extr_vf610_adc.c_vf610_adc_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.TYPE_12__ }
%struct.TYPE_12__ = type { i32 }
%struct.vf610_adc = type { i32, i32, i32, %struct.TYPE_10__, i32, i32, %struct.TYPE_12__*, i32 }
%struct.TYPE_10__ = type { i32 }
%struct.iio_dev = type { i32, i32, i32, i32*, %struct.TYPE_11__, i32 }
%struct.TYPE_11__ = type { i32, %struct.TYPE_12__* }
%struct.resource = type { i32 }

@.str = private unnamed_addr constant [30 x i8] c"Failed allocating iio device\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@IORESOURCE_MEM = common dso_local global i32 0, align 4
@vf610_adc_isr = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [33 x i8] c"failed requesting irq, irq = %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"adc\00", align 1
@.str.3 = private unnamed_addr constant [33 x i8] c"failed getting clock, err = %ld\0A\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"vref\00", align 1
@.str.5 = private unnamed_addr constant [23 x i8] c"fsl,adck-max-frequency\00", align 1
@.str.6 = private unnamed_addr constant [16 x i8] c"min-sample-time\00", align 1
@DEFAULT_SAMPLE_TIME = common dso_local global i32 0, align 4
@vf610_adc_iio_info = common dso_local global i32 0, align 4
@INDIO_DIRECT_MODE = common dso_local global i32 0, align 4
@vf610_adc_iio_channels = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [40 x i8] c"Could not prepare or enable the clock.\0A\00", align 1
@iio_pollfunc_store_time = common dso_local global i32 0, align 4
@iio_triggered_buffer_setup_ops = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [32 x i8] c"Couldn't initialise the buffer\0A\00", align 1
@.str.9 = private unnamed_addr constant [31 x i8] c"Couldn't register the device.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @vf610_adc_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vf610_adc_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.vf610_adc*, align 8
  %5 = alloca %struct.iio_dev*, align 8
  %6 = alloca %struct.resource*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %9 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %10 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %9, i32 0, i32 0
  %11 = call %struct.iio_dev* @devm_iio_device_alloc(%struct.TYPE_12__* %10, i32 40)
  store %struct.iio_dev* %11, %struct.iio_dev** %5, align 8
  %12 = load %struct.iio_dev*, %struct.iio_dev** %5, align 8
  %13 = icmp ne %struct.iio_dev* %12, null
  br i1 %13, label %20, label %14

14:                                               ; preds = %1
  %15 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %16 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %15, i32 0, i32 0
  %17 = call i32 (%struct.TYPE_12__*, i8*, ...) @dev_err(%struct.TYPE_12__* %16, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  %18 = load i32, i32* @ENOMEM, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %2, align 4
  br label %233

20:                                               ; preds = %1
  %21 = load %struct.iio_dev*, %struct.iio_dev** %5, align 8
  %22 = call %struct.vf610_adc* @iio_priv(%struct.iio_dev* %21)
  store %struct.vf610_adc* %22, %struct.vf610_adc** %4, align 8
  %23 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %24 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %23, i32 0, i32 0
  %25 = load %struct.vf610_adc*, %struct.vf610_adc** %4, align 8
  %26 = getelementptr inbounds %struct.vf610_adc, %struct.vf610_adc* %25, i32 0, i32 6
  store %struct.TYPE_12__* %24, %struct.TYPE_12__** %26, align 8
  %27 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %28 = load i32, i32* @IORESOURCE_MEM, align 4
  %29 = call %struct.resource* @platform_get_resource(%struct.platform_device* %27, i32 %28, i32 0)
  store %struct.resource* %29, %struct.resource** %6, align 8
  %30 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %31 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %30, i32 0, i32 0
  %32 = load %struct.resource*, %struct.resource** %6, align 8
  %33 = call i32 @devm_ioremap_resource(%struct.TYPE_12__* %31, %struct.resource* %32)
  %34 = load %struct.vf610_adc*, %struct.vf610_adc** %4, align 8
  %35 = getelementptr inbounds %struct.vf610_adc, %struct.vf610_adc* %34, i32 0, i32 7
  store i32 %33, i32* %35, align 8
  %36 = load %struct.vf610_adc*, %struct.vf610_adc** %4, align 8
  %37 = getelementptr inbounds %struct.vf610_adc, %struct.vf610_adc* %36, i32 0, i32 7
  %38 = load i32, i32* %37, align 8
  %39 = call i64 @IS_ERR(i32 %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %46

41:                                               ; preds = %20
  %42 = load %struct.vf610_adc*, %struct.vf610_adc** %4, align 8
  %43 = getelementptr inbounds %struct.vf610_adc, %struct.vf610_adc* %42, i32 0, i32 7
  %44 = load i32, i32* %43, align 8
  %45 = call i32 @PTR_ERR(i32 %44)
  store i32 %45, i32* %2, align 4
  br label %233

46:                                               ; preds = %20
  %47 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %48 = call i32 @platform_get_irq(%struct.platform_device* %47, i32 0)
  store i32 %48, i32* %7, align 4
  %49 = load i32, i32* %7, align 4
  %50 = icmp slt i32 %49, 0
  br i1 %50, label %51, label %53

51:                                               ; preds = %46
  %52 = load i32, i32* %7, align 4
  store i32 %52, i32* %2, align 4
  br label %233

53:                                               ; preds = %46
  %54 = load %struct.vf610_adc*, %struct.vf610_adc** %4, align 8
  %55 = getelementptr inbounds %struct.vf610_adc, %struct.vf610_adc* %54, i32 0, i32 6
  %56 = load %struct.TYPE_12__*, %struct.TYPE_12__** %55, align 8
  %57 = load i32, i32* %7, align 4
  %58 = load i32, i32* @vf610_adc_isr, align 4
  %59 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %60 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %59, i32 0, i32 0
  %61 = call i32 @dev_name(%struct.TYPE_12__* %60)
  %62 = load %struct.iio_dev*, %struct.iio_dev** %5, align 8
  %63 = call i32 @devm_request_irq(%struct.TYPE_12__* %56, i32 %57, i32 %58, i32 0, i32 %61, %struct.iio_dev* %62)
  store i32 %63, i32* %8, align 4
  %64 = load i32, i32* %8, align 4
  %65 = icmp slt i32 %64, 0
  br i1 %65, label %66, label %72

66:                                               ; preds = %53
  %67 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %68 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %67, i32 0, i32 0
  %69 = load i32, i32* %7, align 4
  %70 = call i32 (%struct.TYPE_12__*, i8*, ...) @dev_err(%struct.TYPE_12__* %68, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0), i32 %69)
  %71 = load i32, i32* %8, align 4
  store i32 %71, i32* %2, align 4
  br label %233

72:                                               ; preds = %53
  %73 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %74 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %73, i32 0, i32 0
  %75 = call i32 @devm_clk_get(%struct.TYPE_12__* %74, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0))
  %76 = load %struct.vf610_adc*, %struct.vf610_adc** %4, align 8
  %77 = getelementptr inbounds %struct.vf610_adc, %struct.vf610_adc* %76, i32 0, i32 1
  store i32 %75, i32* %77, align 4
  %78 = load %struct.vf610_adc*, %struct.vf610_adc** %4, align 8
  %79 = getelementptr inbounds %struct.vf610_adc, %struct.vf610_adc* %78, i32 0, i32 1
  %80 = load i32, i32* %79, align 4
  %81 = call i64 @IS_ERR(i32 %80)
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %83, label %95

83:                                               ; preds = %72
  %84 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %85 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %84, i32 0, i32 0
  %86 = load %struct.vf610_adc*, %struct.vf610_adc** %4, align 8
  %87 = getelementptr inbounds %struct.vf610_adc, %struct.vf610_adc* %86, i32 0, i32 1
  %88 = load i32, i32* %87, align 4
  %89 = call i32 @PTR_ERR(i32 %88)
  %90 = call i32 (%struct.TYPE_12__*, i8*, ...) @dev_err(%struct.TYPE_12__* %85, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.3, i64 0, i64 0), i32 %89)
  %91 = load %struct.vf610_adc*, %struct.vf610_adc** %4, align 8
  %92 = getelementptr inbounds %struct.vf610_adc, %struct.vf610_adc* %91, i32 0, i32 1
  %93 = load i32, i32* %92, align 4
  %94 = call i32 @PTR_ERR(i32 %93)
  store i32 %94, i32* %2, align 4
  br label %233

95:                                               ; preds = %72
  %96 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %97 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %96, i32 0, i32 0
  %98 = call i32 @devm_regulator_get(%struct.TYPE_12__* %97, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0))
  %99 = load %struct.vf610_adc*, %struct.vf610_adc** %4, align 8
  %100 = getelementptr inbounds %struct.vf610_adc, %struct.vf610_adc* %99, i32 0, i32 0
  store i32 %98, i32* %100, align 8
  %101 = load %struct.vf610_adc*, %struct.vf610_adc** %4, align 8
  %102 = getelementptr inbounds %struct.vf610_adc, %struct.vf610_adc* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 8
  %104 = call i64 @IS_ERR(i32 %103)
  %105 = icmp ne i64 %104, 0
  br i1 %105, label %106, label %111

106:                                              ; preds = %95
  %107 = load %struct.vf610_adc*, %struct.vf610_adc** %4, align 8
  %108 = getelementptr inbounds %struct.vf610_adc, %struct.vf610_adc* %107, i32 0, i32 0
  %109 = load i32, i32* %108, align 8
  %110 = call i32 @PTR_ERR(i32 %109)
  store i32 %110, i32* %2, align 4
  br label %233

111:                                              ; preds = %95
  %112 = load %struct.vf610_adc*, %struct.vf610_adc** %4, align 8
  %113 = getelementptr inbounds %struct.vf610_adc, %struct.vf610_adc* %112, i32 0, i32 0
  %114 = load i32, i32* %113, align 8
  %115 = call i32 @regulator_enable(i32 %114)
  store i32 %115, i32* %8, align 4
  %116 = load i32, i32* %8, align 4
  %117 = icmp ne i32 %116, 0
  br i1 %117, label %118, label %120

118:                                              ; preds = %111
  %119 = load i32, i32* %8, align 4
  store i32 %119, i32* %2, align 4
  br label %233

120:                                              ; preds = %111
  %121 = load %struct.vf610_adc*, %struct.vf610_adc** %4, align 8
  %122 = getelementptr inbounds %struct.vf610_adc, %struct.vf610_adc* %121, i32 0, i32 0
  %123 = load i32, i32* %122, align 8
  %124 = call i32 @regulator_get_voltage(i32 %123)
  %125 = load %struct.vf610_adc*, %struct.vf610_adc** %4, align 8
  %126 = getelementptr inbounds %struct.vf610_adc, %struct.vf610_adc* %125, i32 0, i32 5
  store i32 %124, i32* %126, align 4
  %127 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %128 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %127, i32 0, i32 0
  %129 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %128, i32 0, i32 0
  %130 = load i32, i32* %129, align 4
  %131 = load %struct.vf610_adc*, %struct.vf610_adc** %4, align 8
  %132 = getelementptr inbounds %struct.vf610_adc, %struct.vf610_adc* %131, i32 0, i32 4
  %133 = load i32, i32* %132, align 8
  %134 = call i32 @of_property_read_u32_array(i32 %130, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.5, i64 0, i64 0), i32 %133, i32 3)
  %135 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %136 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %135, i32 0, i32 0
  %137 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %136, i32 0, i32 0
  %138 = load i32, i32* %137, align 4
  %139 = load %struct.vf610_adc*, %struct.vf610_adc** %4, align 8
  %140 = getelementptr inbounds %struct.vf610_adc, %struct.vf610_adc* %139, i32 0, i32 3
  %141 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %140, i32 0, i32 0
  %142 = call i32 @of_property_read_u32(i32 %138, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.6, i64 0, i64 0), i32* %141)
  store i32 %142, i32* %8, align 4
  %143 = load i32, i32* %8, align 4
  %144 = icmp ne i32 %143, 0
  br i1 %144, label %145, label %150

145:                                              ; preds = %120
  %146 = load i32, i32* @DEFAULT_SAMPLE_TIME, align 4
  %147 = load %struct.vf610_adc*, %struct.vf610_adc** %4, align 8
  %148 = getelementptr inbounds %struct.vf610_adc, %struct.vf610_adc* %147, i32 0, i32 3
  %149 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %148, i32 0, i32 0
  store i32 %146, i32* %149, align 4
  br label %150

150:                                              ; preds = %145, %120
  %151 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %152 = load %struct.iio_dev*, %struct.iio_dev** %5, align 8
  %153 = call i32 @platform_set_drvdata(%struct.platform_device* %151, %struct.iio_dev* %152)
  %154 = load %struct.vf610_adc*, %struct.vf610_adc** %4, align 8
  %155 = getelementptr inbounds %struct.vf610_adc, %struct.vf610_adc* %154, i32 0, i32 2
  %156 = call i32 @init_completion(i32* %155)
  %157 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %158 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %157, i32 0, i32 0
  %159 = call i32 @dev_name(%struct.TYPE_12__* %158)
  %160 = load %struct.iio_dev*, %struct.iio_dev** %5, align 8
  %161 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %160, i32 0, i32 5
  store i32 %159, i32* %161, align 8
  %162 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %163 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %162, i32 0, i32 0
  %164 = load %struct.iio_dev*, %struct.iio_dev** %5, align 8
  %165 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %164, i32 0, i32 4
  %166 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %165, i32 0, i32 1
  store %struct.TYPE_12__* %163, %struct.TYPE_12__** %166, align 8
  %167 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %168 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %167, i32 0, i32 0
  %169 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %168, i32 0, i32 0
  %170 = load i32, i32* %169, align 4
  %171 = load %struct.iio_dev*, %struct.iio_dev** %5, align 8
  %172 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %171, i32 0, i32 4
  %173 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %172, i32 0, i32 0
  store i32 %170, i32* %173, align 8
  %174 = load %struct.iio_dev*, %struct.iio_dev** %5, align 8
  %175 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %174, i32 0, i32 3
  store i32* @vf610_adc_iio_info, i32** %175, align 8
  %176 = load i32, i32* @INDIO_DIRECT_MODE, align 4
  %177 = load %struct.iio_dev*, %struct.iio_dev** %5, align 8
  %178 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %177, i32 0, i32 2
  store i32 %176, i32* %178, align 8
  %179 = load i32, i32* @vf610_adc_iio_channels, align 4
  %180 = load %struct.iio_dev*, %struct.iio_dev** %5, align 8
  %181 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %180, i32 0, i32 1
  store i32 %179, i32* %181, align 4
  %182 = load i32, i32* @vf610_adc_iio_channels, align 4
  %183 = call i32 @ARRAY_SIZE(i32 %182)
  %184 = load %struct.iio_dev*, %struct.iio_dev** %5, align 8
  %185 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %184, i32 0, i32 0
  store i32 %183, i32* %185, align 8
  %186 = load %struct.vf610_adc*, %struct.vf610_adc** %4, align 8
  %187 = getelementptr inbounds %struct.vf610_adc, %struct.vf610_adc* %186, i32 0, i32 1
  %188 = load i32, i32* %187, align 4
  %189 = call i32 @clk_prepare_enable(i32 %188)
  store i32 %189, i32* %8, align 4
  %190 = load i32, i32* %8, align 4
  %191 = icmp ne i32 %190, 0
  br i1 %191, label %192, label %196

192:                                              ; preds = %150
  %193 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %194 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %193, i32 0, i32 0
  %195 = call i32 (%struct.TYPE_12__*, i8*, ...) @dev_err(%struct.TYPE_12__* %194, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.7, i64 0, i64 0))
  br label %227

196:                                              ; preds = %150
  %197 = load %struct.vf610_adc*, %struct.vf610_adc** %4, align 8
  %198 = call i32 @vf610_adc_cfg_init(%struct.vf610_adc* %197)
  %199 = load %struct.vf610_adc*, %struct.vf610_adc** %4, align 8
  %200 = call i32 @vf610_adc_hw_init(%struct.vf610_adc* %199)
  %201 = load %struct.iio_dev*, %struct.iio_dev** %5, align 8
  %202 = call i32 @iio_triggered_buffer_setup(%struct.iio_dev* %201, i32* @iio_pollfunc_store_time, i32* null, i32* @iio_triggered_buffer_setup_ops)
  store i32 %202, i32* %8, align 4
  %203 = load i32, i32* %8, align 4
  %204 = icmp slt i32 %203, 0
  br i1 %204, label %205, label %209

205:                                              ; preds = %196
  %206 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %207 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %206, i32 0, i32 0
  %208 = call i32 (%struct.TYPE_12__*, i8*, ...) @dev_err(%struct.TYPE_12__* %207, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.8, i64 0, i64 0))
  br label %222

209:                                              ; preds = %196
  %210 = load %struct.iio_dev*, %struct.iio_dev** %5, align 8
  %211 = call i32 @iio_device_register(%struct.iio_dev* %210)
  store i32 %211, i32* %8, align 4
  %212 = load i32, i32* %8, align 4
  %213 = icmp ne i32 %212, 0
  br i1 %213, label %214, label %218

214:                                              ; preds = %209
  %215 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %216 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %215, i32 0, i32 0
  %217 = call i32 (%struct.TYPE_12__*, i8*, ...) @dev_err(%struct.TYPE_12__* %216, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.9, i64 0, i64 0))
  br label %219

218:                                              ; preds = %209
  store i32 0, i32* %2, align 4
  br label %233

219:                                              ; preds = %214
  %220 = load %struct.iio_dev*, %struct.iio_dev** %5, align 8
  %221 = call i32 @iio_triggered_buffer_cleanup(%struct.iio_dev* %220)
  br label %222

222:                                              ; preds = %219, %205
  %223 = load %struct.vf610_adc*, %struct.vf610_adc** %4, align 8
  %224 = getelementptr inbounds %struct.vf610_adc, %struct.vf610_adc* %223, i32 0, i32 1
  %225 = load i32, i32* %224, align 4
  %226 = call i32 @clk_disable_unprepare(i32 %225)
  br label %227

227:                                              ; preds = %222, %192
  %228 = load %struct.vf610_adc*, %struct.vf610_adc** %4, align 8
  %229 = getelementptr inbounds %struct.vf610_adc, %struct.vf610_adc* %228, i32 0, i32 0
  %230 = load i32, i32* %229, align 8
  %231 = call i32 @regulator_disable(i32 %230)
  %232 = load i32, i32* %8, align 4
  store i32 %232, i32* %2, align 4
  br label %233

233:                                              ; preds = %227, %218, %118, %106, %83, %66, %51, %41, %14
  %234 = load i32, i32* %2, align 4
  ret i32 %234
}

declare dso_local %struct.iio_dev* @devm_iio_device_alloc(%struct.TYPE_12__*, i32) #1

declare dso_local i32 @dev_err(%struct.TYPE_12__*, i8*, ...) #1

declare dso_local %struct.vf610_adc* @iio_priv(%struct.iio_dev*) #1

declare dso_local %struct.resource* @platform_get_resource(%struct.platform_device*, i32, i32) #1

declare dso_local i32 @devm_ioremap_resource(%struct.TYPE_12__*, %struct.resource*) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @PTR_ERR(i32) #1

declare dso_local i32 @platform_get_irq(%struct.platform_device*, i32) #1

declare dso_local i32 @devm_request_irq(%struct.TYPE_12__*, i32, i32, i32, i32, %struct.iio_dev*) #1

declare dso_local i32 @dev_name(%struct.TYPE_12__*) #1

declare dso_local i32 @devm_clk_get(%struct.TYPE_12__*, i8*) #1

declare dso_local i32 @devm_regulator_get(%struct.TYPE_12__*, i8*) #1

declare dso_local i32 @regulator_enable(i32) #1

declare dso_local i32 @regulator_get_voltage(i32) #1

declare dso_local i32 @of_property_read_u32_array(i32, i8*, i32, i32) #1

declare dso_local i32 @of_property_read_u32(i32, i8*, i32*) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.iio_dev*) #1

declare dso_local i32 @init_completion(i32*) #1

declare dso_local i32 @ARRAY_SIZE(i32) #1

declare dso_local i32 @clk_prepare_enable(i32) #1

declare dso_local i32 @vf610_adc_cfg_init(%struct.vf610_adc*) #1

declare dso_local i32 @vf610_adc_hw_init(%struct.vf610_adc*) #1

declare dso_local i32 @iio_triggered_buffer_setup(%struct.iio_dev*, i32*, i32*, i32*) #1

declare dso_local i32 @iio_device_register(%struct.iio_dev*) #1

declare dso_local i32 @iio_triggered_buffer_cleanup(%struct.iio_dev*) #1

declare dso_local i32 @clk_disable_unprepare(i32) #1

declare dso_local i32 @regulator_disable(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
