; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/gyro/extr_bmg160_core.c_bmg160_core_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/gyro/extr_bmg160_core.c_bmg160_core_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.regmap = type { i32 }
%struct.bmg160_data = type { i32, %struct.TYPE_8__*, %struct.TYPE_8__*, i32, i32, %struct.regmap* }
%struct.TYPE_8__ = type { i32*, %struct.TYPE_7__ }
%struct.TYPE_7__ = type { %struct.device* }
%struct.iio_dev = type { i8*, i32, i32*, i32, i32, i32, i32, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.device* }

@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [13 x i8] c"mount-matrix\00", align 1
@bmg160_channels = common dso_local global i32 0, align 4
@bmg160_accel_scan_masks = common dso_local global i32 0, align 4
@INDIO_DIRECT_MODE = common dso_local global i32 0, align 4
@bmg160_info = common dso_local global i32 0, align 4
@bmg160_data_rdy_trig_poll = common dso_local global i32 0, align 4
@bmg160_event_handler = common dso_local global i32 0, align 4
@IRQF_TRIGGER_RISING = common dso_local global i32 0, align 4
@BMG160_IRQ_NAME = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [9 x i8] c"%s-dev%d\00", align 1
@.str.2 = private unnamed_addr constant [20 x i8] c"%s-any-motion-dev%d\00", align 1
@bmg160_trigger_ops = common dso_local global i32 0, align 4
@iio_pollfunc_store_time = common dso_local global i32 0, align 4
@bmg160_trigger_handler = common dso_local global i32 0, align 4
@bmg160_buffer_setup_ops = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [35 x i8] c"iio triggered buffer setup failed\0A\00", align 1
@BMG160_AUTO_SUSPEND_DELAY_MS = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [31 x i8] c"unable to register iio device\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @bmg160_core_probe(%struct.device* %0, %struct.regmap* %1, i32 %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.device*, align 8
  %7 = alloca %struct.regmap*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca %struct.bmg160_data*, align 8
  %11 = alloca %struct.iio_dev*, align 8
  %12 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %6, align 8
  store %struct.regmap* %1, %struct.regmap** %7, align 8
  store i32 %2, i32* %8, align 4
  store i8* %3, i8** %9, align 8
  %13 = load %struct.device*, %struct.device** %6, align 8
  %14 = call %struct.iio_dev* @devm_iio_device_alloc(%struct.device* %13, i32 40)
  store %struct.iio_dev* %14, %struct.iio_dev** %11, align 8
  %15 = load %struct.iio_dev*, %struct.iio_dev** %11, align 8
  %16 = icmp ne %struct.iio_dev* %15, null
  br i1 %16, label %20, label %17

17:                                               ; preds = %4
  %18 = load i32, i32* @ENOMEM, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %5, align 4
  br label %244

20:                                               ; preds = %4
  %21 = load %struct.iio_dev*, %struct.iio_dev** %11, align 8
  %22 = call %struct.bmg160_data* @iio_priv(%struct.iio_dev* %21)
  store %struct.bmg160_data* %22, %struct.bmg160_data** %10, align 8
  %23 = load %struct.device*, %struct.device** %6, align 8
  %24 = load %struct.iio_dev*, %struct.iio_dev** %11, align 8
  %25 = call i32 @dev_set_drvdata(%struct.device* %23, %struct.iio_dev* %24)
  %26 = load i32, i32* %8, align 4
  %27 = load %struct.bmg160_data*, %struct.bmg160_data** %10, align 8
  %28 = getelementptr inbounds %struct.bmg160_data, %struct.bmg160_data* %27, i32 0, i32 0
  store i32 %26, i32* %28, align 8
  %29 = load %struct.regmap*, %struct.regmap** %7, align 8
  %30 = load %struct.bmg160_data*, %struct.bmg160_data** %10, align 8
  %31 = getelementptr inbounds %struct.bmg160_data, %struct.bmg160_data* %30, i32 0, i32 5
  store %struct.regmap* %29, %struct.regmap** %31, align 8
  %32 = load %struct.device*, %struct.device** %6, align 8
  %33 = load %struct.bmg160_data*, %struct.bmg160_data** %10, align 8
  %34 = getelementptr inbounds %struct.bmg160_data, %struct.bmg160_data* %33, i32 0, i32 4
  %35 = call i32 @iio_read_mount_matrix(%struct.device* %32, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i32* %34)
  store i32 %35, i32* %12, align 4
  %36 = load i32, i32* %12, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %40

