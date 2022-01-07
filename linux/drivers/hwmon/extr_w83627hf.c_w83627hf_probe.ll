; ModuleID = '/home/carl/AnghaBench/linux/drivers/hwmon/extr_w83627hf.c_w83627hf_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hwmon/extr_w83627hf.c_w83627hf_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_46__ = type { i32 }
%struct.TYPE_43__ = type { i32 }
%struct.TYPE_45__ = type { i32 }
%struct.TYPE_48__ = type { i32 }
%struct.TYPE_47__ = type { i32 }
%struct.TYPE_40__ = type { i32 }
%struct.TYPE_38__ = type { i32 }
%struct.TYPE_39__ = type { i32 }
%struct.TYPE_42__ = type { i32 }
%struct.TYPE_41__ = type { i32 }
%struct.TYPE_36__ = type { i32 }
%struct.TYPE_34__ = type { i32 }
%struct.TYPE_51__ = type { i32 }
%struct.TYPE_49__ = type { i32 }
%struct.TYPE_50__ = type { i32 }
%struct.TYPE_53__ = type { i32 }
%struct.TYPE_52__ = type { i32 }
%struct.TYPE_56__ = type { i32 }
%struct.TYPE_54__ = type { i32 }
%struct.TYPE_57__ = type { i32 }
%struct.TYPE_59__ = type { i32 }
%struct.TYPE_58__ = type { i32 }
%struct.TYPE_61__ = type { i32 }
%struct.TYPE_60__ = type { i32 }
%struct.TYPE_55__ = type { i32 }
%struct.TYPE_63__ = type { i32 }
%struct.TYPE_62__ = type { i32 }
%struct.TYPE_44__ = type { i32 }
%struct.TYPE_66__ = type { i32 }
%struct.TYPE_64__ = type { i32 }
%struct.TYPE_37__ = type { i32 }
%struct.TYPE_35__ = type { i32 }
%struct.TYPE_65__ = type { i32 }
%struct.platform_device = type { %struct.device }
%struct.device = type { i32 }
%struct.w83627hf_sio_data = type { i64 }
%struct.w83627hf_data = type { i32, i64, i8*, i32, i32, i32, i32*, i32, i32 }
%struct.resource = type { i32 }

