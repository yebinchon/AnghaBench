; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/adc/extr_ad7768-1.c_ad7768_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/adc/extr_ad7768-1.c_ad7768_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.spi_device = type { i32, i32 }
%struct.ad7768_state = type { i32, %struct.TYPE_11__*, i32, i32, i32, i32, %struct.spi_device* }
%struct.TYPE_11__ = type { %struct.TYPE_9__, i32* }
%struct.TYPE_9__ = type { i32* }
%struct.iio_dev = type { i32, i32, i32, i32, i32*, %struct.TYPE_8__, i32, i32 }
%struct.TYPE_8__ = type { i32* }
%struct.TYPE_10__ = type { i32 }

@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"vref\00", align 1
@.str.1 = private unnamed_addr constant [40 x i8] c"Failed to enable specified vref supply\0A\00", align 1
@ad7768_regulator_disable = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [5 x i8] c"mclk\00", align 1
@ad7768_clk_disable = common dso_local global i32 0, align 4
@ad7768_channels = common dso_local global i32 0, align 4
@ad7768_info = common dso_local global i32 0, align 4
@INDIO_DIRECT_MODE = common dso_local global i32 0, align 4
@INDIO_BUFFER_TRIGGERED = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [21 x i8] c"AD7768 setup failed\0A\00", align 1
@.str.4 = private unnamed_addr constant [9 x i8] c"%s-dev%d\00", align 1
@ad7768_trigger_ops = common dso_local global i32 0, align 4
@ad7768_interrupt = common dso_local global i32 0, align 4
@IRQF_TRIGGER_RISING = common dso_local global i32 0, align 4
@IRQF_ONESHOT = common dso_local global i32 0, align 4
@iio_pollfunc_store_time = common dso_local global i32 0, align 4
@ad7768_trigger_handler = common dso_local global i32 0, align 4
@ad7768_buffer_ops = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.spi_device*)* @ad7768_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ad7768_probe(%struct.spi_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.spi_device*, align 8
  %4 = alloca %struct.ad7768_state*, align 8
  %5 = alloca %struct.iio_dev*, align 8
  %6 = alloca i32, align 4
  store %struct.spi_device* %0, %struct.spi_device** %3, align 8
  %7 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %8 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %7, i32 0, i32 0
  %9 = call %struct.iio_dev* @devm_iio_device_alloc(i32* %8, i32 40)
  store %struct.iio_dev* %9, %struct.iio_dev** %5, align 8
  %10 = load %struct.iio_dev*, %struct.iio_dev** %5, align 8
  %11 = icmp ne %struct.iio_dev* %10, null
  br i1 %11, label %15, label %12

12:                                               ; preds = %1
  %13 = load i32, i32* @ENOMEM, align 4
  %14 = sub nsw i32 0, %13
  store i32 %14, i32* %2, align 4
  br label %227

15:                                               ; preds = %1
  %16 = load %struct.iio_dev*, %struct.iio_dev** %5, align 8
  %17 = call %struct.ad7768_state* @iio_priv(%struct.iio_dev* %16)
  store %struct.ad7768_state* %17, %struct.ad7768_state** %4, align 8
  %18 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %19 = load %struct.ad7768_state*, %struct.ad7768_state** %4, align 8
  %20 = getelementptr inbounds %struct.ad7768_state, %struct.ad7768_state* %19, i32 0, i32 6
  store %struct.spi_device* %18, %struct.spi_device** %20, align 8
  %21 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %22 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %21, i32 0, i32 0
  %23 = call i32 @devm_regulator_get(i32* %22, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  %24 = load %struct.ad7768_state*, %struct.ad7768_state** %4, align 8
  %25 = getelementptr inbounds %struct.ad7768_state, %struct.ad7768_state* %24, i32 0, i32 5
  store i32 %23, i32* %25, align 4
  %26 = load %struct.ad7768_state*, %struct.ad7768_state** %4, align 8
  %27 = getelementptr inbounds %struct.ad7768_state, %struct.ad7768_state* %26, i32 0, i32 5
  %28 = load i32, i32* %27, align 4
  %29 = call i64 @IS_ERR(i32 %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %36

31:                                               ; preds = %15
  %32 = load %struct.ad7768_state*, %struct.ad7768_state** %4, align 8
  %33 = getelementptr inbounds %struct.ad7768_state, %struct.ad7768_state* %32, i32 0, i32 5
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @PTR_ERR(i32 %34)
  store i32 %35, i32* %2, align 4
  br label %227

36:                                               ; preds = %15
  %37 = load %struct.ad7768_state*, %struct.ad7768_state** %4, align 8
  %38 = getelementptr inbounds %struct.ad7768_state, %struct.ad7768_state* %37, i32 0, i32 5
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @regulator_enable(i32 %39)
  store i32 %40, i32* %6, align 4
  %41 = load i32, i32* %6, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %48

43:                                               ; preds = %36
  %44 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %45 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %44, i32 0, i32 0
  %46 = call i32 @dev_err(i32* %45, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.1, i64 0, i64 0))
  %47 = load i32, i32* %6, align 4
  store i32 %47, i32* %2, align 4
  br label %227

48:                                               ; preds = %36
  %49 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %50 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %49, i32 0, i32 0
  %51 = load i32, i32* @ad7768_regulator_disable, align 4
  %52 = load %struct.ad7768_state*, %struct.ad7768_state** %4, align 8
  %53 = call i32 @devm_add_action_or_reset(i32* %50, i32 %51, %struct.ad7768_state* %52)
  store i32 %53, i32* %6, align 4
  %54 = load i32, i32* %6, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %58

56:                                               ; preds = %48
  %57 = load i32, i32* %6, align 4
  store i32 %57, i32* %2, align 4
  br label %227

58:                                               ; preds = %48
  %59 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %60 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %59, i32 0, i32 0
  %61 = call i32 @devm_clk_get(i32* %60, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0))
  %62 = load %struct.ad7768_state*, %struct.ad7768_state** %4, align 8
  %63 = getelementptr inbounds %struct.ad7768_state, %struct.ad7768_state* %62, i32 0, i32 3
  store i32 %61, i32* %63, align 4
  %64 = load %struct.ad7768_state*, %struct.ad7768_state** %4, align 8
  %65 = getelementptr inbounds %struct.ad7768_state, %struct.ad7768_state* %64, i32 0, i32 3
  %66 = load i32, i32* %65, align 4
  %67 = call i64 @IS_ERR(i32 %66)
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %74

69:                                               ; preds = %58
  %70 = load %struct.ad7768_state*, %struct.ad7768_state** %4, align 8
  %71 = getelementptr inbounds %struct.ad7768_state, %struct.ad7768_state* %70, i32 0, i32 3
  %72 = load i32, i32* %71, align 4
  %73 = call i32 @PTR_ERR(i32 %72)
  store i32 %73, i32* %2, align 4
  br label %227

74:                                               ; preds = %58
  %75 = load %struct.ad7768_state*, %struct.ad7768_state** %4, align 8
  %76 = getelementptr inbounds %struct.ad7768_state, %struct.ad7768_state* %75, i32 0, i32 3
  %77 = load i32, i32* %76, align 4
  %78 = call i32 @clk_prepare_enable(i32 %77)
  store i32 %78, i32* %6, align 4
  %79 = load i32, i32* %6, align 4
  %80 = icmp slt i32 %79, 0
  br i1 %80, label %81, label %83

81:                                               ; preds = %74
  %82 = load i32, i32* %6, align 4
  store i32 %82, i32* %2, align 4
  br label %227

83:                                               ; preds = %74
  %84 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %85 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %84, i32 0, i32 0
  %86 = load i32, i32* @ad7768_clk_disable, align 4
  %87 = load %struct.ad7768_state*, %struct.ad7768_state** %4, align 8
  %88 = call i32 @devm_add_action_or_reset(i32* %85, i32 %86, %struct.ad7768_state* %87)
  store i32 %88, i32* %6, align 4
  %89 = load i32, i32* %6, align 4
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %91, label %93

91:                                               ; preds = %83
  %92 = load i32, i32* %6, align 4
  store i32 %92, i32* %2, align 4
  br label %227

93:                                               ; preds = %83
  %94 = load %struct.ad7768_state*, %struct.ad7768_state** %4, align 8
  %95 = getelementptr inbounds %struct.ad7768_state, %struct.ad7768_state* %94, i32 0, i32 3
  %96 = load i32, i32* %95, align 4
  %97 = call i32 @clk_get_rate(i32 %96)
  %98 = load %struct.ad7768_state*, %struct.ad7768_state** %4, align 8
  %99 = getelementptr inbounds %struct.ad7768_state, %struct.ad7768_state* %98, i32 0, i32 4
  store i32 %97, i32* %99, align 8
  %100 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %101 = load %struct.iio_dev*, %struct.iio_dev** %5, align 8
  %102 = call i32 @spi_set_drvdata(%struct.spi_device* %100, %struct.iio_dev* %101)
  %103 = load %struct.ad7768_state*, %struct.ad7768_state** %4, align 8
  %104 = getelementptr inbounds %struct.ad7768_state, %struct.ad7768_state* %103, i32 0, i32 2
  %105 = call i32 @mutex_init(i32* %104)
  %106 = load i32, i32* @ad7768_channels, align 4
  %107 = load %struct.iio_dev*, %struct.iio_dev** %5, align 8
  %108 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %107, i32 0, i32 7
  store i32 %106, i32* %108, align 4
  %109 = load i32, i32* @ad7768_channels, align 4
  %110 = call i32 @ARRAY_SIZE(i32 %109)
  %111 = load %struct.iio_dev*, %struct.iio_dev** %5, align 8
  %112 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %111, i32 0, i32 6
  store i32 %110, i32* %112, align 8
  %113 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %114 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %113, i32 0, i32 0
  %115 = load %struct.iio_dev*, %struct.iio_dev** %5, align 8
  %116 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %115, i32 0, i32 5
  %117 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %116, i32 0, i32 0
  store i32* %114, i32** %117, align 8
  %118 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %119 = call %struct.TYPE_10__* @spi_get_device_id(%struct.spi_device* %118)
  %120 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %119, i32 0, i32 0
  %121 = load i32, i32* %120, align 4
  %122 = load %struct.iio_dev*, %struct.iio_dev** %5, align 8
  %123 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %122, i32 0, i32 1
  store i32 %121, i32* %123, align 4
  %124 = load %struct.iio_dev*, %struct.iio_dev** %5, align 8
  %125 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %124, i32 0, i32 4
  store i32* @ad7768_info, i32** %125, align 8
  %126 = load i32, i32* @INDIO_DIRECT_MODE, align 4
  %127 = load i32, i32* @INDIO_BUFFER_TRIGGERED, align 4
  %128 = or i32 %126, %127
  %129 = load %struct.iio_dev*, %struct.iio_dev** %5, align 8
  %130 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %129, i32 0, i32 0
  store i32 %128, i32* %130, align 8
  %131 = load %struct.ad7768_state*, %struct.ad7768_state** %4, align 8
  %132 = call i32 @ad7768_setup(%struct.ad7768_state* %131)
  store i32 %132, i32* %6, align 4
  %133 = load i32, i32* %6, align 4
  %134 = icmp slt i32 %133, 0
  br i1 %134, label %135, label %140

135:                                              ; preds = %93
  %136 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %137 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %136, i32 0, i32 0
  %138 = call i32 @dev_err(i32* %137, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i64 0, i64 0))
  %139 = load i32, i32* %6, align 4
  store i32 %139, i32* %2, align 4
  br label %227