38:                                               ; preds = %20
  %39 = load i32, i32* %12, align 4
  store i32 %39, i32* %5, align 4
  br label %244

40:                                               ; preds = %20
  %41 = load %struct.bmg160_data*, %struct.bmg160_data** %10, align 8
  %42 = call i32 @bmg160_chip_init(%struct.bmg160_data* %41)
  store i32 %42, i32* %12, align 4
  %43 = load i32, i32* %12, align 4
  %44 = icmp slt i32 %43, 0
  br i1 %44, label %45, label %47

45:                                               ; preds = %40
  %46 = load i32, i32* %12, align 4
  store i32 %46, i32* %5, align 4
  br label %244

47:                                               ; preds = %40
  %48 = load %struct.bmg160_data*, %struct.bmg160_data** %10, align 8
  %49 = getelementptr inbounds %struct.bmg160_data, %struct.bmg160_data* %48, i32 0, i32 3
  %50 = call i32 @mutex_init(i32* %49)
  %51 = load %struct.device*, %struct.device** %6, align 8
  %52 = call i64 @ACPI_HANDLE(%struct.device* %51)
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %57

54:                                               ; preds = %47
  %55 = load %struct.device*, %struct.device** %6, align 8
  %56 = call i8* @bmg160_match_acpi_device(%struct.device* %55)
  store i8* %56, i8** %9, align 8
  br label %57

57:                                               ; preds = %54, %47
  %58 = load %struct.device*, %struct.device** %6, align 8
  %59 = load %struct.iio_dev*, %struct.iio_dev** %11, align 8
  %60 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %59, i32 0, i32 7
  %61 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %60, i32 0, i32 0
  store %struct.device* %58, %struct.device** %61, align 8
  %62 = load i32, i32* @bmg160_channels, align 4
  %63 = load %struct.iio_dev*, %struct.iio_dev** %11, align 8
  %64 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %63, i32 0, i32 6
  store i32 %62, i32* %64, align 4
  %65 = load i32, i32* @bmg160_channels, align 4
  %66 = call i32 @ARRAY_SIZE(i32 %65)
  %67 = load %struct.iio_dev*, %struct.iio_dev** %11, align 8
  %68 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %67, i32 0, i32 5
  store i32 %66, i32* %68, align 8
  %69 = load i8*, i8** %9, align 8
  %70 = load %struct.iio_dev*, %struct.iio_dev** %11, align 8
  %71 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %70, i32 0, i32 0
  store i8* %69, i8** %71, align 8
  %72 = load i32, i32* @bmg160_accel_scan_masks, align 4
  %73 = load %struct.iio_dev*, %struct.iio_dev** %11, align 8
  %74 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %73, i32 0, i32 4
  store i32 %72, i32* %74, align 4
  %75 = load i32, i32* @INDIO_DIRECT_MODE, align 4
  %76 = load %struct.iio_dev*, %struct.iio_dev** %11, align 8
  %77 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %76, i32 0, i32 3
  store i32 %75, i32* %77, align 8
  %78 = load %struct.iio_dev*, %struct.iio_dev** %11, align 8
  %79 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %78, i32 0, i32 2
  store i32* @bmg160_info, i32** %79, align 8
  %80 = load %struct.bmg160_data*, %struct.bmg160_data** %10, align 8
  %81 = getelementptr inbounds %struct.bmg160_data, %struct.bmg160_data* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 8
  %83 = icmp sgt i32 %82, 0
  br i1 %83, label %84, label %187