@w83627hf_probe.names = internal global [5 x i8*] [i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.4, i32 0, i32 0)], align 16
@.str = private unnamed_addr constant [9 x i8] c"w83627hf\00", align 1
@.str.1 = private unnamed_addr constant [10 x i8] c"w83627thf\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"w83697hf\00", align 1
@.str.3 = private unnamed_addr constant [9 x i8] c"w83637hf\00", align 1
@.str.4 = private unnamed_addr constant [10 x i8] c"w83687thf\00", align 1
@IORESOURCE_IO = common dso_local global i32 0, align 4
@WINB_REGION_SIZE = common dso_local global i32 0, align 4
@DRVNAME = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [38 x i8] c"Failed to request region 0x%lx-0x%lx\0A\00", align 1
@EBUSY = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@w83627hf_group = common dso_local global i32 0, align 4
@w83627hf = common dso_local global i64 0, align 8
@w83697hf = common dso_local global i64 0, align 8
@sensor_dev_attr_in5_input = common dso_local global %struct.TYPE_46__ zeroinitializer, align 4
@sensor_dev_attr_in5_min = common dso_local global %struct.TYPE_43__ zeroinitializer, align 4
@sensor_dev_attr_in5_max = common dso_local global %struct.TYPE_45__ zeroinitializer, align 4
@sensor_dev_attr_in5_alarm = common dso_local global %struct.TYPE_48__ zeroinitializer, align 4
@sensor_dev_attr_in5_beep = common dso_local global %struct.TYPE_47__ zeroinitializer, align 4
@sensor_dev_attr_in6_input = common dso_local global %struct.TYPE_40__ zeroinitializer, align 4
@sensor_dev_attr_in6_min = common dso_local global %struct.TYPE_38__ zeroinitializer, align 4
@sensor_dev_attr_in6_max = common dso_local global %struct.TYPE_39__ zeroinitializer, align 4
@sensor_dev_attr_in6_alarm = common dso_local global %struct.TYPE_42__ zeroinitializer, align 4
@sensor_dev_attr_in6_beep = common dso_local global %struct.TYPE_41__ zeroinitializer, align 4
@sensor_dev_attr_pwm1_freq = common dso_local global %struct.TYPE_36__ zeroinitializer, align 4
@sensor_dev_attr_pwm2_freq = common dso_local global %struct.TYPE_34__ zeroinitializer, align 4
@sensor_dev_attr_in1_input = common dso_local global %struct.TYPE_51__ zeroinitializer, align 4
@sensor_dev_attr_in1_min = common dso_local global %struct.TYPE_49__ zeroinitializer, align 4
@sensor_dev_attr_in1_max = common dso_local global %struct.TYPE_50__ zeroinitializer, align 4
@sensor_dev_attr_in1_alarm = common dso_local global %struct.TYPE_53__ zeroinitializer, align 4
@sensor_dev_attr_in1_beep = common dso_local global %struct.TYPE_52__ zeroinitializer, align 4
@sensor_dev_attr_fan3_input = common dso_local global %struct.TYPE_56__ zeroinitializer, align 4
@sensor_dev_attr_fan3_min = common dso_local global %struct.TYPE_54__ zeroinitializer, align 4
@sensor_dev_attr_fan3_div = common dso_local global %struct.TYPE_57__ zeroinitializer, align 4
@sensor_dev_attr_fan3_alarm = common dso_local global %struct.TYPE_59__ zeroinitializer, align 4
@sensor_dev_attr_fan3_beep = common dso_local global %struct.TYPE_58__ zeroinitializer, align 4
@sensor_dev_attr_temp3_input = common dso_local global %struct.TYPE_61__ zeroinitializer, align 4
@sensor_dev_attr_temp3_max = common dso_local global %struct.TYPE_60__ zeroinitializer, align 4
@sensor_dev_attr_temp3_max_hyst = common dso_local global %struct.TYPE_55__ zeroinitializer, align 4
@sensor_dev_attr_temp3_alarm = common dso_local global %struct.TYPE_63__ zeroinitializer, align 4
@sensor_dev_attr_temp3_beep = common dso_local global %struct.TYPE_62__ zeroinitializer, align 4
@sensor_dev_attr_temp3_type = common dso_local global %struct.TYPE_44__ zeroinitializer, align 4
@dev_attr_cpu0_vid = common dso_local global i32 0, align 4
@dev_attr_vrm = common dso_local global i32 0, align 4
@w83627thf = common dso_local global i64 0, align 8
@w83637hf = common dso_local global i64 0, align 8
@w83687thf = common dso_local global i64 0, align 8
@sensor_dev_attr_pwm3 = common dso_local global %struct.TYPE_66__ zeroinitializer, align 4
@sensor_dev_attr_pwm3_freq = common dso_local global %struct.TYPE_64__ zeroinitializer, align 4
@sensor_dev_attr_pwm1_enable = common dso_local global %struct.TYPE_37__ zeroinitializer, align 4
@sensor_dev_attr_pwm2_enable = common dso_local global %struct.TYPE_35__ zeroinitializer, align 4
@sensor_dev_attr_pwm3_enable = common dso_local global %struct.TYPE_65__ zeroinitializer, align 4
@w83627hf_group_opt = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @w83627hf_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @w83627hf_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.w83627hf_sio_data*, align 8
  %6 = alloca %struct.w83627hf_data*, align 8
  %7 = alloca %struct.resource*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %10 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %11 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %10, i32 0, i32 0
  store %struct.device* %11, %struct.device** %4, align 8
  %12 = load %struct.device*, %struct.device** %4, align 8
  %13 = call %struct.w83627hf_sio_data* @dev_get_platdata(%struct.device* %12)
  store %struct.w83627hf_sio_data* %13, %struct.w83627hf_sio_data** %5, align 8
  %14 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %15 = load i32, i32* @IORESOURCE_IO, align 4
  %16 = call %struct.resource* @platform_get_resource(%struct.platform_device* %14, i32 %15, i32 0)
  store %struct.resource* %16, %struct.resource** %7, align 8
  %17 = load %struct.device*, %struct.device** %4, align 8
  %18 = load %struct.resource*, %struct.resource** %7, align 8
  %19 = getelementptr inbounds %struct.resource, %struct.resource* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = load i32, i32* @WINB_REGION_SIZE, align 4
  %22 = load i32, i32* @DRVNAME, align 4
  %23 = call i32 @devm_request_region(%struct.device* %17, i32 %20, i32 %21, i32 %22)
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %41, label %25

25:                                               ; preds = %1
  %26 = load %struct.device*, %struct.device** %4, align 8
  %27 = load %struct.resource*, %struct.resource** %7, align 8
  %28 = getelementptr inbounds %struct.resource, %struct.resource* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = sext i32 %29 to i64
  %31 = load %struct.resource*, %struct.resource** %7, align 8
  %32 = getelementptr inbounds %struct.resource, %struct.resource* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = load i32, i32* @WINB_REGION_SIZE, align 4
  %35 = add nsw i32 %33, %34
  %36 = sub nsw i32 %35, 1
  %37 = sext i32 %36 to i64
  %38 = call i32 @dev_err(%struct.device* %26, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.5, i64 0, i64 0), i64 %30, i64 %37)
  %39 = load i32, i32* @EBUSY, align 4
  %40 = sub nsw i32 0, %39
  store i32 %40, i32* %2, align 4
  br label %380

41:                                               ; preds = %1
  %42 = load %struct.device*, %struct.device** %4, align 8
  %43 = load i32, i32* @GFP_KERNEL, align 4
  %44 = call %struct.w83627hf_data* @devm_kzalloc(%struct.device* %42, i32 56, i32 %43)
  store %struct.w83627hf_data* %44, %struct.w83627hf_data** %6, align 8
  %45 = load %struct.w83627hf_data*, %struct.w83627hf_data** %6, align 8
  %46 = icmp ne %struct.w83627hf_data* %45, null
  br i1 %46, label %50, label %47

47:                                               ; preds = %41
  %48 = load i32, i32* @ENOMEM, align 4
  %49 = sub nsw i32 0, %48
  store i32 %49, i32* %2, align 4
  br label %380

