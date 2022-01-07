; ModuleID = '/home/carl/AnghaBench/linux/drivers/hwmon/extr_ntc_thermistor.c_ntc_thermistor_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hwmon/extr_ntc_thermistor.c_ntc_thermistor_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32 }
%struct.platform_device = type { %struct.ntc_thermistor_platform_data }
%struct.ntc_thermistor_platform_data = type { i64, i64, i64, i64, i32*, i64 }
%struct.device = type { i64, i64, i64, i64, i32*, i64 }
%struct.of_device_id = type { %struct.platform_device_id* }
%struct.platform_device_id = type { i64, i32 }
%struct.ntc_data = type { i32, i32, %struct.ntc_thermistor_platform_data* }

@ntc_match = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"No platform init data supplied.\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [64 x i8] c"Both read_uv and read_ohm missing. Need either one of the two.\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [63 x i8] c"Only one of read_uv and read_ohm is needed; ignoring read_uv.\0A\00", align 1
@NTC_CONNECTED_GROUND = common dso_local global i64 0, align 8
@NTC_CONNECTED_POSITIVE = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [44 x i8] c"Required data to use read_uv not supplied.\0A\00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@ntc_type = common dso_local global %struct.TYPE_3__* null, align 8
@.str.4 = private unnamed_addr constant [30 x i8] c"Unknown device type: %lu(%s)\0A\00", align 1
@ntc_chip_info = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [37 x i8] c"unable to register as hwmon device.\0A\00", align 1
@.str.6 = private unnamed_addr constant [42 x i8] c"Thermistor type: %s successfully probed.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @ntc_thermistor_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ntc_thermistor_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.of_device_id*, align 8
  %6 = alloca %struct.platform_device_id*, align 8
  %7 = alloca %struct.ntc_thermistor_platform_data*, align 8
  %8 = alloca %struct.device*, align 8
  %9 = alloca %struct.ntc_data*, align 8
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %10 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %11 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %10, i32 0, i32 0
  %12 = bitcast %struct.ntc_thermistor_platform_data* %11 to %struct.device*
  store %struct.device* %12, %struct.device** %4, align 8
  %13 = load i32, i32* @ntc_match, align 4
  %14 = call i32 @of_match_ptr(i32 %13)
  %15 = load %struct.device*, %struct.device** %4, align 8
  %16 = bitcast %struct.device* %15 to %struct.ntc_thermistor_platform_data*
  %17 = call %struct.of_device_id* @of_match_device(i32 %14, %struct.ntc_thermistor_platform_data* %16)
  store %struct.of_device_id* %17, %struct.of_device_id** %5, align 8
  %18 = load %struct.device*, %struct.device** %4, align 8
  %19 = bitcast %struct.device* %18 to %struct.ntc_thermistor_platform_data*
  %20 = call %struct.ntc_thermistor_platform_data* @ntc_thermistor_parse_dt(%struct.ntc_thermistor_platform_data* %19)
  store %struct.ntc_thermistor_platform_data* %20, %struct.ntc_thermistor_platform_data** %7, align 8
  %21 = load %struct.ntc_thermistor_platform_data*, %struct.ntc_thermistor_platform_data** %7, align 8
  %22 = call i64 @IS_ERR(%struct.ntc_thermistor_platform_data* %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %27

24:                                               ; preds = %1
  %25 = load %struct.ntc_thermistor_platform_data*, %struct.ntc_thermistor_platform_data** %7, align 8
  %26 = call i32 @PTR_ERR(%struct.ntc_thermistor_platform_data* %25)
  store i32 %26, i32* %2, align 4
  br label %214

27:                                               ; preds = %1
  %28 = load %struct.ntc_thermistor_platform_data*, %struct.ntc_thermistor_platform_data** %7, align 8
  %29 = icmp eq %struct.ntc_thermistor_platform_data* %28, null
  br i1 %29, label %30, label %34

30:                                               ; preds = %27
  %31 = load %struct.device*, %struct.device** %4, align 8
  %32 = bitcast %struct.device* %31 to %struct.ntc_thermistor_platform_data*
  %33 = call %struct.ntc_thermistor_platform_data* @dev_get_platdata(%struct.ntc_thermistor_platform_data* %32)
  store %struct.ntc_thermistor_platform_data* %33, %struct.ntc_thermistor_platform_data** %7, align 8
  br label %34

34:                                               ; preds = %30, %27
  br label %35

35:                                               ; preds = %34
  %36 = load %struct.ntc_thermistor_platform_data*, %struct.ntc_thermistor_platform_data** %7, align 8
  %37 = icmp ne %struct.ntc_thermistor_platform_data* %36, null
  br i1 %37, label %44, label %38

38:                                               ; preds = %35
  %39 = load %struct.device*, %struct.device** %4, align 8
  %40 = bitcast %struct.device* %39 to %struct.ntc_thermistor_platform_data*
  %41 = call i32 (%struct.ntc_thermistor_platform_data*, i8*, ...) @dev_err(%struct.ntc_thermistor_platform_data* %40, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0))
  %42 = load i32, i32* @ENODEV, align 4
  %43 = sub nsw i32 0, %42
  store i32 %43, i32* %2, align 4
  br label %214

