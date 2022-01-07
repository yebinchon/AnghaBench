; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/misc/extr_drv260x.c_drv260x_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/misc/extr_drv260x.c_drv260x_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_client = type { %struct.device }
%struct.device = type { i32 }
%struct.i2c_device_id = type { i32 }
%struct.drv260x_data = type { i32, i32, %struct.TYPE_6__*, i32, %struct.i2c_client*, i32, i32, i32, i8*, i8* }
%struct.TYPE_6__ = type { i8*, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"mode\00", align 1
@.str.1 = private unnamed_addr constant [33 x i8] c"Can't fetch 'mode' property: %d\0A\00", align 1
@DRV260X_LRA_MODE = common dso_local global i32 0, align 4
@DRV260X_ERM_MODE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [30 x i8] c"Vibrator mode is invalid: %i\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [12 x i8] c"library-sel\00", align 1
@.str.4 = private unnamed_addr constant [40 x i8] c"Can't fetch 'library-sel' property: %d\0A\00", align 1
@DRV260X_LIB_EMPTY = common dso_local global i32 0, align 4
@DRV260X_ERM_LIB_F = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [30 x i8] c"Library value is invalid: %i\0A\00", align 1
@DRV260X_LIB_LRA = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [36 x i8] c"LRA Mode with ERM Library mismatch\0A\00", align 1
@.str.7 = private unnamed_addr constant [36 x i8] c"ERM Mode with LRA Library mismatch\0A\00", align 1
@.str.8 = private unnamed_addr constant [13 x i8] c"vib-rated-mv\00", align 1
@DRV260X_DEF_RATED_VOLT = common dso_local global i8* null, align 8
@.str.9 = private unnamed_addr constant [17 x i8] c"vib-overdrive-mv\00", align 1
@DRV260X_DEF_OD_CLAMP_VOLT = common dso_local global i8* null, align 8
@.str.10 = private unnamed_addr constant [5 x i8] c"vbat\00", align 1
@.str.11 = private unnamed_addr constant [36 x i8] c"unable to get regulator, error: %d\0A\00", align 1
@.str.12 = private unnamed_addr constant [7 x i8] c"enable\00", align 1
@GPIOD_OUT_HIGH = common dso_local global i32 0, align 4
@.str.13 = private unnamed_addr constant [33 x i8] c"Failed to allocate input device\0A\00", align 1
@.str.14 = private unnamed_addr constant [16 x i8] c"drv260x:haptics\00", align 1
@drv260x_close = common dso_local global i32 0, align 4
@EV_FF = common dso_local global i32 0, align 4
@FF_RUMBLE = common dso_local global i32 0, align 4
@drv260x_haptics_play = common dso_local global i32 0, align 4
@.str.15 = private unnamed_addr constant [30 x i8] c"input_ff_create() failed: %d\0A\00", align 1
@drv260x_worker = common dso_local global i32 0, align 4
@drv260x_regmap_config = common dso_local global i32 0, align 4
@.str.16 = private unnamed_addr constant [37 x i8] c"Failed to allocate register map: %d\0A\00", align 1
@.str.17 = private unnamed_addr constant [24 x i8] c"Device init failed: %d\0A\00", align 1
@.str.18 = private unnamed_addr constant [36 x i8] c"couldn't register input device: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_client*, %struct.i2c_device_id*)* @drv260x_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @drv260x_probe(%struct.i2c_client* %0, %struct.i2c_device_id* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.i2c_client*, align 8
  %5 = alloca %struct.i2c_device_id*, align 8
  %6 = alloca %struct.device*, align 8
  %7 = alloca %struct.drv260x_data*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.i2c_client* %0, %struct.i2c_client** %4, align 8
  store %struct.i2c_device_id* %1, %struct.i2c_device_id** %5, align 8
  %10 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %11 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %10, i32 0, i32 0
  store %struct.device* %11, %struct.device** %6, align 8
  %12 = load %struct.device*, %struct.device** %6, align 8
  %13 = load i32, i32* @GFP_KERNEL, align 4
  %14 = call %struct.drv260x_data* @devm_kzalloc(%struct.device* %12, i32 64, i32 %13)
  store %struct.drv260x_data* %14, %struct.drv260x_data** %7, align 8
  %15 = load %struct.drv260x_data*, %struct.drv260x_data** %7, align 8
  %16 = icmp ne %struct.drv260x_data* %15, null
  br i1 %16, label %20, label %17

17:                                               ; preds = %2
  %18 = load i32, i32* @ENOMEM, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %3, align 4
  br label %290

20:                                               ; preds = %2
  %21 = load %struct.device*, %struct.device** %6, align 8
  %22 = load %struct.drv260x_data*, %struct.drv260x_data** %7, align 8
  %23 = getelementptr inbounds %struct.drv260x_data, %struct.drv260x_data* %22, i32 0, i32 0
  %24 = call i32 @device_property_read_u32(%struct.device* %21, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32* %23)
  store i32 %24, i32* %9, align 4
  %25 = load i32, i32* %9, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %32

27:                                               ; preds = %20
  %28 = load %struct.device*, %struct.device** %6, align 8
  %29 = load i32, i32* %9, align 4
  %30 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %28, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0), i32 %29)
  %31 = load i32, i32* %9, align 4
  store i32 %31, i32* %3, align 4
  br label %290

