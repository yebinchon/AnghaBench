; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/adc/extr_cc10001_adc.c_cc10001_adc_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/adc/extr_cc10001_adc.c_cc10001_adc_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { %struct.device_node* }
%struct.device_node = type { i32 }
%struct.cc10001_adc_device = type { i32, i64, i32, i32, i32, i32, i32 }
%struct.resource = type { i32 }
%struct.iio_dev = type { i32, i32*, i32, %struct.TYPE_8__ }
%struct.TYPE_8__ = type { %struct.TYPE_9__* }

@ENOMEM = common dso_local global i32 0, align 4
@CC10001_ADC_NUM_CHANNELS = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [22 x i8] c"adc-reserved-channels\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"vref\00", align 1
@cc10001_adc_info = common dso_local global i32 0, align 4
@INDIO_DIRECT_MODE = common dso_local global i32 0, align 4
@IORESOURCE_MEM = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [4 x i8] c"adc\00", align 1
@.str.3 = private unnamed_addr constant [25 x i8] c"failed to get the clock\0A\00", align 1
@.str.4 = private unnamed_addr constant [28 x i8] c"failed to enable the clock\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [18 x i8] c"null clock rate!\0A\00", align 1
@NSEC_PER_SEC = common dso_local global i64 0, align 8
@CC10001_WAIT_CYCLES = common dso_local global i32 0, align 4
@cc10001_adc_trigger_h = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @cc10001_adc_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cc10001_adc_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.device_node*, align 8
  %5 = alloca %struct.cc10001_adc_device*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.resource*, align 8
  %8 = alloca %struct.iio_dev*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %11 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %12 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %12, i32 0, i32 0
  %14 = load %struct.device_node*, %struct.device_node** %13, align 8
  store %struct.device_node* %14, %struct.device_node** %4, align 8
  %15 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %16 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %15, i32 0, i32 0
  %17 = call %struct.iio_dev* @devm_iio_device_alloc(%struct.TYPE_9__* %16, i32 40)
  store %struct.iio_dev* %17, %struct.iio_dev** %8, align 8
  %18 = load %struct.iio_dev*, %struct.iio_dev** %8, align 8
  %19 = icmp eq %struct.iio_dev* %18, null
  br i1 %19, label %20, label %23

20:                                               ; preds = %1
  %21 = load i32, i32* @ENOMEM, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %2, align 4
  br label %205

23:                                               ; preds = %1
  %24 = load %struct.iio_dev*, %struct.iio_dev** %8, align 8
  %25 = call %struct.cc10001_adc_device* @iio_priv(%struct.iio_dev* %24)
  store %struct.cc10001_adc_device* %25, %struct.cc10001_adc_device** %5, align 8
  %26 = load i64, i64* @CC10001_ADC_NUM_CHANNELS, align 8
  %27 = sub nsw i64 %26, 1
  %28 = call i64 @GENMASK(i64 %27, i32 0)
  store i64 %28, i64* %9, align 8
  %29 = load %struct.device_node*, %struct.device_node** %4, align 8
  %30 = call i32 @of_property_read_u32(%struct.device_node* %29, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32* %10)
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %40, label %32

32:                                               ; preds = %23
  %33 = load %struct.cc10001_adc_device*, %struct.cc10001_adc_device** %5, align 8
  %34 = getelementptr inbounds %struct.cc10001_adc_device, %struct.cc10001_adc_device* %33, i32 0, i32 0
  store i32 1, i32* %34, align 8
  %35 = load i32, i32* %10, align 4
  %36 = xor i32 %35, -1
  %37 = sext i32 %36 to i64
  %38 = load i64, i64* %9, align 8
  %39 = and i64 %38, %37
  store i64 %39, i64* %9, align 8
  br label %40

40:                                               ; preds = %32, %23
  %41 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %42 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %41, i32 0, i32 0
  %43 = call i32 @devm_regulator_get(%struct.TYPE_9__* %42, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0))
  %44 = load %struct.cc10001_adc_device*, %struct.cc10001_adc_device** %5, align 8
  %45 = getelementptr inbounds %struct.cc10001_adc_device, %struct.cc10001_adc_device* %44, i32 0, i32 3
  store i32 %43, i32* %45, align 4
  %46 = load %struct.cc10001_adc_device*, %struct.cc10001_adc_device** %5, align 8
  %47 = getelementptr inbounds %struct.cc10001_adc_device, %struct.cc10001_adc_device* %46, i32 0, i32 3
  %48 = load i32, i32* %47, align 4
  %49 = call i64 @IS_ERR(i32 %48)
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %56

