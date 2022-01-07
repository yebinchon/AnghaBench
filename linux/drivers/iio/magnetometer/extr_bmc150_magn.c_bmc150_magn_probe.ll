; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/magnetometer/extr_bmc150_magn.c_bmc150_magn_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/magnetometer/extr_bmc150_magn.c_bmc150_magn_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.regmap = type { i32 }
%struct.bmc150_magn_data = type { i32, %struct.TYPE_11__*, i32, i32, %struct.device*, %struct.regmap* }
%struct.TYPE_11__ = type { i32*, %struct.TYPE_10__ }
%struct.TYPE_10__ = type { %struct.device* }
%struct.iio_dev = type { i8*, i32, i32*, i32, i32, i32, i32, %struct.TYPE_9__ }
%struct.TYPE_9__ = type { %struct.device* }

@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [13 x i8] c"mount-matrix\00", align 1
@bmc150_magn_channels = common dso_local global i32 0, align 4
@bmc150_magn_scan_masks = common dso_local global i32 0, align 4
@INDIO_DIRECT_MODE = common dso_local global i32 0, align 4
@bmc150_magn_info = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [9 x i8] c"%s-dev%d\00", align 1
@.str.2 = private unnamed_addr constant [26 x i8] c"iio trigger alloc failed\0A\00", align 1
@bmc150_magn_trigger_ops = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [29 x i8] c"iio trigger register failed\0A\00", align 1
@iio_trigger_generic_data_rdy_poll = common dso_local global i32 0, align 4
@IRQF_TRIGGER_RISING = common dso_local global i32 0, align 4
@IRQF_ONESHOT = common dso_local global i32 0, align 4
@BMC150_MAGN_IRQ_NAME = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [23 x i8] c"request irq %d failed\0A\00", align 1
@iio_pollfunc_store_time = common dso_local global i32 0, align 4
@bmc150_magn_trigger_handler = common dso_local global i32 0, align 4
@bmc150_magn_buffer_setup_ops = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [35 x i8] c"iio triggered buffer setup failed\0A\00", align 1
@BMC150_MAGN_AUTO_SUSPEND_DELAY_MS = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [31 x i8] c"unable to register iio device\0A\00", align 1
@.str.7 = private unnamed_addr constant [22 x i8] c"Registered device %s\0A\00", align 1
@BMC150_MAGN_POWER_MODE_SUSPEND = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @bmc150_magn_probe(%struct.device* %0, %struct.regmap* %1, i32 %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.device*, align 8
  %7 = alloca %struct.regmap*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca %struct.bmc150_magn_data*, align 8
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
  br label %215

20:                                               ; preds = %4
  %21 = load %struct.iio_dev*, %struct.iio_dev** %11, align 8
  %22 = call %struct.bmc150_magn_data* @iio_priv(%struct.iio_dev* %21)
  store %struct.bmc150_magn_data* %22, %struct.bmc150_magn_data** %10, align 8
  %23 = load %struct.device*, %struct.device** %6, align 8
  %24 = load %struct.iio_dev*, %struct.iio_dev** %11, align 8
  %25 = call i32 @dev_set_drvdata(%struct.device* %23, %struct.iio_dev* %24)
  %26 = load %struct.regmap*, %struct.regmap** %7, align 8
  %27 = load %struct.bmc150_magn_data*, %struct.bmc150_magn_data** %10, align 8
  %28 = getelementptr inbounds %struct.bmc150_magn_data, %struct.bmc150_magn_data* %27, i32 0, i32 5
  store %struct.regmap* %26, %struct.regmap** %28, align 8
  %29 = load i32, i32* %8, align 4
  %30 = load %struct.bmc150_magn_data*, %struct.bmc150_magn_data** %10, align 8
  %31 = getelementptr inbounds %struct.bmc150_magn_data, %struct.bmc150_magn_data* %30, i32 0, i32 0
  store i32 %29, i32* %31, align 8
  %32 = load %struct.device*, %struct.device** %6, align 8
  %33 = load %struct.bmc150_magn_data*, %struct.bmc150_magn_data** %10, align 8
  %34 = getelementptr inbounds %struct.bmc150_magn_data, %struct.bmc150_magn_data* %33, i32 0, i32 4
  store %struct.device* %32, %struct.device** %34, align 8
  %35 = load %struct.device*, %struct.device** %6, align 8
  %36 = load %struct.bmc150_magn_data*, %struct.bmc150_magn_data** %10, align 8
  %37 = getelementptr inbounds %struct.bmc150_magn_data, %struct.bmc150_magn_data* %36, i32 0, i32 3
  %38 = call i32 @iio_read_mount_matrix(%struct.device* %35, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i32* %37)
  store i32 %38, i32* %12, align 4
  %39 = load i32, i32* %12, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %43

41:                                               ; preds = %20
  %42 = load i32, i32* %12, align 4
  store i32 %42, i32* %5, align 4
  br label %215

43:                                               ; preds = %20
  %44 = load i8*, i8** %9, align 8
  %45 = icmp ne i8* %44, null
  br i1 %45, label %53, label %46

46:                                               ; preds = %43
  %47 = load %struct.device*, %struct.device** %6, align 8
  %48 = call i64 @ACPI_HANDLE(%struct.device* %47)
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %53

50:                                               ; preds = %46
  %51 = load %struct.device*, %struct.device** %6, align 8
  %52 = call i8* @bmc150_magn_match_acpi_device(%struct.device* %51)
  store i8* %52, i8** %9, align 8
  br label %53

53:                                               ; preds = %50, %46, %43
  %54 = load %struct.bmc150_magn_data*, %struct.bmc150_magn_data** %10, align 8
  %55 = getelementptr inbounds %struct.bmc150_magn_data, %struct.bmc150_magn_data* %54, i32 0, i32 2
  %56 = call i32 @mutex_init(i32* %55)
  %57 = load %struct.bmc150_magn_data*, %struct.bmc150_magn_data** %10, align 8
  %58 = call i32 @bmc150_magn_init(%struct.bmc150_magn_data* %57)
  store i32 %58, i32* %12, align 4
  %59 = load i32, i32* %12, align 4
  %60 = icmp slt i32 %59, 0
  br i1 %60, label %61, label %63

61:                                               ; preds = %53
  %62 = load i32, i32* %12, align 4
  store i32 %62, i32* %5, align 4
  br label %215

63:                                               ; preds = %53
  %64 = load %struct.device*, %struct.device** %6, align 8
  %65 = load %struct.iio_dev*, %struct.iio_dev** %11, align 8
  %66 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %65, i32 0, i32 7
  %67 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %66, i32 0, i32 0
  store %struct.device* %64, %struct.device** %67, align 8
  %68 = load i32, i32* @bmc150_magn_channels, align 4
  %69 = load %struct.iio_dev*, %struct.iio_dev** %11, align 8
  %70 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %69, i32 0, i32 6
  store i32 %68, i32* %70, align 4
  %71 = load i32, i32* @bmc150_magn_channels, align 4
  %72 = call i32 @ARRAY_SIZE(i32 %71)
  %73 = load %struct.iio_dev*, %struct.iio_dev** %11, align 8
  %74 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %73, i32 0, i32 5
  store i32 %72, i32* %74, align 8
  %75 = load i32, i32* @bmc150_magn_scan_masks, align 4
  %76 = load %struct.iio_dev*, %struct.iio_dev** %11, align 8
  %77 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %76, i32 0, i32 4
  store i32 %75, i32* %77, align 4
  %78 = load i8*, i8** %9, align 8
  %79 = load %struct.iio_dev*, %struct.iio_dev** %11, align 8
  %80 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %79, i32 0, i32 0
  store i8* %78, i8** %80, align 8
  %81 = load i32, i32* @INDIO_DIRECT_MODE, align 4
  %82 = load %struct.iio_dev*, %struct.iio_dev** %11, align 8
  %83 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %82, i32 0, i32 3
  store i32 %81, i32* %83, align 8
  %84 = load %struct.iio_dev*, %struct.iio_dev** %11, align 8
  %85 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %84, i32 0, i32 2
  store i32* @bmc150_magn_info, i32** %85, align 8
  %86 = load i32, i32* %8, align 4
  %87 = icmp sgt i32 %86, 0
  br i1 %87, label %88, label %151

88:                                               ; preds = %63
  %89 = load %struct.device*, %struct.device** %6, align 8
  %90 = load %struct.iio_dev*, %struct.iio_dev** %11, align 8
  %91 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %90, i32 0, i32 0
  %92 = load i8*, i8** %91, align 8
  %93 = load %struct.iio_dev*, %struct.iio_dev** %11, align 8
  %94 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %93, i32 0, i32 1
  %95 = load i32, i32* %94, align 8
  %96 = call %struct.TYPE_11__* @devm_iio_trigger_alloc(%struct.device* %89, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i8* %92, i32 %95)
  %97 = load %struct.bmc150_magn_data*, %struct.bmc150_magn_data** %10, align 8
  %98 = getelementptr inbounds %struct.bmc150_magn_data, %struct.bmc150_magn_data* %97, i32 0, i32 1
  store %struct.TYPE_11__* %96, %struct.TYPE_11__** %98, align 8
  %99 = load %struct.bmc150_magn_data*, %struct.bmc150_magn_data** %10, align 8
  %100 = getelementptr inbounds %struct.bmc150_magn_data, %struct.bmc150_magn_data* %99, i32 0, i32 1
  %101 = load %struct.TYPE_11__*, %struct.TYPE_11__** %100, align 8
  %102 = icmp ne %struct.TYPE_11__* %101, null
  br i1 %102, label %108, label %103

103:                                              ; preds = %88
  %104 = load i32, i32* @ENOMEM, align 4
  %105 = sub nsw i32 0, %104
  store i32 %105, i32* %12, align 4
  %106 = load %struct.device*, %struct.device** %6, align 8
  %107 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %106, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0))
  br label %210