84:                                               ; preds = %57
  %85 = load %struct.device*, %struct.device** %6, align 8
  %86 = load %struct.bmg160_data*, %struct.bmg160_data** %10, align 8
  %87 = getelementptr inbounds %struct.bmg160_data, %struct.bmg160_data* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 8
  %89 = load i32, i32* @bmg160_data_rdy_trig_poll, align 4
  %90 = load i32, i32* @bmg160_event_handler, align 4
  %91 = load i32, i32* @IRQF_TRIGGER_RISING, align 4
  %92 = load i32, i32* @BMG160_IRQ_NAME, align 4
  %93 = load %struct.iio_dev*, %struct.iio_dev** %11, align 8
  %94 = call i32 @devm_request_threaded_irq(%struct.device* %85, i32 %88, i32 %89, i32 %90, i32 %91, i32 %92, %struct.iio_dev* %93)
  store i32 %94, i32* %12, align 4
  %95 = load i32, i32* %12, align 4
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %97, label %99

97:                                               ; preds = %84
  %98 = load i32, i32* %12, align 4
  store i32 %98, i32* %5, align 4
  br label %244

99:                                               ; preds = %84
  %100 = load %struct.device*, %struct.device** %6, align 8
  %101 = load %struct.iio_dev*, %struct.iio_dev** %11, align 8
  %102 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %101, i32 0, i32 0
  %103 = load i8*, i8** %102, align 8
  %104 = load %struct.iio_dev*, %struct.iio_dev** %11, align 8
  %105 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %104, i32 0, i32 1
  %106 = load i32, i32* %105, align 8
  %107 = call i8* @devm_iio_trigger_alloc(%struct.device* %100, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i8* %103, i32 %106)
  %108 = bitcast i8* %107 to %struct.TYPE_8__*
  %109 = load %struct.bmg160_data*, %struct.bmg160_data** %10, align 8
  %110 = getelementptr inbounds %struct.bmg160_data, %struct.bmg160_data* %109, i32 0, i32 2
  store %struct.TYPE_8__* %108, %struct.TYPE_8__** %110, align 8
  %111 = load %struct.bmg160_data*, %struct.bmg160_data** %10, align 8
  %112 = getelementptr inbounds %struct.bmg160_data, %struct.bmg160_data* %111, i32 0, i32 2
  %113 = load %struct.TYPE_8__*, %struct.TYPE_8__** %112, align 8
  %114 = icmp ne %struct.TYPE_8__* %113, null
  br i1 %114, label %118, label %115

115:                                              ; preds = %99
  %116 = load i32, i32* @ENOMEM, align 4
  %117 = sub nsw i32 0, %116
  store i32 %117, i32* %5, align 4
  br label %244

118:                                              ; preds = %99
  %119 = load %struct.device*, %struct.device** %6, align 8
  %120 = load %struct.iio_dev*, %struct.iio_dev** %11, align 8
  %121 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %120, i32 0, i32 0
  %122 = load i8*, i8** %121, align 8
  %123 = load %struct.iio_dev*, %struct.iio_dev** %11, align 8
  %124 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %123, i32 0, i32 1
  %125 = load i32, i32* %124, align 8
  %126 = call i8* @devm_iio_trigger_alloc(%struct.device* %119, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i64 0, i64 0), i8* %122, i32 %125)
  %127 = bitcast i8* %126 to %struct.TYPE_8__*
  %128 = load %struct.bmg160_data*, %struct.bmg160_data** %10, align 8
  %129 = getelementptr inbounds %struct.bmg160_data, %struct.bmg160_data* %128, i32 0, i32 1
  store %struct.TYPE_8__* %127, %struct.TYPE_8__** %129, align 8
  %130 = load %struct.bmg160_data*, %struct.bmg160_data** %10, align 8
  %131 = getelementptr inbounds %struct.bmg160_data, %struct.bmg160_data* %130, i32 0, i32 1
  %132 = load %struct.TYPE_8__*, %struct.TYPE_8__** %131, align 8
  %133 = icmp ne %struct.TYPE_8__* %132, null
  br i1 %133, label %137, label %134