32:                                               ; preds = %20
  %33 = load %struct.drv260x_data*, %struct.drv260x_data** %7, align 8
  %34 = getelementptr inbounds %struct.drv260x_data, %struct.drv260x_data* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = load i32, i32* @DRV260X_LRA_MODE, align 4
  %37 = icmp slt i32 %35, %36
  br i1 %37, label %44, label %38

38:                                               ; preds = %32
  %39 = load %struct.drv260x_data*, %struct.drv260x_data** %7, align 8
  %40 = getelementptr inbounds %struct.drv260x_data, %struct.drv260x_data* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = load i32, i32* @DRV260X_ERM_MODE, align 4
  %43 = icmp sgt i32 %41, %42
  br i1 %43, label %44, label %52

44:                                               ; preds = %38, %32
  %45 = load %struct.device*, %struct.device** %6, align 8
  %46 = load %struct.drv260x_data*, %struct.drv260x_data** %7, align 8
  %47 = getelementptr inbounds %struct.drv260x_data, %struct.drv260x_data* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %45, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i64 0, i64 0), i32 %48)
  %50 = load i32, i32* @EINVAL, align 4
  %51 = sub nsw i32 0, %50
  store i32 %51, i32* %3, align 4
  br label %290

52:                                               ; preds = %38
  %53 = load %struct.device*, %struct.device** %6, align 8
  %54 = load %struct.drv260x_data*, %struct.drv260x_data** %7, align 8
  %55 = getelementptr inbounds %struct.drv260x_data, %struct.drv260x_data* %54, i32 0, i32 1
  %56 = call i32 @device_property_read_u32(%struct.device* %53, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i64 0, i64 0), i32* %55)
  store i32 %56, i32* %9, align 4
  %57 = load i32, i32* %9, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %64

59:                                               ; preds = %52
  %60 = load %struct.device*, %struct.device** %6, align 8
  %61 = load i32, i32* %9, align 4
  %62 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %60, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.4, i64 0, i64 0), i32 %61)
  %63 = load i32, i32* %9, align 4
  store i32 %63, i32* %3, align 4
  br label %290

64:                                               ; preds = %52
  %65 = load %struct.drv260x_data*, %struct.drv260x_data** %7, align 8
  %66 = getelementptr inbounds %struct.drv260x_data, %struct.drv260x_data* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 4
  %68 = load i32, i32* @DRV260X_LIB_EMPTY, align 4
  %69 = icmp slt i32 %67, %68
  br i1 %69, label %76, label %70