108:                                              ; preds = %88
  %109 = load %struct.device*, %struct.device** %6, align 8
  %110 = load %struct.bmc150_magn_data*, %struct.bmc150_magn_data** %10, align 8
  %111 = getelementptr inbounds %struct.bmc150_magn_data, %struct.bmc150_magn_data* %110, i32 0, i32 1
  %112 = load %struct.TYPE_11__*, %struct.TYPE_11__** %111, align 8
  %113 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %112, i32 0, i32 1
  %114 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %113, i32 0, i32 0
  store %struct.device* %109, %struct.device** %114, align 8
  %115 = load %struct.bmc150_magn_data*, %struct.bmc150_magn_data** %10, align 8
  %116 = getelementptr inbounds %struct.bmc150_magn_data, %struct.bmc150_magn_data* %115, i32 0, i32 1
  %117 = load %struct.TYPE_11__*, %struct.TYPE_11__** %116, align 8
  %118 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %117, i32 0, i32 0
  store i32* @bmc150_magn_trigger_ops, i32** %118, align 8
  %119 = load %struct.bmc150_magn_data*, %struct.bmc150_magn_data** %10, align 8
  %120 = getelementptr inbounds %struct.bmc150_magn_data, %struct.bmc150_magn_data* %119, i32 0, i32 1
  %121 = load %struct.TYPE_11__*, %struct.TYPE_11__** %120, align 8
  %122 = load %struct.iio_dev*, %struct.iio_dev** %11, align 8
  %123 = call i32 @iio_trigger_set_drvdata(%struct.TYPE_11__* %121, %struct.iio_dev* %122)
  %124 = load %struct.bmc150_magn_data*, %struct.bmc150_magn_data** %10, align 8
  %125 = getelementptr inbounds %struct.bmc150_magn_data, %struct.bmc150_magn_data* %124, i32 0, i32 1
  %126 = load %struct.TYPE_11__*, %struct.TYPE_11__** %125, align 8
  %127 = call i32 @iio_trigger_register(%struct.TYPE_11__* %126)
  store i32 %127, i32* %12, align 4
  %128 = load i32, i32* %12, align 4
  %129 = icmp ne i32 %128, 0
  br i1 %129, label %130, label %133

