; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/potentiostat/extr_lmp91000.c_lmp91000_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/potentiostat/extr_lmp91000.c_lmp91000_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_client = type { %struct.device }
%struct.device = type { i32 }
%struct.i2c_device_id = type { i32 }
%struct.lmp91000_data = type { %struct.TYPE_9__*, i32, i32, i32, %struct.device*, i32 }
%struct.TYPE_9__ = type { %struct.TYPE_8__, i32* }
%struct.TYPE_8__ = type { %struct.device* }
%struct.iio_dev = type { i32, i32, i32, %struct.TYPE_7__, i32, i32, i32* }
%struct.TYPE_7__ = type { %struct.device* }

@ENOMEM = common dso_local global i32 0, align 4
@lmp91000_info = common dso_local global i32 0, align 4
@lmp91000_channels = common dso_local global i32 0, align 4
@LMP91000_DRV_NAME = common dso_local global i32 0, align 4
@INDIO_DIRECT_MODE = common dso_local global i32 0, align 4
@lmp91000_regmap_config = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"regmap initialization failed.\0A\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"%s-mux%d\00", align 1
@.str.2 = private unnamed_addr constant [30 x i8] c"cannot allocate iio trigger.\0A\00", align 1
@lmp91000_trigger_ops = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [31 x i8] c"cannot set immutable trigger.\0A\00", align 1
@.str.4 = private unnamed_addr constant [30 x i8] c"cannot register iio trigger.\0A\00", align 1
@lmp91000_buffer_handler = common dso_local global i32 0, align 4
@lmp91000_buffer_setup_ops = common dso_local global i32 0, align 4
@lmp91000_buffer_cb = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@EPROBE_DEFER = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_client*, %struct.i2c_device_id*)* @lmp91000_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lmp91000_probe(%struct.i2c_client* %0, %struct.i2c_device_id* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.i2c_client*, align 8
  %5 = alloca %struct.i2c_device_id*, align 8
  %6 = alloca %struct.device*, align 8
  %7 = alloca %struct.lmp91000_data*, align 8
  %8 = alloca %struct.iio_dev*, align 8
  %9 = alloca i32, align 4
  store %struct.i2c_client* %0, %struct.i2c_client** %4, align 8
  store %struct.i2c_device_id* %1, %struct.i2c_device_id** %5, align 8
  %10 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %11 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %10, i32 0, i32 0
  store %struct.device* %11, %struct.device** %6, align 8
  %12 = load %struct.device*, %struct.device** %6, align 8
  %13 = call %struct.iio_dev* @devm_iio_device_alloc(%struct.device* %12, i32 40)
  store %struct.iio_dev* %13, %struct.iio_dev** %8, align 8
  %14 = load %struct.iio_dev*, %struct.iio_dev** %8, align 8
  %15 = icmp ne %struct.iio_dev* %14, null
  br i1 %15, label %19, label %16

16:                                               ; preds = %2
  %17 = load i32, i32* @ENOMEM, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %3, align 4
  br label %193

19:                                               ; preds = %2
  %20 = load %struct.iio_dev*, %struct.iio_dev** %8, align 8
  %21 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %20, i32 0, i32 6
  store i32* @lmp91000_info, i32** %21, align 8
  %22 = load i32, i32* @lmp91000_channels, align 4
  %23 = load %struct.iio_dev*, %struct.iio_dev** %8, align 8
  %24 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %23, i32 0, i32 5
  store i32 %22, i32* %24, align 4
  %25 = load i32, i32* @lmp91000_channels, align 4
  %26 = call i32 @ARRAY_SIZE(i32 %25)
  %27 = load %struct.iio_dev*, %struct.iio_dev** %8, align 8
  %28 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %27, i32 0, i32 4
  store i32 %26, i32* %28, align 8
  %29 = load i32, i32* @LMP91000_DRV_NAME, align 4
  %30 = load %struct.iio_dev*, %struct.iio_dev** %8, align 8
  %31 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %30, i32 0, i32 1
  store i32 %29, i32* %31, align 4
  %32 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %33 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %32, i32 0, i32 0
  %34 = load %struct.iio_dev*, %struct.iio_dev** %8, align 8
  %35 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %34, i32 0, i32 3
  %36 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %35, i32 0, i32 0
  store %struct.device* %33, %struct.device** %36, align 8
  %37 = load i32, i32* @INDIO_DIRECT_MODE, align 4
  %38 = load %struct.iio_dev*, %struct.iio_dev** %8, align 8
  %39 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %38, i32 0, i32 2
  store i32 %37, i32* %39, align 8
  %40 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %41 = load %struct.iio_dev*, %struct.iio_dev** %8, align 8
  %42 = call i32 @i2c_set_clientdata(%struct.i2c_client* %40, %struct.iio_dev* %41)
  %43 = load %struct.iio_dev*, %struct.iio_dev** %8, align 8
  %44 = call %struct.lmp91000_data* @iio_priv(%struct.iio_dev* %43)
  store %struct.lmp91000_data* %44, %struct.lmp91000_data** %7, align 8
  %45 = load %struct.device*, %struct.device** %6, align 8
  %46 = load %struct.lmp91000_data*, %struct.lmp91000_data** %7, align 8
  %47 = getelementptr inbounds %struct.lmp91000_data, %struct.lmp91000_data* %46, i32 0, i32 4
  store %struct.device* %45, %struct.device** %47, align 8
  %48 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %49 = call i32 @devm_regmap_init_i2c(%struct.i2c_client* %48, i32* @lmp91000_regmap_config)
  %50 = load %struct.lmp91000_data*, %struct.lmp91000_data** %7, align 8
  %51 = getelementptr inbounds %struct.lmp91000_data, %struct.lmp91000_data* %50, i32 0, i32 5
  store i32 %49, i32* %51, align 8
  %52 = load %struct.lmp91000_data*, %struct.lmp91000_data** %7, align 8
  %53 = getelementptr inbounds %struct.lmp91000_data, %struct.lmp91000_data* %52, i32 0, i32 5
  %54 = load i32, i32* %53, align 8
  %55 = call i64 @IS_ERR(i32 %54)
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %64

57:                                               ; preds = %19
  %58 = load %struct.device*, %struct.device** %6, align 8
  %59 = call i32 @dev_err(%struct.device* %58, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  %60 = load %struct.lmp91000_data*, %struct.lmp91000_data** %7, align 8
  %61 = getelementptr inbounds %struct.lmp91000_data, %struct.lmp91000_data* %60, i32 0, i32 5
  %62 = load i32, i32* %61, align 8
  %63 = call i32 @PTR_ERR(i32 %62)
  store i32 %63, i32* %3, align 4
  br label %193

64:                                               ; preds = %19
  %65 = load %struct.lmp91000_data*, %struct.lmp91000_data** %7, align 8
  %66 = getelementptr inbounds %struct.lmp91000_data, %struct.lmp91000_data* %65, i32 0, i32 4
  %67 = load %struct.device*, %struct.device** %66, align 8
  %68 = load %struct.iio_dev*, %struct.iio_dev** %8, align 8
  %69 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 4
  %71 = load %struct.iio_dev*, %struct.iio_dev** %8, align 8
  %72 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 8
  %74 = call %struct.TYPE_9__* @devm_iio_trigger_alloc(%struct.device* %67, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i32 %70, i32 %73)
  %75 = load %struct.lmp91000_data*, %struct.lmp91000_data** %7, align 8
  %76 = getelementptr inbounds %struct.lmp91000_data, %struct.lmp91000_data* %75, i32 0, i32 0
  store %struct.TYPE_9__* %74, %struct.TYPE_9__** %76, align 8
  %77 = load %struct.lmp91000_data*, %struct.lmp91000_data** %7, align 8
  %78 = getelementptr inbounds %struct.lmp91000_data, %struct.lmp91000_data* %77, i32 0, i32 0
  %79 = load %struct.TYPE_9__*, %struct.TYPE_9__** %78, align 8
  %80 = icmp ne %struct.TYPE_9__* %79, null
  br i1 %80, label %86, label %81

81:                                               ; preds = %64
  %82 = load %struct.device*, %struct.device** %6, align 8
  %83 = call i32 @dev_err(%struct.device* %82, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i64 0, i64 0))
  %84 = load i32, i32* @ENOMEM, align 4
  %85 = sub nsw i32 0, %84
  store i32 %85, i32* %3, align 4
  br label %193

86:                                               ; preds = %64
  %87 = load %struct.lmp91000_data*, %struct.lmp91000_data** %7, align 8
  %88 = getelementptr inbounds %struct.lmp91000_data, %struct.lmp91000_data* %87, i32 0, i32 0
  %89 = load %struct.TYPE_9__*, %struct.TYPE_9__** %88, align 8
  %90 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %89, i32 0, i32 1
  store i32* @lmp91000_trigger_ops, i32** %90, align 8
  %91 = load %struct.device*, %struct.device** %6, align 8
  %92 = load %struct.lmp91000_data*, %struct.lmp91000_data** %7, align 8
  %93 = getelementptr inbounds %struct.lmp91000_data, %struct.lmp91000_data* %92, i32 0, i32 0
  %94 = load %struct.TYPE_9__*, %struct.TYPE_9__** %93, align 8
  %95 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %94, i32 0, i32 0
  %96 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %95, i32 0, i32 0
  store %struct.device* %91, %struct.device** %96, align 8
  %97 = load %struct.lmp91000_data*, %struct.lmp91000_data** %7, align 8
  %98 = getelementptr inbounds %struct.lmp91000_data, %struct.lmp91000_data* %97, i32 0, i32 3
  %99 = call i32 @init_completion(i32* %98)
  %100 = load %struct.lmp91000_data*, %struct.lmp91000_data** %7, align 8
  %101 = call i32 @lmp91000_read_config(%struct.lmp91000_data* %100)
  store i32 %101, i32* %9, align 4
  %102 = load i32, i32* %9, align 4
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %104, label %106

104:                                              ; preds = %86
  %105 = load i32, i32* %9, align 4
  store i32 %105, i32* %3, align 4
  br label %193

106:                                              ; preds = %86
  %107 = load %struct.lmp91000_data*, %struct.lmp91000_data** %7, align 8
  %108 = getelementptr inbounds %struct.lmp91000_data, %struct.lmp91000_data* %107, i32 0, i32 1
  %109 = load i32, i32* %108, align 8
  %110 = call i32 @iio_channel_cb_get_iio_dev(i32 %109)
  %111 = load %struct.lmp91000_data*, %struct.lmp91000_data** %7, align 8
  %112 = getelementptr inbounds %struct.lmp91000_data, %struct.lmp91000_data* %111, i32 0, i32 0
  %113 = load %struct.TYPE_9__*, %struct.TYPE_9__** %112, align 8
  %114 = call i32 @iio_trigger_set_immutable(i32 %110, %struct.TYPE_9__* %113)
  store i32 %114, i32* %9, align 4
  %115 = load i32, i32* %9, align 4
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %117, label %121

117:                                              ; preds = %106
  %118 = load %struct.device*, %struct.device** %6, align 8
  %119 = call i32 @dev_err(%struct.device* %118, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.3, i64 0, i64 0))
  %120 = load i32, i32* %9, align 4
  store i32 %120, i32* %3, align 4
  br label %193

