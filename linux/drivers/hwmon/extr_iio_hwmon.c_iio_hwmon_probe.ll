; ModuleID = '/home/carl/AnghaBench/linux/drivers/hwmon/extr_iio_hwmon.c_iio_hwmon_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hwmon/extr_iio_hwmon.c_iio_hwmon_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.device }
%struct.device = type { i32 }
%struct.iio_hwmon_state = type { i64, %struct.TYPE_7__**, %struct.TYPE_7__, %struct.TYPE_6__**, %struct.iio_channel* }
%struct.TYPE_7__ = type { %struct.TYPE_6__** }
%struct.TYPE_6__ = type { i32, i32* }
%struct.iio_channel = type { i64 }
%struct.sensor_device_attribute = type { i32, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.TYPE_6__, i32 }

@ENODEV = common dso_local global i32 0, align 4
@EPROBE_DEFER = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c"in\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"temp\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"curr\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"power\00", align 1
@.str.4 = private unnamed_addr constant [9 x i8] c"humidity\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [11 x i8] c"%s%d_input\00", align 1
@iio_hwmon_read_val = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [6 x i8] c"%pOFn\00", align 1
@.str.7 = private unnamed_addr constant [10 x i8] c"iio_hwmon\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @iio_hwmon_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @iio_hwmon_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.iio_hwmon_state*, align 8
  %6 = alloca %struct.sensor_device_attribute*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca %struct.iio_channel*, align 8
  %16 = alloca %struct.device*, align 8
  %17 = alloca i8*, align 8
  %18 = alloca i8*, align 8
  %19 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %20 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %21 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %20, i32 0, i32 0
  store %struct.device* %21, %struct.device** %4, align 8
  store i32 1, i32* %9, align 4
  store i32 1, i32* %10, align 4
  store i32 1, i32* %11, align 4
  store i32 1, i32* %12, align 4
  store i32 1, i32* %13, align 4
  %22 = load %struct.device*, %struct.device** %4, align 8
  %23 = call %struct.iio_channel* @devm_iio_channel_get_all(%struct.device* %22)
  store %struct.iio_channel* %23, %struct.iio_channel** %15, align 8
  %24 = load %struct.iio_channel*, %struct.iio_channel** %15, align 8
  %25 = call i64 @IS_ERR(%struct.iio_channel* %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %39

27:                                               ; preds = %1
  %28 = load %struct.iio_channel*, %struct.iio_channel** %15, align 8
  %29 = call i32 @PTR_ERR(%struct.iio_channel* %28)
  %30 = load i32, i32* @ENODEV, align 4
  %31 = sub nsw i32 0, %30
  %32 = icmp eq i32 %29, %31
  br i1 %32, label %33, label %36

33:                                               ; preds = %27
  %34 = load i32, i32* @EPROBE_DEFER, align 4
  %35 = sub nsw i32 0, %34
  store i32 %35, i32* %2, align 4
  br label %230

36:                                               ; preds = %27
  %37 = load %struct.iio_channel*, %struct.iio_channel** %15, align 8
  %38 = call i32 @PTR_ERR(%struct.iio_channel* %37)
  store i32 %38, i32* %2, align 4
  br label %230

39:                                               ; preds = %1
  %40 = load %struct.device*, %struct.device** %4, align 8
  %41 = load i32, i32* @GFP_KERNEL, align 4
  %42 = call i8* @devm_kzalloc(%struct.device* %40, i32 40, i32 %41)
  %43 = bitcast i8* %42 to %struct.iio_hwmon_state*
  store %struct.iio_hwmon_state* %43, %struct.iio_hwmon_state** %5, align 8
  %44 = load %struct.iio_hwmon_state*, %struct.iio_hwmon_state** %5, align 8
  %45 = icmp eq %struct.iio_hwmon_state* %44, null
  br i1 %45, label %46, label %49

46:                                               ; preds = %39
  %47 = load i32, i32* @ENOMEM, align 4
  %48 = sub nsw i32 0, %47
  store i32 %48, i32* %2, align 4
  br label %230

49:                                               ; preds = %39
  %50 = load %struct.iio_channel*, %struct.iio_channel** %15, align 8
  %51 = load %struct.iio_hwmon_state*, %struct.iio_hwmon_state** %5, align 8
  %52 = getelementptr inbounds %struct.iio_hwmon_state, %struct.iio_hwmon_state* %51, i32 0, i32 4
  store %struct.iio_channel* %50, %struct.iio_channel** %52, align 8
  br label %53

53:                                               ; preds = %64, %49
  %54 = load %struct.iio_hwmon_state*, %struct.iio_hwmon_state** %5, align 8
  %55 = getelementptr inbounds %struct.iio_hwmon_state, %struct.iio_hwmon_state* %54, i32 0, i32 4
  %56 = load %struct.iio_channel*, %struct.iio_channel** %55, align 8
  %57 = load %struct.iio_hwmon_state*, %struct.iio_hwmon_state** %5, align 8
  %58 = getelementptr inbounds %struct.iio_hwmon_state, %struct.iio_hwmon_state* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = getelementptr inbounds %struct.iio_channel, %struct.iio_channel* %56, i64 %59
  %61 = getelementptr inbounds %struct.iio_channel, %struct.iio_channel* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %69

64:                                               ; preds = %53
  %65 = load %struct.iio_hwmon_state*, %struct.iio_hwmon_state** %5, align 8
  %66 = getelementptr inbounds %struct.iio_hwmon_state, %struct.iio_hwmon_state* %65, i32 0, i32 0
  %67 = load i64, i64* %66, align 8
  %68 = add i64 %67, 1
  store i64 %68, i64* %66, align 8
  br label %53

69:                                               ; preds = %53
  %70 = load %struct.device*, %struct.device** %4, align 8
  %71 = load %struct.iio_hwmon_state*, %struct.iio_hwmon_state** %5, align 8
  %72 = getelementptr inbounds %struct.iio_hwmon_state, %struct.iio_hwmon_state* %71, i32 0, i32 0
  %73 = load i64, i64* %72, align 8
  %74 = add i64 %73, 1
  %75 = trunc i64 %74 to i32
  %76 = load i32, i32* @GFP_KERNEL, align 4
  %77 = call %struct.TYPE_6__** @devm_kcalloc(%struct.device* %70, i32 %75, i32 8, i32 %76)
  %78 = load %struct.iio_hwmon_state*, %struct.iio_hwmon_state** %5, align 8
  %79 = getelementptr inbounds %struct.iio_hwmon_state, %struct.iio_hwmon_state* %78, i32 0, i32 3
  store %struct.TYPE_6__** %77, %struct.TYPE_6__*** %79, align 8
  %80 = load %struct.iio_hwmon_state*, %struct.iio_hwmon_state** %5, align 8
  %81 = getelementptr inbounds %struct.iio_hwmon_state, %struct.iio_hwmon_state* %80, i32 0, i32 3
  %82 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %81, align 8
  %83 = icmp eq %struct.TYPE_6__** %82, null
  br i1 %83, label %84, label %87

84:                                               ; preds = %69
  %85 = load i32, i32* @ENOMEM, align 4
  %86 = sub nsw i32 0, %85
  store i32 %86, i32* %2, align 4
  br label %230

87:                                               ; preds = %69
  store i32 0, i32* %8, align 4
  br label %88

88:                                               ; preds = %182, %87
  %89 = load i32, i32* %8, align 4
  %90 = sext i32 %89 to i64
  %91 = load %struct.iio_hwmon_state*, %struct.iio_hwmon_state** %5, align 8
  %92 = getelementptr inbounds %struct.iio_hwmon_state, %struct.iio_hwmon_state* %91, i32 0, i32 0
  %93 = load i64, i64* %92, align 8
  %94 = icmp ult i64 %90, %93
  br i1 %94, label %95, label %185

95:                                               ; preds = %88
  %96 = load %struct.device*, %struct.device** %4, align 8
  %97 = load i32, i32* @GFP_KERNEL, align 4
  %98 = call i8* @devm_kzalloc(%struct.device* %96, i32 32, i32 %97)
  %99 = bitcast i8* %98 to %struct.sensor_device_attribute*
  store %struct.sensor_device_attribute* %99, %struct.sensor_device_attribute** %6, align 8
  %100 = load %struct.sensor_device_attribute*, %struct.sensor_device_attribute** %6, align 8
  %101 = icmp eq %struct.sensor_device_attribute* %100, null
  br i1 %101, label %102, label %105

102:                                              ; preds = %95
  %103 = load i32, i32* @ENOMEM, align 4
  %104 = sub nsw i32 0, %103
  store i32 %104, i32* %2, align 4
  br label %230

105:                                              ; preds = %95
  %106 = load %struct.sensor_device_attribute*, %struct.sensor_device_attribute** %6, align 8
  %107 = getelementptr inbounds %struct.sensor_device_attribute, %struct.sensor_device_attribute* %106, i32 0, i32 1
  %108 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %107, i32 0, i32 0
  %109 = call i32 @sysfs_attr_init(%struct.TYPE_6__* %108)
  %110 = load %struct.iio_hwmon_state*, %struct.iio_hwmon_state** %5, align 8
  %111 = getelementptr inbounds %struct.iio_hwmon_state, %struct.iio_hwmon_state* %110, i32 0, i32 4
  %112 = load %struct.iio_channel*, %struct.iio_channel** %111, align 8
  %113 = load i32, i32* %8, align 4
  %114 = sext i32 %113 to i64
  %115 = getelementptr inbounds %struct.iio_channel, %struct.iio_channel* %112, i64 %114
  %116 = call i32 @iio_get_channel_type(%struct.iio_channel* %115, i32* %14)
  store i32 %116, i32* %7, align 4
  %117 = load i32, i32* %7, align 4
  %118 = icmp slt i32 %117, 0
  br i1 %118, label %119, label %121

119:                                              ; preds = %105
  %120 = load i32, i32* %7, align 4
  store i32 %120, i32* %2, align 4
  br label %230

121:                                              ; preds = %105
  %122 = load i32, i32* %14, align 4
  switch i32 %122, label %138 [
    i32 128, label %123
    i32 129, label %126
    i32 132, label %129
    i32 130, label %132
    i32 131, label %135
  ]

123:                                              ; preds = %121
  %124 = load i32, i32* %9, align 4
  %125 = add nsw i32 %124, 1
  store i32 %125, i32* %9, align 4
  store i32 %124, i32* %19, align 4
  store i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i8** %18, align 8
  br label %141

126:                                              ; preds = %121
  %127 = load i32, i32* %10, align 4
  %128 = add nsw i32 %127, 1
  store i32 %128, i32* %10, align 4
  store i32 %127, i32* %19, align 4
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i8** %18, align 8
  br label %141

129:                                              ; preds = %121
  %130 = load i32, i32* %11, align 4
  %131 = add nsw i32 %130, 1
  store i32 %131, i32* %11, align 4
  store i32 %130, i32* %19, align 4
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i8** %18, align 8
  br label %141

132:                                              ; preds = %121
  %133 = load i32, i32* %13, align 4
  %134 = add nsw i32 %133, 1
  store i32 %134, i32* %13, align 4
  store i32 %133, i32* %19, align 4
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0), i8** %18, align 8
  br label %141