44:                                               ; preds = %35
  %45 = load %struct.ntc_thermistor_platform_data*, %struct.ntc_thermistor_platform_data** %7, align 8
  %46 = getelementptr inbounds %struct.ntc_thermistor_platform_data, %struct.ntc_thermistor_platform_data* %45, i32 0, i32 4
  %47 = load i32*, i32** %46, align 8
  %48 = icmp ne i32* %47, null
  br i1 %48, label %60, label %49

49:                                               ; preds = %44
  %50 = load %struct.ntc_thermistor_platform_data*, %struct.ntc_thermistor_platform_data** %7, align 8
  %51 = getelementptr inbounds %struct.ntc_thermistor_platform_data, %struct.ntc_thermistor_platform_data* %50, i32 0, i32 5
  %52 = load i64, i64* %51, align 8
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %60, label %54

54:                                               ; preds = %49
  %55 = load %struct.device*, %struct.device** %4, align 8
  %56 = bitcast %struct.device* %55 to %struct.ntc_thermistor_platform_data*
  %57 = call i32 (%struct.ntc_thermistor_platform_data*, i8*, ...) @dev_err(%struct.ntc_thermistor_platform_data* %56, i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.1, i64 0, i64 0))
  %58 = load i32, i32* @EINVAL, align 4
  %59 = sub nsw i32 0, %58
  store i32 %59, i32* %2, align 4
  br label %214

60:                                               ; preds = %49, %44
  %61 = load %struct.ntc_thermistor_platform_data*, %struct.ntc_thermistor_platform_data** %7, align 8
  %62 = getelementptr inbounds %struct.ntc_thermistor_platform_data, %struct.ntc_thermistor_platform_data* %61, i32 0, i32 4
  %63 = load i32*, i32** %62, align 8
  %64 = icmp ne i32* %63, null
  br i1 %64, label %65, label %76

65:                                               ; preds = %60
  %66 = load %struct.ntc_thermistor_platform_data*, %struct.ntc_thermistor_platform_data** %7, align 8
  %67 = getelementptr inbounds %struct.ntc_thermistor_platform_data, %struct.ntc_thermistor_platform_data* %66, i32 0, i32 5
  %68 = load i64, i64* %67, align 8
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %76

70:                                               ; preds = %65
  %71 = load %struct.device*, %struct.device** %4, align 8
  %72 = bitcast %struct.device* %71 to %struct.ntc_thermistor_platform_data*
  %73 = call i32 @dev_warn(%struct.ntc_thermistor_platform_data* %72, i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.2, i64 0, i64 0))
  %74 = load %struct.ntc_thermistor_platform_data*, %struct.ntc_thermistor_platform_data** %7, align 8
  %75 = getelementptr inbounds %struct.ntc_thermistor_platform_data, %struct.ntc_thermistor_platform_data* %74, i32 0, i32 4
  store i32* null, i32** %75, align 8
  br label %76

76:                                               ; preds = %70, %65, %60
  %77 = load %struct.ntc_thermistor_platform_data*, %struct.ntc_thermistor_platform_data** %7, align 8
  %78 = getelementptr inbounds %struct.ntc_thermistor_platform_data, %struct.ntc_thermistor_platform_data* %77, i32 0, i32 4
  %79 = load i32*, i32** %78, align 8
  %80 = icmp ne i32* %79, null
  br i1 %80, label %81, label %126

81:                                               ; preds = %76
  %82 = load %struct.ntc_thermistor_platform_data*, %struct.ntc_thermistor_platform_data** %7, align 8
  %83 = getelementptr inbounds %struct.ntc_thermistor_platform_data, %struct.ntc_thermistor_platform_data* %82, i32 0, i32 0
  %84 = load i64, i64* %83, align 8
  %85 = icmp eq i64 %84, 0
  br i1 %85, label %120, label %86

