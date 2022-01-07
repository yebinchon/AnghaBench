; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/light/extr_tsl2563.c_tsl2563_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/light/extr_tsl2563.c_tsl2563_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_client = type { %struct.TYPE_7__, i64, i32 }
%struct.TYPE_7__ = type { %struct.device_node*, %struct.tsl2563_platform_data* }
%struct.device_node = type { i32 }
%struct.tsl2563_platform_data = type { i32 }
%struct.i2c_device_id = type { i32 }
%struct.iio_dev = type { i32*, i32, %struct.TYPE_6__, i32, i32, i32 }
%struct.TYPE_6__ = type { %struct.TYPE_7__* }
%struct.tsl2563_chip = type { i32, i32, i32, i32, i8*, i8*, i32, i32, i32, %struct.i2c_client* }

@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [17 x i8] c"detect error %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [18 x i8] c"read id error %d\0A\00", align 1
@tsl2563_gainlevel_table = common dso_local global i32 0, align 4
@CALIB_BASE_SYSFS = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [24 x i8] c"amstaos,cover-comp-gain\00", align 1
@.str.3 = private unnamed_addr constant [19 x i8] c"model %d, rev. %d\0A\00", align 1
@tsl2563_channels = common dso_local global i32 0, align 4
@INDIO_DIRECT_MODE = common dso_local global i32 0, align 4
@tsl2563_info = common dso_local global i32 0, align 4
@tsl2563_info_no_irq = common dso_local global i32 0, align 4
@tsl2563_event_handler = common dso_local global i32 0, align 4
@IRQF_TRIGGER_RISING = common dso_local global i32 0, align 4
@IRQF_ONESHOT = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [14 x i8] c"tsl2563_event\00", align 1
@.str.5 = private unnamed_addr constant [22 x i8] c"irq request error %d\0A\00", align 1
@.str.6 = private unnamed_addr constant [20 x i8] c"configure error %d\0A\00", align 1
@tsl2563_poweroff_work = common dso_local global i32 0, align 4
@HZ = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [27 x i8] c"iio registration error %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_client*, %struct.i2c_device_id*)* @tsl2563_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tsl2563_probe(%struct.i2c_client* %0, %struct.i2c_device_id* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.i2c_client*, align 8
  %5 = alloca %struct.i2c_device_id*, align 8
  %6 = alloca %struct.iio_dev*, align 8
  %7 = alloca %struct.tsl2563_chip*, align 8
  %8 = alloca %struct.tsl2563_platform_data*, align 8
  %9 = alloca %struct.device_node*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.i2c_client* %0, %struct.i2c_client** %4, align 8
  store %struct.i2c_device_id* %1, %struct.i2c_device_id** %5, align 8
  %12 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %13 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %13, i32 0, i32 1
  %15 = load %struct.tsl2563_platform_data*, %struct.tsl2563_platform_data** %14, align 8
  store %struct.tsl2563_platform_data* %15, %struct.tsl2563_platform_data** %8, align 8
  %16 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %17 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %17, i32 0, i32 0
  %19 = load %struct.device_node*, %struct.device_node** %18, align 8
  store %struct.device_node* %19, %struct.device_node** %9, align 8
  store i32 0, i32* %10, align 4
  store i32 0, i32* %11, align 4
  %20 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %21 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %20, i32 0, i32 0
  %22 = call %struct.iio_dev* @devm_iio_device_alloc(%struct.TYPE_7__* %21, i32 56)
  store %struct.iio_dev* %22, %struct.iio_dev** %6, align 8
  %23 = load %struct.iio_dev*, %struct.iio_dev** %6, align 8
  %24 = icmp ne %struct.iio_dev* %23, null
  br i1 %24, label %28, label %25

25:                                               ; preds = %2
  %26 = load i32, i32* @ENOMEM, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %3, align 4
  br label %204

28:                                               ; preds = %2
  %29 = load %struct.iio_dev*, %struct.iio_dev** %6, align 8
  %30 = call %struct.tsl2563_chip* @iio_priv(%struct.iio_dev* %29)
  store %struct.tsl2563_chip* %30, %struct.tsl2563_chip** %7, align 8
  %31 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %32 = load %struct.tsl2563_chip*, %struct.tsl2563_chip** %7, align 8
  %33 = call i32 @i2c_set_clientdata(%struct.i2c_client* %31, %struct.tsl2563_chip* %32)
  %34 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %35 = load %struct.tsl2563_chip*, %struct.tsl2563_chip** %7, align 8
  %36 = getelementptr inbounds %struct.tsl2563_chip, %struct.tsl2563_chip* %35, i32 0, i32 9
  store %struct.i2c_client* %34, %struct.i2c_client** %36, align 8
  %37 = load %struct.tsl2563_chip*, %struct.tsl2563_chip** %7, align 8
  %38 = call i32 @tsl2563_detect(%struct.tsl2563_chip* %37)
  store i32 %38, i32* %10, align 4
  %39 = load i32, i32* %10, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %48