134:                                              ; preds = %118
  %135 = load i32, i32* @ENOMEM, align 4
  %136 = sub nsw i32 0, %135
  store i32 %136, i32* %5, align 4
  br label %244

137:                                              ; preds = %118
  %138 = load %struct.device*, %struct.device** %6, align 8
  %139 = load %struct.bmg160_data*, %struct.bmg160_data** %10, align 8
  %140 = getelementptr inbounds %struct.bmg160_data, %struct.bmg160_data* %139, i32 0, i32 2
  %141 = load %struct.TYPE_8__*, %struct.TYPE_8__** %140, align 8
  %142 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %141, i32 0, i32 1
  %143 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %142, i32 0, i32 0
  store %struct.device* %138, %struct.device** %143, align 8
  %144 = load %struct.bmg160_data*, %struct.bmg160_data** %10, align 8
  %145 = getelementptr inbounds %struct.bmg160_data, %struct.bmg160_data* %144, i32 0, i32 2
  %146 = load %struct.TYPE_8__*, %struct.TYPE_8__** %145, align 8
  %147 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %146, i32 0, i32 0
  store i32* @bmg160_trigger_ops, i32** %147, align 8
  %148 = load %struct.bmg160_data*, %struct.bmg160_data** %10, align 8
  %149 = getelementptr inbounds %struct.bmg160_data, %struct.bmg160_data* %148, i32 0, i32 2
  %150 = load %struct.TYPE_8__*, %struct.TYPE_8__** %149, align 8
  %151 = load %struct.iio_dev*, %struct.iio_dev** %11, align 8
  %152 = call i32 @iio_trigger_set_drvdata(%struct.TYPE_8__* %150, %struct.iio_dev* %151)
  %153 = load %struct.bmg160_data*, %struct.bmg160_data** %10, align 8
  %154 = getelementptr inbounds %struct.bmg160_data, %struct.bmg160_data* %153, i32 0, i32 2
  %155 = load %struct.TYPE_8__*, %struct.TYPE_8__** %154, align 8
  %156 = call i32 @iio_trigger_register(%struct.TYPE_8__* %155)
  store i32 %156, i32* %12, align 4
  %157 = load i32, i32* %12, align 4
  %158 = icmp ne i32 %157, 0
  br i1 %158, label %159, label %161

159:                                              ; preds = %137
  %160 = load i32, i32* %12, align 4
  store i32 %160, i32* %5, align 4
  br label %244

161:                                              ; preds = %137
  %162 = load %struct.device*, %struct.device** %6, align 8
  %163 = load %struct.bmg160_data*, %struct.bmg160_data** %10, align 8
  %164 = getelementptr inbounds %struct.bmg160_data, %struct.bmg160_data* %163, i32 0, i32 1
  %165 = load %struct.TYPE_8__*, %struct.TYPE_8__** %164, align 8
  %166 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %165, i32 0, i32 1
  %167 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %166, i32 0, i32 0
  store %struct.device* %162, %struct.device** %167, align 8
  %168 = load %struct.bmg160_data*, %struct.bmg160_data** %10, align 8
  %169 = getelementptr inbounds %struct.bmg160_data, %struct.bmg160_data* %168, i32 0, i32 1
  %170 = load %struct.TYPE_8__*, %struct.TYPE_8__** %169, align 8
  %171 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %170, i32 0, i32 0
  store i32* @bmg160_trigger_ops, i32** %171, align 8
  %172 = load %struct.bmg160_data*, %struct.bmg160_data** %10, align 8
  %173 = getelementptr inbounds %struct.bmg160_data, %struct.bmg160_data* %172, i32 0, i32 1
  %174 = load %struct.TYPE_8__*, %struct.TYPE_8__** %173, align 8
  %175 = load %struct.iio_dev*, %struct.iio_dev** %11, align 8
  %176 = call i32 @iio_trigger_set_drvdata(%struct.TYPE_8__* %174, %struct.iio_dev* %175)
  %177 = load %struct.bmg160_data*, %struct.bmg160_data** %10, align 8
  %178 = getelementptr inbounds %struct.bmg160_data, %struct.bmg160_data* %177, i32 0, i32 1
  %179 = load %struct.TYPE_8__*, %struct.TYPE_8__** %178, align 8
  %180 = call i32 @iio_trigger_register(%struct.TYPE_8__* %179)
  store i32 %180, i32* %12, align 4
  %181 = load i32, i32* %12, align 4
  %182 = icmp ne i32 %181, 0
  br i1 %182, label %183, label %186