86:                                               ; preds = %81
  %87 = load %struct.ntc_thermistor_platform_data*, %struct.ntc_thermistor_platform_data** %7, align 8
  %88 = getelementptr inbounds %struct.ntc_thermistor_platform_data, %struct.ntc_thermistor_platform_data* %87, i32 0, i32 1
  %89 = load i64, i64* %88, align 8
  %90 = icmp eq i64 %89, 0
  br i1 %90, label %91, label %97

91:                                               ; preds = %86
  %92 = load %struct.ntc_thermistor_platform_data*, %struct.ntc_thermistor_platform_data** %7, align 8
  %93 = getelementptr inbounds %struct.ntc_thermistor_platform_data, %struct.ntc_thermistor_platform_data* %92, i32 0, i32 2
  %94 = load i64, i64* %93, align 8
  %95 = load i64, i64* @NTC_CONNECTED_GROUND, align 8
  %96 = icmp eq i64 %94, %95
  br i1 %96, label %120, label %97

97:                                               ; preds = %91, %86
  %98 = load %struct.ntc_thermistor_platform_data*, %struct.ntc_thermistor_platform_data** %7, align 8
  %99 = getelementptr inbounds %struct.ntc_thermistor_platform_data, %struct.ntc_thermistor_platform_data* %98, i32 0, i32 3
  %100 = load i64, i64* %99, align 8
  %101 = icmp eq i64 %100, 0
  br i1 %101, label %102, label %108

102:                                              ; preds = %97
  %103 = load %struct.ntc_thermistor_platform_data*, %struct.ntc_thermistor_platform_data** %7, align 8
  %104 = getelementptr inbounds %struct.ntc_thermistor_platform_data, %struct.ntc_thermistor_platform_data* %103, i32 0, i32 2
  %105 = load i64, i64* %104, align 8
  %106 = load i64, i64* @NTC_CONNECTED_POSITIVE, align 8
  %107 = icmp eq i64 %105, %106
  br i1 %107, label %120, label %108

108:                                              ; preds = %102, %97
  %109 = load %struct.ntc_thermistor_platform_data*, %struct.ntc_thermistor_platform_data** %7, align 8
  %110 = getelementptr inbounds %struct.ntc_thermistor_platform_data, %struct.ntc_thermistor_platform_data* %109, i32 0, i32 2
  %111 = load i64, i64* %110, align 8
  %112 = load i64, i64* @NTC_CONNECTED_POSITIVE, align 8
  %113 = icmp ne i64 %111, %112
  br i1 %113, label %114, label %126

114:                                              ; preds = %108
  %115 = load %struct.ntc_thermistor_platform_data*, %struct.ntc_thermistor_platform_data** %7, align 8
  %116 = getelementptr inbounds %struct.ntc_thermistor_platform_data, %struct.ntc_thermistor_platform_data* %115, i32 0, i32 2
  %117 = load i64, i64* %116, align 8
  %118 = load i64, i64* @NTC_CONNECTED_GROUND, align 8
  %119 = icmp ne i64 %117, %118
  br i1 %119, label %120, label %126

120:                                              ; preds = %114, %102, %91, %81
  %121 = load %struct.device*, %struct.device** %4, align 8
  %122 = bitcast %struct.device* %121 to %struct.ntc_thermistor_platform_data*
  %123 = call i32 (%struct.ntc_thermistor_platform_data*, i8*, ...) @dev_err(%struct.ntc_thermistor_platform_data* %122, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.3, i64 0, i64 0))
  %124 = load i32, i32* @EINVAL, align 4
  %125 = sub nsw i32 0, %124
  store i32 %125, i32* %2, align 4
  br label %214

126:                                              ; preds = %114, %108, %76
  %127 = load %struct.device*, %struct.device** %4, align 8
  %128 = bitcast %struct.device* %127 to %struct.ntc_thermistor_platform_data*
  %129 = load i32, i32* @GFP_KERNEL, align 4
  %130 = call %struct.ntc_data* @devm_kzalloc(%struct.ntc_thermistor_platform_data* %128, i32 16, i32 %129)
  store %struct.ntc_data* %130, %struct.ntc_data** %9, align 8
  %131 = load %struct.ntc_data*, %struct.ntc_data** %9, align 8
  %132 = icmp ne %struct.ntc_data* %131, null
  br i1 %132, label %136, label %133

133:                                              ; preds = %126
  %134 = load i32, i32* @ENOMEM, align 4
  %135 = sub nsw i32 0, %134
  store i32 %135, i32* %2, align 4
  br label %214