41:                                               ; preds = %28
  %42 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %43 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %42, i32 0, i32 0
  %44 = load i32, i32* %10, align 4
  %45 = sub nsw i32 0, %44
  %46 = call i32 @dev_err(%struct.TYPE_7__* %43, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i32 %45)
  %47 = load i32, i32* %10, align 4
  store i32 %47, i32* %3, align 4
  br label %204

48:                                               ; preds = %28
  %49 = load %struct.tsl2563_chip*, %struct.tsl2563_chip** %7, align 8
  %50 = call i32 @tsl2563_read_id(%struct.tsl2563_chip* %49, i32* %11)
  store i32 %50, i32* %10, align 4
  %51 = load i32, i32* %10, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %60

53:                                               ; preds = %48
  %54 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %55 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %54, i32 0, i32 0
  %56 = load i32, i32* %10, align 4
  %57 = sub nsw i32 0, %56
  %58 = call i32 @dev_err(%struct.TYPE_7__* %55, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0), i32 %57)
  %59 = load i32, i32* %10, align 4
  store i32 %59, i32* %3, align 4
  br label %204

60:                                               ; preds = %48
  %61 = load %struct.tsl2563_chip*, %struct.tsl2563_chip** %7, align 8
  %62 = getelementptr inbounds %struct.tsl2563_chip, %struct.tsl2563_chip* %61, i32 0, i32 8
  %63 = call i32 @mutex_init(i32* %62)
  %64 = load %struct.tsl2563_chip*, %struct.tsl2563_chip** %7, align 8
  %65 = getelementptr inbounds %struct.tsl2563_chip, %struct.tsl2563_chip* %64, i32 0, i32 0
  store i32 0, i32* %65, align 8
  %66 = load %struct.tsl2563_chip*, %struct.tsl2563_chip** %7, align 8
  %67 = getelementptr inbounds %struct.tsl2563_chip, %struct.tsl2563_chip* %66, i32 0, i32 1
  store i32 65535, i32* %67, align 4
  %68 = load i32, i32* @tsl2563_gainlevel_table, align 4
  %69 = load %struct.tsl2563_chip*, %struct.tsl2563_chip** %7, align 8
  %70 = getelementptr inbounds %struct.tsl2563_chip, %struct.tsl2563_chip* %69, i32 0, i32 7
  store i32 %68, i32* %70, align 4
  %71 = call i32 @TSL2563_INT_PERSIST(i32 4)
  %72 = load %struct.tsl2563_chip*, %struct.tsl2563_chip** %7, align 8
  %73 = getelementptr inbounds %struct.tsl2563_chip, %struct.tsl2563_chip* %72, i32 0, i32 6
  store i32 %71, i32* %73, align 8
  %74 = load i32, i32* @CALIB_BASE_SYSFS, align 4
  %75 = call i8* @tsl2563_calib_from_sysfs(i32 %74)
  %76 = load %struct.tsl2563_chip*, %struct.tsl2563_chip** %7, align 8
  %77 = getelementptr inbounds %struct.tsl2563_chip, %struct.tsl2563_chip* %76, i32 0, i32 5
  store i8* %75, i8** %77, align 8
  %78 = load i32, i32* @CALIB_BASE_SYSFS, align 4
  %79 = call i8* @tsl2563_calib_from_sysfs(i32 %78)
  %80 = load %struct.tsl2563_chip*, %struct.tsl2563_chip** %7, align 8
  %81 = getelementptr inbounds %struct.tsl2563_chip, %struct.tsl2563_chip* %80, i32 0, i32 4
  store i8* %79, i8** %81, align 8
  %82 = load %struct.tsl2563_platform_data*, %struct.tsl2563_platform_data** %8, align 8
  %83 = icmp ne %struct.tsl2563_platform_data* %82, null
  br i1 %83, label %84, label %90

84:                                               ; preds = %60
  %85 = load %struct.tsl2563_platform_data*, %struct.tsl2563_platform_data** %8, align 8
  %86 = getelementptr inbounds %struct.tsl2563_platform_data, %struct.tsl2563_platform_data* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 4
  %88 = load %struct.tsl2563_chip*, %struct.tsl2563_chip** %7, align 8
  %89 = getelementptr inbounds %struct.tsl2563_chip, %struct.tsl2563_chip* %88, i32 0, i32 2
  store i32 %87, i32* %89, align 8
  br label %102

90:                                               ; preds = %60
  %91 = load %struct.device_node*, %struct.device_node** %9, align 8
  %92 = icmp ne %struct.device_node* %91, null
  br i1 %92, label %93, label %98