50:                                               ; preds = %41
  %51 = load %struct.resource*, %struct.resource** %7, align 8
  %52 = getelementptr inbounds %struct.resource, %struct.resource* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = load %struct.w83627hf_data*, %struct.w83627hf_data** %6, align 8
  %55 = getelementptr inbounds %struct.w83627hf_data, %struct.w83627hf_data* %54, i32 0, i32 0
  store i32 %53, i32* %55, align 8
  %56 = load %struct.w83627hf_sio_data*, %struct.w83627hf_sio_data** %5, align 8
  %57 = getelementptr inbounds %struct.w83627hf_sio_data, %struct.w83627hf_sio_data* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = load %struct.w83627hf_data*, %struct.w83627hf_data** %6, align 8
  %60 = getelementptr inbounds %struct.w83627hf_data, %struct.w83627hf_data* %59, i32 0, i32 1
  store i64 %58, i64* %60, align 8
  %61 = load %struct.w83627hf_sio_data*, %struct.w83627hf_sio_data** %5, align 8
  %62 = getelementptr inbounds %struct.w83627hf_sio_data, %struct.w83627hf_sio_data* %61, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  %64 = getelementptr inbounds [5 x i8*], [5 x i8*]* @w83627hf_probe.names, i64 0, i64 %63
  %65 = load i8*, i8** %64, align 8
  %66 = load %struct.w83627hf_data*, %struct.w83627hf_data** %6, align 8
  %67 = getelementptr inbounds %struct.w83627hf_data, %struct.w83627hf_data* %66, i32 0, i32 2
  store i8* %65, i8** %67, align 8
  %68 = load %struct.w83627hf_data*, %struct.w83627hf_data** %6, align 8
  %69 = getelementptr inbounds %struct.w83627hf_data, %struct.w83627hf_data* %68, i32 0, i32 8
  %70 = call i32 @mutex_init(i32* %69)
  %71 = load %struct.w83627hf_data*, %struct.w83627hf_data** %6, align 8
  %72 = getelementptr inbounds %struct.w83627hf_data, %struct.w83627hf_data* %71, i32 0, i32 7
  %73 = call i32 @mutex_init(i32* %72)
  %74 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %75 = load %struct.w83627hf_data*, %struct.w83627hf_data** %6, align 8
  %76 = call i32 @platform_set_drvdata(%struct.platform_device* %74, %struct.w83627hf_data* %75)
  %77 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %78 = call i32 @w83627hf_init_device(%struct.platform_device* %77)
  store i32 0, i32* %9, align 4
  br label %79

79:                                               ; preds = %93, %50
  %80 = load i32, i32* %9, align 4
  %81 = icmp sle i32 %80, 2
  br i1 %81, label %82, label %96

82:                                               ; preds = %79
  %83 = load %struct.w83627hf_data*, %struct.w83627hf_data** %6, align 8
  %84 = load i32, i32* %9, align 4
  %85 = call i32 @W83627HF_REG_FAN_MIN(i32 %84)
  %86 = call i32 @w83627hf_read_value(%struct.w83627hf_data* %83, i32 %85)
  %87 = load %struct.w83627hf_data*, %struct.w83627hf_data** %6, align 8
  %88 = getelementptr inbounds %struct.w83627hf_data, %struct.w83627hf_data* %87, i32 0, i32 6
  %89 = load i32*, i32** %88, align 8
  %90 = load i32, i32* %9, align 4
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds i32, i32* %89, i64 %91
  store i32 %86, i32* %92, align 4
  br label %93

93:                                               ; preds = %82
  %94 = load i32, i32* %9, align 4
  %95 = add nsw i32 %94, 1
  store i32 %95, i32* %9, align 4
  br label %79

96:                                               ; preds = %79
  %97 = load %struct.w83627hf_data*, %struct.w83627hf_data** %6, align 8
  %98 = call i32 @w83627hf_update_fan_div(%struct.w83627hf_data* %97)
  %99 = load %struct.device*, %struct.device** %4, align 8
  %100 = getelementptr inbounds %struct.device, %struct.device* %99, i32 0, i32 0
  %101 = call i32 @sysfs_create_group(i32* %100, i32* @w83627hf_group)
  store i32 %101, i32* %8, align 4
  %102 = load i32, i32* %8, align 4
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %104, label %106

104:                                              ; preds = %96
  %105 = load i32, i32* %8, align 4
  store i32 %105, i32* %2, align 4
  br label %380

106:                                              ; preds = %96
  %107 = load %struct.w83627hf_data*, %struct.w83627hf_data** %6, align 8
  %108 = getelementptr inbounds %struct.w83627hf_data, %struct.w83627hf_data* %107, i32 0, i32 1
  %109 = load i64, i64* %108, align 8
  %110 = load i64, i64* @w83627hf, align 8
  %111 = icmp eq i64 %109, %110
  br i1 %111, label %118, label %112

112:                                              ; preds = %106
  %113 = load %struct.w83627hf_data*, %struct.w83627hf_data** %6, align 8
  %114 = getelementptr inbounds %struct.w83627hf_data, %struct.w83627hf_data* %113, i32 0, i32 1
  %115 = load i64, i64* %114, align 8
  %116 = load i64, i64* @w83697hf, align 8
  %117 = icmp eq i64 %115, %116
  br i1 %117, label %118, label %168