135:                                              ; preds = %121
  %136 = load i32, i32* %12, align 4
  %137 = add nsw i32 %136, 1
  store i32 %137, i32* %12, align 4
  store i32 %136, i32* %19, align 4
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i64 0, i64 0), i8** %18, align 8
  br label %141

138:                                              ; preds = %121
  %139 = load i32, i32* @EINVAL, align 4
  %140 = sub nsw i32 0, %139
  store i32 %140, i32* %2, align 4
  br label %230

141:                                              ; preds = %135, %132, %129, %126, %123
  %142 = load %struct.device*, %struct.device** %4, align 8
  %143 = load i32, i32* @GFP_KERNEL, align 4
  %144 = load i8*, i8** %18, align 8
  %145 = load i32, i32* %19, align 4
  %146 = call i8* (%struct.device*, i32, i8*, i8*, ...) @devm_kasprintf(%struct.device* %142, i32 %143, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.5, i64 0, i64 0), i8* %144, i32 %145)
  %147 = bitcast i8* %146 to i32*
  %148 = load %struct.sensor_device_attribute*, %struct.sensor_device_attribute** %6, align 8
  %149 = getelementptr inbounds %struct.sensor_device_attribute, %struct.sensor_device_attribute* %148, i32 0, i32 1
  %150 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %149, i32 0, i32 0
  %151 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %150, i32 0, i32 1
  store i32* %147, i32** %151, align 8
  %152 = load %struct.sensor_device_attribute*, %struct.sensor_device_attribute** %6, align 8
  %153 = getelementptr inbounds %struct.sensor_device_attribute, %struct.sensor_device_attribute* %152, i32 0, i32 1
  %154 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %153, i32 0, i32 0
  %155 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %154, i32 0, i32 1
  %156 = load i32*, i32** %155, align 8
  %157 = icmp eq i32* %156, null
  br i1 %157, label %158, label %161