136:                                              ; preds = %126
  %137 = load %struct.of_device_id*, %struct.of_device_id** %5, align 8
  %138 = icmp ne %struct.of_device_id* %137, null
  br i1 %138, label %139, label %143

139:                                              ; preds = %136
  %140 = load %struct.of_device_id*, %struct.of_device_id** %5, align 8
  %141 = getelementptr inbounds %struct.of_device_id, %struct.of_device_id* %140, i32 0, i32 0
  %142 = load %struct.platform_device_id*, %struct.platform_device_id** %141, align 8
  br label %146

143:                                              ; preds = %136
  %144 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %145 = call %struct.platform_device_id* @platform_get_device_id(%struct.platform_device* %144)
  br label %146

146:                                              ; preds = %143, %139
  %147 = phi %struct.platform_device_id* [ %142, %139 ], [ %145, %143 ]
  store %struct.platform_device_id* %147, %struct.platform_device_id** %6, align 8
  %148 = load %struct.ntc_thermistor_platform_data*, %struct.ntc_thermistor_platform_data** %7, align 8
  %149 = load %struct.ntc_data*, %struct.ntc_data** %9, align 8
  %150 = getelementptr inbounds %struct.ntc_data, %struct.ntc_data* %149, i32 0, i32 2
  store %struct.ntc_thermistor_platform_data* %148, %struct.ntc_thermistor_platform_data** %150, align 8
  %151 = load %struct.platform_device_id*, %struct.platform_device_id** %6, align 8
  %152 = getelementptr inbounds %struct.platform_device_id, %struct.platform_device_id* %151, i32 0, i32 0
  %153 = load i64, i64* %152, align 8
  %154 = load %struct.TYPE_3__*, %struct.TYPE_3__** @ntc_type, align 8
  %155 = call i64 @ARRAY_SIZE(%struct.TYPE_3__* %154)
  %156 = icmp uge i64 %153, %155
  br i1 %156, label %157, label %169

157:                                              ; preds = %146
  %158 = load %struct.device*, %struct.device** %4, align 8
  %159 = bitcast %struct.device* %158 to %struct.ntc_thermistor_platform_data*
  %160 = load %struct.platform_device_id*, %struct.platform_device_id** %6, align 8
  %161 = getelementptr inbounds %struct.platform_device_id, %struct.platform_device_id* %160, i32 0, i32 0
  %162 = load i64, i64* %161, align 8
  %163 = load %struct.platform_device_id*, %struct.platform_device_id** %6, align 8
  %164 = getelementptr inbounds %struct.platform_device_id, %struct.platform_device_id* %163, i32 0, i32 1
  %165 = load i32, i32* %164, align 8
  %166 = call i32 (%struct.ntc_thermistor_platform_data*, i8*, ...) @dev_err(%struct.ntc_thermistor_platform_data* %159, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.4, i64 0, i64 0), i64 %162, i32 %165)
  %167 = load i32, i32* @EINVAL, align 4
  %168 = sub nsw i32 0, %167
  store i32 %168, i32* %2, align 4
  br label %214

