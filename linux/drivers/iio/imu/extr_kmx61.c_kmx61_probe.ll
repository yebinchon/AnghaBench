; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/imu/extr_kmx61.c_kmx61_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/imu/extr_kmx61.c_kmx61_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_client = type { i64, i32 }
%struct.i2c_device_id = type { i8* }
%struct.kmx61_data = type { i8*, i8*, i8*, i8*, i8*, %struct.i2c_client*, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@kmx61_acc_info = common dso_local global i32 0, align 4
@kmx61_acc_channels = common dso_local global i32 0, align 4
@kmx61_mag_info = common dso_local global i32 0, align 4
@kmx61_mag_channels = common dso_local global i32 0, align 4
@kmx61_data_rdy_trig_poll = common dso_local global i32 0, align 4
@kmx61_event_handler = common dso_local global i32 0, align 4
@IRQF_TRIGGER_RISING = common dso_local global i32 0, align 4
@KMX61_IRQ_NAME = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"dready\00", align 1
@.str.1 = private unnamed_addr constant [11 x i8] c"any-motion\00", align 1
@iio_pollfunc_store_time = common dso_local global i32 0, align 4
@kmx61_trigger_handler = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [38 x i8] c"Failed to setup acc triggered buffer\0A\00", align 1
@.str.3 = private unnamed_addr constant [38 x i8] c"Failed to setup mag triggered buffer\0A\00", align 1
@KMX61_SLEEP_DELAY_MS = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [35 x i8] c"Failed to register acc iio device\0A\00", align 1
@.str.5 = private unnamed_addr constant [35 x i8] c"Failed to register mag iio device\0A\00", align 1
@KMX61_ALL_STBY = common dso_local global i32 0, align 4
@KMX61_ACC = common dso_local global i32 0, align 4
@KMX61_MAG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_client*, %struct.i2c_device_id*)* @kmx61_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @kmx61_probe(%struct.i2c_client* %0, %struct.i2c_device_id* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.i2c_client*, align 8
  %5 = alloca %struct.i2c_device_id*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.kmx61_data*, align 8
  %8 = alloca i8*, align 8
  store %struct.i2c_client* %0, %struct.i2c_client** %4, align 8
  store %struct.i2c_device_id* %1, %struct.i2c_device_id** %5, align 8
  store i8* null, i8** %8, align 8
  %9 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %10 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %9, i32 0, i32 1
  %11 = load i32, i32* @GFP_KERNEL, align 4
  %12 = call %struct.kmx61_data* @devm_kzalloc(i32* %10, i32 56, i32 %11)
  store %struct.kmx61_data* %12, %struct.kmx61_data** %7, align 8
  %13 = load %struct.kmx61_data*, %struct.kmx61_data** %7, align 8
  %14 = icmp ne %struct.kmx61_data* %13, null
  br i1 %14, label %18, label %15

15:                                               ; preds = %2
  %16 = load i32, i32* @ENOMEM, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %3, align 4
  br label %285

18:                                               ; preds = %2
  %19 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %20 = load %struct.kmx61_data*, %struct.kmx61_data** %7, align 8
  %21 = call i32 @i2c_set_clientdata(%struct.i2c_client* %19, %struct.kmx61_data* %20)
  %22 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %23 = load %struct.kmx61_data*, %struct.kmx61_data** %7, align 8
  %24 = getelementptr inbounds %struct.kmx61_data, %struct.kmx61_data* %23, i32 0, i32 5
  store %struct.i2c_client* %22, %struct.i2c_client** %24, align 8
  %25 = load %struct.kmx61_data*, %struct.kmx61_data** %7, align 8
  %26 = getelementptr inbounds %struct.kmx61_data, %struct.kmx61_data* %25, i32 0, i32 6
  %27 = call i32 @mutex_init(i32* %26)
  %28 = load %struct.i2c_device_id*, %struct.i2c_device_id** %5, align 8
  %29 = icmp ne %struct.i2c_device_id* %28, null
  br i1 %29, label %30, label %34

30:                                               ; preds = %18
  %31 = load %struct.i2c_device_id*, %struct.i2c_device_id** %5, align 8
  %32 = getelementptr inbounds %struct.i2c_device_id, %struct.i2c_device_id* %31, i32 0, i32 0
  %33 = load i8*, i8** %32, align 8
  store i8* %33, i8** %8, align 8
  br label %47

34:                                               ; preds = %18
  %35 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %36 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %35, i32 0, i32 1
  %37 = call i64 @ACPI_HANDLE(i32* %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %43

39:                                               ; preds = %34
  %40 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %41 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %40, i32 0, i32 1
  %42 = call i8* @kmx61_match_acpi_device(i32* %41)
  store i8* %42, i8** %8, align 8
  br label %46

43:                                               ; preds = %34
  %44 = load i32, i32* @ENODEV, align 4
  %45 = sub nsw i32 0, %44
  store i32 %45, i32* %3, align 4
  br label %285

46:                                               ; preds = %39
  br label %47

47:                                               ; preds = %46, %30
  %48 = load %struct.kmx61_data*, %struct.kmx61_data** %7, align 8
  %49 = load i32, i32* @kmx61_acc_channels, align 4
  %50 = load i32, i32* @kmx61_acc_channels, align 4
  %51 = call i32 @ARRAY_SIZE(i32 %50)
  %52 = load i8*, i8** %8, align 8
  %53 = call i8* @kmx61_indiodev_setup(%struct.kmx61_data* %48, i32* @kmx61_acc_info, i32 %49, i32 %51, i8* %52)
  %54 = load %struct.kmx61_data*, %struct.kmx61_data** %7, align 8
  %55 = getelementptr inbounds %struct.kmx61_data, %struct.kmx61_data* %54, i32 0, i32 3
  store i8* %53, i8** %55, align 8
  %56 = load %struct.kmx61_data*, %struct.kmx61_data** %7, align 8
  %57 = getelementptr inbounds %struct.kmx61_data, %struct.kmx61_data* %56, i32 0, i32 3
  %58 = load i8*, i8** %57, align 8
  %59 = call i64 @IS_ERR(i8* %58)
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %66

61:                                               ; preds = %47
  %62 = load %struct.kmx61_data*, %struct.kmx61_data** %7, align 8
  %63 = getelementptr inbounds %struct.kmx61_data, %struct.kmx61_data* %62, i32 0, i32 3
  %64 = load i8*, i8** %63, align 8
  %65 = call i32 @PTR_ERR(i8* %64)
  store i32 %65, i32* %3, align 4
  br label %285

66:                                               ; preds = %47
  %67 = load %struct.kmx61_data*, %struct.kmx61_data** %7, align 8
  %68 = load i32, i32* @kmx61_mag_channels, align 4
  %69 = load i32, i32* @kmx61_mag_channels, align 4
  %70 = call i32 @ARRAY_SIZE(i32 %69)
  %71 = load i8*, i8** %8, align 8
  %72 = call i8* @kmx61_indiodev_setup(%struct.kmx61_data* %67, i32* @kmx61_mag_info, i32 %68, i32 %70, i8* %71)
  %73 = load %struct.kmx61_data*, %struct.kmx61_data** %7, align 8
  %74 = getelementptr inbounds %struct.kmx61_data, %struct.kmx61_data* %73, i32 0, i32 4
  store i8* %72, i8** %74, align 8
  %75 = load %struct.kmx61_data*, %struct.kmx61_data** %7, align 8
  %76 = getelementptr inbounds %struct.kmx61_data, %struct.kmx61_data* %75, i32 0, i32 4
  %77 = load i8*, i8** %76, align 8
  %78 = call i64 @IS_ERR(i8* %77)
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %80, label %85

80:                                               ; preds = %66
  %81 = load %struct.kmx61_data*, %struct.kmx61_data** %7, align 8
  %82 = getelementptr inbounds %struct.kmx61_data, %struct.kmx61_data* %81, i32 0, i32 4
  %83 = load i8*, i8** %82, align 8
  %84 = call i32 @PTR_ERR(i8* %83)
  store i32 %84, i32* %3, align 4
  br label %285

85:                                               ; preds = %66
  %86 = load %struct.kmx61_data*, %struct.kmx61_data** %7, align 8
  %87 = call i32 @kmx61_chip_init(%struct.kmx61_data* %86)
  store i32 %87, i32* %6, align 4
  %88 = load i32, i32* %6, align 4
  %89 = icmp slt i32 %88, 0
  br i1 %89, label %90, label %92

90:                                               ; preds = %85
  %91 = load i32, i32* %6, align 4
  store i32 %91, i32* %3, align 4
  br label %285

92:                                               ; preds = %85
  %93 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %94 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %93, i32 0, i32 0
  %95 = load i64, i64* %94, align 8
  %96 = icmp sgt i64 %95, 0
  br i1 %96, label %97, label %195

97:                                               ; preds = %92
  %98 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %99 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %98, i32 0, i32 1
  %100 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %101 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %100, i32 0, i32 0
  %102 = load i64, i64* %101, align 8
  %103 = load i32, i32* @kmx61_data_rdy_trig_poll, align 4
  %104 = load i32, i32* @kmx61_event_handler, align 4
  %105 = load i32, i32* @IRQF_TRIGGER_RISING, align 4
  %106 = load i32, i32* @KMX61_IRQ_NAME, align 4
  %107 = load %struct.kmx61_data*, %struct.kmx61_data** %7, align 8
  %108 = call i32 @devm_request_threaded_irq(i32* %99, i64 %102, i32 %103, i32 %104, i32 %105, i32 %106, %struct.kmx61_data* %107)
  store i32 %108, i32* %6, align 4
  %109 = load i32, i32* %6, align 4
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %111, label %112

111:                                              ; preds = %97
  br label %277

112:                                              ; preds = %97
  %113 = load %struct.kmx61_data*, %struct.kmx61_data** %7, align 8
  %114 = load %struct.kmx61_data*, %struct.kmx61_data** %7, align 8
  %115 = getelementptr inbounds %struct.kmx61_data, %struct.kmx61_data* %114, i32 0, i32 3
  %116 = load i8*, i8** %115, align 8
  %117 = call i8* @kmx61_trigger_setup(%struct.kmx61_data* %113, i8* %116, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  %118 = load %struct.kmx61_data*, %struct.kmx61_data** %7, align 8
  %119 = getelementptr inbounds %struct.kmx61_data, %struct.kmx61_data* %118, i32 0, i32 0
  store i8* %117, i8** %119, align 8
  %120 = load %struct.kmx61_data*, %struct.kmx61_data** %7, align 8
  %121 = getelementptr inbounds %struct.kmx61_data, %struct.kmx61_data* %120, i32 0, i32 0
  %122 = load i8*, i8** %121, align 8
  %123 = call i64 @IS_ERR(i8* %122)
  %124 = icmp ne i64 %123, 0
  br i1 %124, label %125, label %130

125:                                              ; preds = %112
  %126 = load %struct.kmx61_data*, %struct.kmx61_data** %7, align 8
  %127 = getelementptr inbounds %struct.kmx61_data, %struct.kmx61_data* %126, i32 0, i32 0
  %128 = load i8*, i8** %127, align 8
  %129 = call i32 @PTR_ERR(i8* %128)
  store i32 %129, i32* %6, align 4
  br label %277

130:                                              ; preds = %112
  %131 = load %struct.kmx61_data*, %struct.kmx61_data** %7, align 8
  %132 = load %struct.kmx61_data*, %struct.kmx61_data** %7, align 8
  %133 = getelementptr inbounds %struct.kmx61_data, %struct.kmx61_data* %132, i32 0, i32 4
  %134 = load i8*, i8** %133, align 8
  %135 = call i8* @kmx61_trigger_setup(%struct.kmx61_data* %131, i8* %134, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  %136 = load %struct.kmx61_data*, %struct.kmx61_data** %7, align 8
  %137 = getelementptr inbounds %struct.kmx61_data, %struct.kmx61_data* %136, i32 0, i32 1
  store i8* %135, i8** %137, align 8
  %138 = load %struct.kmx61_data*, %struct.kmx61_data** %7, align 8
  %139 = getelementptr inbounds %struct.kmx61_data, %struct.kmx61_data* %138, i32 0, i32 1
  %140 = load i8*, i8** %139, align 8
  %141 = call i64 @IS_ERR(i8* %140)
  %142 = icmp ne i64 %141, 0
  br i1 %142, label %143, label %148

143:                                              ; preds = %130
  %144 = load %struct.kmx61_data*, %struct.kmx61_data** %7, align 8
  %145 = getelementptr inbounds %struct.kmx61_data, %struct.kmx61_data* %144, i32 0, i32 1
  %146 = load i8*, i8** %145, align 8
  %147 = call i32 @PTR_ERR(i8* %146)
  store i32 %147, i32* %6, align 4
  br label %272

148:                                              ; preds = %130
  %149 = load %struct.kmx61_data*, %struct.kmx61_data** %7, align 8
  %150 = load %struct.kmx61_data*, %struct.kmx61_data** %7, align 8
  %151 = getelementptr inbounds %struct.kmx61_data, %struct.kmx61_data* %150, i32 0, i32 3
  %152 = load i8*, i8** %151, align 8
  %153 = call i8* @kmx61_trigger_setup(%struct.kmx61_data* %149, i8* %152, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0))
  %154 = load %struct.kmx61_data*, %struct.kmx61_data** %7, align 8
  %155 = getelementptr inbounds %struct.kmx61_data, %struct.kmx61_data* %154, i32 0, i32 2
  store i8* %153, i8** %155, align 8
  %156 = load %struct.kmx61_data*, %struct.kmx61_data** %7, align 8
  %157 = getelementptr inbounds %struct.kmx61_data, %struct.kmx61_data* %156, i32 0, i32 2
  %158 = load i8*, i8** %157, align 8
  %159 = call i64 @IS_ERR(i8* %158)
  %160 = icmp ne i64 %159, 0
  br i1 %160, label %161, label %166

161:                                              ; preds = %148
  %162 = load %struct.kmx61_data*, %struct.kmx61_data** %7, align 8
  %163 = getelementptr inbounds %struct.kmx61_data, %struct.kmx61_data* %162, i32 0, i32 2
  %164 = load i8*, i8** %163, align 8
  %165 = call i32 @PTR_ERR(i8* %164)
  store i32 %165, i32* %6, align 4
  br label %267

166:                                              ; preds = %148
  %167 = load %struct.kmx61_data*, %struct.kmx61_data** %7, align 8
  %168 = getelementptr inbounds %struct.kmx61_data, %struct.kmx61_data* %167, i32 0, i32 3
  %169 = load i8*, i8** %168, align 8
  %170 = load i32, i32* @kmx61_trigger_handler, align 4
  %171 = call i32 @iio_triggered_buffer_setup(i8* %169, i32* @iio_pollfunc_store_time, i32 %170, i32* null)
  store i32 %171, i32* %6, align 4
  %172 = load i32, i32* %6, align 4
  %173 = icmp slt i32 %172, 0
  br i1 %173, label %174, label %180

174:                                              ; preds = %166
  %175 = load %struct.kmx61_data*, %struct.kmx61_data** %7, align 8
  %176 = getelementptr inbounds %struct.kmx61_data, %struct.kmx61_data* %175, i32 0, i32 5
  %177 = load %struct.i2c_client*, %struct.i2c_client** %176, align 8
  %178 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %177, i32 0, i32 1
  %179 = call i32 @dev_err(i32* %178, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.2, i64 0, i64 0))
  br label %262

180:                                              ; preds = %166
  %181 = load %struct.kmx61_data*, %struct.kmx61_data** %7, align 8
  %182 = getelementptr inbounds %struct.kmx61_data, %struct.kmx61_data* %181, i32 0, i32 4
  %183 = load i8*, i8** %182, align 8
  %184 = load i32, i32* @kmx61_trigger_handler, align 4
  %185 = call i32 @iio_triggered_buffer_setup(i8* %183, i32* @iio_pollfunc_store_time, i32 %184, i32* null)
  store i32 %185, i32* %6, align 4
  %186 = load i32, i32* %6, align 4
  %187 = icmp slt i32 %186, 0
  br i1 %187, label %188, label %194

188:                                              ; preds = %180
  %189 = load %struct.kmx61_data*, %struct.kmx61_data** %7, align 8
  %190 = getelementptr inbounds %struct.kmx61_data, %struct.kmx61_data* %189, i32 0, i32 5
  %191 = load %struct.i2c_client*, %struct.i2c_client** %190, align 8
  %192 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %191, i32 0, i32 1
  %193 = call i32 @dev_err(i32* %192, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.3, i64 0, i64 0))
  br label %251

194:                                              ; preds = %180
  br label %195

195:                                              ; preds = %194, %92
  %196 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %197 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %196, i32 0, i32 1
  %198 = call i32 @pm_runtime_set_active(i32* %197)
  store i32 %198, i32* %6, align 4
  %199 = load i32, i32* %6, align 4
  %200 = icmp slt i32 %199, 0
  br i1 %200, label %201, label %202

201:                                              ; preds = %195
  br label %240

202:                                              ; preds = %195
  %203 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %204 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %203, i32 0, i32 1
  %205 = call i32 @pm_runtime_enable(i32* %204)
  %206 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %207 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %206, i32 0, i32 1
  %208 = load i32, i32* @KMX61_SLEEP_DELAY_MS, align 4
  %209 = call i32 @pm_runtime_set_autosuspend_delay(i32* %207, i32 %208)
  %210 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %211 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %210, i32 0, i32 1
  %212 = call i32 @pm_runtime_use_autosuspend(i32* %211)
  %213 = load %struct.kmx61_data*, %struct.kmx61_data** %7, align 8
  %214 = getelementptr inbounds %struct.kmx61_data, %struct.kmx61_data* %213, i32 0, i32 3
  %215 = load i8*, i8** %214, align 8
  %216 = call i32 @iio_device_register(i8* %215)
  store i32 %216, i32* %6, align 4
  %217 = load i32, i32* %6, align 4
  %218 = icmp slt i32 %217, 0
  br i1 %218, label %219, label %223

219:                                              ; preds = %202
  %220 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %221 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %220, i32 0, i32 1
  %222 = call i32 @dev_err(i32* %221, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.4, i64 0, i64 0))
  br label %240