158:                                              ; preds = %141
  %159 = load i32, i32* @ENOMEM, align 4
  %160 = sub nsw i32 0, %159
  store i32 %160, i32* %2, align 4
  br label %230

161:                                              ; preds = %141
  %162 = load i32, i32* @iio_hwmon_read_val, align 4
  %163 = load %struct.sensor_device_attribute*, %struct.sensor_device_attribute** %6, align 8
  %164 = getelementptr inbounds %struct.sensor_device_attribute, %struct.sensor_device_attribute* %163, i32 0, i32 1
  %165 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %164, i32 0, i32 1
  store i32 %162, i32* %165, align 8
  %166 = load %struct.sensor_device_attribute*, %struct.sensor_device_attribute** %6, align 8
  %167 = getelementptr inbounds %struct.sensor_device_attribute, %struct.sensor_device_attribute* %166, i32 0, i32 1
  %168 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %167, i32 0, i32 0
  %169 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %168, i32 0, i32 0
  store i32 292, i32* %169, align 8
  %170 = load i32, i32* %8, align 4
  %171 = load %struct.sensor_device_attribute*, %struct.sensor_device_attribute** %6, align 8
  %172 = getelementptr inbounds %struct.sensor_device_attribute, %struct.sensor_device_attribute* %171, i32 0, i32 0
  store i32 %170, i32* %172, align 8
  %173 = load %struct.sensor_device_attribute*, %struct.sensor_device_attribute** %6, align 8
  %174 = getelementptr inbounds %struct.sensor_device_attribute, %struct.sensor_device_attribute* %173, i32 0, i32 1
  %175 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %174, i32 0, i32 0
  %176 = load %struct.iio_hwmon_state*, %struct.iio_hwmon_state** %5, align 8
  %177 = getelementptr inbounds %struct.iio_hwmon_state, %struct.iio_hwmon_state* %176, i32 0, i32 3
  %178 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %177, align 8
  %179 = load i32, i32* %8, align 4
  %180 = sext i32 %179 to i64
  %181 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %178, i64 %180
  store %struct.TYPE_6__* %175, %struct.TYPE_6__** %181, align 8
  br label %182