70:                                               ; preds = %64
  %71 = load %struct.drv260x_data*, %struct.drv260x_data** %7, align 8
  %72 = getelementptr inbounds %struct.drv260x_data, %struct.drv260x_data* %71, i32 0, i32 1
  %73 = load i32, i32* %72, align 4
  %74 = load i32, i32* @DRV260X_ERM_LIB_F, align 4
  %75 = icmp sgt i32 %73, %74
  br i1 %75, label %76, label %84

76:                                               ; preds = %70, %64
  %77 = load %struct.device*, %struct.device** %6, align 8
  %78 = load %struct.drv260x_data*, %struct.drv260x_data** %7, align 8
  %79 = getelementptr inbounds %struct.drv260x_data, %struct.drv260x_data* %78, i32 0, i32 1
  %80 = load i32, i32* %79, align 4
  %81 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %77, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.5, i64 0, i64 0), i32 %80)
  %82 = load i32, i32* @EINVAL, align 4
  %83 = sub nsw i32 0, %82
  store i32 %83, i32* %3, align 4
  br label %290

84:                                               ; preds = %70
  %85 = load %struct.drv260x_data*, %struct.drv260x_data** %7, align 8
  %86 = getelementptr inbounds %struct.drv260x_data, %struct.drv260x_data* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 8
  %88 = load i32, i32* @DRV260X_LRA_MODE, align 4
  %89 = icmp eq i32 %87, %88
  br i1 %89, label %90, label %107

90:                                               ; preds = %84
  %91 = load %struct.drv260x_data*, %struct.drv260x_data** %7, align 8
  %92 = getelementptr inbounds %struct.drv260x_data, %struct.drv260x_data* %91, i32 0, i32 1
  %93 = load i32, i32* %92, align 4
  %94 = load i32, i32* @DRV260X_LIB_EMPTY, align 4
  %95 = icmp ne i32 %93, %94
  br i1 %95, label %96, label %107

96:                                               ; preds = %90
  %97 = load %struct.drv260x_data*, %struct.drv260x_data** %7, align 8
  %98 = getelementptr inbounds %struct.drv260x_data, %struct.drv260x_data* %97, i32 0, i32 1
  %99 = load i32, i32* %98, align 4
  %100 = load i32, i32* @DRV260X_LIB_LRA, align 4
  %101 = icmp ne i32 %99, %100
  br i1 %101, label %102, label %107

102:                                              ; preds = %96
  %103 = load %struct.device*, %struct.device** %6, align 8
  %104 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %103, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.6, i64 0, i64 0))
  %105 = load i32, i32* @EINVAL, align 4
  %106 = sub nsw i32 0, %105
  store i32 %106, i32* %3, align 4
  br label %290

107:                                              ; preds = %96, %90, %84
  %108 = load %struct.drv260x_data*, %struct.drv260x_data** %7, align 8
  %109 = getelementptr inbounds %struct.drv260x_data, %struct.drv260x_data* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 8
  %111 = load i32, i32* @DRV260X_ERM_MODE, align 4
  %112 = icmp eq i32 %110, %111
  br i1 %112, label %113, label %130

113:                                              ; preds = %107
  %114 = load %struct.drv260x_data*, %struct.drv260x_data** %7, align 8
  %115 = getelementptr inbounds %struct.drv260x_data, %struct.drv260x_data* %114, i32 0, i32 1
  %116 = load i32, i32* %115, align 4
  %117 = load i32, i32* @DRV260X_LIB_EMPTY, align 4
  %118 = icmp eq i32 %116, %117
  br i1 %118, label %125, label %119

119:                                              ; preds = %113
  %120 = load %struct.drv260x_data*, %struct.drv260x_data** %7, align 8
  %121 = getelementptr inbounds %struct.drv260x_data, %struct.drv260x_data* %120, i32 0, i32 1
  %122 = load i32, i32* %121, align 4
  %123 = load i32, i32* @DRV260X_LIB_LRA, align 4
  %124 = icmp eq i32 %122, %123
  br i1 %124, label %125, label %130