183:                                              ; preds = %161
  %184 = load %struct.bmg160_data*, %struct.bmg160_data** %10, align 8
  %185 = getelementptr inbounds %struct.bmg160_data, %struct.bmg160_data* %184, i32 0, i32 1
  store %struct.TYPE_8__* null, %struct.TYPE_8__** %185, align 8
  br label %222

186:                                              ; preds = %161
  br label %187

187:                                              ; preds = %186, %57
  %188 = load %struct.iio_dev*, %struct.iio_dev** %11, align 8
  %189 = load i32, i32* @iio_pollfunc_store_time, align 4
  %190 = load i32, i32* @bmg160_trigger_handler, align 4
  %191 = call i32 @iio_triggered_buffer_setup(%struct.iio_dev* %188, i32 %189, i32 %190, i32* @bmg160_buffer_setup_ops)
  store i32 %191, i32* %12, align 4
  %192 = load i32, i32* %12, align 4
  %193 = icmp slt i32 %192, 0
  br i1 %193, label %194, label %197

194:                                              ; preds = %187
  %195 = load %struct.device*, %struct.device** %6, align 8
  %196 = call i32 @dev_err(%struct.device* %195, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.3, i64 0, i64 0))
  br label %222

197:                                              ; preds = %187
  %198 = load %struct.device*, %struct.device** %6, align 8
  %199 = call i32 @pm_runtime_set_active(%struct.device* %198)
  store i32 %199, i32* %12, align 4
  %200 = load i32, i32* %12, align 4
  %201 = icmp ne i32 %200, 0
  br i1 %201, label %202, label %203

202:                                              ; preds = %197
  br label %219

203:                                              ; preds = %197
  %204 = load %struct.device*, %struct.device** %6, align 8
  %205 = call i32 @pm_runtime_enable(%struct.device* %204)
  %206 = load %struct.device*, %struct.device** %6, align 8
  %207 = load i32, i32* @BMG160_AUTO_SUSPEND_DELAY_MS, align 4
  %208 = call i32 @pm_runtime_set_autosuspend_delay(%struct.device* %206, i32 %207)
  %209 = load %struct.device*, %struct.device** %6, align 8
  %210 = call i32 @pm_runtime_use_autosuspend(%struct.device* %209)
  %211 = load %struct.iio_dev*, %struct.iio_dev** %11, align 8
  %212 = call i32 @iio_device_register(%struct.iio_dev* %211)
  store i32 %212, i32* %12, align 4
  %213 = load i32, i32* %12, align 4
  %214 = icmp slt i32 %213, 0
  br i1 %214, label %215, label %218

215:                                              ; preds = %203
  %216 = load %struct.device*, %struct.device** %6, align 8
  %217 = call i32 @dev_err(%struct.device* %216, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.4, i64 0, i64 0))
  br label %219

218:                                              ; preds = %203
  store i32 0, i32* %5, align 4
  br label %244

219:                                              ; preds = %215, %202
  %220 = load %struct.iio_dev*, %struct.iio_dev** %11, align 8
  %221 = call i32 @iio_triggered_buffer_cleanup(%struct.iio_dev* %220)
  br label %222