140:                                              ; preds = %93
  %141 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %142 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %141, i32 0, i32 0
  %143 = load %struct.iio_dev*, %struct.iio_dev** %5, align 8
  %144 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %143, i32 0, i32 1
  %145 = load i32, i32* %144, align 4
  %146 = load %struct.iio_dev*, %struct.iio_dev** %5, align 8
  %147 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %146, i32 0, i32 3
  %148 = load i32, i32* %147, align 4
  %149 = call %struct.TYPE_11__* @devm_iio_trigger_alloc(i32* %142, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i64 0, i64 0), i32 %145, i32 %148)
  %150 = load %struct.ad7768_state*, %struct.ad7768_state** %4, align 8
  %151 = getelementptr inbounds %struct.ad7768_state, %struct.ad7768_state* %150, i32 0, i32 1
  store %struct.TYPE_11__* %149, %struct.TYPE_11__** %151, align 8
  %152 = load %struct.ad7768_state*, %struct.ad7768_state** %4, align 8
  %153 = getelementptr inbounds %struct.ad7768_state, %struct.ad7768_state* %152, i32 0, i32 1
  %154 = load %struct.TYPE_11__*, %struct.TYPE_11__** %153, align 8
  %155 = icmp ne %struct.TYPE_11__* %154, null
  br i1 %155, label %159, label %156