51:                                               ; preds = %40
  %52 = load %struct.cc10001_adc_device*, %struct.cc10001_adc_device** %5, align 8
  %53 = getelementptr inbounds %struct.cc10001_adc_device, %struct.cc10001_adc_device* %52, i32 0, i32 3
  %54 = load i32, i32* %53, align 4
  %55 = call i32 @PTR_ERR(i32 %54)
  store i32 %55, i32* %2, align 4
  br label %205

56:                                               ; preds = %40
  %57 = load %struct.cc10001_adc_device*, %struct.cc10001_adc_device** %5, align 8
  %58 = getelementptr inbounds %struct.cc10001_adc_device, %struct.cc10001_adc_device* %57, i32 0, i32 3
  %59 = load i32, i32* %58, align 4
  %60 = call i32 @regulator_enable(i32 %59)
  store i32 %60, i32* %10, align 4
  %61 = load i32, i32* %10, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %65

63:                                               ; preds = %56
  %64 = load i32, i32* %10, align 4
  store i32 %64, i32* %2, align 4
  br label %205

65:                                               ; preds = %56
  %66 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %67 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %66, i32 0, i32 0
  %68 = load %struct.iio_dev*, %struct.iio_dev** %8, align 8
  %69 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %68, i32 0, i32 3
  %70 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %69, i32 0, i32 0
  store %struct.TYPE_9__* %67, %struct.TYPE_9__** %70, align 8
  %71 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %72 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %71, i32 0, i32 0
  %73 = call i32 @dev_name(%struct.TYPE_9__* %72)
  %74 = load %struct.iio_dev*, %struct.iio_dev** %8, align 8
  %75 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %74, i32 0, i32 2
  store i32 %73, i32* %75, align 8
  %76 = load %struct.iio_dev*, %struct.iio_dev** %8, align 8
  %77 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %76, i32 0, i32 1
  store i32* @cc10001_adc_info, i32** %77, align 8
  %78 = load i32, i32* @INDIO_DIRECT_MODE, align 4
  %79 = load %struct.iio_dev*, %struct.iio_dev** %8, align 8
  %80 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %79, i32 0, i32 0
  store i32 %78, i32* %80, align 8
  %81 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %82 = load i32, i32* @IORESOURCE_MEM, align 4
  %83 = call %struct.resource* @platform_get_resource(%struct.platform_device* %81, i32 %82, i32 0)
  store %struct.resource* %83, %struct.resource** %7, align 8
  %84 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %85 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %84, i32 0, i32 0
  %86 = load %struct.resource*, %struct.resource** %7, align 8
  %87 = call i32 @devm_ioremap_resource(%struct.TYPE_9__* %85, %struct.resource* %86)
  %88 = load %struct.cc10001_adc_device*, %struct.cc10001_adc_device** %5, align 8
  %89 = getelementptr inbounds %struct.cc10001_adc_device, %struct.cc10001_adc_device* %88, i32 0, i32 6
  store i32 %87, i32* %89, align 8
  %90 = load %struct.cc10001_adc_device*, %struct.cc10001_adc_device** %5, align 8
  %91 = getelementptr inbounds %struct.cc10001_adc_device, %struct.cc10001_adc_device* %90, i32 0, i32 6
  %92 = load i32, i32* %91, align 8
  %93 = call i64 @IS_ERR(i32 %92)
  %94 = icmp ne i64 %93, 0
  br i1 %94, label %95, label %100

95:                                               ; preds = %65
  %96 = load %struct.cc10001_adc_device*, %struct.cc10001_adc_device** %5, align 8
  %97 = getelementptr inbounds %struct.cc10001_adc_device, %struct.cc10001_adc_device* %96, i32 0, i32 6
  %98 = load i32, i32* %97, align 8
  %99 = call i32 @PTR_ERR(i32 %98)
  store i32 %99, i32* %10, align 4
  br label %199

100:                                              ; preds = %65
  %101 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %102 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %101, i32 0, i32 0
  %103 = call i32 @devm_clk_get(%struct.TYPE_9__* %102, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0))
  %104 = load %struct.cc10001_adc_device*, %struct.cc10001_adc_device** %5, align 8
  %105 = getelementptr inbounds %struct.cc10001_adc_device, %struct.cc10001_adc_device* %104, i32 0, i32 4
  store i32 %103, i32* %105, align 8
  %106 = load %struct.cc10001_adc_device*, %struct.cc10001_adc_device** %5, align 8
  %107 = getelementptr inbounds %struct.cc10001_adc_device, %struct.cc10001_adc_device* %106, i32 0, i32 4
  %108 = load i32, i32* %107, align 8
  %109 = call i64 @IS_ERR(i32 %108)
  %110 = icmp ne i64 %109, 0
  br i1 %110, label %111, label %119