125:                                              ; preds = %119, %113
  %126 = load %struct.device*, %struct.device** %6, align 8
  %127 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %126, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.7, i64 0, i64 0))
  %128 = load i32, i32* @EINVAL, align 4
  %129 = sub nsw i32 0, %128
  store i32 %129, i32* %3, align 4
  br label %290

130:                                              ; preds = %119, %107
  %131 = load %struct.device*, %struct.device** %6, align 8
  %132 = call i32 @device_property_read_u32(%struct.device* %131, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.8, i64 0, i64 0), i32* %8)
  store i32 %132, i32* %9, align 4
  %133 = load i32, i32* %9, align 4
  %134 = icmp ne i32 %133, 0
  br i1 %134, label %135, label %137

135:                                              ; preds = %130
  %136 = load i8*, i8** @DRV260X_DEF_RATED_VOLT, align 8
  br label %140

137:                                              ; preds = %130
  %138 = load i32, i32* %8, align 4
  %139 = call i8* @drv260x_calculate_voltage(i32 %138)
  br label %140

140:                                              ; preds = %137, %135
  %141 = phi i8* [ %136, %135 ], [ %139, %137 ]
  %142 = load %struct.drv260x_data*, %struct.drv260x_data** %7, align 8
  %143 = getelementptr inbounds %struct.drv260x_data, %struct.drv260x_data* %142, i32 0, i32 9
  store i8* %141, i8** %143, align 8
  %144 = load %struct.device*, %struct.device** %6, align 8
  %145 = call i32 @device_property_read_u32(%struct.device* %144, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.9, i64 0, i64 0), i32* %8)
  store i32 %145, i32* %9, align 4
  %146 = load i32, i32* %9, align 4
  %147 = icmp ne i32 %146, 0
  br i1 %147, label %148, label %150

148:                                              ; preds = %140
  %149 = load i8*, i8** @DRV260X_DEF_OD_CLAMP_VOLT, align 8
  br label %153

150:                                              ; preds = %140
  %151 = load i32, i32* %8, align 4
  %152 = call i8* @drv260x_calculate_voltage(i32 %151)
  br label %153

153:                                              ; preds = %150, %148
  %154 = phi i8* [ %149, %148 ], [ %152, %150 ]
  %155 = load %struct.drv260x_data*, %struct.drv260x_data** %7, align 8
  %156 = getelementptr inbounds %struct.drv260x_data, %struct.drv260x_data* %155, i32 0, i32 8
  store i8* %154, i8** %156, align 8
  %157 = load %struct.device*, %struct.device** %6, align 8
  %158 = call i32 @devm_regulator_get(%struct.device* %157, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.10, i64 0, i64 0))
  %159 = load %struct.drv260x_data*, %struct.drv260x_data** %7, align 8
  %160 = getelementptr inbounds %struct.drv260x_data, %struct.drv260x_data* %159, i32 0, i32 7
  store i32 %158, i32* %160, align 8
  %161 = load %struct.drv260x_data*, %struct.drv260x_data** %7, align 8
  %162 = getelementptr inbounds %struct.drv260x_data, %struct.drv260x_data* %161, i32 0, i32 7
  %163 = load i32, i32* %162, align 8
  %164 = call i64 @IS_ERR(i32 %163)
  %165 = icmp ne i64 %164, 0
  br i1 %165, label %166, label %175

166:                                              ; preds = %153
  %167 = load %struct.drv260x_data*, %struct.drv260x_data** %7, align 8
  %168 = getelementptr inbounds %struct.drv260x_data, %struct.drv260x_data* %167, i32 0, i32 7
  %169 = load i32, i32* %168, align 8
  %170 = call i32 @PTR_ERR(i32 %169)
  store i32 %170, i32* %9, align 4
  %171 = load %struct.device*, %struct.device** %6, align 8
  %172 = load i32, i32* %9, align 4
  %173 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %171, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.11, i64 0, i64 0), i32 %172)
  %174 = load i32, i32* %9, align 4
  store i32 %174, i32* %3, align 4
  br label %290

