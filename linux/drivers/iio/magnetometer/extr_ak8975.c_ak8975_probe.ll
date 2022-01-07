; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/magnetometer/extr_ak8975.c_ak8975_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/magnetometer/extr_ak8975.c_ak8975_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_18__ = type { i32 }
%struct.i2c_client = type { %struct.TYPE_20__ }
%struct.TYPE_20__ = type { i64 }
%struct.i2c_device_id = type { i8*, i64 }
%struct.ak8975_data = type { i32, i32, %struct.TYPE_18__*, i8*, i8*, i32, i64, %struct.i2c_client* }
%struct.iio_dev = type { i8*, i32, i32, i32*, i32, i32, %struct.TYPE_19__ }
%struct.TYPE_19__ = type { %struct.TYPE_20__* }
%struct.ak8975_platform_data = type { i32, i32 }

@AK_MAX_TYPE = common dso_local global i32 0, align 4
@EPROBE_DEFER = common dso_local global i32 0, align 4
@GPIOF_IN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c"ak_8975\00", align 1
@.str.1 = private unnamed_addr constant [37 x i8] c"failed to request GPIO %d, error %d\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [13 x i8] c"mount-matrix\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@ENOSYS = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [33 x i8] c"AKM device type unsupported: %d\0A\00", align 1
@ak_def_array = common dso_local global %struct.TYPE_18__* null, align 8
@.str.4 = private unnamed_addr constant [4 x i8] c"vdd\00", align 1
@.str.5 = private unnamed_addr constant [4 x i8] c"vid\00", align 1
@.str.6 = private unnamed_addr constant [19 x i8] c"Unexpected device\0A\00", align 1
@.str.7 = private unnamed_addr constant [23 x i8] c"Asahi compass chip %s\0A\00", align 1
@.str.8 = private unnamed_addr constant [25 x i8] c"%s initialization fails\0A\00", align 1
@ak8975_channels = common dso_local global i32 0, align 4
@ak8975_info = common dso_local global i32 0, align 4
@ak8975_scan_masks = common dso_local global i32 0, align 4
@INDIO_DIRECT_MODE = common dso_local global i32 0, align 4
@ak8975_handle_trigger = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [31 x i8] c"triggered buffer setup failed\0A\00", align 1
@.str.10 = private unnamed_addr constant [24 x i8] c"device register failed\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_client*, %struct.i2c_device_id*)* @ak8975_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ak8975_probe(%struct.i2c_client* %0, %struct.i2c_device_id* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.i2c_client*, align 8
  %5 = alloca %struct.i2c_device_id*, align 8
  %6 = alloca %struct.ak8975_data*, align 8
  %7 = alloca %struct.iio_dev*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.ak8975_platform_data*, align 8
  store %struct.i2c_client* %0, %struct.i2c_client** %4, align 8
  store %struct.i2c_device_id* %1, %struct.i2c_device_id** %5, align 8
  store i8* null, i8** %10, align 8
  %13 = load i32, i32* @AK_MAX_TYPE, align 4
  store i32 %13, i32* %11, align 4
  %14 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %15 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %14, i32 0, i32 0
  %16 = call %struct.ak8975_platform_data* @dev_get_platdata(%struct.TYPE_20__* %15)
  store %struct.ak8975_platform_data* %16, %struct.ak8975_platform_data** %12, align 8
  %17 = load %struct.ak8975_platform_data*, %struct.ak8975_platform_data** %12, align 8
  %18 = icmp ne %struct.ak8975_platform_data* %17, null
  br i1 %18, label %19, label %23

19:                                               ; preds = %2
  %20 = load %struct.ak8975_platform_data*, %struct.ak8975_platform_data** %12, align 8
  %21 = getelementptr inbounds %struct.ak8975_platform_data, %struct.ak8975_platform_data* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  store i32 %22, i32* %8, align 4
  br label %37

23:                                               ; preds = %2
  %24 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %25 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %35

29:                                               ; preds = %23
  %30 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %31 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = call i32 @of_get_gpio(i64 %33, i32 0)
  store i32 %34, i32* %8, align 4
  br label %36

35:                                               ; preds = %23
  store i32 -1, i32* %8, align 4
  br label %36

36:                                               ; preds = %35, %29
  br label %37

