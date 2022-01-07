; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/adc/extr_bcm_iproc_adc.c_iproc_adc_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/adc/extr_bcm_iproc_adc.c_iproc_adc_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32 }
%struct.iproc_adc_priv = type { i64, i32, i32, i32, i32 }
%struct.iio_dev = type { i8*, i32, i32, i32, i32*, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32, %struct.TYPE_7__* }

@.str = private unnamed_addr constant [31 x i8] c"failed to allocate iio device\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [11 x i8] c"adc-syscon\00", align 1
@.str.2 = private unnamed_addr constant [37 x i8] c"failed to get handle for tsc syscon\0A\00", align 1
@.str.3 = private unnamed_addr constant [8 x i8] c"tsc_clk\00", align 1
@.str.4 = private unnamed_addr constant [30 x i8] c"failed getting clock tsc_clk\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@IPROC_REGCTL2 = common dso_local global i32 0, align 4
@IPROC_ADC_AUXIN_SCAN_ENA = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [34 x i8] c"failed to write IPROC_REGCTL2 %d\0A\00", align 1
@iproc_adc_interrupt_handler = common dso_local global i32 0, align 4
@iproc_adc_interrupt_thread = common dso_local global i32 0, align 4
@IRQF_SHARED = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [10 x i8] c"iproc-adc\00", align 1
@.str.7 = private unnamed_addr constant [22 x i8] c"request_irq error %d\0A\00", align 1
@.str.8 = private unnamed_addr constant [30 x i8] c"clk_prepare_enable failed %d\0A\00", align 1
@.str.9 = private unnamed_addr constant [25 x i8] c"failed to enable adc %d\0A\00", align 1
@.str.10 = private unnamed_addr constant [17 x i8] c"iproc-static-adc\00", align 1
@iproc_adc_iio_info = common dso_local global i32 0, align 4
@INDIO_DIRECT_MODE = common dso_local global i32 0, align 4
@iproc_adc_iio_channels = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [35 x i8] c"iio_device_register failed:err %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @iproc_adc_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @iproc_adc_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.iproc_adc_priv*, align 8
  %5 = alloca %struct.iio_dev*, align 8
  %6 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  store %struct.iio_dev* null, %struct.iio_dev** %5, align 8
  %7 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %8 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %7, i32 0, i32 0
  %9 = call %struct.iio_dev* @devm_iio_device_alloc(%struct.TYPE_7__* %8, i32 24)
  store %struct.iio_dev* %9, %struct.iio_dev** %5, align 8
  %10 = load %struct.iio_dev*, %struct.iio_dev** %5, align 8
  %11 = icmp ne %struct.iio_dev* %10, null
  br i1 %11, label %18, label %12

12:                                               ; preds = %1
  %13 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %14 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %13, i32 0, i32 0
  %15 = call i32 (%struct.TYPE_7__*, i8*, ...) @dev_err(%struct.TYPE_7__* %14, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  %16 = load i32, i32* @ENOMEM, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %2, align 4
  br label %186

18:                                               ; preds = %1
  %19 = load %struct.iio_dev*, %struct.iio_dev** %5, align 8
  %20 = call %struct.iproc_adc_priv* @iio_priv(%struct.iio_dev* %19)
  store %struct.iproc_adc_priv* %20, %struct.iproc_adc_priv** %4, align 8
  %21 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %22 = load %struct.iio_dev*, %struct.iio_dev** %5, align 8
  %23 = call i32 @platform_set_drvdata(%struct.platform_device* %21, %struct.iio_dev* %22)
  %24 = load %struct.iproc_adc_priv*, %struct.iproc_adc_priv** %4, align 8
  %25 = getelementptr inbounds %struct.iproc_adc_priv, %struct.iproc_adc_priv* %24, i32 0, i32 4
  %26 = call i32 @mutex_init(i32* %25)
  %27 = load %struct.iproc_adc_priv*, %struct.iproc_adc_priv** %4, align 8
  %28 = getelementptr inbounds %struct.iproc_adc_priv, %struct.iproc_adc_priv* %27, i32 0, i32 3
  %29 = call i32 @init_completion(i32* %28)
  %30 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %31 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @syscon_regmap_lookup_by_phandle(i32 %33, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0))
  %35 = load %struct.iproc_adc_priv*, %struct.iproc_adc_priv** %4, align 8
  %36 = getelementptr inbounds %struct.iproc_adc_priv, %struct.iproc_adc_priv* %35, i32 0, i32 2
  store i32 %34, i32* %36, align 4
  %37 = load %struct.iproc_adc_priv*, %struct.iproc_adc_priv** %4, align 8
  %38 = getelementptr inbounds %struct.iproc_adc_priv, %struct.iproc_adc_priv* %37, i32 0, i32 2
  %39 = load i32, i32* %38, align 4
  %40 = call i64 @IS_ERR(i32 %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %51

42:                                               ; preds = %18
  %43 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %44 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %43, i32 0, i32 0
  %45 = call i32 (%struct.TYPE_7__*, i8*, ...) @dev_err(%struct.TYPE_7__* %44, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.2, i64 0, i64 0))
  %46 = load %struct.iproc_adc_priv*, %struct.iproc_adc_priv** %4, align 8
  %47 = getelementptr inbounds %struct.iproc_adc_priv, %struct.iproc_adc_priv* %46, i32 0, i32 2
  %48 = load i32, i32* %47, align 4
  %49 = call i32 @PTR_ERR(i32 %48)
  store i32 %49, i32* %6, align 4
  %50 = load i32, i32* %6, align 4
  store i32 %50, i32* %2, align 4
  br label %186