121:                                              ; preds = %106
  %122 = load %struct.lmp91000_data*, %struct.lmp91000_data** %7, align 8
  %123 = getelementptr inbounds %struct.lmp91000_data, %struct.lmp91000_data* %122, i32 0, i32 0
  %124 = load %struct.TYPE_9__*, %struct.TYPE_9__** %123, align 8
  %125 = call i32 @iio_trigger_register(%struct.TYPE_9__* %124)
  store i32 %125, i32* %9, align 4
  %126 = load i32, i32* %9, align 4
  %127 = icmp ne i32 %126, 0
  br i1 %127, label %128, label %132

128:                                              ; preds = %121
  %129 = load %struct.device*, %struct.device** %6, align 8
  %130 = call i32 @dev_err(%struct.device* %129, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.4, i64 0, i64 0))
  %131 = load i32, i32* %9, align 4
  store i32 %131, i32* %3, align 4
  br label %193

132:                                              ; preds = %121
  %133 = load %struct.iio_dev*, %struct.iio_dev** %8, align 8
  %134 = call i32 @iio_triggered_buffer_setup(%struct.iio_dev* %133, i32* null, i32* @lmp91000_buffer_handler, i32* @lmp91000_buffer_setup_ops)
  store i32 %134, i32* %9, align 4
  %135 = load i32, i32* %9, align 4
  %136 = icmp ne i32 %135, 0
  br i1 %136, label %137, label %138