175:                                              ; preds = %153
  %176 = load %struct.device*, %struct.device** %6, align 8
  %177 = load i32, i32* @GPIOD_OUT_HIGH, align 4
  %178 = call i32 @devm_gpiod_get_optional(%struct.device* %176, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.12, i64 0, i64 0), i32 %177)
  %179 = load %struct.drv260x_data*, %struct.drv260x_data** %7, align 8
  %180 = getelementptr inbounds %struct.drv260x_data, %struct.drv260x_data* %179, i32 0, i32 6
  store i32 %178, i32* %180, align 4
  %181 = load %struct.drv260x_data*, %struct.drv260x_data** %7, align 8
  %182 = getelementptr inbounds %struct.drv260x_data, %struct.drv260x_data* %181, i32 0, i32 6
  %183 = load i32, i32* %182, align 4
  %184 = call i64 @IS_ERR(i32 %183)
  %185 = icmp ne i64 %184, 0
  br i1 %185, label %186, label %191

186:                                              ; preds = %175
  %187 = load %struct.drv260x_data*, %struct.drv260x_data** %7, align 8
  %188 = getelementptr inbounds %struct.drv260x_data, %struct.drv260x_data* %187, i32 0, i32 6
  %189 = load i32, i32* %188, align 4
  %190 = call i32 @PTR_ERR(i32 %189)
  store i32 %190, i32* %3, align 4
  br label %290

191:                                              ; preds = %175
  %192 = load %struct.device*, %struct.device** %6, align 8
  %193 = call %struct.TYPE_6__* @devm_input_allocate_device(%struct.device* %192)
  %194 = load %struct.drv260x_data*, %struct.drv260x_data** %7, align 8
  %195 = getelementptr inbounds %struct.drv260x_data, %struct.drv260x_data* %194, i32 0, i32 2
  store %struct.TYPE_6__* %193, %struct.TYPE_6__** %195, align 8
  %196 = load %struct.drv260x_data*, %struct.drv260x_data** %7, align 8
  %197 = getelementptr inbounds %struct.drv260x_data, %struct.drv260x_data* %196, i32 0, i32 2
  %198 = load %struct.TYPE_6__*, %struct.TYPE_6__** %197, align 8
  %199 = icmp ne %struct.TYPE_6__* %198, null
  br i1 %199, label %205, label %200

200:                                              ; preds = %191
  %201 = load %struct.device*, %struct.device** %6, align 8
  %202 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %201, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.13, i64 0, i64 0))
  %203 = load i32, i32* @ENOMEM, align 4
  %204 = sub nsw i32 0, %203
  store i32 %204, i32* %3, align 4
  br label %290