51:                                               ; preds = %18
  %52 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %53 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %52, i32 0, i32 0
  %54 = call i32 @devm_clk_get(%struct.TYPE_7__* %53, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0))
  %55 = load %struct.iproc_adc_priv*, %struct.iproc_adc_priv** %4, align 8
  %56 = getelementptr inbounds %struct.iproc_adc_priv, %struct.iproc_adc_priv* %55, i32 0, i32 1
  store i32 %54, i32* %56, align 8
  %57 = load %struct.iproc_adc_priv*, %struct.iproc_adc_priv** %4, align 8
  %58 = getelementptr inbounds %struct.iproc_adc_priv, %struct.iproc_adc_priv* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 8
  %60 = call i64 @IS_ERR(i32 %59)
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %71

62:                                               ; preds = %51
  %63 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %64 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %63, i32 0, i32 0
  %65 = call i32 (%struct.TYPE_7__*, i8*, ...) @dev_err(%struct.TYPE_7__* %64, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.4, i64 0, i64 0))
  %66 = load %struct.iproc_adc_priv*, %struct.iproc_adc_priv** %4, align 8
  %67 = getelementptr inbounds %struct.iproc_adc_priv, %struct.iproc_adc_priv* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 8
  %69 = call i32 @PTR_ERR(i32 %68)
  store i32 %69, i32* %6, align 4
  %70 = load i32, i32* %6, align 4
  store i32 %70, i32* %2, align 4
  br label %186

71:                                               ; preds = %51
  %72 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %73 = call i64 @platform_get_irq(%struct.platform_device* %72, i32 0)
  %74 = load %struct.iproc_adc_priv*, %struct.iproc_adc_priv** %4, align 8
  %75 = getelementptr inbounds %struct.iproc_adc_priv, %struct.iproc_adc_priv* %74, i32 0, i32 0
  store i64 %73, i64* %75, align 8
  %76 = load %struct.iproc_adc_priv*, %struct.iproc_adc_priv** %4, align 8
  %77 = getelementptr inbounds %struct.iproc_adc_priv, %struct.iproc_adc_priv* %76, i32 0, i32 0
  %78 = load i64, i64* %77, align 8
  %79 = icmp sle i64 %78, 0
  br i1 %79, label %80, label %83

80:                                               ; preds = %71
  %81 = load i32, i32* @ENODEV, align 4
  %82 = sub nsw i32 0, %81
  store i32 %82, i32* %2, align 4
  br label %186

83:                                               ; preds = %71
  %84 = load %struct.iproc_adc_priv*, %struct.iproc_adc_priv** %4, align 8
  %85 = getelementptr inbounds %struct.iproc_adc_priv, %struct.iproc_adc_priv* %84, i32 0, i32 2
  %86 = load i32, i32* %85, align 4
  %87 = load i32, i32* @IPROC_REGCTL2, align 4
  %88 = load i32, i32* @IPROC_ADC_AUXIN_SCAN_ENA, align 4
  %89 = call i32 @regmap_update_bits(i32 %86, i32 %87, i32 %88, i32 0)
  store i32 %89, i32* %6, align 4
  %90 = load i32, i32* %6, align 4
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %92, label %98