223:                                              ; preds = %202
  %224 = load %struct.kmx61_data*, %struct.kmx61_data** %7, align 8
  %225 = getelementptr inbounds %struct.kmx61_data, %struct.kmx61_data* %224, i32 0, i32 4
  %226 = load i8*, i8** %225, align 8
  %227 = call i32 @iio_device_register(i8* %226)
  store i32 %227, i32* %6, align 4
  %228 = load i32, i32* %6, align 4
  %229 = icmp slt i32 %228, 0
  br i1 %229, label %230, label %234

230:                                              ; preds = %223
  %231 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %232 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %231, i32 0, i32 1
  %233 = call i32 @dev_err(i32* %232, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.5, i64 0, i64 0))
  br label %235

234:                                              ; preds = %223
  store i32 0, i32* %3, align 4
  br label %285

235:                                              ; preds = %230
  %236 = load %struct.kmx61_data*, %struct.kmx61_data** %7, align 8
  %237 = getelementptr inbounds %struct.kmx61_data, %struct.kmx61_data* %236, i32 0, i32 3
  %238 = load i8*, i8** %237, align 8
  %239 = call i32 @iio_device_unregister(i8* %238)
  br label %240

240:                                              ; preds = %235, %219, %201
  %241 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %242 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %241, i32 0, i32 0
  %243 = load i64, i64* %242, align 8
  %244 = icmp sgt i64 %243, 0
  br i1 %244, label %245, label %250