93:                                               ; preds = %90
  %94 = load %struct.device_node*, %struct.device_node** %9, align 8
  %95 = load %struct.tsl2563_chip*, %struct.tsl2563_chip** %7, align 8
  %96 = getelementptr inbounds %struct.tsl2563_chip, %struct.tsl2563_chip* %95, i32 0, i32 2
  %97 = call i32 @of_property_read_u32(%struct.device_node* %94, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i64 0, i64 0), i32* %96)
  br label %101

98:                                               ; preds = %90
  %99 = load %struct.tsl2563_chip*, %struct.tsl2563_chip** %7, align 8
  %100 = getelementptr inbounds %struct.tsl2563_chip, %struct.tsl2563_chip* %99, i32 0, i32 2
  store i32 1, i32* %100, align 8
  br label %101

101:                                              ; preds = %98, %93
  br label %102

102:                                              ; preds = %101, %84
  %103 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %104 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %103, i32 0, i32 0
  %105 = load i32, i32* %11, align 4
  %106 = ashr i32 %105, 4
  %107 = load i32, i32* %11, align 4
  %108 = and i32 %107, 15
  %109 = call i32 @dev_info(%struct.TYPE_7__* %104, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.3, i64 0, i64 0), i32 %106, i32 %108)
  %110 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %111 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %110, i32 0, i32 2
  %112 = load i32, i32* %111, align 8
  %113 = load %struct.iio_dev*, %struct.iio_dev** %6, align 8
  %114 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %113, i32 0, i32 5
  store i32 %112, i32* %114, align 8
  %115 = load i32, i32* @tsl2563_channels, align 4
  %116 = load %struct.iio_dev*, %struct.iio_dev** %6, align 8
  %117 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %116, i32 0, i32 4
  store i32 %115, i32* %117, align 4
  %118 = load i32, i32* @tsl2563_channels, align 4
  %119 = call i32 @ARRAY_SIZE(i32 %118)
  %120 = load %struct.iio_dev*, %struct.iio_dev** %6, align 8
  %121 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %120, i32 0, i32 3
  store i32 %119, i32* %121, align 8
  %122 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %123 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %122, i32 0, i32 0
  %124 = load %struct.iio_dev*, %struct.iio_dev** %6, align 8
  %125 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %124, i32 0, i32 2
  %126 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %125, i32 0, i32 0
  store %struct.TYPE_7__* %123, %struct.TYPE_7__** %126, align 8
  %127 = load i32, i32* @INDIO_DIRECT_MODE, align 4
  %128 = load %struct.iio_dev*, %struct.iio_dev** %6, align 8
  %129 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %128, i32 0, i32 1
  store i32 %127, i32* %129, align 8
  %130 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %131 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %130, i32 0, i32 1
  %132 = load i64, i64* %131, align 8
  %133 = icmp ne i64 %132, 0
  br i1 %133, label %134, label %137

134:                                              ; preds = %102
  %135 = load %struct.iio_dev*, %struct.iio_dev** %6, align 8
  %136 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %135, i32 0, i32 0
  store i32* @tsl2563_info, i32** %136, align 8
  br label %140

137:                                              ; preds = %102
  %138 = load %struct.iio_dev*, %struct.iio_dev** %6, align 8
  %139 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %138, i32 0, i32 0
  store i32* @tsl2563_info_no_irq, i32** %139, align 8
  br label %140

140:                                              ; preds = %137, %134
  %141 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %142 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %141, i32 0, i32 1
  %143 = load i64, i64* %142, align 8
  %144 = icmp ne i64 %143, 0
  br i1 %144, label %145, label %166

145:                                              ; preds = %140
  %146 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %147 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %146, i32 0, i32 0
  %148 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %149 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %148, i32 0, i32 1
  %150 = load i64, i64* %149, align 8
  %151 = load i32, i32* @IRQF_TRIGGER_RISING, align 4
  %152 = load i32, i32* @IRQF_ONESHOT, align 4
  %153 = or i32 %151, %152
  %154 = load %struct.iio_dev*, %struct.iio_dev** %6, align 8
  %155 = call i32 @devm_request_threaded_irq(%struct.TYPE_7__* %147, i64 %150, i32* null, i32* @tsl2563_event_handler, i32 %153, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.4, i64 0, i64 0), %struct.iio_dev* %154)
  store i32 %155, i32* %10, align 4
  %156 = load i32, i32* %10, align 4
  %157 = icmp ne i32 %156, 0
  br i1 %157, label %158, label %165

158:                                              ; preds = %145
  %159 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %160 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %159, i32 0, i32 0
  %161 = load i32, i32* %10, align 4
  %162 = sub nsw i32 0, %161
  %163 = call i32 @dev_err(%struct.TYPE_7__* %160, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.5, i64 0, i64 0), i32 %162)
  %164 = load i32, i32* %10, align 4
  store i32 %164, i32* %3, align 4
  br label %204