111:                                              ; preds = %100
  %112 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %113 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %112, i32 0, i32 0
  %114 = call i32 @dev_err(%struct.TYPE_9__* %113, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.3, i64 0, i64 0))
  %115 = load %struct.cc10001_adc_device*, %struct.cc10001_adc_device** %5, align 8
  %116 = getelementptr inbounds %struct.cc10001_adc_device, %struct.cc10001_adc_device* %115, i32 0, i32 4
  %117 = load i32, i32* %116, align 8
  %118 = call i32 @PTR_ERR(i32 %117)
  store i32 %118, i32* %10, align 4
  br label %199

119:                                              ; preds = %100
  %120 = load %struct.cc10001_adc_device*, %struct.cc10001_adc_device** %5, align 8
  %121 = getelementptr inbounds %struct.cc10001_adc_device, %struct.cc10001_adc_device* %120, i32 0, i32 4
  %122 = load i32, i32* %121, align 8
  %123 = call i32 @clk_prepare_enable(i32 %122)
  store i32 %123, i32* %10, align 4
  %124 = load i32, i32* %10, align 4
  %125 = icmp ne i32 %124, 0
  br i1 %125, label %126, label %130

126:                                              ; preds = %119
  %127 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %128 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %127, i32 0, i32 0
  %129 = call i32 @dev_err(%struct.TYPE_9__* %128, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.4, i64 0, i64 0))
  br label %199

130:                                              ; preds = %119
  %131 = load %struct.cc10001_adc_device*, %struct.cc10001_adc_device** %5, align 8
  %132 = getelementptr inbounds %struct.cc10001_adc_device, %struct.cc10001_adc_device* %131, i32 0, i32 4
  %133 = load i32, i32* %132, align 8
  %134 = call i64 @clk_get_rate(i32 %133)
  store i64 %134, i64* %6, align 8
  %135 = load i64, i64* %6, align 8
  %136 = icmp ne i64 %135, 0
  br i1 %136, label %143, label %137

137:                                              ; preds = %130
  %138 = load i32, i32* @EINVAL, align 4
  %139 = sub nsw i32 0, %138
  store i32 %139, i32* %10, align 4
  %140 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %141 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %140, i32 0, i32 0
  %142 = call i32 @dev_err(%struct.TYPE_9__* %141, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.5, i64 0, i64 0))
  br label %194

143:                                              ; preds = %130
  %144 = load i64, i64* @NSEC_PER_SEC, align 8
  %145 = load i64, i64* %6, align 8
  %146 = udiv i64 %144, %145
  %147 = load %struct.cc10001_adc_device*, %struct.cc10001_adc_device** %5, align 8
  %148 = getelementptr inbounds %struct.cc10001_adc_device, %struct.cc10001_adc_device* %147, i32 0, i32 1
  store i64 %146, i64* %148, align 8
  %149 = load %struct.cc10001_adc_device*, %struct.cc10001_adc_device** %5, align 8
  %150 = getelementptr inbounds %struct.cc10001_adc_device, %struct.cc10001_adc_device* %149, i32 0, i32 1
  %151 = load i64, i64* %150, align 8
  %152 = load i32, i32* @CC10001_WAIT_CYCLES, align 4
  %153 = sext i32 %152 to i64
  %154 = mul i64 %151, %153
  %155 = trunc i64 %154 to i32
  %156 = load %struct.cc10001_adc_device*, %struct.cc10001_adc_device** %5, align 8
  %157 = getelementptr inbounds %struct.cc10001_adc_device, %struct.cc10001_adc_device* %156, i32 0, i32 2
  store i32 %155, i32* %157, align 8
  %158 = load %struct.cc10001_adc_device*, %struct.cc10001_adc_device** %5, align 8
  %159 = getelementptr inbounds %struct.cc10001_adc_device, %struct.cc10001_adc_device* %158, i32 0, i32 0
  %160 = load i32, i32* %159, align 8
  %161 = icmp ne i32 %160, 0
  br i1 %161, label %162, label %165

162:                                              ; preds = %143
  %163 = load %struct.cc10001_adc_device*, %struct.cc10001_adc_device** %5, align 8
  %164 = call i32 @cc10001_adc_power_up(%struct.cc10001_adc_device* %163)
  br label %165

165:                                              ; preds = %162, %143
  %166 = load %struct.iio_dev*, %struct.iio_dev** %8, align 8
  %167 = load i64, i64* %9, align 8
  %168 = call i32 @cc10001_adc_channel_init(%struct.iio_dev* %166, i64 %167)
  store i32 %168, i32* %10, align 4
  %169 = load i32, i32* %10, align 4
  %170 = icmp slt i32 %169, 0
  br i1 %170, label %171, label %172