37:                                               ; preds = %36, %19
  %38 = load i32, i32* %8, align 4
  %39 = load i32, i32* @EPROBE_DEFER, align 4
  %40 = sub nsw i32 0, %39
  %41 = icmp eq i32 %38, %40
  br i1 %41, label %42, label %45

42:                                               ; preds = %37
  %43 = load i32, i32* @EPROBE_DEFER, align 4
  %44 = sub nsw i32 0, %43
  store i32 %44, i32* %3, align 4
  br label %292

45:                                               ; preds = %37
  %46 = load i32, i32* %8, align 4
  %47 = call i64 @gpio_is_valid(i32 %46)
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %65

49:                                               ; preds = %45
  %50 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %51 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %50, i32 0, i32 0
  %52 = load i32, i32* %8, align 4
  %53 = load i32, i32* @GPIOF_IN, align 4
  %54 = call i32 @devm_gpio_request_one(%struct.TYPE_20__* %51, i32 %52, i32 %53, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  store i32 %54, i32* %9, align 4
  %55 = load i32, i32* %9, align 4
  %56 = icmp slt i32 %55, 0
  br i1 %56, label %57, label %64

57:                                               ; preds = %49
  %58 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %59 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %58, i32 0, i32 0
  %60 = load i32, i32* %8, align 4
  %61 = load i32, i32* %9, align 4
  %62 = call i32 (%struct.TYPE_20__*, i8*, ...) @dev_err(%struct.TYPE_20__* %59, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0), i32 %60, i32 %61)
  %63 = load i32, i32* %9, align 4
  store i32 %63, i32* %3, align 4
  br label %292

64:                                               ; preds = %49
  br label %65

65:                                               ; preds = %64, %45
  %66 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %67 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %66, i32 0, i32 0
  %68 = call %struct.iio_dev* @devm_iio_device_alloc(%struct.TYPE_20__* %67, i32 56)
  store %struct.iio_dev* %68, %struct.iio_dev** %7, align 8
  %69 = load %struct.iio_dev*, %struct.iio_dev** %7, align 8
  %70 = icmp eq %struct.iio_dev* %69, null
  br i1 %70, label %71, label %74

71:                                               ; preds = %65
  %72 = load i32, i32* @ENOMEM, align 4
  %73 = sub nsw i32 0, %72
  store i32 %73, i32* %3, align 4
  br label %292

74:                                               ; preds = %65
  %75 = load %struct.iio_dev*, %struct.iio_dev** %7, align 8
  %76 = call %struct.ak8975_data* @iio_priv(%struct.iio_dev* %75)
  store %struct.ak8975_data* %76, %struct.ak8975_data** %6, align 8
  %77 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %78 = load %struct.iio_dev*, %struct.iio_dev** %7, align 8
  %79 = call i32 @i2c_set_clientdata(%struct.i2c_client* %77, %struct.iio_dev* %78)
  %80 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %81 = load %struct.ak8975_data*, %struct.ak8975_data** %6, align 8
  %82 = getelementptr inbounds %struct.ak8975_data, %struct.ak8975_data* %81, i32 0, i32 7
  store %struct.i2c_client* %80, %struct.i2c_client** %82, align 8
  %83 = load i32, i32* %8, align 4
  %84 = load %struct.ak8975_data*, %struct.ak8975_data** %6, align 8
  %85 = getelementptr inbounds %struct.ak8975_data, %struct.ak8975_data* %84, i32 0, i32 0
  store i32 %83, i32* %85, align 8
  %86 = load %struct.ak8975_data*, %struct.ak8975_data** %6, align 8
  %87 = getelementptr inbounds %struct.ak8975_data, %struct.ak8975_data* %86, i32 0, i32 6
  store i64 0, i64* %87, align 8
  %88 = load %struct.ak8975_platform_data*, %struct.ak8975_platform_data** %12, align 8
  %89 = icmp ne %struct.ak8975_platform_data* %88, null
  br i1 %89, label %101, label %90

90:                                               ; preds = %74
  %91 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %92 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %91, i32 0, i32 0
  %93 = load %struct.ak8975_data*, %struct.ak8975_data** %6, align 8
  %94 = getelementptr inbounds %struct.ak8975_data, %struct.ak8975_data* %93, i32 0, i32 5
  %95 = call i32 @iio_read_mount_matrix(%struct.TYPE_20__* %92, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0), i32* %94)
  store i32 %95, i32* %9, align 4
  %96 = load i32, i32* %9, align 4
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %98, label %100