137:                                              ; preds = %132
  br label %187

138:                                              ; preds = %132
  %139 = load %struct.device*, %struct.device** %6, align 8
  %140 = load %struct.iio_dev*, %struct.iio_dev** %8, align 8
  %141 = call i32 @iio_channel_get_all_cb(%struct.device* %139, i32* @lmp91000_buffer_cb, %struct.iio_dev* %140)
  %142 = load %struct.lmp91000_data*, %struct.lmp91000_data** %7, align 8
  %143 = getelementptr inbounds %struct.lmp91000_data, %struct.lmp91000_data* %142, i32 0, i32 1
  store i32 %141, i32* %143, align 8
  %144 = load %struct.lmp91000_data*, %struct.lmp91000_data** %7, align 8
  %145 = getelementptr inbounds %struct.lmp91000_data, %struct.lmp91000_data* %144, i32 0, i32 1
  %146 = load i32, i32* %145, align 8
  %147 = call i64 @IS_ERR(i32 %146)
  %148 = icmp ne i64 %147, 0
  br i1 %148, label %149, label %166

149:                                              ; preds = %138
  %150 = load %struct.lmp91000_data*, %struct.lmp91000_data** %7, align 8
  %151 = getelementptr inbounds %struct.lmp91000_data, %struct.lmp91000_data* %150, i32 0, i32 1
  %152 = load i32, i32* %151, align 8
  %153 = call i32 @PTR_ERR(i32 %152)
  %154 = load i32, i32* @ENODEV, align 4
  %155 = sub nsw i32 0, %154
  %156 = icmp eq i32 %153, %155
  br i1 %156, label %157, label %160