245:                                              ; preds = %240
  %246 = load %struct.kmx61_data*, %struct.kmx61_data** %7, align 8
  %247 = getelementptr inbounds %struct.kmx61_data, %struct.kmx61_data* %246, i32 0, i32 4
  %248 = load i8*, i8** %247, align 8
  %249 = call i32 @iio_triggered_buffer_cleanup(i8* %248)
  br label %250

250:                                              ; preds = %245, %240
  br label %251

251:                                              ; preds = %250, %188
  %252 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %253 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %252, i32 0, i32 0
  %254 = load i64, i64* %253, align 8
  %255 = icmp sgt i64 %254, 0
  br i1 %255, label %256, label %261

256:                                              ; preds = %251
  %257 = load %struct.kmx61_data*, %struct.kmx61_data** %7, align 8
  %258 = getelementptr inbounds %struct.kmx61_data, %struct.kmx61_data* %257, i32 0, i32 3
  %259 = load i8*, i8** %258, align 8
  %260 = call i32 @iio_triggered_buffer_cleanup(i8* %259)
  br label %261

261:                                              ; preds = %256, %251
  br label %262

262:                                              ; preds = %261, %174
  %263 = load %struct.kmx61_data*, %struct.kmx61_data** %7, align 8
  %264 = getelementptr inbounds %struct.kmx61_data, %struct.kmx61_data* %263, i32 0, i32 2
  %265 = load i8*, i8** %264, align 8
  %266 = call i32 @iio_trigger_unregister(i8* %265)
  br label %267