98:                                               ; preds = %90
  %99 = load i32, i32* %9, align 4
  store i32 %99, i32* %3, align 4
  br label %292

100:                                              ; preds = %90
  br label %107

101:                                              ; preds = %74
  %102 = load %struct.ak8975_platform_data*, %struct.ak8975_platform_data** %12, align 8
  %103 = getelementptr inbounds %struct.ak8975_platform_data, %struct.ak8975_platform_data* %102, i32 0, i32 1
  %104 = load i32, i32* %103, align 4
  %105 = load %struct.ak8975_data*, %struct.ak8975_data** %6, align 8
  %106 = getelementptr inbounds %struct.ak8975_data, %struct.ak8975_data* %105, i32 0, i32 5
  store i32 %104, i32* %106, align 8
  br label %107

107:                                              ; preds = %101, %100
  %108 = load %struct.i2c_device_id*, %struct.i2c_device_id** %5, align 8
  %109 = icmp ne %struct.i2c_device_id* %108, null
  br i1 %109, label %110, label %118

110:                                              ; preds = %107
  %111 = load %struct.i2c_device_id*, %struct.i2c_device_id** %5, align 8
  %112 = getelementptr inbounds %struct.i2c_device_id, %struct.i2c_device_id* %111, i32 0, i32 1
  %113 = load i64, i64* %112, align 8
  %114 = trunc i64 %113 to i32
  store i32 %114, i32* %11, align 4
  %115 = load %struct.i2c_device_id*, %struct.i2c_device_id** %5, align 8
  %116 = getelementptr inbounds %struct.i2c_device_id, %struct.i2c_device_id* %115, i32 0, i32 0
  %117 = load i8*, i8** %116, align 8
  store i8* %117, i8** %10, align 8
  br label %137

118:                                              ; preds = %107
  %119 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %120 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %119, i32 0, i32 0
  %121 = call i64 @ACPI_HANDLE(%struct.TYPE_20__* %120)
  %122 = icmp ne i64 %121, 0
  br i1 %122, label %123, label %133

123:                                              ; preds = %118
  %124 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %125 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %124, i32 0, i32 0
  %126 = call i8* @ak8975_match_acpi_device(%struct.TYPE_20__* %125, i32* %11)
  store i8* %126, i8** %10, align 8
  %127 = load i8*, i8** %10, align 8
  %128 = icmp ne i8* %127, null
  br i1 %128, label %132, label %129

129:                                              ; preds = %123
  %130 = load i32, i32* @ENODEV, align 4
  %131 = sub nsw i32 0, %130
  store i32 %131, i32* %3, align 4
  br label %292

132:                                              ; preds = %123
  br label %136

133:                                              ; preds = %118
  %134 = load i32, i32* @ENOSYS, align 4
  %135 = sub nsw i32 0, %134
  store i32 %135, i32* %3, align 4
  br label %292

136:                                              ; preds = %132
  br label %137

137:                                              ; preds = %136, %110
  %138 = load i32, i32* %11, align 4
  %139 = load i32, i32* @AK_MAX_TYPE, align 4
  %140 = icmp uge i32 %138, %139
  br i1 %140, label %141, label %148

141:                                              ; preds = %137
  %142 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %143 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %142, i32 0, i32 0
  %144 = load i32, i32* %11, align 4
  %145 = call i32 (%struct.TYPE_20__*, i8*, ...) @dev_err(%struct.TYPE_20__* %143, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.3, i64 0, i64 0), i32 %144)
  %146 = load i32, i32* @ENODEV, align 4
  %147 = sub nsw i32 0, %146
  store i32 %147, i32* %3, align 4
  br label %292