118:                                              ; preds = %112, %106
  %119 = load %struct.device*, %struct.device** %4, align 8
  %120 = call i32 @device_create_file(%struct.device* %119, i32* getelementptr inbounds (%struct.TYPE_46__, %struct.TYPE_46__* @sensor_dev_attr_in5_input, i32 0, i32 0))
  store i32 %120, i32* %8, align 4
  %121 = icmp ne i32 %120, 0
  br i1 %121, label %166, label %122

122:                                              ; preds = %118
  %123 = load %struct.device*, %struct.device** %4, align 8
  %124 = call i32 @device_create_file(%struct.device* %123, i32* getelementptr inbounds (%struct.TYPE_43__, %struct.TYPE_43__* @sensor_dev_attr_in5_min, i32 0, i32 0))
  store i32 %124, i32* %8, align 4
  %125 = icmp ne i32 %124, 0
  br i1 %125, label %166, label %126

126:                                              ; preds = %122
  %127 = load %struct.device*, %struct.device** %4, align 8
  %128 = call i32 @device_create_file(%struct.device* %127, i32* getelementptr inbounds (%struct.TYPE_45__, %struct.TYPE_45__* @sensor_dev_attr_in5_max, i32 0, i32 0))
  store i32 %128, i32* %8, align 4
  %129 = icmp ne i32 %128, 0
  br i1 %129, label %166, label %130

130:                                              ; preds = %126
  %131 = load %struct.device*, %struct.device** %4, align 8
  %132 = call i32 @device_create_file(%struct.device* %131, i32* getelementptr inbounds (%struct.TYPE_48__, %struct.TYPE_48__* @sensor_dev_attr_in5_alarm, i32 0, i32 0))
  store i32 %132, i32* %8, align 4
  %133 = icmp ne i32 %132, 0
  br i1 %133, label %166, label %134

134:                                              ; preds = %130
  %135 = load %struct.device*, %struct.device** %4, align 8
  %136 = call i32 @device_create_file(%struct.device* %135, i32* getelementptr inbounds (%struct.TYPE_47__, %struct.TYPE_47__* @sensor_dev_attr_in5_beep, i32 0, i32 0))
  store i32 %136, i32* %8, align 4
  %137 = icmp ne i32 %136, 0
  br i1 %137, label %166, label %138

138:                                              ; preds = %134
  %139 = load %struct.device*, %struct.device** %4, align 8
  %140 = call i32 @device_create_file(%struct.device* %139, i32* getelementptr inbounds (%struct.TYPE_40__, %struct.TYPE_40__* @sensor_dev_attr_in6_input, i32 0, i32 0))
  store i32 %140, i32* %8, align 4
  %141 = icmp ne i32 %140, 0
  br i1 %141, label %166, label %142

142:                                              ; preds = %138
  %143 = load %struct.device*, %struct.device** %4, align 8
  %144 = call i32 @device_create_file(%struct.device* %143, i32* getelementptr inbounds (%struct.TYPE_38__, %struct.TYPE_38__* @sensor_dev_attr_in6_min, i32 0, i32 0))
  store i32 %144, i32* %8, align 4
  %145 = icmp ne i32 %144, 0
  br i1 %145, label %166, label %146

146:                                              ; preds = %142
  %147 = load %struct.device*, %struct.device** %4, align 8
  %148 = call i32 @device_create_file(%struct.device* %147, i32* getelementptr inbounds (%struct.TYPE_39__, %struct.TYPE_39__* @sensor_dev_attr_in6_max, i32 0, i32 0))
  store i32 %148, i32* %8, align 4
  %149 = icmp ne i32 %148, 0
  br i1 %149, label %166, label %150

150:                                              ; preds = %146
  %151 = load %struct.device*, %struct.device** %4, align 8
  %152 = call i32 @device_create_file(%struct.device* %151, i32* getelementptr inbounds (%struct.TYPE_42__, %struct.TYPE_42__* @sensor_dev_attr_in6_alarm, i32 0, i32 0))
  store i32 %152, i32* %8, align 4
  %153 = icmp ne i32 %152, 0
  br i1 %153, label %166, label %154

154:                                              ; preds = %150
  %155 = load %struct.device*, %struct.device** %4, align 8
  %156 = call i32 @device_create_file(%struct.device* %155, i32* getelementptr inbounds (%struct.TYPE_41__, %struct.TYPE_41__* @sensor_dev_attr_in6_beep, i32 0, i32 0))
  store i32 %156, i32* %8, align 4
  %157 = icmp ne i32 %156, 0
  br i1 %157, label %166, label %158

158:                                              ; preds = %154
  %159 = load %struct.device*, %struct.device** %4, align 8
  %160 = call i32 @device_create_file(%struct.device* %159, i32* getelementptr inbounds (%struct.TYPE_36__, %struct.TYPE_36__* @sensor_dev_attr_pwm1_freq, i32 0, i32 0))
  store i32 %160, i32* %8, align 4
  %161 = icmp ne i32 %160, 0
  br i1 %161, label %166, label %162

162:                                              ; preds = %158
  %163 = load %struct.device*, %struct.device** %4, align 8
  %164 = call i32 @device_create_file(%struct.device* %163, i32* getelementptr inbounds (%struct.TYPE_34__, %struct.TYPE_34__* @sensor_dev_attr_pwm2_freq, i32 0, i32 0))
  store i32 %164, i32* %8, align 4
  %165 = icmp ne i32 %164, 0
  br i1 %165, label %166, label %167

166:                                              ; preds = %162, %158, %154, %150, %146, %142, %138, %134, %130, %126, %122, %118
  br label %372