130:                                              ; preds = %108
  %131 = load %struct.device*, %struct.device** %6, align 8
  %132 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %131, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.3, i64 0, i64 0))
  br label %210

133:                                              ; preds = %108
  %134 = load i32, i32* %8, align 4
  %135 = load i32, i32* @iio_trigger_generic_data_rdy_poll, align 4
  %136 = load i32, i32* @IRQF_TRIGGER_RISING, align 4
  %137 = load i32, i32* @IRQF_ONESHOT, align 4
  %138 = or i32 %136, %137
  %139 = load i32, i32* @BMC150_MAGN_IRQ_NAME, align 4
  %140 = load %struct.bmc150_magn_data*, %struct.bmc150_magn_data** %10, align 8
  %141 = getelementptr inbounds %struct.bmc150_magn_data, %struct.bmc150_magn_data* %140, i32 0, i32 1
  %142 = load %struct.TYPE_11__*, %struct.TYPE_11__** %141, align 8
  %143 = call i32 @request_threaded_irq(i32 %134, i32 %135, i32* null, i32 %138, i32 %139, %struct.TYPE_11__* %142)
  store i32 %143, i32* %12, align 4
  %144 = load i32, i32* %12, align 4
  %145 = icmp slt i32 %144, 0
  br i1 %145, label %146, label %150