182:                                              ; preds = %161
  %183 = load i32, i32* %8, align 4
  %184 = add nsw i32 %183, 1
  store i32 %184, i32* %8, align 4
  br label %88

185:                                              ; preds = %88
  %186 = load %struct.iio_hwmon_state*, %struct.iio_hwmon_state** %5, align 8
  %187 = getelementptr inbounds %struct.iio_hwmon_state, %struct.iio_hwmon_state* %186, i32 0, i32 3
  %188 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %187, align 8
  %189 = load %struct.iio_hwmon_state*, %struct.iio_hwmon_state** %5, align 8
  %190 = getelementptr inbounds %struct.iio_hwmon_state, %struct.iio_hwmon_state* %189, i32 0, i32 2
  %191 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %190, i32 0, i32 0
  store %struct.TYPE_6__** %188, %struct.TYPE_6__*** %191, align 8
  %192 = load %struct.iio_hwmon_state*, %struct.iio_hwmon_state** %5, align 8
  %193 = getelementptr inbounds %struct.iio_hwmon_state, %struct.iio_hwmon_state* %192, i32 0, i32 2
  %194 = load %struct.iio_hwmon_state*, %struct.iio_hwmon_state** %5, align 8
  %195 = getelementptr inbounds %struct.iio_hwmon_state, %struct.iio_hwmon_state* %194, i32 0, i32 1
  %196 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %195, align 8
  %197 = getelementptr inbounds %struct.TYPE_7__*, %struct.TYPE_7__** %196, i64 0
  store %struct.TYPE_7__* %193, %struct.TYPE_7__** %197, align 8
  %198 = load %struct.device*, %struct.device** %4, align 8
  %199 = getelementptr inbounds %struct.device, %struct.device* %198, i32 0, i32 0
  %200 = load i32, i32* %199, align 4
  %201 = icmp ne i32 %200, 0
  br i1 %201, label %202, label %219