169:                                              ; preds = %146
  %170 = load %struct.TYPE_3__*, %struct.TYPE_3__** @ntc_type, align 8
  %171 = load %struct.platform_device_id*, %struct.platform_device_id** %6, align 8
  %172 = getelementptr inbounds %struct.platform_device_id, %struct.platform_device_id* %171, i32 0, i32 0
  %173 = load i64, i64* %172, align 8
  %174 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %170, i64 %173
  %175 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %174, i32 0, i32 1
  %176 = load i32, i32* %175, align 4
  %177 = load %struct.ntc_data*, %struct.ntc_data** %9, align 8
  %178 = getelementptr inbounds %struct.ntc_data, %struct.ntc_data* %177, i32 0, i32 1
  store i32 %176, i32* %178, align 4
  %179 = load %struct.TYPE_3__*, %struct.TYPE_3__** @ntc_type, align 8
  %180 = load %struct.platform_device_id*, %struct.platform_device_id** %6, align 8
  %181 = getelementptr inbounds %struct.platform_device_id, %struct.platform_device_id* %180, i32 0, i32 0
  %182 = load i64, i64* %181, align 8
  %183 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %179, i64 %182
  %184 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %183, i32 0, i32 0
  %185 = load i32, i32* %184, align 4
  %186 = load %struct.ntc_data*, %struct.ntc_data** %9, align 8
  %187 = getelementptr inbounds %struct.ntc_data, %struct.ntc_data* %186, i32 0, i32 0
  store i32 %185, i32* %187, align 8
  %188 = load %struct.device*, %struct.device** %4, align 8
  %189 = bitcast %struct.device* %188 to %struct.ntc_thermistor_platform_data*
  %190 = load %struct.platform_device_id*, %struct.platform_device_id** %6, align 8
  %191 = getelementptr inbounds %struct.platform_device_id, %struct.platform_device_id* %190, i32 0, i32 1
  %192 = load i32, i32* %191, align 8
  %193 = load %struct.ntc_data*, %struct.ntc_data** %9, align 8
  %194 = call %struct.ntc_thermistor_platform_data* @devm_hwmon_device_register_with_info(%struct.ntc_thermistor_platform_data* %189, i32 %192, %struct.ntc_data* %193, i32* @ntc_chip_info, i32* null)
  %195 = bitcast %struct.ntc_thermistor_platform_data* %194 to %struct.device*
  store %struct.device* %195, %struct.device** %8, align 8
  %196 = load %struct.device*, %struct.device** %8, align 8
  %197 = bitcast %struct.device* %196 to %struct.ntc_thermistor_platform_data*
  %198 = call i64 @IS_ERR(%struct.ntc_thermistor_platform_data* %197)
  %199 = icmp ne i64 %198, 0
  br i1 %199, label %200, label %207

200:                                              ; preds = %169
  %201 = load %struct.device*, %struct.device** %4, align 8
  %202 = bitcast %struct.device* %201 to %struct.ntc_thermistor_platform_data*
  %203 = call i32 (%struct.ntc_thermistor_platform_data*, i8*, ...) @dev_err(%struct.ntc_thermistor_platform_data* %202, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.5, i64 0, i64 0))
  %204 = load %struct.device*, %struct.device** %8, align 8
  %205 = bitcast %struct.device* %204 to %struct.ntc_thermistor_platform_data*
  %206 = call i32 @PTR_ERR(%struct.ntc_thermistor_platform_data* %205)
  store i32 %206, i32* %2, align 4
  br label %214

207:                                              ; preds = %169
  %208 = load %struct.device*, %struct.device** %4, align 8
  %209 = bitcast %struct.device* %208 to %struct.ntc_thermistor_platform_data*
  %210 = load %struct.platform_device_id*, %struct.platform_device_id** %6, align 8
  %211 = getelementptr inbounds %struct.platform_device_id, %struct.platform_device_id* %210, i32 0, i32 1
  %212 = load i32, i32* %211, align 8
  %213 = call i32 @dev_info(%struct.ntc_thermistor_platform_data* %209, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.6, i64 0, i64 0), i32 %212)
  store i32 0, i32* %2, align 4
  br label %214

214:                                              ; preds = %207, %200, %157, %133, %120, %54, %38, %24
  %215 = load i32, i32* %2, align 4
  ret i32 %215
}

declare dso_local %struct.of_device_id* @of_match_device(i32, %struct.ntc_thermistor_platform_data*) #1

declare dso_local i32 @of_match_ptr(i32) #1

declare dso_local %struct.ntc_thermistor_platform_data* @ntc_thermistor_parse_dt(%struct.ntc_thermistor_platform_data*) #1

declare dso_local i64 @IS_ERR(%struct.ntc_thermistor_platform_data*) #1

declare dso_local i32 @PTR_ERR(%struct.ntc_thermistor_platform_data*) #1

declare dso_local %struct.ntc_thermistor_platform_data* @dev_get_platdata(%struct.ntc_thermistor_platform_data*) #1

declare dso_local i32 @dev_err(%struct.ntc_thermistor_platform_data*, i8*, ...) #1

declare dso_local i32 @dev_warn(%struct.ntc_thermistor_platform_data*, i8*) #1

declare dso_local %struct.ntc_data* @devm_kzalloc(%struct.ntc_thermistor_platform_data*, i32, i32) #1

declare dso_local %struct.platform_device_id* @platform_get_device_id(%struct.platform_device*) #1

declare dso_local i64 @ARRAY_SIZE(%struct.TYPE_3__*) #1

declare dso_local %struct.ntc_thermistor_platform_data* @devm_hwmon_device_register_with_info(%struct.ntc_thermistor_platform_data*, i32, %struct.ntc_data*, i32*, i32*) #1

declare dso_local i32 @dev_info(%struct.ntc_thermistor_platform_data*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