146:                                              ; preds = %133
  %147 = load %struct.device*, %struct.device** %6, align 8
  %148 = load i32, i32* %8, align 4
  %149 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %147, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.4, i64 0, i64 0), i32 %148)
  br label %199

150:                                              ; preds = %133
  br label %151

151:                                              ; preds = %150, %63
  %152 = load %struct.iio_dev*, %struct.iio_dev** %11, align 8
  %153 = load i32, i32* @iio_pollfunc_store_time, align 4
  %154 = load i32, i32* @bmc150_magn_trigger_handler, align 4
  %155 = call i32 @iio_triggered_buffer_setup(%struct.iio_dev* %152, i32 %153, i32 %154, i32* @bmc150_magn_buffer_setup_ops)
  store i32 %155, i32* %12, align 4
  %156 = load i32, i32* %12, align 4
  %157 = icmp slt i32 %156, 0
  br i1 %157, label %158, label %161

158:                                              ; preds = %151
  %159 = load %struct.device*, %struct.device** %6, align 8
  %160 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %159, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.5, i64 0, i64 0))
  br label %189

161:                                              ; preds = %151
  %162 = load %struct.device*, %struct.device** %6, align 8
  %163 = call i32 @pm_runtime_set_active(%struct.device* %162)
  store i32 %163, i32* %12, align 4
  %164 = load i32, i32* %12, align 4
  %165 = icmp ne i32 %164, 0
  br i1 %165, label %166, label %167

166:                                              ; preds = %161
  br label %186

167:                                              ; preds = %161
  %168 = load %struct.device*, %struct.device** %6, align 8
  %169 = call i32 @pm_runtime_enable(%struct.device* %168)
  %170 = load %struct.device*, %struct.device** %6, align 8
  %171 = load i32, i32* @BMC150_MAGN_AUTO_SUSPEND_DELAY_MS, align 4
  %172 = call i32 @pm_runtime_set_autosuspend_delay(%struct.device* %170, i32 %171)
  %173 = load %struct.device*, %struct.device** %6, align 8
  %174 = call i32 @pm_runtime_use_autosuspend(%struct.device* %173)
  %175 = load %struct.iio_dev*, %struct.iio_dev** %11, align 8
  %176 = call i32 @iio_device_register(%struct.iio_dev* %175)
  store i32 %176, i32* %12, align 4
  %177 = load i32, i32* %12, align 4
  %178 = icmp slt i32 %177, 0
  br i1 %178, label %179, label %182

179:                                              ; preds = %167
  %180 = load %struct.device*, %struct.device** %6, align 8
  %181 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %180, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.6, i64 0, i64 0))
  br label %186

182:                                              ; preds = %167
  %183 = load %struct.device*, %struct.device** %6, align 8
  %184 = load i8*, i8** %9, align 8
  %185 = call i32 @dev_dbg(%struct.device* %183, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.7, i64 0, i64 0), i8* %184)
  store i32 0, i32* %5, align 4
  br label %215

186:                                              ; preds = %179, %166
  %187 = load %struct.iio_dev*, %struct.iio_dev** %11, align 8
  %188 = call i32 @iio_triggered_buffer_cleanup(%struct.iio_dev* %187)
  br label %189

189:                                              ; preds = %186, %158
  %190 = load i32, i32* %8, align 4
  %191 = icmp sgt i32 %190, 0
  br i1 %191, label %192, label %198