205:                                              ; preds = %191
  %206 = load %struct.drv260x_data*, %struct.drv260x_data** %7, align 8
  %207 = getelementptr inbounds %struct.drv260x_data, %struct.drv260x_data* %206, i32 0, i32 2
  %208 = load %struct.TYPE_6__*, %struct.TYPE_6__** %207, align 8
  %209 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %208, i32 0, i32 0
  store i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.14, i64 0, i64 0), i8** %209, align 8
  %210 = load i32, i32* @drv260x_close, align 4
  %211 = load %struct.drv260x_data*, %struct.drv260x_data** %7, align 8
  %212 = getelementptr inbounds %struct.drv260x_data, %struct.drv260x_data* %211, i32 0, i32 2
  %213 = load %struct.TYPE_6__*, %struct.TYPE_6__** %212, align 8
  %214 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %213, i32 0, i32 1
  store i32 %210, i32* %214, align 8
  %215 = load %struct.drv260x_data*, %struct.drv260x_data** %7, align 8
  %216 = getelementptr inbounds %struct.drv260x_data, %struct.drv260x_data* %215, i32 0, i32 2
  %217 = load %struct.TYPE_6__*, %struct.TYPE_6__** %216, align 8
  %218 = load %struct.drv260x_data*, %struct.drv260x_data** %7, align 8
  %219 = call i32 @input_set_drvdata(%struct.TYPE_6__* %217, %struct.drv260x_data* %218)
  %220 = load %struct.drv260x_data*, %struct.drv260x_data** %7, align 8
  %221 = getelementptr inbounds %struct.drv260x_data, %struct.drv260x_data* %220, i32 0, i32 2
  %222 = load %struct.TYPE_6__*, %struct.TYPE_6__** %221, align 8
  %223 = load i32, i32* @EV_FF, align 4
  %224 = load i32, i32* @FF_RUMBLE, align 4
  %225 = call i32 @input_set_capability(%struct.TYPE_6__* %222, i32 %223, i32 %224)
  %226 = load %struct.drv260x_data*, %struct.drv260x_data** %7, align 8
  %227 = getelementptr inbounds %struct.drv260x_data, %struct.drv260x_data* %226, i32 0, i32 2
  %228 = load %struct.TYPE_6__*, %struct.TYPE_6__** %227, align 8
  %229 = load i32, i32* @drv260x_haptics_play, align 4
  %230 = call i32 @input_ff_create_memless(%struct.TYPE_6__* %228, i32* null, i32 %229)
  store i32 %230, i32* %9, align 4
  %231 = load i32, i32* %9, align 4
  %232 = icmp ne i32 %231, 0
  br i1 %232, label %233, label %238

233:                                              ; preds = %205
  %234 = load %struct.device*, %struct.device** %6, align 8
  %235 = load i32, i32* %9, align 4
  %236 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %234, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.15, i64 0, i64 0), i32 %235)
  %237 = load i32, i32* %9, align 4
  store i32 %237, i32* %3, align 4
  br label %290

238:                                              ; preds = %205
  %239 = load %struct.drv260x_data*, %struct.drv260x_data** %7, align 8
  %240 = getelementptr inbounds %struct.drv260x_data, %struct.drv260x_data* %239, i32 0, i32 5
  %241 = load i32, i32* @drv260x_worker, align 4
  %242 = call i32 @INIT_WORK(i32* %240, i32 %241)
  %243 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %244 = load %struct.drv260x_data*, %struct.drv260x_data** %7, align 8
  %245 = getelementptr inbounds %struct.drv260x_data, %struct.drv260x_data* %244, i32 0, i32 4
  store %struct.i2c_client* %243, %struct.i2c_client** %245, align 8
  %246 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %247 = load %struct.drv260x_data*, %struct.drv260x_data** %7, align 8
  %248 = call i32 @i2c_set_clientdata(%struct.i2c_client* %246, %struct.drv260x_data* %247)
  %249 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %250 = call i32 @devm_regmap_init_i2c(%struct.i2c_client* %249, i32* @drv260x_regmap_config)
  %251 = load %struct.drv260x_data*, %struct.drv260x_data** %7, align 8
  %252 = getelementptr inbounds %struct.drv260x_data, %struct.drv260x_data* %251, i32 0, i32 3
  store i32 %250, i32* %252, align 8
  %253 = load %struct.drv260x_data*, %struct.drv260x_data** %7, align 8
  %254 = getelementptr inbounds %struct.drv260x_data, %struct.drv260x_data* %253, i32 0, i32 3
  %255 = load i32, i32* %254, align 8
  %256 = call i64 @IS_ERR(i32 %255)
  %257 = icmp ne i64 %256, 0
  br i1 %257, label %258, label %267