167:                                              ; preds = %162
  br label %168

168:                                              ; preds = %167, %112
  %169 = load %struct.w83627hf_data*, %struct.w83627hf_data** %6, align 8
  %170 = getelementptr inbounds %struct.w83627hf_data, %struct.w83627hf_data* %169, i32 0, i32 1
  %171 = load i64, i64* %170, align 8
  %172 = load i64, i64* @w83697hf, align 8
  %173 = icmp ne i64 %171, %172
  br i1 %173, label %174, label %240

174:                                              ; preds = %168
  %175 = load %struct.device*, %struct.device** %4, align 8
  %176 = call i32 @device_create_file(%struct.device* %175, i32* getelementptr inbounds (%struct.TYPE_51__, %struct.TYPE_51__* @sensor_dev_attr_in1_input, i32 0, i32 0))
  store i32 %176, i32* %8, align 4
  %177 = icmp ne i32 %176, 0
  br i1 %177, label %238, label %178

178:                                              ; preds = %174
  %179 = load %struct.device*, %struct.device** %4, align 8
  %180 = call i32 @device_create_file(%struct.device* %179, i32* getelementptr inbounds (%struct.TYPE_49__, %struct.TYPE_49__* @sensor_dev_attr_in1_min, i32 0, i32 0))
  store i32 %180, i32* %8, align 4
  %181 = icmp ne i32 %180, 0
  br i1 %181, label %238, label %182

182:                                              ; preds = %178
  %183 = load %struct.device*, %struct.device** %4, align 8
  %184 = call i32 @device_create_file(%struct.device* %183, i32* getelementptr inbounds (%struct.TYPE_50__, %struct.TYPE_50__* @sensor_dev_attr_in1_max, i32 0, i32 0))
  store i32 %184, i32* %8, align 4
  %185 = icmp ne i32 %184, 0
  br i1 %185, label %238, label %186

186:                                              ; preds = %182
  %187 = load %struct.device*, %struct.device** %4, align 8
  %188 = call i32 @device_create_file(%struct.device* %187, i32* getelementptr inbounds (%struct.TYPE_53__, %struct.TYPE_53__* @sensor_dev_attr_in1_alarm, i32 0, i32 0))
  store i32 %188, i32* %8, align 4
  %189 = icmp ne i32 %188, 0
  br i1 %189, label %238, label %190

190:                                              ; preds = %186
  %191 = load %struct.device*, %struct.device** %4, align 8
  %192 = call i32 @device_create_file(%struct.device* %191, i32* getelementptr inbounds (%struct.TYPE_52__, %struct.TYPE_52__* @sensor_dev_attr_in1_beep, i32 0, i32 0))
  store i32 %192, i32* %8, align 4
  %193 = icmp ne i32 %192, 0
  br i1 %193, label %238, label %194

194:                                              ; preds = %190
  %195 = load %struct.device*, %struct.device** %4, align 8
  %196 = call i32 @device_create_file(%struct.device* %195, i32* getelementptr inbounds (%struct.TYPE_56__, %struct.TYPE_56__* @sensor_dev_attr_fan3_input, i32 0, i32 0))
  store i32 %196, i32* %8, align 4
  %197 = icmp ne i32 %196, 0
  br i1 %197, label %238, label %198

198:                                              ; preds = %194
  %199 = load %struct.device*, %struct.device** %4, align 8
  %200 = call i32 @device_create_file(%struct.device* %199, i32* getelementptr inbounds (%struct.TYPE_54__, %struct.TYPE_54__* @sensor_dev_attr_fan3_min, i32 0, i32 0))
  store i32 %200, i32* %8, align 4
  %201 = icmp ne i32 %200, 0
  br i1 %201, label %238, label %202

202:                                              ; preds = %198
  %203 = load %struct.device*, %struct.device** %4, align 8
  %204 = call i32 @device_create_file(%struct.device* %203, i32* getelementptr inbounds (%struct.TYPE_57__, %struct.TYPE_57__* @sensor_dev_attr_fan3_div, i32 0, i32 0))
  store i32 %204, i32* %8, align 4
  %205 = icmp ne i32 %204, 0
  br i1 %205, label %238, label %206

206:                                              ; preds = %202
  %207 = load %struct.device*, %struct.device** %4, align 8
  %208 = call i32 @device_create_file(%struct.device* %207, i32* getelementptr inbounds (%struct.TYPE_59__, %struct.TYPE_59__* @sensor_dev_attr_fan3_alarm, i32 0, i32 0))
  store i32 %208, i32* %8, align 4
  %209 = icmp ne i32 %208, 0
  br i1 %209, label %238, label %210

210:                                              ; preds = %206
  %211 = load %struct.device*, %struct.device** %4, align 8
  %212 = call i32 @device_create_file(%struct.device* %211, i32* getelementptr inbounds (%struct.TYPE_58__, %struct.TYPE_58__* @sensor_dev_attr_fan3_beep, i32 0, i32 0))
  store i32 %212, i32* %8, align 4
  %213 = icmp ne i32 %212, 0
  br i1 %213, label %238, label %214