267:                                              ; preds = %262, %161
  %268 = load %struct.kmx61_data*, %struct.kmx61_data** %7, align 8
  %269 = getelementptr inbounds %struct.kmx61_data, %struct.kmx61_data* %268, i32 0, i32 1
  %270 = load i8*, i8** %269, align 8
  %271 = call i32 @iio_trigger_unregister(i8* %270)
  br label %272

272:                                              ; preds = %267, %143
  %273 = load %struct.kmx61_data*, %struct.kmx61_data** %7, align 8
  %274 = getelementptr inbounds %struct.kmx61_data, %struct.kmx61_data* %273, i32 0, i32 0
  %275 = load i8*, i8** %274, align 8
  %276 = call i32 @iio_trigger_unregister(i8* %275)
  br label %277

277:                                              ; preds = %272, %125, %111
  %278 = load %struct.kmx61_data*, %struct.kmx61_data** %7, align 8
  %279 = load i32, i32* @KMX61_ALL_STBY, align 4
  %280 = load i32, i32* @KMX61_ACC, align 4
  %281 = load i32, i32* @KMX61_MAG, align 4
  %282 = or i32 %280, %281
  %283 = call i32 @kmx61_set_mode(%struct.kmx61_data* %278, i32 %279, i32 %282, i32 1)
  %284 = load i32, i32* %6, align 4
  store i32 %284, i32* %3, align 4
  br label %285