192:                                              ; preds = %189
  %193 = load i32, i32* %8, align 4
  %194 = load %struct.bmc150_magn_data*, %struct.bmc150_magn_data** %10, align 8
  %195 = getelementptr inbounds %struct.bmc150_magn_data, %struct.bmc150_magn_data* %194, i32 0, i32 1
  %196 = load %struct.TYPE_11__*, %struct.TYPE_11__** %195, align 8
  %197 = call i32 @free_irq(i32 %193, %struct.TYPE_11__* %196)
  br label %198

198:                                              ; preds = %192, %189
  br label %199

199:                                              ; preds = %198, %146
  %200 = load %struct.bmc150_magn_data*, %struct.bmc150_magn_data** %10, align 8
  %201 = getelementptr inbounds %struct.bmc150_magn_data, %struct.bmc150_magn_data* %200, i32 0, i32 1
  %202 = load %struct.TYPE_11__*, %struct.TYPE_11__** %201, align 8
  %203 = icmp ne %struct.TYPE_11__* %202, null
  br i1 %203, label %204, label %209

204:                                              ; preds = %199
  %205 = load %struct.bmc150_magn_data*, %struct.bmc150_magn_data** %10, align 8
  %206 = getelementptr inbounds %struct.bmc150_magn_data, %struct.bmc150_magn_data* %205, i32 0, i32 1
  %207 = load %struct.TYPE_11__*, %struct.TYPE_11__** %206, align 8
  %208 = call i32 @iio_trigger_unregister(%struct.TYPE_11__* %207)
  br label %209

209:                                              ; preds = %204, %199
  br label %210

210:                                              ; preds = %209, %130, %103
  %211 = load %struct.bmc150_magn_data*, %struct.bmc150_magn_data** %10, align 8
  %212 = load i32, i32* @BMC150_MAGN_POWER_MODE_SUSPEND, align 4
  %213 = call i32 @bmc150_magn_set_power_mode(%struct.bmc150_magn_data* %211, i32 %212, i32 1)
  %214 = load i32, i32* %12, align 4
  store i32 %214, i32* %5, align 4
  br label %215

215:                                              ; preds = %210, %182, %61, %41, %17
  %216 = load i32, i32* %5, align 4
  ret i32 %216
}

declare dso_local %struct.iio_dev* @devm_iio_device_alloc(%struct.device*, i32) #1

declare dso_local %struct.bmc150_magn_data* @iio_priv(%struct.iio_dev*) #1

declare dso_local i32 @dev_set_drvdata(%struct.device*, %struct.iio_dev*) #1

declare dso_local i32 @iio_read_mount_matrix(%struct.device*, i8*, i32*) #1

declare dso_local i64 @ACPI_HANDLE(%struct.device*) #1

declare dso_local i8* @bmc150_magn_match_acpi_device(%struct.device*) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @bmc150_magn_init(%struct.bmc150_magn_data*) #1

declare dso_local i32 @ARRAY_SIZE(i32) #1

declare dso_local %struct.TYPE_11__* @devm_iio_trigger_alloc(%struct.device*, i8*, i8*, i32) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, ...) #1

declare dso_local i32 @iio_trigger_set_drvdata(%struct.TYPE_11__*, %struct.iio_dev*) #1

declare dso_local i32 @iio_trigger_register(%struct.TYPE_11__*) #1

declare dso_local i32 @request_threaded_irq(i32, i32, i32*, i32, i32, %struct.TYPE_11__*) #1

declare dso_local i32 @iio_triggered_buffer_setup(%struct.iio_dev*, i32, i32, i32*) #1

declare dso_local i32 @pm_runtime_set_active(%struct.device*) #1

declare dso_local i32 @pm_runtime_enable(%struct.device*) #1

declare dso_local i32 @pm_runtime_set_autosuspend_delay(%struct.device*, i32) #1

declare dso_local i32 @pm_runtime_use_autosuspend(%struct.device*) #1

declare dso_local i32 @iio_device_register(%struct.iio_dev*) #1

declare dso_local i32 @dev_dbg(%struct.device*, i8*, i8*) #1

declare dso_local i32 @iio_triggered_buffer_cleanup(%struct.iio_dev*) #1

declare dso_local i32 @free_irq(i32, %struct.TYPE_11__*) #1

declare dso_local i32 @iio_trigger_unregister(%struct.TYPE_11__*) #1

declare dso_local i32 @bmc150_magn_set_power_mode(%struct.bmc150_magn_data*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