156:                                              ; preds = %140
  %157 = load i32, i32* @ENOMEM, align 4
  %158 = sub nsw i32 0, %157
  store i32 %158, i32* %2, align 4
  br label %227

159:                                              ; preds = %140
  %160 = load %struct.ad7768_state*, %struct.ad7768_state** %4, align 8
  %161 = getelementptr inbounds %struct.ad7768_state, %struct.ad7768_state* %160, i32 0, i32 1
  %162 = load %struct.TYPE_11__*, %struct.TYPE_11__** %161, align 8
  %163 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %162, i32 0, i32 1
  store i32* @ad7768_trigger_ops, i32** %163, align 8
  %164 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %165 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %164, i32 0, i32 0
  %166 = load %struct.ad7768_state*, %struct.ad7768_state** %4, align 8
  %167 = getelementptr inbounds %struct.ad7768_state, %struct.ad7768_state* %166, i32 0, i32 1
  %168 = load %struct.TYPE_11__*, %struct.TYPE_11__** %167, align 8
  %169 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %168, i32 0, i32 0
  %170 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %169, i32 0, i32 0
  store i32* %165, i32** %170, align 8
  %171 = load %struct.ad7768_state*, %struct.ad7768_state** %4, align 8
  %172 = getelementptr inbounds %struct.ad7768_state, %struct.ad7768_state* %171, i32 0, i32 1
  %173 = load %struct.TYPE_11__*, %struct.TYPE_11__** %172, align 8
  %174 = load %struct.iio_dev*, %struct.iio_dev** %5, align 8
  %175 = call i32 @iio_trigger_set_drvdata(%struct.TYPE_11__* %173, %struct.iio_dev* %174)
  %176 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %177 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %176, i32 0, i32 0
  %178 = load %struct.ad7768_state*, %struct.ad7768_state** %4, align 8
  %179 = getelementptr inbounds %struct.ad7768_state, %struct.ad7768_state* %178, i32 0, i32 1
  %180 = load %struct.TYPE_11__*, %struct.TYPE_11__** %179, align 8
  %181 = call i32 @devm_iio_trigger_register(i32* %177, %struct.TYPE_11__* %180)
  store i32 %181, i32* %6, align 4
  %182 = load i32, i32* %6, align 4
  %183 = icmp ne i32 %182, 0
  br i1 %183, label %184, label %186