157:                                              ; preds = %149
  %158 = load i32, i32* @EPROBE_DEFER, align 4
  %159 = sub nsw i32 0, %158
  store i32 %159, i32* %9, align 4
  br label %165

160:                                              ; preds = %149
  %161 = load %struct.lmp91000_data*, %struct.lmp91000_data** %7, align 8
  %162 = getelementptr inbounds %struct.lmp91000_data, %struct.lmp91000_data* %161, i32 0, i32 1
  %163 = load i32, i32* %162, align 8
  %164 = call i32 @PTR_ERR(i32 %163)
  store i32 %164, i32* %9, align 4
  br label %165

165:                                              ; preds = %160, %157
  br label %184

166:                                              ; preds = %138
  %167 = load %struct.lmp91000_data*, %struct.lmp91000_data** %7, align 8
  %168 = getelementptr inbounds %struct.lmp91000_data, %struct.lmp91000_data* %167, i32 0, i32 1
  %169 = load i32, i32* %168, align 8
  %170 = call i32 @iio_channel_cb_get_channels(i32 %169)
  %171 = load %struct.lmp91000_data*, %struct.lmp91000_data** %7, align 8
  %172 = getelementptr inbounds %struct.lmp91000_data, %struct.lmp91000_data* %171, i32 0, i32 2
  store i32 %170, i32* %172, align 4
  %173 = load %struct.iio_dev*, %struct.iio_dev** %8, align 8
  %174 = call i32 @iio_device_register(%struct.iio_dev* %173)
  store i32 %174, i32* %9, align 4
  %175 = load i32, i32* %9, align 4
  %176 = icmp ne i32 %175, 0
  br i1 %176, label %177, label %178