148:                                              ; preds = %137
  %149 = load %struct.TYPE_18__*, %struct.TYPE_18__** @ak_def_array, align 8
  %150 = load i32, i32* %11, align 4
  %151 = zext i32 %150 to i64
  %152 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %149, i64 %151
  %153 = load %struct.ak8975_data*, %struct.ak8975_data** %6, align 8
  %154 = getelementptr inbounds %struct.ak8975_data, %struct.ak8975_data* %153, i32 0, i32 2
  store %struct.TYPE_18__* %152, %struct.TYPE_18__** %154, align 8
  %155 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %156 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %155, i32 0, i32 0
  %157 = call i8* @devm_regulator_get(%struct.TYPE_20__* %156, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0))
  %158 = load %struct.ak8975_data*, %struct.ak8975_data** %6, align 8
  %159 = getelementptr inbounds %struct.ak8975_data, %struct.ak8975_data* %158, i32 0, i32 4
  store i8* %157, i8** %159, align 8
  %160 = load %struct.ak8975_data*, %struct.ak8975_data** %6, align 8
  %161 = getelementptr inbounds %struct.ak8975_data, %struct.ak8975_data* %160, i32 0, i32 4
  %162 = load i8*, i8** %161, align 8
  %163 = call i64 @IS_ERR(i8* %162)
  %164 = icmp ne i64 %163, 0
  br i1 %164, label %165, label %170

165:                                              ; preds = %148
  %166 = load %struct.ak8975_data*, %struct.ak8975_data** %6, align 8
  %167 = getelementptr inbounds %struct.ak8975_data, %struct.ak8975_data* %166, i32 0, i32 4
  %168 = load i8*, i8** %167, align 8
  %169 = call i32 @PTR_ERR(i8* %168)
  store i32 %169, i32* %3, align 4
  br label %292

170:                                              ; preds = %148
  %171 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %172 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %171, i32 0, i32 0
  %173 = call i8* @devm_regulator_get(%struct.TYPE_20__* %172, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0))
  %174 = load %struct.ak8975_data*, %struct.ak8975_data** %6, align 8
  %175 = getelementptr inbounds %struct.ak8975_data, %struct.ak8975_data* %174, i32 0, i32 3
  store i8* %173, i8** %175, align 8
  %176 = load %struct.ak8975_data*, %struct.ak8975_data** %6, align 8
  %177 = getelementptr inbounds %struct.ak8975_data, %struct.ak8975_data* %176, i32 0, i32 3
  %178 = load i8*, i8** %177, align 8
  %179 = call i64 @IS_ERR(i8* %178)
  %180 = icmp ne i64 %179, 0
  br i1 %180, label %181, label %186

181:                                              ; preds = %170
  %182 = load %struct.ak8975_data*, %struct.ak8975_data** %6, align 8
  %183 = getelementptr inbounds %struct.ak8975_data, %struct.ak8975_data* %182, i32 0, i32 3
  %184 = load i8*, i8** %183, align 8
  %185 = call i32 @PTR_ERR(i8* %184)
  store i32 %185, i32* %3, align 4
  br label %292

186:                                              ; preds = %170
  %187 = load %struct.ak8975_data*, %struct.ak8975_data** %6, align 8
  %188 = call i32 @ak8975_power_on(%struct.ak8975_data* %187)
  store i32 %188, i32* %9, align 4
  %189 = load i32, i32* %9, align 4
  %190 = icmp ne i32 %189, 0
  br i1 %190, label %191, label %193

191:                                              ; preds = %186
  %192 = load i32, i32* %9, align 4
  store i32 %192, i32* %3, align 4
  br label %292

193:                                              ; preds = %186
  %194 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %195 = load %struct.ak8975_data*, %struct.ak8975_data** %6, align 8
  %196 = getelementptr inbounds %struct.ak8975_data, %struct.ak8975_data* %195, i32 0, i32 2
  %197 = load %struct.TYPE_18__*, %struct.TYPE_18__** %196, align 8
  %198 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %197, i32 0, i32 0
  %199 = load i32, i32* %198, align 4
  %200 = call i32 @ak8975_who_i_am(%struct.i2c_client* %194, i32 %199)
  store i32 %200, i32* %9, align 4
  %201 = load i32, i32* %9, align 4
  %202 = icmp slt i32 %201, 0
  br i1 %202, label %203, label %207

203:                                              ; preds = %193
  %204 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %205 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %204, i32 0, i32 0
  %206 = call i32 (%struct.TYPE_20__*, i8*, ...) @dev_err(%struct.TYPE_20__* %205, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.6, i64 0, i64 0))
  br label %288