171:                                              ; preds = %165
  br label %194

172:                                              ; preds = %165
  %173 = load %struct.cc10001_adc_device*, %struct.cc10001_adc_device** %5, align 8
  %174 = getelementptr inbounds %struct.cc10001_adc_device, %struct.cc10001_adc_device* %173, i32 0, i32 5
  %175 = call i32 @mutex_init(i32* %174)
  %176 = load %struct.iio_dev*, %struct.iio_dev** %8, align 8
  %177 = call i32 @iio_triggered_buffer_setup(%struct.iio_dev* %176, i32* null, i32* @cc10001_adc_trigger_h, i32* null)
  store i32 %177, i32* %10, align 4
  %178 = load i32, i32* %10, align 4
  %179 = icmp slt i32 %178, 0
  br i1 %179, label %180, label %181

180:                                              ; preds = %172
  br label %194

181:                                              ; preds = %172
  %182 = load %struct.iio_dev*, %struct.iio_dev** %8, align 8
  %183 = call i32 @iio_device_register(%struct.iio_dev* %182)
  store i32 %183, i32* %10, align 4
  %184 = load i32, i32* %10, align 4
  %185 = icmp slt i32 %184, 0
  br i1 %185, label %186, label %187

186:                                              ; preds = %181
  br label %191

187:                                              ; preds = %181
  %188 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %189 = load %struct.iio_dev*, %struct.iio_dev** %8, align 8
  %190 = call i32 @platform_set_drvdata(%struct.platform_device* %188, %struct.iio_dev* %189)
  store i32 0, i32* %2, align 4
  br label %205

191:                                              ; preds = %186
  %192 = load %struct.iio_dev*, %struct.iio_dev** %8, align 8
  %193 = call i32 @iio_triggered_buffer_cleanup(%struct.iio_dev* %192)
  br label %194

194:                                              ; preds = %191, %180, %171, %137
  %195 = load %struct.cc10001_adc_device*, %struct.cc10001_adc_device** %5, align 8
  %196 = getelementptr inbounds %struct.cc10001_adc_device, %struct.cc10001_adc_device* %195, i32 0, i32 4
  %197 = load i32, i32* %196, align 8
  %198 = call i32 @clk_disable_unprepare(i32 %197)
  br label %199

199:                                              ; preds = %194, %126, %111, %95
  %200 = load %struct.cc10001_adc_device*, %struct.cc10001_adc_device** %5, align 8
  %201 = getelementptr inbounds %struct.cc10001_adc_device, %struct.cc10001_adc_device* %200, i32 0, i32 3
  %202 = load i32, i32* %201, align 4
  %203 = call i32 @regulator_disable(i32 %202)
  %204 = load i32, i32* %10, align 4
  store i32 %204, i32* %2, align 4
  br label %205

205:                                              ; preds = %199, %187, %63, %51, %20
  %206 = load i32, i32* %2, align 4
  ret i32 %206
}

declare dso_local %struct.iio_dev* @devm_iio_device_alloc(%struct.TYPE_9__*, i32) #1

declare dso_local %struct.cc10001_adc_device* @iio_priv(%struct.iio_dev*) #1

declare dso_local i64 @GENMASK(i64, i32) #1

declare dso_local i32 @of_property_read_u32(%struct.device_node*, i8*, i32*) #1

declare dso_local i32 @devm_regulator_get(%struct.TYPE_9__*, i8*) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @PTR_ERR(i32) #1

declare dso_local i32 @regulator_enable(i32) #1

declare dso_local i32 @dev_name(%struct.TYPE_9__*) #1

declare dso_local %struct.resource* @platform_get_resource(%struct.platform_device*, i32, i32) #1

declare dso_local i32 @devm_ioremap_resource(%struct.TYPE_9__*, %struct.resource*) #1

declare dso_local i32 @devm_clk_get(%struct.TYPE_9__*, i8*) #1

declare dso_local i32 @dev_err(%struct.TYPE_9__*, i8*) #1

declare dso_local i32 @clk_prepare_enable(i32) #1

declare dso_local i64 @clk_get_rate(i32) #1

declare dso_local i32 @cc10001_adc_power_up(%struct.cc10001_adc_device*) #1

declare dso_local i32 @cc10001_adc_channel_init(%struct.iio_dev*, i64) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @iio_triggered_buffer_setup(%struct.iio_dev*, i32*, i32*, i32*) #1

declare dso_local i32 @iio_device_register(%struct.iio_dev*) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.iio_dev*) #1

declare dso_local i32 @iio_triggered_buffer_cleanup(%struct.iio_dev*) #1

declare dso_local i32 @clk_disable_unprepare(i32) #1

declare dso_local i32 @regulator_disable(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