165:                                              ; preds = %145
  br label %166

166:                                              ; preds = %165, %140
  %167 = load %struct.tsl2563_chip*, %struct.tsl2563_chip** %7, align 8
  %168 = call i32 @tsl2563_configure(%struct.tsl2563_chip* %167)
  store i32 %168, i32* %10, align 4
  %169 = load i32, i32* %10, align 4
  %170 = icmp ne i32 %169, 0
  br i1 %170, label %171, label %178

171:                                              ; preds = %166
  %172 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %173 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %172, i32 0, i32 0
  %174 = load i32, i32* %10, align 4
  %175 = sub nsw i32 0, %174
  %176 = call i32 @dev_err(%struct.TYPE_7__* %173, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.6, i64 0, i64 0), i32 %175)
  %177 = load i32, i32* %10, align 4
  store i32 %177, i32* %3, align 4
  br label %204

178:                                              ; preds = %166
  %179 = load %struct.tsl2563_chip*, %struct.tsl2563_chip** %7, align 8
  %180 = getelementptr inbounds %struct.tsl2563_chip, %struct.tsl2563_chip* %179, i32 0, i32 3
  %181 = load i32, i32* @tsl2563_poweroff_work, align 4
  %182 = call i32 @INIT_DELAYED_WORK(i32* %180, i32 %181)
  %183 = load %struct.tsl2563_chip*, %struct.tsl2563_chip** %7, align 8
  %184 = getelementptr inbounds %struct.tsl2563_chip, %struct.tsl2563_chip* %183, i32 0, i32 3
  %185 = load i32, i32* @HZ, align 4
  %186 = mul nsw i32 5, %185
  %187 = call i32 @schedule_delayed_work(i32* %184, i32 %186)
  %188 = load %struct.iio_dev*, %struct.iio_dev** %6, align 8
  %189 = call i32 @iio_device_register(%struct.iio_dev* %188)
  store i32 %189, i32* %10, align 4
  %190 = load i32, i32* %10, align 4
  %191 = icmp ne i32 %190, 0
  br i1 %191, label %192, label %198

192:                                              ; preds = %178
  %193 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %194 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %193, i32 0, i32 0
  %195 = load i32, i32* %10, align 4
  %196 = sub nsw i32 0, %195
  %197 = call i32 @dev_err(%struct.TYPE_7__* %194, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.7, i64 0, i64 0), i32 %196)
  br label %199

198:                                              ; preds = %178
  store i32 0, i32* %3, align 4
  br label %204

199:                                              ; preds = %192
  %200 = load %struct.tsl2563_chip*, %struct.tsl2563_chip** %7, align 8
  %201 = getelementptr inbounds %struct.tsl2563_chip, %struct.tsl2563_chip* %200, i32 0, i32 3
  %202 = call i32 @cancel_delayed_work_sync(i32* %201)
  %203 = load i32, i32* %10, align 4
  store i32 %203, i32* %3, align 4
  br label %204

204:                                              ; preds = %199, %198, %171, %158, %53, %41, %25
  %205 = load i32, i32* %3, align 4
  ret i32 %205
}

declare dso_local %struct.iio_dev* @devm_iio_device_alloc(%struct.TYPE_7__*, i32) #1

declare dso_local %struct.tsl2563_chip* @iio_priv(%struct.iio_dev*) #1

declare dso_local i32 @i2c_set_clientdata(%struct.i2c_client*, %struct.tsl2563_chip*) #1

declare dso_local i32 @tsl2563_detect(%struct.tsl2563_chip*) #1

declare dso_local i32 @dev_err(%struct.TYPE_7__*, i8*, i32) #1

declare dso_local i32 @tsl2563_read_id(%struct.tsl2563_chip*, i32*) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @TSL2563_INT_PERSIST(i32) #1

declare dso_local i8* @tsl2563_calib_from_sysfs(i32) #1

declare dso_local i32 @of_property_read_u32(%struct.device_node*, i8*, i32*) #1

declare dso_local i32 @dev_info(%struct.TYPE_7__*, i8*, i32, i32) #1

declare dso_local i32 @ARRAY_SIZE(i32) #1

declare dso_local i32 @devm_request_threaded_irq(%struct.TYPE_7__*, i64, i32*, i32*, i32, i8*, %struct.iio_dev*) #1

declare dso_local i32 @tsl2563_configure(%struct.tsl2563_chip*) #1

declare dso_local i32 @INIT_DELAYED_WORK(i32*, i32) #1

declare dso_local i32 @schedule_delayed_work(i32*, i32) #1

declare dso_local i32 @iio_device_register(%struct.iio_dev*) #1

declare dso_local i32 @cancel_delayed_work_sync(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