202:                                              ; preds = %185
  %203 = load %struct.device*, %struct.device** %4, align 8
  %204 = load i32, i32* @GFP_KERNEL, align 4
  %205 = load %struct.device*, %struct.device** %4, align 8
  %206 = getelementptr inbounds %struct.device, %struct.device* %205, i32 0, i32 0
  %207 = load i32, i32* %206, align 4
  %208 = sext i32 %207 to i64
  %209 = inttoptr i64 %208 to i8*
  %210 = call i8* (%struct.device*, i32, i8*, i8*, ...) @devm_kasprintf(%struct.device* %203, i32 %204, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0), i8* %209)
  store i8* %210, i8** %17, align 8
  %211 = load i8*, i8** %17, align 8
  %212 = icmp ne i8* %211, null
  br i1 %212, label %216, label %213

213:                                              ; preds = %202
  %214 = load i32, i32* @ENOMEM, align 4
  %215 = sub nsw i32 0, %214
  store i32 %215, i32* %2, align 4
  br label %230

216:                                              ; preds = %202
  %217 = load i8*, i8** %17, align 8
  %218 = call i32 @strreplace(i8* %217, i8 signext 45, i8 signext 95)
  br label %220

219:                                              ; preds = %185
  store i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.7, i64 0, i64 0), i8** %17, align 8
  br label %220

220:                                              ; preds = %219, %216
  %221 = load %struct.device*, %struct.device** %4, align 8
  %222 = load i8*, i8** %17, align 8
  %223 = load %struct.iio_hwmon_state*, %struct.iio_hwmon_state** %5, align 8
  %224 = load %struct.iio_hwmon_state*, %struct.iio_hwmon_state** %5, align 8
  %225 = getelementptr inbounds %struct.iio_hwmon_state, %struct.iio_hwmon_state* %224, i32 0, i32 1
  %226 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %225, align 8
  %227 = call %struct.device* @devm_hwmon_device_register_with_groups(%struct.device* %221, i8* %222, %struct.iio_hwmon_state* %223, %struct.TYPE_7__** %226)
  store %struct.device* %227, %struct.device** %16, align 8
  %228 = load %struct.device*, %struct.device** %16, align 8
  %229 = call i32 @PTR_ERR_OR_ZERO(%struct.device* %228)
  store i32 %229, i32* %2, align 4
  br label %230

230:                                              ; preds = %220, %213, %158, %138, %119, %102, %84, %46, %36, %33
  %231 = load i32, i32* %2, align 4
  ret i32 %231
}

declare dso_local %struct.iio_channel* @devm_iio_channel_get_all(%struct.device*) #1

declare dso_local i64 @IS_ERR(%struct.iio_channel*) #1

declare dso_local i32 @PTR_ERR(%struct.iio_channel*) #1

declare dso_local i8* @devm_kzalloc(%struct.device*, i32, i32) #1

declare dso_local %struct.TYPE_6__** @devm_kcalloc(%struct.device*, i32, i32, i32) #1

declare dso_local i32 @sysfs_attr_init(%struct.TYPE_6__*) #1

declare dso_local i32 @iio_get_channel_type(%struct.iio_channel*, i32*) #1

declare dso_local i8* @devm_kasprintf(%struct.device*, i32, i8*, i8*, ...) #1

declare dso_local i32 @strreplace(i8*, i8 signext, i8 signext) #1

declare dso_local %struct.device* @devm_hwmon_device_register_with_groups(%struct.device*, i8*, %struct.iio_hwmon_state*, %struct.TYPE_7__**) #1

declare dso_local i32 @PTR_ERR_OR_ZERO(%struct.device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