184:                                              ; preds = %159
  %185 = load i32, i32* %6, align 4
  store i32 %185, i32* %2, align 4
  br label %227

186:                                              ; preds = %159
  %187 = load %struct.ad7768_state*, %struct.ad7768_state** %4, align 8
  %188 = getelementptr inbounds %struct.ad7768_state, %struct.ad7768_state* %187, i32 0, i32 1
  %189 = load %struct.TYPE_11__*, %struct.TYPE_11__** %188, align 8
  %190 = call i32 @iio_trigger_get(%struct.TYPE_11__* %189)
  %191 = load %struct.iio_dev*, %struct.iio_dev** %5, align 8
  %192 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %191, i32 0, i32 2
  store i32 %190, i32* %192, align 8
  %193 = load %struct.ad7768_state*, %struct.ad7768_state** %4, align 8
  %194 = getelementptr inbounds %struct.ad7768_state, %struct.ad7768_state* %193, i32 0, i32 0
  %195 = call i32 @init_completion(i32* %194)
  %196 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %197 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %196, i32 0, i32 0
  %198 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %199 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %198, i32 0, i32 1
  %200 = load i32, i32* %199, align 4
  %201 = load i32, i32* @IRQF_TRIGGER_RISING, align 4
  %202 = load i32, i32* @IRQF_ONESHOT, align 4
  %203 = or i32 %201, %202
  %204 = load %struct.iio_dev*, %struct.iio_dev** %5, align 8
  %205 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %204, i32 0, i32 1
  %206 = load i32, i32* %205, align 4
  %207 = load %struct.iio_dev*, %struct.iio_dev** %5, align 8
  %208 = call i32 @devm_request_irq(i32* %197, i32 %200, i32* @ad7768_interrupt, i32 %203, i32 %206, %struct.iio_dev* %207)
  store i32 %208, i32* %6, align 4
  %209 = load i32, i32* %6, align 4
  %210 = icmp ne i32 %209, 0
  br i1 %210, label %211, label %213