207:                                              ; preds = %193
  %208 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %209 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %208, i32 0, i32 0
  %210 = load i8*, i8** %10, align 8
  %211 = call i32 @dev_dbg(%struct.TYPE_20__* %209, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.7, i64 0, i64 0), i8* %210)
  %212 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %213 = call i32 @ak8975_setup(%struct.i2c_client* %212)
  store i32 %213, i32* %9, align 4
  %214 = load i32, i32* %9, align 4
  %215 = icmp slt i32 %214, 0
  br i1 %215, label %216, label %221

216:                                              ; preds = %207
  %217 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %218 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %217, i32 0, i32 0
  %219 = load i8*, i8** %10, align 8
  %220 = call i32 (%struct.TYPE_20__*, i8*, ...) @dev_err(%struct.TYPE_20__* %218, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.8, i64 0, i64 0), i8* %219)
  br label %288

221:                                              ; preds = %207
  %222 = load %struct.ak8975_data*, %struct.ak8975_data** %6, align 8
  %223 = getelementptr inbounds %struct.ak8975_data, %struct.ak8975_data* %222, i32 0, i32 1
  %224 = call i32 @mutex_init(i32* %223)
  %225 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %226 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %225, i32 0, i32 0
  %227 = load %struct.iio_dev*, %struct.iio_dev** %7, align 8
  %228 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %227, i32 0, i32 6
  %229 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %228, i32 0, i32 0
  store %struct.TYPE_20__* %226, %struct.TYPE_20__** %229, align 8
  %230 = load i32, i32* @ak8975_channels, align 4
  %231 = load %struct.iio_dev*, %struct.iio_dev** %7, align 8
  %232 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %231, i32 0, i32 5
  store i32 %230, i32* %232, align 4
  %233 = load i32, i32* @ak8975_channels, align 4
  %234 = call i32 @ARRAY_SIZE(i32 %233)
  %235 = load %struct.iio_dev*, %struct.iio_dev** %7, align 8
  %236 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %235, i32 0, i32 4
  store i32 %234, i32* %236, align 8
  %237 = load %struct.iio_dev*, %struct.iio_dev** %7, align 8
  %238 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %237, i32 0, i32 3
  store i32* @ak8975_info, i32** %238, align 8
  %239 = load i32, i32* @ak8975_scan_masks, align 4
  %240 = load %struct.iio_dev*, %struct.iio_dev** %7, align 8
  %241 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %240, i32 0, i32 2
  store i32 %239, i32* %241, align 4
  %242 = load i32, i32* @INDIO_DIRECT_MODE, align 4
  %243 = load %struct.iio_dev*, %struct.iio_dev** %7, align 8
  %244 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %243, i32 0, i32 1
  store i32 %242, i32* %244, align 8
  %245 = load i8*, i8** %10, align 8
  %246 = load %struct.iio_dev*, %struct.iio_dev** %7, align 8
  %247 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %246, i32 0, i32 0
  store i8* %245, i8** %247, align 8
  %248 = load %struct.iio_dev*, %struct.iio_dev** %7, align 8
  %249 = load i32, i32* @ak8975_handle_trigger, align 4
  %250 = call i32 @iio_triggered_buffer_setup(%struct.iio_dev* %248, i32* null, i32 %249, i32* null)
  store i32 %250, i32* %9, align 4
  %251 = load i32, i32* %9, align 4
  %252 = icmp ne i32 %251, 0
  br i1 %252, label %253, label %257

253:                                              ; preds = %221
  %254 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %255 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %254, i32 0, i32 0
  %256 = call i32 (%struct.TYPE_20__*, i8*, ...) @dev_err(%struct.TYPE_20__* %255, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.9, i64 0, i64 0))
  br label %288

257:                                              ; preds = %221
  %258 = load %struct.iio_dev*, %struct.iio_dev** %7, align 8
  %259 = call i32 @iio_device_register(%struct.iio_dev* %258)
  store i32 %259, i32* %9, align 4
  %260 = load i32, i32* %9, align 4
  %261 = icmp ne i32 %260, 0
  br i1 %261, label %262, label %266

262:                                              ; preds = %257
  %263 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %264 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %263, i32 0, i32 0
  %265 = call i32 (%struct.TYPE_20__*, i8*, ...) @dev_err(%struct.TYPE_20__* %264, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.10, i64 0, i64 0))
  br label %285