214:                                              ; preds = %210
  %215 = load %struct.device*, %struct.device** %4, align 8
  %216 = call i32 @device_create_file(%struct.device* %215, i32* getelementptr inbounds (%struct.TYPE_61__, %struct.TYPE_61__* @sensor_dev_attr_temp3_input, i32 0, i32 0))
  store i32 %216, i32* %8, align 4
  %217 = icmp ne i32 %216, 0
  br i1 %217, label %238, label %218

218:                                              ; preds = %214
  %219 = load %struct.device*, %struct.device** %4, align 8
  %220 = call i32 @device_create_file(%struct.device* %219, i32* getelementptr inbounds (%struct.TYPE_60__, %struct.TYPE_60__* @sensor_dev_attr_temp3_max, i32 0, i32 0))
  store i32 %220, i32* %8, align 4
  %221 = icmp ne i32 %220, 0
  br i1 %221, label %238, label %222

222:                                              ; preds = %218
  %223 = load %struct.device*, %struct.device** %4, align 8
  %224 = call i32 @device_create_file(%struct.device* %223, i32* getelementptr inbounds (%struct.TYPE_55__, %struct.TYPE_55__* @sensor_dev_attr_temp3_max_hyst, i32 0, i32 0))
  store i32 %224, i32* %8, align 4
  %225 = icmp ne i32 %224, 0
  br i1 %225, label %238, label %226

226:                                              ; preds = %222
  %227 = load %struct.device*, %struct.device** %4, align 8
  %228 = call i32 @device_create_file(%struct.device* %227, i32* getelementptr inbounds (%struct.TYPE_63__, %struct.TYPE_63__* @sensor_dev_attr_temp3_alarm, i32 0, i32 0))
  store i32 %228, i32* %8, align 4
  %229 = icmp ne i32 %228, 0
  br i1 %229, label %238, label %230

230:                                              ; preds = %226
  %231 = load %struct.device*, %struct.device** %4, align 8
  %232 = call i32 @device_create_file(%struct.device* %231, i32* getelementptr inbounds (%struct.TYPE_62__, %struct.TYPE_62__* @sensor_dev_attr_temp3_beep, i32 0, i32 0))
  store i32 %232, i32* %8, align 4
  %233 = icmp ne i32 %232, 0
  br i1 %233, label %238, label %234

234:                                              ; preds = %230
  %235 = load %struct.device*, %struct.device** %4, align 8
  %236 = call i32 @device_create_file(%struct.device* %235, i32* getelementptr inbounds (%struct.TYPE_44__, %struct.TYPE_44__* @sensor_dev_attr_temp3_type, i32 0, i32 0))
  store i32 %236, i32* %8, align 4
  %237 = icmp ne i32 %236, 0
  br i1 %237, label %238, label %239

238:                                              ; preds = %234, %230, %226, %222, %218, %214, %210, %206, %202, %198, %194, %190, %186, %182, %178, %174
  br label %372

239:                                              ; preds = %234
  br label %240

240:                                              ; preds = %239, %168
  %241 = load %struct.w83627hf_data*, %struct.w83627hf_data** %6, align 8
  %242 = getelementptr inbounds %struct.w83627hf_data, %struct.w83627hf_data* %241, i32 0, i32 1
  %243 = load i64, i64* %242, align 8
  %244 = load i64, i64* @w83697hf, align 8
  %245 = icmp ne i64 %243, %244
  br i1 %245, label %246, label %264

246:                                              ; preds = %240
  %247 = load %struct.w83627hf_data*, %struct.w83627hf_data** %6, align 8
  %248 = getelementptr inbounds %struct.w83627hf_data, %struct.w83627hf_data* %247, i32 0, i32 3
  %249 = load i32, i32* %248, align 8
  %250 = icmp ne i32 %249, 255
  br i1 %250, label %251, label %264

251:                                              ; preds = %246
  %252 = call i32 (...) @vid_which_vrm()
  %253 = load %struct.w83627hf_data*, %struct.w83627hf_data** %6, align 8
  %254 = getelementptr inbounds %struct.w83627hf_data, %struct.w83627hf_data* %253, i32 0, i32 5
  store i32 %252, i32* %254, align 8
  %255 = load %struct.device*, %struct.device** %4, align 8
  %256 = call i32 @device_create_file(%struct.device* %255, i32* @dev_attr_cpu0_vid)
  store i32 %256, i32* %8, align 4
  %257 = icmp ne i32 %256, 0
  br i1 %257, label %262, label %258

258:                                              ; preds = %251
  %259 = load %struct.device*, %struct.device** %4, align 8
  %260 = call i32 @device_create_file(%struct.device* %259, i32* @dev_attr_vrm)
  store i32 %260, i32* %8, align 4
  %261 = icmp ne i32 %260, 0
  br i1 %261, label %262, label %263

262:                                              ; preds = %258, %251
  br label %372

263:                                              ; preds = %258
  br label %264

264:                                              ; preds = %263, %246, %240
  %265 = load %struct.w83627hf_data*, %struct.w83627hf_data** %6, align 8
  %266 = getelementptr inbounds %struct.w83627hf_data, %struct.w83627hf_data* %265, i32 0, i32 1
  %267 = load i64, i64* %266, align 8
  %268 = load i64, i64* @w83627thf, align 8
  %269 = icmp eq i64 %267, %268
  br i1 %269, label %282, label %270