92:                                               ; preds = %83
  %93 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %94 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %93, i32 0, i32 0
  %95 = load i32, i32* %6, align 4
  %96 = call i32 (%struct.TYPE_7__*, i8*, ...) @dev_err(%struct.TYPE_7__* %94, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.5, i64 0, i64 0), i32 %95)
  %97 = load i32, i32* %6, align 4
  store i32 %97, i32* %2, align 4
  br label %186

98:                                               ; preds = %83
  %99 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %100 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %99, i32 0, i32 0
  %101 = load %struct.iproc_adc_priv*, %struct.iproc_adc_priv** %4, align 8
  %102 = getelementptr inbounds %struct.iproc_adc_priv, %struct.iproc_adc_priv* %101, i32 0, i32 0
  %103 = load i64, i64* %102, align 8
  %104 = load i32, i32* @iproc_adc_interrupt_handler, align 4
  %105 = load i32, i32* @iproc_adc_interrupt_thread, align 4
  %106 = load i32, i32* @IRQF_SHARED, align 4
  %107 = load %struct.iio_dev*, %struct.iio_dev** %5, align 8
  %108 = call i32 @devm_request_threaded_irq(%struct.TYPE_7__* %100, i64 %103, i32 %104, i32 %105, i32 %106, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.6, i64 0, i64 0), %struct.iio_dev* %107)
  store i32 %108, i32* %6, align 4
  %109 = load i32, i32* %6, align 4
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %111, label %117

111:                                              ; preds = %98
  %112 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %113 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %112, i32 0, i32 0
  %114 = load i32, i32* %6, align 4
  %115 = call i32 (%struct.TYPE_7__*, i8*, ...) @dev_err(%struct.TYPE_7__* %113, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.7, i64 0, i64 0), i32 %114)
  %116 = load i32, i32* %6, align 4
  store i32 %116, i32* %2, align 4
  br label %186

117:                                              ; preds = %98
  %118 = load %struct.iproc_adc_priv*, %struct.iproc_adc_priv** %4, align 8
  %119 = getelementptr inbounds %struct.iproc_adc_priv, %struct.iproc_adc_priv* %118, i32 0, i32 1
  %120 = load i32, i32* %119, align 8
  %121 = call i32 @clk_prepare_enable(i32 %120)
  store i32 %121, i32* %6, align 4
  %122 = load i32, i32* %6, align 4
  %123 = icmp ne i32 %122, 0
  br i1 %123, label %124, label %130

124:                                              ; preds = %117
  %125 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %126 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %125, i32 0, i32 0
  %127 = load i32, i32* %6, align 4
  %128 = call i32 (%struct.TYPE_7__*, i8*, ...) @dev_err(%struct.TYPE_7__* %126, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.8, i64 0, i64 0), i32 %127)
  %129 = load i32, i32* %6, align 4
  store i32 %129, i32* %2, align 4
  br label %186

130:                                              ; preds = %117
  %131 = load %struct.iio_dev*, %struct.iio_dev** %5, align 8
  %132 = call i32 @iproc_adc_enable(%struct.iio_dev* %131)
  store i32 %132, i32* %6, align 4
  %133 = load i32, i32* %6, align 4
  %134 = icmp ne i32 %133, 0
  br i1 %134, label %135, label %140

135:                                              ; preds = %130
  %136 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %137 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %136, i32 0, i32 0
  %138 = load i32, i32* %6, align 4
  %139 = call i32 (%struct.TYPE_7__*, i8*, ...) @dev_err(%struct.TYPE_7__* %137, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.9, i64 0, i64 0), i32 %138)
  br label %180