177:                                              ; preds = %166
  br label %179

178:                                              ; preds = %166
  store i32 0, i32* %3, align 4
  br label %193

179:                                              ; preds = %177
  %180 = load %struct.lmp91000_data*, %struct.lmp91000_data** %7, align 8
  %181 = getelementptr inbounds %struct.lmp91000_data, %struct.lmp91000_data* %180, i32 0, i32 1
  %182 = load i32, i32* %181, align 8
  %183 = call i32 @iio_channel_release_all_cb(i32 %182)
  br label %184

184:                                              ; preds = %179, %165
  %185 = load %struct.iio_dev*, %struct.iio_dev** %8, align 8
  %186 = call i32 @iio_triggered_buffer_cleanup(%struct.iio_dev* %185)
  br label %187

187:                                              ; preds = %184, %137
  %188 = load %struct.lmp91000_data*, %struct.lmp91000_data** %7, align 8
  %189 = getelementptr inbounds %struct.lmp91000_data, %struct.lmp91000_data* %188, i32 0, i32 0
  %190 = load %struct.TYPE_9__*, %struct.TYPE_9__** %189, align 8
  %191 = call i32 @iio_trigger_unregister(%struct.TYPE_9__* %190)
  %192 = load i32, i32* %9, align 4
  store i32 %192, i32* %3, align 4
  br label %193

193:                                              ; preds = %187, %178, %128, %117, %104, %81, %57, %16
  %194 = load i32, i32* %3, align 4
  ret i32 %194
}

declare dso_local %struct.iio_dev* @devm_iio_device_alloc(%struct.device*, i32) #1

declare dso_local i32 @ARRAY_SIZE(i32) #1

declare dso_local i32 @i2c_set_clientdata(%struct.i2c_client*, %struct.iio_dev*) #1

declare dso_local %struct.lmp91000_data* @iio_priv(%struct.iio_dev*) #1

declare dso_local i32 @devm_regmap_init_i2c(%struct.i2c_client*, i32*) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @dev_err(%struct.device*, i8*) #1

declare dso_local i32 @PTR_ERR(i32) #1

declare dso_local %struct.TYPE_9__* @devm_iio_trigger_alloc(%struct.device*, i8*, i32, i32) #1

declare dso_local i32 @init_completion(i32*) #1

declare dso_local i32 @lmp91000_read_config(%struct.lmp91000_data*) #1

declare dso_local i32 @iio_trigger_set_immutable(i32, %struct.TYPE_9__*) #1

declare dso_local i32 @iio_channel_cb_get_iio_dev(i32) #1

declare dso_local i32 @iio_trigger_register(%struct.TYPE_9__*) #1

declare dso_local i32 @iio_triggered_buffer_setup(%struct.iio_dev*, i32*, i32*, i32*) #1

declare dso_local i32 @iio_channel_get_all_cb(%struct.device*, i32*, %struct.iio_dev*) #1

declare dso_local i32 @iio_channel_cb_get_channels(i32) #1

declare dso_local i32 @iio_device_register(%struct.iio_dev*) #1

declare dso_local i32 @iio_channel_release_all_cb(i32) #1

declare dso_local i32 @iio_triggered_buffer_cleanup(%struct.iio_dev*) #1

declare dso_local i32 @iio_trigger_unregister(%struct.TYPE_9__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