211:                                              ; preds = %186
  %212 = load i32, i32* %6, align 4
  store i32 %212, i32* %2, align 4
  br label %227

213:                                              ; preds = %186
  %214 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %215 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %214, i32 0, i32 0
  %216 = load %struct.iio_dev*, %struct.iio_dev** %5, align 8
  %217 = call i32 @devm_iio_triggered_buffer_setup(i32* %215, %struct.iio_dev* %216, i32* @iio_pollfunc_store_time, i32* @ad7768_trigger_handler, i32* @ad7768_buffer_ops)
  store i32 %217, i32* %6, align 4
  %218 = load i32, i32* %6, align 4
  %219 = icmp ne i32 %218, 0
  br i1 %219, label %220, label %222

220:                                              ; preds = %213
  %221 = load i32, i32* %6, align 4
  store i32 %221, i32* %2, align 4
  br label %227

222:                                              ; preds = %213
  %223 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %224 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %223, i32 0, i32 0
  %225 = load %struct.iio_dev*, %struct.iio_dev** %5, align 8
  %226 = call i32 @devm_iio_device_register(i32* %224, %struct.iio_dev* %225)
  store i32 %226, i32* %2, align 4
  br label %227

227:                                              ; preds = %222, %220, %211, %184, %156, %135, %91, %81, %69, %56, %43, %31, %12
  %228 = load i32, i32* %2, align 4
  ret i32 %228
}

declare dso_local %struct.iio_dev* @devm_iio_device_alloc(i32*, i32) #1

declare dso_local %struct.ad7768_state* @iio_priv(%struct.iio_dev*) #1

declare dso_local i32 @devm_regulator_get(i32*, i8*) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @PTR_ERR(i32) #1

declare dso_local i32 @regulator_enable(i32) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

declare dso_local i32 @devm_add_action_or_reset(i32*, i32, %struct.ad7768_state*) #1

declare dso_local i32 @devm_clk_get(i32*, i8*) #1

declare dso_local i32 @clk_prepare_enable(i32) #1

declare dso_local i32 @clk_get_rate(i32) #1

declare dso_local i32 @spi_set_drvdata(%struct.spi_device*, %struct.iio_dev*) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @ARRAY_SIZE(i32) #1

declare dso_local %struct.TYPE_10__* @spi_get_device_id(%struct.spi_device*) #1

declare dso_local i32 @ad7768_setup(%struct.ad7768_state*) #1

declare dso_local %struct.TYPE_11__* @devm_iio_trigger_alloc(i32*, i8*, i32, i32) #1

declare dso_local i32 @iio_trigger_set_drvdata(%struct.TYPE_11__*, %struct.iio_dev*) #1

declare dso_local i32 @devm_iio_trigger_register(i32*, %struct.TYPE_11__*) #1

declare dso_local i32 @iio_trigger_get(%struct.TYPE_11__*) #1

declare dso_local i32 @init_completion(i32*) #1

declare dso_local i32 @devm_request_irq(i32*, i32, i32*, i32, i32, %struct.iio_dev*) #1

declare dso_local i32 @devm_iio_triggered_buffer_setup(i32*, %struct.iio_dev*, i32*, i32*, i32*) #1

declare dso_local i32 @devm_iio_device_register(i32*, %struct.iio_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