140:                                              ; preds = %130
  %141 = load %struct.iio_dev*, %struct.iio_dev** %5, align 8
  %142 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %141, i32 0, i32 0
  store i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.10, i64 0, i64 0), i8** %142, align 8
  %143 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %144 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %143, i32 0, i32 0
  %145 = load %struct.iio_dev*, %struct.iio_dev** %5, align 8
  %146 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %145, i32 0, i32 5
  %147 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %146, i32 0, i32 1
  store %struct.TYPE_7__* %144, %struct.TYPE_7__** %147, align 8
  %148 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %149 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %148, i32 0, i32 0
  %150 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %149, i32 0, i32 0
  %151 = load i32, i32* %150, align 4
  %152 = load %struct.iio_dev*, %struct.iio_dev** %5, align 8
  %153 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %152, i32 0, i32 5
  %154 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %153, i32 0, i32 0
  store i32 %151, i32* %154, align 8
  %155 = load %struct.iio_dev*, %struct.iio_dev** %5, align 8
  %156 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %155, i32 0, i32 4
  store i32* @iproc_adc_iio_info, i32** %156, align 8
  %157 = load i32, i32* @INDIO_DIRECT_MODE, align 4
  %158 = load %struct.iio_dev*, %struct.iio_dev** %5, align 8
  %159 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %158, i32 0, i32 3
  store i32 %157, i32* %159, align 8
  %160 = load i32, i32* @iproc_adc_iio_channels, align 4
  %161 = load %struct.iio_dev*, %struct.iio_dev** %5, align 8
  %162 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %161, i32 0, i32 2
  store i32 %160, i32* %162, align 4
  %163 = load i32, i32* @iproc_adc_iio_channels, align 4
  %164 = call i32 @ARRAY_SIZE(i32 %163)
  %165 = load %struct.iio_dev*, %struct.iio_dev** %5, align 8
  %166 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %165, i32 0, i32 1
  store i32 %164, i32* %166, align 8
  %167 = load %struct.iio_dev*, %struct.iio_dev** %5, align 8
  %168 = call i32 @iio_device_register(%struct.iio_dev* %167)
  store i32 %168, i32* %6, align 4
  %169 = load i32, i32* %6, align 4
  %170 = icmp ne i32 %169, 0
  br i1 %170, label %171, label %176

171:                                              ; preds = %140
  %172 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %173 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %172, i32 0, i32 0
  %174 = load i32, i32* %6, align 4
  %175 = call i32 (%struct.TYPE_7__*, i8*, ...) @dev_err(%struct.TYPE_7__* %173, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.11, i64 0, i64 0), i32 %174)
  br label %177

176:                                              ; preds = %140
  store i32 0, i32* %2, align 4
  br label %186

177:                                              ; preds = %171
  %178 = load %struct.iio_dev*, %struct.iio_dev** %5, align 8
  %179 = call i32 @iproc_adc_disable(%struct.iio_dev* %178)
  br label %180

180:                                              ; preds = %177, %135
  %181 = load %struct.iproc_adc_priv*, %struct.iproc_adc_priv** %4, align 8
  %182 = getelementptr inbounds %struct.iproc_adc_priv, %struct.iproc_adc_priv* %181, i32 0, i32 1
  %183 = load i32, i32* %182, align 8
  %184 = call i32 @clk_disable_unprepare(i32 %183)
  %185 = load i32, i32* %6, align 4
  store i32 %185, i32* %2, align 4
  br label %186

186:                                              ; preds = %180, %176, %124, %111, %92, %80, %62, %42, %12
  %187 = load i32, i32* %2, align 4
  ret i32 %187
}

declare dso_local %struct.iio_dev* @devm_iio_device_alloc(%struct.TYPE_7__*, i32) #1

declare dso_local i32 @dev_err(%struct.TYPE_7__*, i8*, ...) #1

declare dso_local %struct.iproc_adc_priv* @iio_priv(%struct.iio_dev*) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.iio_dev*) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @init_completion(i32*) #1

declare dso_local i32 @syscon_regmap_lookup_by_phandle(i32, i8*) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @PTR_ERR(i32) #1

declare dso_local i32 @devm_clk_get(%struct.TYPE_7__*, i8*) #1

declare dso_local i64 @platform_get_irq(%struct.platform_device*, i32) #1

declare dso_local i32 @regmap_update_bits(i32, i32, i32, i32) #1

declare dso_local i32 @devm_request_threaded_irq(%struct.TYPE_7__*, i64, i32, i32, i32, i8*, %struct.iio_dev*) #1

declare dso_local i32 @clk_prepare_enable(i32) #1

declare dso_local i32 @iproc_adc_enable(%struct.iio_dev*) #1

declare dso_local i32 @ARRAY_SIZE(i32) #1

declare dso_local i32 @iio_device_register(%struct.iio_dev*) #1

declare dso_local i32 @iproc_adc_disable(%struct.iio_dev*) #1

declare dso_local i32 @clk_disable_unprepare(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