266:                                              ; preds = %257
  %267 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %268 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %267, i32 0, i32 0
  %269 = call i32 @pm_runtime_get_noresume(%struct.TYPE_20__* %268)
  %270 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %271 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %270, i32 0, i32 0
  %272 = call i32 @pm_runtime_set_active(%struct.TYPE_20__* %271)
  %273 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %274 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %273, i32 0, i32 0
  %275 = call i32 @pm_runtime_enable(%struct.TYPE_20__* %274)
  %276 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %277 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %276, i32 0, i32 0
  %278 = call i32 @pm_runtime_set_autosuspend_delay(%struct.TYPE_20__* %277, i32 50)
  %279 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %280 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %279, i32 0, i32 0
  %281 = call i32 @pm_runtime_use_autosuspend(%struct.TYPE_20__* %280)
  %282 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %283 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %282, i32 0, i32 0
  %284 = call i32 @pm_runtime_put(%struct.TYPE_20__* %283)
  store i32 0, i32* %3, align 4
  br label %292

285:                                              ; preds = %262
  %286 = load %struct.iio_dev*, %struct.iio_dev** %7, align 8
  %287 = call i32 @iio_triggered_buffer_cleanup(%struct.iio_dev* %286)
  br label %288

288:                                              ; preds = %285, %253, %216, %203
  %289 = load %struct.ak8975_data*, %struct.ak8975_data** %6, align 8
  %290 = call i32 @ak8975_power_off(%struct.ak8975_data* %289)
  %291 = load i32, i32* %9, align 4
  store i32 %291, i32* %3, align 4
  br label %292

292:                                              ; preds = %288, %266, %191, %181, %165, %141, %133, %129, %98, %71, %57, %42
  %293 = load i32, i32* %3, align 4
  ret i32 %293
}

declare dso_local %struct.ak8975_platform_data* @dev_get_platdata(%struct.TYPE_20__*) #1

declare dso_local i32 @of_get_gpio(i64, i32) #1

declare dso_local i64 @gpio_is_valid(i32) #1

declare dso_local i32 @devm_gpio_request_one(%struct.TYPE_20__*, i32, i32, i8*) #1

declare dso_local i32 @dev_err(%struct.TYPE_20__*, i8*, ...) #1

declare dso_local %struct.iio_dev* @devm_iio_device_alloc(%struct.TYPE_20__*, i32) #1

declare dso_local %struct.ak8975_data* @iio_priv(%struct.iio_dev*) #1

declare dso_local i32 @i2c_set_clientdata(%struct.i2c_client*, %struct.iio_dev*) #1

declare dso_local i32 @iio_read_mount_matrix(%struct.TYPE_20__*, i8*, i32*) #1

declare dso_local i64 @ACPI_HANDLE(%struct.TYPE_20__*) #1

declare dso_local i8* @ak8975_match_acpi_device(%struct.TYPE_20__*, i32*) #1

declare dso_local i8* @devm_regulator_get(%struct.TYPE_20__*, i8*) #1

declare dso_local i64 @IS_ERR(i8*) #1

declare dso_local i32 @PTR_ERR(i8*) #1

declare dso_local i32 @ak8975_power_on(%struct.ak8975_data*) #1

declare dso_local i32 @ak8975_who_i_am(%struct.i2c_client*, i32) #1

declare dso_local i32 @dev_dbg(%struct.TYPE_20__*, i8*, i8*) #1

declare dso_local i32 @ak8975_setup(%struct.i2c_client*) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @ARRAY_SIZE(i32) #1

declare dso_local i32 @iio_triggered_buffer_setup(%struct.iio_dev*, i32*, i32, i32*) #1

declare dso_local i32 @iio_device_register(%struct.iio_dev*) #1

declare dso_local i32 @pm_runtime_get_noresume(%struct.TYPE_20__*) #1

declare dso_local i32 @pm_runtime_set_active(%struct.TYPE_20__*) #1

declare dso_local i32 @pm_runtime_enable(%struct.TYPE_20__*) #1

declare dso_local i32 @pm_runtime_set_autosuspend_delay(%struct.TYPE_20__*, i32) #1

declare dso_local i32 @pm_runtime_use_autosuspend(%struct.TYPE_20__*) #1

declare dso_local i32 @pm_runtime_put(%struct.TYPE_20__*) #1

declare dso_local i32 @iio_triggered_buffer_cleanup(%struct.iio_dev*) #1

declare dso_local i32 @ak8975_power_off(%struct.ak8975_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