222:                                              ; preds = %219, %194, %183
  %223 = load %struct.bmg160_data*, %struct.bmg160_data** %10, align 8
  %224 = getelementptr inbounds %struct.bmg160_data, %struct.bmg160_data* %223, i32 0, i32 2
  %225 = load %struct.TYPE_8__*, %struct.TYPE_8__** %224, align 8
  %226 = icmp ne %struct.TYPE_8__* %225, null
  br i1 %226, label %227, label %232

227:                                              ; preds = %222
  %228 = load %struct.bmg160_data*, %struct.bmg160_data** %10, align 8
  %229 = getelementptr inbounds %struct.bmg160_data, %struct.bmg160_data* %228, i32 0, i32 2
  %230 = load %struct.TYPE_8__*, %struct.TYPE_8__** %229, align 8
  %231 = call i32 @iio_trigger_unregister(%struct.TYPE_8__* %230)
  br label %232

232:                                              ; preds = %227, %222
  %233 = load %struct.bmg160_data*, %struct.bmg160_data** %10, align 8
  %234 = getelementptr inbounds %struct.bmg160_data, %struct.bmg160_data* %233, i32 0, i32 1
  %235 = load %struct.TYPE_8__*, %struct.TYPE_8__** %234, align 8
  %236 = icmp ne %struct.TYPE_8__* %235, null
  br i1 %236, label %237, label %242

237:                                              ; preds = %232
  %238 = load %struct.bmg160_data*, %struct.bmg160_data** %10, align 8
  %239 = getelementptr inbounds %struct.bmg160_data, %struct.bmg160_data* %238, i32 0, i32 1
  %240 = load %struct.TYPE_8__*, %struct.TYPE_8__** %239, align 8
  %241 = call i32 @iio_trigger_unregister(%struct.TYPE_8__* %240)
  br label %242

242:                                              ; preds = %237, %232
  %243 = load i32, i32* %12, align 4
  store i32 %243, i32* %5, align 4
  br label %244

244:                                              ; preds = %242, %218, %159, %134, %115, %97, %45, %38, %17
  %245 = load i32, i32* %5, align 4
  ret i32 %245
}

declare dso_local %struct.iio_dev* @devm_iio_device_alloc(%struct.device*, i32) #1

declare dso_local %struct.bmg160_data* @iio_priv(%struct.iio_dev*) #1

declare dso_local i32 @dev_set_drvdata(%struct.device*, %struct.iio_dev*) #1

declare dso_local i32 @iio_read_mount_matrix(%struct.device*, i8*, i32*) #1

declare dso_local i32 @bmg160_chip_init(%struct.bmg160_data*) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i64 @ACPI_HANDLE(%struct.device*) #1

declare dso_local i8* @bmg160_match_acpi_device(%struct.device*) #1

declare dso_local i32 @ARRAY_SIZE(i32) #1

declare dso_local i32 @devm_request_threaded_irq(%struct.device*, i32, i32, i32, i32, i32, %struct.iio_dev*) #1

declare dso_local i8* @devm_iio_trigger_alloc(%struct.device*, i8*, i8*, i32) #1

declare dso_local i32 @iio_trigger_set_drvdata(%struct.TYPE_8__*, %struct.iio_dev*) #1

declare dso_local i32 @iio_trigger_register(%struct.TYPE_8__*) #1

declare dso_local i32 @iio_triggered_buffer_setup(%struct.iio_dev*, i32, i32, i32*) #1

declare dso_local i32 @dev_err(%struct.device*, i8*) #1

declare dso_local i32 @pm_runtime_set_active(%struct.device*) #1

declare dso_local i32 @pm_runtime_enable(%struct.device*) #1

declare dso_local i32 @pm_runtime_set_autosuspend_delay(%struct.device*, i32) #1

declare dso_local i32 @pm_runtime_use_autosuspend(%struct.device*) #1

declare dso_local i32 @iio_device_register(%struct.iio_dev*) #1

declare dso_local i32 @iio_triggered_buffer_cleanup(%struct.iio_dev*) #1

declare dso_local i32 @iio_trigger_unregister(%struct.TYPE_8__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