285:                                              ; preds = %277, %234, %90, %80, %61, %43, %15
  %286 = load i32, i32* %3, align 4
  ret i32 %286
}

declare dso_local %struct.kmx61_data* @devm_kzalloc(i32*, i32, i32) #1

declare dso_local i32 @i2c_set_clientdata(%struct.i2c_client*, %struct.kmx61_data*) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i64 @ACPI_HANDLE(i32*) #1

declare dso_local i8* @kmx61_match_acpi_device(i32*) #1

declare dso_local i8* @kmx61_indiodev_setup(%struct.kmx61_data*, i32*, i32, i32, i8*) #1

declare dso_local i32 @ARRAY_SIZE(i32) #1

declare dso_local i64 @IS_ERR(i8*) #1

declare dso_local i32 @PTR_ERR(i8*) #1

declare dso_local i32 @kmx61_chip_init(%struct.kmx61_data*) #1

declare dso_local i32 @devm_request_threaded_irq(i32*, i64, i32, i32, i32, i32, %struct.kmx61_data*) #1

declare dso_local i8* @kmx61_trigger_setup(%struct.kmx61_data*, i8*, i8*) #1

declare dso_local i32 @iio_triggered_buffer_setup(i8*, i32*, i32, i32*) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

declare dso_local i32 @pm_runtime_set_active(i32*) #1

declare dso_local i32 @pm_runtime_enable(i32*) #1

declare dso_local i32 @pm_runtime_set_autosuspend_delay(i32*, i32) #1

declare dso_local i32 @pm_runtime_use_autosuspend(i32*) #1

declare dso_local i32 @iio_device_register(i8*) #1

declare dso_local i32 @iio_device_unregister(i8*) #1

declare dso_local i32 @iio_triggered_buffer_cleanup(i8*) #1

declare dso_local i32 @iio_trigger_unregister(i8*) #1

declare dso_local i32 @kmx61_set_mode(%struct.kmx61_data*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