270:                                              ; preds = %264
  %271 = load %struct.w83627hf_data*, %struct.w83627hf_data** %6, align 8
  %272 = getelementptr inbounds %struct.w83627hf_data, %struct.w83627hf_data* %271, i32 0, i32 1
  %273 = load i64, i64* %272, align 8
  %274 = load i64, i64* @w83637hf, align 8
  %275 = icmp eq i64 %273, %274
  br i1 %275, label %282, label %276

276:                                              ; preds = %270
  %277 = load %struct.w83627hf_data*, %struct.w83627hf_data** %6, align 8
  %278 = getelementptr inbounds %struct.w83627hf_data, %struct.w83627hf_data* %277, i32 0, i32 1
  %279 = load i64, i64* %278, align 8
  %280 = load i64, i64* @w83687thf, align 8
  %281 = icmp eq i64 %279, %280
  br i1 %281, label %282, label %289

282:                                              ; preds = %276, %270, %264
  %283 = load %struct.device*, %struct.device** %4, align 8
  %284 = call i32 @device_create_file(%struct.device* %283, i32* getelementptr inbounds (%struct.TYPE_66__, %struct.TYPE_66__* @sensor_dev_attr_pwm3, i32 0, i32 0))
  store i32 %284, i32* %8, align 4
  %285 = load i32, i32* %8, align 4
  %286 = icmp ne i32 %285, 0
  br i1 %286, label %287, label %288

287:                                              ; preds = %282
  br label %372

288:                                              ; preds = %282
  br label %289

289:                                              ; preds = %288, %276
  %290 = load %struct.w83627hf_data*, %struct.w83627hf_data** %6, align 8
  %291 = getelementptr inbounds %struct.w83627hf_data, %struct.w83627hf_data* %290, i32 0, i32 1
  %292 = load i64, i64* %291, align 8
  %293 = load i64, i64* @w83637hf, align 8
  %294 = icmp eq i64 %292, %293
  br i1 %294, label %301, label %295

295:                                              ; preds = %289
  %296 = load %struct.w83627hf_data*, %struct.w83627hf_data** %6, align 8
  %297 = getelementptr inbounds %struct.w83627hf_data, %struct.w83627hf_data* %296, i32 0, i32 1
  %298 = load i64, i64* %297, align 8
  %299 = load i64, i64* @w83687thf, align 8
  %300 = icmp eq i64 %298, %299
  br i1 %300, label %301, label %315

301:                                              ; preds = %295, %289
  %302 = load %struct.device*, %struct.device** %4, align 8
  %303 = call i32 @device_create_file(%struct.device* %302, i32* getelementptr inbounds (%struct.TYPE_36__, %struct.TYPE_36__* @sensor_dev_attr_pwm1_freq, i32 0, i32 0))
  store i32 %303, i32* %8, align 4
  %304 = icmp ne i32 %303, 0
  br i1 %304, label %313, label %305

305:                                              ; preds = %301
  %306 = load %struct.device*, %struct.device** %4, align 8
  %307 = call i32 @device_create_file(%struct.device* %306, i32* getelementptr inbounds (%struct.TYPE_34__, %struct.TYPE_34__* @sensor_dev_attr_pwm2_freq, i32 0, i32 0))
  store i32 %307, i32* %8, align 4
  %308 = icmp ne i32 %307, 0
  br i1 %308, label %313, label %309

309:                                              ; preds = %305
  %310 = load %struct.device*, %struct.device** %4, align 8
  %311 = call i32 @device_create_file(%struct.device* %310, i32* getelementptr inbounds (%struct.TYPE_64__, %struct.TYPE_64__* @sensor_dev_attr_pwm3_freq, i32 0, i32 0))
  store i32 %311, i32* %8, align 4
  %312 = icmp ne i32 %311, 0
  br i1 %312, label %313, label %314

313:                                              ; preds = %309, %305, %301
  br label %372

314:                                              ; preds = %309
  br label %315

315:                                              ; preds = %314, %295
  %316 = load %struct.w83627hf_data*, %struct.w83627hf_data** %6, align 8
  %317 = getelementptr inbounds %struct.w83627hf_data, %struct.w83627hf_data* %316, i32 0, i32 1
  %318 = load i64, i64* %317, align 8
  %319 = load i64, i64* @w83627hf, align 8
  %320 = icmp ne i64 %318, %319
  br i1 %320, label %321, label %331

321:                                              ; preds = %315
  %322 = load %struct.device*, %struct.device** %4, align 8
  %323 = call i32 @device_create_file(%struct.device* %322, i32* getelementptr inbounds (%struct.TYPE_37__, %struct.TYPE_37__* @sensor_dev_attr_pwm1_enable, i32 0, i32 0))
  store i32 %323, i32* %8, align 4
  %324 = icmp ne i32 %323, 0
  br i1 %324, label %329, label %325

325:                                              ; preds = %321
  %326 = load %struct.device*, %struct.device** %4, align 8
  %327 = call i32 @device_create_file(%struct.device* %326, i32* getelementptr inbounds (%struct.TYPE_35__, %struct.TYPE_35__* @sensor_dev_attr_pwm2_enable, i32 0, i32 0))
  store i32 %327, i32* %8, align 4
  %328 = icmp ne i32 %327, 0
  br i1 %328, label %329, label %330

329:                                              ; preds = %325, %321
  br label %372

330:                                              ; preds = %325
  br label %331