258:                                              ; preds = %238
  %259 = load %struct.drv260x_data*, %struct.drv260x_data** %7, align 8
  %260 = getelementptr inbounds %struct.drv260x_data, %struct.drv260x_data* %259, i32 0, i32 3
  %261 = load i32, i32* %260, align 8
  %262 = call i32 @PTR_ERR(i32 %261)
  store i32 %262, i32* %9, align 4
  %263 = load %struct.device*, %struct.device** %6, align 8
  %264 = load i32, i32* %9, align 4
  %265 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %263, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.16, i64 0, i64 0), i32 %264)
  %266 = load i32, i32* %9, align 4
  store i32 %266, i32* %3, align 4
  br label %290

267:                                              ; preds = %238
  %268 = load %struct.drv260x_data*, %struct.drv260x_data** %7, align 8
  %269 = call i32 @drv260x_init(%struct.drv260x_data* %268)
  store i32 %269, i32* %9, align 4
  %270 = load i32, i32* %9, align 4
  %271 = icmp ne i32 %270, 0
  br i1 %271, label %272, label %277

272:                                              ; preds = %267
  %273 = load %struct.device*, %struct.device** %6, align 8
  %274 = load i32, i32* %9, align 4
  %275 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %273, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.17, i64 0, i64 0), i32 %274)
  %276 = load i32, i32* %9, align 4
  store i32 %276, i32* %3, align 4
  br label %290

277:                                              ; preds = %267
  %278 = load %struct.drv260x_data*, %struct.drv260x_data** %7, align 8
  %279 = getelementptr inbounds %struct.drv260x_data, %struct.drv260x_data* %278, i32 0, i32 2
  %280 = load %struct.TYPE_6__*, %struct.TYPE_6__** %279, align 8
  %281 = call i32 @input_register_device(%struct.TYPE_6__* %280)
  store i32 %281, i32* %9, align 4
  %282 = load i32, i32* %9, align 4
  %283 = icmp ne i32 %282, 0
  br i1 %283, label %284, label %289

284:                                              ; preds = %277
  %285 = load %struct.device*, %struct.device** %6, align 8
  %286 = load i32, i32* %9, align 4
  %287 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %285, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.18, i64 0, i64 0), i32 %286)
  %288 = load i32, i32* %9, align 4
  store i32 %288, i32* %3, align 4
  br label %290

289:                                              ; preds = %277
  store i32 0, i32* %3, align 4
  br label %290

290:                                              ; preds = %289, %284, %272, %258, %233, %200, %186, %166, %125, %102, %76, %59, %44, %27, %17
  %291 = load i32, i32* %3, align 4
  ret i32 %291
}

declare dso_local %struct.drv260x_data* @devm_kzalloc(%struct.device*, i32, i32) #1

declare dso_local i32 @device_property_read_u32(%struct.device*, i8*, i32*) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, ...) #1

declare dso_local i8* @drv260x_calculate_voltage(i32) #1

declare dso_local i32 @devm_regulator_get(%struct.device*, i8*) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @PTR_ERR(i32) #1

declare dso_local i32 @devm_gpiod_get_optional(%struct.device*, i8*, i32) #1

declare dso_local %struct.TYPE_6__* @devm_input_allocate_device(%struct.device*) #1

declare dso_local i32 @input_set_drvdata(%struct.TYPE_6__*, %struct.drv260x_data*) #1

declare dso_local i32 @input_set_capability(%struct.TYPE_6__*, i32, i32) #1

declare dso_local i32 @input_ff_create_memless(%struct.TYPE_6__*, i32*, i32) #1

declare dso_local i32 @INIT_WORK(i32*, i32) #1

declare dso_local i32 @i2c_set_clientdata(%struct.i2c_client*, %struct.drv260x_data*) #1

declare dso_local i32 @devm_regmap_init_i2c(%struct.i2c_client*, i32*) #1

declare dso_local i32 @drv260x_init(%struct.drv260x_data*) #1

declare dso_local i32 @input_register_device(%struct.TYPE_6__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