331:                                              ; preds = %330, %315
  %332 = load %struct.w83627hf_data*, %struct.w83627hf_data** %6, align 8
  %333 = getelementptr inbounds %struct.w83627hf_data, %struct.w83627hf_data* %332, i32 0, i32 1
  %334 = load i64, i64* %333, align 8
  %335 = load i64, i64* @w83627thf, align 8
  %336 = icmp eq i64 %334, %335
  br i1 %336, label %349, label %337

337:                                              ; preds = %331
  %338 = load %struct.w83627hf_data*, %struct.w83627hf_data** %6, align 8
  %339 = getelementptr inbounds %struct.w83627hf_data, %struct.w83627hf_data* %338, i32 0, i32 1
  %340 = load i64, i64* %339, align 8
  %341 = load i64, i64* @w83637hf, align 8
  %342 = icmp eq i64 %340, %341
  br i1 %342, label %349, label %343

343:                                              ; preds = %337
  %344 = load %struct.w83627hf_data*, %struct.w83627hf_data** %6, align 8
  %345 = getelementptr inbounds %struct.w83627hf_data, %struct.w83627hf_data* %344, i32 0, i32 1
  %346 = load i64, i64* %345, align 8
  %347 = load i64, i64* @w83687thf, align 8
  %348 = icmp eq i64 %346, %347
  br i1 %348, label %349, label %356

349:                                              ; preds = %343, %337, %331
  %350 = load %struct.device*, %struct.device** %4, align 8
  %351 = call i32 @device_create_file(%struct.device* %350, i32* getelementptr inbounds (%struct.TYPE_65__, %struct.TYPE_65__* @sensor_dev_attr_pwm3_enable, i32 0, i32 0))
  store i32 %351, i32* %8, align 4
  %352 = load i32, i32* %8, align 4
  %353 = icmp ne i32 %352, 0
  br i1 %353, label %354, label %355

354:                                              ; preds = %349
  br label %372

355:                                              ; preds = %349
  br label %356

356:                                              ; preds = %355, %343
  %357 = load %struct.device*, %struct.device** %4, align 8
  %358 = call i32 @hwmon_device_register(%struct.device* %357)
  %359 = load %struct.w83627hf_data*, %struct.w83627hf_data** %6, align 8
  %360 = getelementptr inbounds %struct.w83627hf_data, %struct.w83627hf_data* %359, i32 0, i32 4
  store i32 %358, i32* %360, align 4
  %361 = load %struct.w83627hf_data*, %struct.w83627hf_data** %6, align 8
  %362 = getelementptr inbounds %struct.w83627hf_data, %struct.w83627hf_data* %361, i32 0, i32 4
  %363 = load i32, i32* %362, align 4
  %364 = call i64 @IS_ERR(i32 %363)
  %365 = icmp ne i64 %364, 0
  br i1 %365, label %366, label %371

366:                                              ; preds = %356
  %367 = load %struct.w83627hf_data*, %struct.w83627hf_data** %6, align 8
  %368 = getelementptr inbounds %struct.w83627hf_data, %struct.w83627hf_data* %367, i32 0, i32 4
  %369 = load i32, i32* %368, align 4
  %370 = call i32 @PTR_ERR(i32 %369)
  store i32 %370, i32* %8, align 4
  br label %372

371:                                              ; preds = %356
  store i32 0, i32* %2, align 4
  br label %380

372:                                              ; preds = %366, %354, %329, %313, %287, %262, %238, %166
  %373 = load %struct.device*, %struct.device** %4, align 8
  %374 = getelementptr inbounds %struct.device, %struct.device* %373, i32 0, i32 0
  %375 = call i32 @sysfs_remove_group(i32* %374, i32* @w83627hf_group)
  %376 = load %struct.device*, %struct.device** %4, align 8
  %377 = getelementptr inbounds %struct.device, %struct.device* %376, i32 0, i32 0
  %378 = call i32 @sysfs_remove_group(i32* %377, i32* @w83627hf_group_opt)
  %379 = load i32, i32* %8, align 4
  store i32 %379, i32* %2, align 4
  br label %380

380:                                              ; preds = %372, %371, %104, %47, %25
  %381 = load i32, i32* %2, align 4
  ret i32 %381
}

declare dso_local %struct.w83627hf_sio_data* @dev_get_platdata(%struct.device*) #1

declare dso_local %struct.resource* @platform_get_resource(%struct.platform_device*, i32, i32) #1

declare dso_local i32 @devm_request_region(%struct.device*, i32, i32, i32) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, i64, i64) #1

declare dso_local %struct.w83627hf_data* @devm_kzalloc(%struct.device*, i32, i32) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.w83627hf_data*) #1

declare dso_local i32 @w83627hf_init_device(%struct.platform_device*) #1

declare dso_local i32 @w83627hf_read_value(%struct.w83627hf_data*, i32) #1

declare dso_local i32 @W83627HF_REG_FAN_MIN(i32) #1

declare dso_local i32 @w83627hf_update_fan_div(%struct.w83627hf_data*) #1

declare dso_local i32 @sysfs_create_group(i32*, i32*) #1

declare dso_local i32 @device_create_file(%struct.device*, i32*) #1

declare dso_local i32 @vid_which_vrm(...) #1

declare dso_local i32 @hwmon_device_register(%struct.device*) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @PTR_ERR(i32) #1

declare dso_local i32 @sysfs_remove_group(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
