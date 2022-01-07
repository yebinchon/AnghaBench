; ModuleID = '/home/carl/AnghaBench/linux/drivers/hwmon/extr_w83627ehf.c_w83627ehf_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hwmon/extr_w83627ehf.c_w83627ehf_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sensor_device_attribute = type { i64, i32 }
%struct.TYPE_27__ = type { i32 }
%struct.TYPE_28__ = type { i32 }
%struct.TYPE_25__ = type { i32 }
%struct.TYPE_26__ = type { i32 }
%struct.TYPE_30__ = type { i32 }
%struct.TYPE_33__ = type { i32 }
%struct.TYPE_31__ = type { i32 }
%struct.TYPE_29__ = type { i32 }
%struct.TYPE_24__ = type { i32 }
%struct.TYPE_22__ = type { i32 }
%struct.TYPE_23__ = type { i32 }
%struct.TYPE_42__ = type { i32 }
%struct.TYPE_32__ = type { i32 }
%struct.TYPE_40__ = type { i32 }
%struct.TYPE_39__ = type { i32 }
%struct.TYPE_38__ = type { i32 }
%struct.TYPE_37__ = type { i32 }
%struct.TYPE_41__ = type { i32 }
%struct.TYPE_35__ = type { i32 }
%struct.TYPE_36__ = type { i32 }
%struct.TYPE_34__ = type { i32 }
%struct.platform_device = type { %struct.device }
%struct.device = type { i32 }
%struct.w83627ehf_sio_data = type { i64, i32 }
%struct.w83627ehf_data = type { i32, i32, i32, i32, i32*, i32*, i32, i32, i32, i32, i32*, i32, i32, i32, i32, i32, i64*, i64*, i8*, i32*, i32*, i32, i32, i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i32*, i32, i32, i64 }
%struct.resource = type { i64 }

@IORESOURCE_IO = common dso_local global i32 0, align 4
@IOREGION_LENGTH = common dso_local global i64 0, align 8
@DRVNAME = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [38 x i8] c"Failed to request region 0x%lx-0x%lx\0A\00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@w83627ehf_device_names = common dso_local global i32* null, align 8
@w83627ehf = common dso_local global i64 0, align 8
@NUM_REG_TEMP = common dso_local global i32 0, align 4
@NCT6775_REG_TEMP = common dso_local global i32* null, align 8
@NCT6775_REG_TEMP_OVER = common dso_local global i64* null, align 8
@NCT6775_REG_TEMP_HYST = common dso_local global i64* null, align 8
@NCT6775_REG_TEMP_CONFIG = common dso_local global i32* null, align 8
@NCT6775_REG_TEMP_SOURCE = common dso_local global i32* null, align 8
@nct6776_temp_label = common dso_local global i8* null, align 8
@nct6775_temp_label = common dso_local global i8* null, align 8
@W83627EHF_REG_TEMP_CONFIG = common dso_local global i32* null, align 8
@w83667hg_b_temp_label = common dso_local global i8* null, align 8
@fan_from_reg16 = common dso_local global i8* null, align 8
@fan_from_reg8 = common dso_local global i8* null, align 8
@NCT6775_REG_PWM = common dso_local global i8* null, align 8
@NCT6775_REG_TARGET = common dso_local global i8* null, align 8
@NCT6775_REG_FAN = common dso_local global i8* null, align 8
@W83627EHF_REG_FAN_MIN = common dso_local global i8* null, align 8
@NCT6775_REG_FAN_START_OUTPUT = common dso_local global i8* null, align 8
@NCT6775_REG_FAN_STOP_OUTPUT = common dso_local global i8* null, align 8
@NCT6775_REG_FAN_STOP_TIME = common dso_local global i8* null, align 8
@NCT6775_REG_FAN_MAX_OUTPUT = common dso_local global i32 0, align 4
@NCT6775_REG_FAN_STEP_OUTPUT = common dso_local global i32* null, align 8
@fan_from_reg13 = common dso_local global i8* null, align 8
@NCT6776_REG_FAN_MIN = common dso_local global i8* null, align 8
@W83627EHF_REG_PWM = common dso_local global i8* null, align 8
@W83627EHF_REG_TARGET = common dso_local global i8* null, align 8
@W83627EHF_REG_FAN = common dso_local global i8* null, align 8
@W83627EHF_REG_FAN_START_OUTPUT = common dso_local global i8* null, align 8
@W83627EHF_REG_FAN_STOP_OUTPUT = common dso_local global i8* null, align 8
@W83627EHF_REG_FAN_STOP_TIME = common dso_local global i8* null, align 8
@W83627EHF_REG_FAN_MAX_OUTPUT_W83667_B = common dso_local global i32 0, align 4
@W83627EHF_REG_FAN_STEP_OUTPUT_W83667_B = common dso_local global i32* null, align 8
@W83627EHF_REG_FAN_MAX_OUTPUT_COMMON = common dso_local global i32 0, align 4
@W83627EHF_REG_FAN_STEP_OUTPUT_COMMON = common dso_local global i32* null, align 8
@scale_in_w83627uhg = common dso_local global i32 0, align 4
@scale_in_common = common dso_local global i32 0, align 4
@W83667HG_LD_VID = common dso_local global i32 0, align 4
@dev_attr_cpu0_vid = common dso_local global i32 0, align 4
@W83627EHF_LD_HWM = common dso_local global i32 0, align 4
@SIO_REG_VID_CTRL = common dso_local global i32 0, align 4
@SIO_REG_EN_VRM10 = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [34 x i8] c"Setting VID input voltage to TTL\0A\00", align 1
@.str.2 = private unnamed_addr constant [36 x i8] c"Setting VID input voltage to VRM10\0A\00", align 1
@SIO_REG_VID_DATA = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [48 x i8] c"VID pins in output mode, CPU VID not available\0A\00", align 1
@fan_debounce = common dso_local global i64 0, align 8
@NCT6775_REG_FAN_DEBOUNCE = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [34 x i8] c"Enabled fan debounce for chip %s\0A\00", align 1
@sda_sf3_arrays = common dso_local global %struct.sensor_device_attribute* null, align 8
@sda_sf3_max_step_arrays = common dso_local global %struct.sensor_device_attribute* null, align 8
@sda_sf3_arrays_fan3 = common dso_local global %struct.sensor_device_attribute* null, align 8
@sda_sf3_arrays_fan4 = common dso_local global %struct.sensor_device_attribute* null, align 8
@sda_in_input = common dso_local global %struct.TYPE_27__* null, align 8
@sda_in_alarm = common dso_local global %struct.TYPE_28__* null, align 8
@sda_in_min = common dso_local global %struct.TYPE_25__* null, align 8
@sda_in_max = common dso_local global %struct.TYPE_26__* null, align 8
@sda_fan_input = common dso_local global %struct.TYPE_30__* null, align 8
@sda_fan_alarm = common dso_local global %struct.TYPE_33__* null, align 8
@sda_fan_div = common dso_local global %struct.TYPE_31__* null, align 8
@sda_fan_min = common dso_local global %struct.TYPE_29__* null, align 8
@sda_pwm = common dso_local global %struct.TYPE_24__* null, align 8
@sda_pwm_mode = common dso_local global %struct.TYPE_22__* null, align 8
@sda_pwm_enable = common dso_local global %struct.TYPE_23__* null, align 8
@sda_target_temp = common dso_local global %struct.TYPE_42__* null, align 8
@sda_tolerance = common dso_local global %struct.TYPE_32__* null, align 8
@sda_temp_input = common dso_local global %struct.TYPE_40__* null, align 8
@sda_temp_label = common dso_local global %struct.TYPE_39__* null, align 8
@sda_temp_max = common dso_local global %struct.TYPE_38__* null, align 8
@sda_temp_max_hyst = common dso_local global %struct.TYPE_37__* null, align 8
@sda_temp_alarm = common dso_local global %struct.TYPE_41__* null, align 8
@sda_temp_type = common dso_local global %struct.TYPE_35__* null, align 8
@sda_temp_offset = common dso_local global %struct.TYPE_36__* null, align 8
@sda_caseopen = common dso_local global %struct.TYPE_34__* null, align 8
@dev_attr_name = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @w83627ehf_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @w83627ehf_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.w83627ehf_sio_data*, align 8
  %6 = alloca %struct.w83627ehf_data*, align 8
  %7 = alloca %struct.resource*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca %struct.sensor_device_attribute*, align 8
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %19 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %20 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %19, i32 0, i32 0
  store %struct.device* %20, %struct.device** %4, align 8
  %21 = load %struct.device*, %struct.device** %4, align 8
  %22 = call %struct.w83627ehf_sio_data* @dev_get_platdata(%struct.device* %21)
  store %struct.w83627ehf_sio_data* %22, %struct.w83627ehf_sio_data** %5, align 8
  store i32 0, i32* %10, align 4
  %23 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %24 = load i32, i32* @IORESOURCE_IO, align 4
  %25 = call %struct.resource* @platform_get_resource(%struct.platform_device* %23, i32 %24, i32 0)
  store %struct.resource* %25, %struct.resource** %7, align 8
  %26 = load %struct.resource*, %struct.resource** %7, align 8
  %27 = getelementptr inbounds %struct.resource, %struct.resource* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = load i64, i64* @IOREGION_LENGTH, align 8
  %30 = load i32, i32* @DRVNAME, align 4
  %31 = call i32 @request_region(i64 %28, i64 %29, i32 %30)
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %47, label %33

33:                                               ; preds = %1
  %34 = load i32, i32* @EBUSY, align 4
  %35 = sub nsw i32 0, %34
  store i32 %35, i32* %10, align 4
  %36 = load %struct.device*, %struct.device** %4, align 8
  %37 = load %struct.resource*, %struct.resource** %7, align 8
  %38 = getelementptr inbounds %struct.resource, %struct.resource* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = load %struct.resource*, %struct.resource** %7, align 8
  %41 = getelementptr inbounds %struct.resource, %struct.resource* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = load i64, i64* @IOREGION_LENGTH, align 8
  %44 = add i64 %42, %43
  %45 = sub i64 %44, 1
  %46 = call i32 @dev_err(%struct.device* %36, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0), i64 %39, i64 %45)
  br label %1597

47:                                               ; preds = %1
  %48 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %49 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %48, i32 0, i32 0
  %50 = load i32, i32* @GFP_KERNEL, align 4
  %51 = call %struct.w83627ehf_data* @devm_kzalloc(%struct.device* %49, i32 232, i32 %50)
  store %struct.w83627ehf_data* %51, %struct.w83627ehf_data** %6, align 8
  %52 = load %struct.w83627ehf_data*, %struct.w83627ehf_data** %6, align 8
  %53 = icmp ne %struct.w83627ehf_data* %52, null
  br i1 %53, label %57, label %54

54:                                               ; preds = %47
  %55 = load i32, i32* @ENOMEM, align 4
  %56 = sub nsw i32 0, %55
  store i32 %56, i32* %10, align 4
  br label %1591

57:                                               ; preds = %47
  %58 = load %struct.resource*, %struct.resource** %7, align 8
  %59 = getelementptr inbounds %struct.resource, %struct.resource* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = load %struct.w83627ehf_data*, %struct.w83627ehf_data** %6, align 8
  %62 = getelementptr inbounds %struct.w83627ehf_data, %struct.w83627ehf_data* %61, i32 0, i32 36
  store i64 %60, i64* %62, align 8
  %63 = load %struct.w83627ehf_data*, %struct.w83627ehf_data** %6, align 8
  %64 = getelementptr inbounds %struct.w83627ehf_data, %struct.w83627ehf_data* %63, i32 0, i32 35
  %65 = call i32 @mutex_init(i32* %64)
  %66 = load %struct.w83627ehf_data*, %struct.w83627ehf_data** %6, align 8
  %67 = getelementptr inbounds %struct.w83627ehf_data, %struct.w83627ehf_data* %66, i32 0, i32 34
  %68 = call i32 @mutex_init(i32* %67)
  %69 = load i32*, i32** @w83627ehf_device_names, align 8
  %70 = load %struct.w83627ehf_sio_data*, %struct.w83627ehf_sio_data** %5, align 8
  %71 = getelementptr inbounds %struct.w83627ehf_sio_data, %struct.w83627ehf_sio_data* %70, i32 0, i32 0
  %72 = load i64, i64* %71, align 8
  %73 = getelementptr inbounds i32, i32* %69, i64 %72
  %74 = load i32, i32* %73, align 4
  %75 = load %struct.w83627ehf_data*, %struct.w83627ehf_data** %6, align 8
  %76 = getelementptr inbounds %struct.w83627ehf_data, %struct.w83627ehf_data* %75, i32 0, i32 21
  store i32 %74, i32* %76, align 8
  %77 = load %struct.w83627ehf_data*, %struct.w83627ehf_data** %6, align 8
  %78 = getelementptr inbounds %struct.w83627ehf_data, %struct.w83627ehf_data* %77, i32 0, i32 0
  store i32 255, i32* %78, align 8
  %79 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %80 = load %struct.w83627ehf_data*, %struct.w83627ehf_data** %6, align 8
  %81 = call i32 @platform_set_drvdata(%struct.platform_device* %79, %struct.w83627ehf_data* %80)
  %82 = load %struct.w83627ehf_sio_data*, %struct.w83627ehf_sio_data** %5, align 8
  %83 = getelementptr inbounds %struct.w83627ehf_sio_data, %struct.w83627ehf_sio_data* %82, i32 0, i32 0
  %84 = load i64, i64* %83, align 8
  %85 = load i64, i64* @w83627ehf, align 8
  %86 = icmp eq i64 %84, %85
  %87 = zext i1 %86 to i64
  %88 = select i1 %86, i32 10, i32 9
  %89 = load %struct.w83627ehf_data*, %struct.w83627ehf_data** %6, align 8
  %90 = getelementptr inbounds %struct.w83627ehf_data, %struct.w83627ehf_data* %89, i32 0, i32 1
  store i32 %88, i32* %90, align 4
  %91 = load %struct.w83627ehf_sio_data*, %struct.w83627ehf_sio_data** %5, align 8
  %92 = getelementptr inbounds %struct.w83627ehf_sio_data, %struct.w83627ehf_sio_data* %91, i32 0, i32 0
  %93 = load i64, i64* %92, align 8
  switch i64 %93, label %94 [
    i64 129, label %97
    i64 128, label %97
    i64 132, label %97
    i64 131, label %97
    i64 130, label %100
  ]

94:                                               ; preds = %57
  %95 = load %struct.w83627ehf_data*, %struct.w83627ehf_data** %6, align 8
  %96 = getelementptr inbounds %struct.w83627ehf_data, %struct.w83627ehf_data* %95, i32 0, i32 2
  store i32 4, i32* %96, align 8
  br label %103

97:                                               ; preds = %57, %57, %57, %57
  %98 = load %struct.w83627ehf_data*, %struct.w83627ehf_data** %6, align 8
  %99 = getelementptr inbounds %struct.w83627ehf_data, %struct.w83627ehf_data* %98, i32 0, i32 2
  store i32 3, i32* %99, align 8
  br label %103

100:                                              ; preds = %57
  %101 = load %struct.w83627ehf_data*, %struct.w83627ehf_data** %6, align 8
  %102 = getelementptr inbounds %struct.w83627ehf_data, %struct.w83627ehf_data* %101, i32 0, i32 2
  store i32 2, i32* %102, align 8
  br label %103

103:                                              ; preds = %100, %97, %94
  %104 = load %struct.w83627ehf_data*, %struct.w83627ehf_data** %6, align 8
  %105 = getelementptr inbounds %struct.w83627ehf_data, %struct.w83627ehf_data* %104, i32 0, i32 3
  store i32 7, i32* %105, align 4
  %106 = load %struct.w83627ehf_sio_data*, %struct.w83627ehf_sio_data** %5, align 8
  %107 = getelementptr inbounds %struct.w83627ehf_sio_data, %struct.w83627ehf_sio_data* %106, i32 0, i32 0
  %108 = load i64, i64* %107, align 8
  %109 = icmp eq i64 %108, 132
  br i1 %109, label %115, label %110

110:                                              ; preds = %103
  %111 = load %struct.w83627ehf_sio_data*, %struct.w83627ehf_sio_data** %5, align 8
  %112 = getelementptr inbounds %struct.w83627ehf_sio_data, %struct.w83627ehf_sio_data* %111, i32 0, i32 0
  %113 = load i64, i64* %112, align 8
  %114 = icmp eq i64 %113, 131
  br i1 %114, label %115, label %354

115:                                              ; preds = %110, %103
  store i32 0, i32* %11, align 4
  store i32 0, i32* %9, align 4
  br label %116

116:                                              ; preds = %270, %115
  %117 = load i32, i32* %9, align 4
  %118 = load i32, i32* @NUM_REG_TEMP, align 4
  %119 = icmp slt i32 %117, %118
  br i1 %119, label %120, label %273

120:                                              ; preds = %116
  %121 = load i32*, i32** @NCT6775_REG_TEMP, align 8
  %122 = load i32, i32* %9, align 4
  %123 = sext i32 %122 to i64
  %124 = getelementptr inbounds i32, i32* %121, i64 %123
  %125 = load i32, i32* %124, align 4
  %126 = load %struct.w83627ehf_data*, %struct.w83627ehf_data** %6, align 8
  %127 = getelementptr inbounds %struct.w83627ehf_data, %struct.w83627ehf_data* %126, i32 0, i32 33
  %128 = load i32*, i32** %127, align 8
  %129 = load i32, i32* %9, align 4
  %130 = sext i32 %129 to i64
  %131 = getelementptr inbounds i32, i32* %128, i64 %130
  store i32 %125, i32* %131, align 4
  %132 = load i64*, i64** @NCT6775_REG_TEMP_OVER, align 8
  %133 = load i32, i32* %9, align 4
  %134 = sext i32 %133 to i64
  %135 = getelementptr inbounds i64, i64* %132, i64 %134
  %136 = load i64, i64* %135, align 8
  %137 = load %struct.w83627ehf_data*, %struct.w83627ehf_data** %6, align 8
  %138 = getelementptr inbounds %struct.w83627ehf_data, %struct.w83627ehf_data* %137, i32 0, i32 17
  %139 = load i64*, i64** %138, align 8
  %140 = load i32, i32* %9, align 4
  %141 = sext i32 %140 to i64
  %142 = getelementptr inbounds i64, i64* %139, i64 %141
  store i64 %136, i64* %142, align 8
  %143 = load i64*, i64** @NCT6775_REG_TEMP_HYST, align 8
  %144 = load i32, i32* %9, align 4
  %145 = sext i32 %144 to i64
  %146 = getelementptr inbounds i64, i64* %143, i64 %145
  %147 = load i64, i64* %146, align 8
  %148 = load %struct.w83627ehf_data*, %struct.w83627ehf_data** %6, align 8
  %149 = getelementptr inbounds %struct.w83627ehf_data, %struct.w83627ehf_data* %148, i32 0, i32 16
  %150 = load i64*, i64** %149, align 8
  %151 = load i32, i32* %9, align 4
  %152 = sext i32 %151 to i64
  %153 = getelementptr inbounds i64, i64* %150, i64 %152
  store i64 %147, i64* %153, align 8
  %154 = load i32*, i32** @NCT6775_REG_TEMP_CONFIG, align 8
  %155 = load i32, i32* %9, align 4
  %156 = sext i32 %155 to i64
  %157 = getelementptr inbounds i32, i32* %154, i64 %156
  %158 = load i32, i32* %157, align 4
  %159 = load %struct.w83627ehf_data*, %struct.w83627ehf_data** %6, align 8
  %160 = getelementptr inbounds %struct.w83627ehf_data, %struct.w83627ehf_data* %159, i32 0, i32 4
  %161 = load i32*, i32** %160, align 8
  %162 = load i32, i32* %9, align 4
  %163 = sext i32 %162 to i64
  %164 = getelementptr inbounds i32, i32* %161, i64 %163
  store i32 %158, i32* %164, align 4
  %165 = load %struct.w83627ehf_data*, %struct.w83627ehf_data** %6, align 8
  %166 = load i32*, i32** @NCT6775_REG_TEMP_SOURCE, align 8
  %167 = load i32, i32* %9, align 4
  %168 = sext i32 %167 to i64
  %169 = getelementptr inbounds i32, i32* %166, i64 %168
  %170 = load i32, i32* %169, align 4
  %171 = call i32 @w83627ehf_read_value(%struct.w83627ehf_data* %165, i32 %170)
  store i32 %171, i32* %12, align 4
  %172 = load i32, i32* %12, align 4
  %173 = and i32 %172, 31
  store i32 %173, i32* %12, align 4
  %174 = load i32, i32* %12, align 4
  %175 = icmp ne i32 %174, 0
  br i1 %175, label %176, label %193

176:                                              ; preds = %120
  %177 = load i32, i32* %11, align 4
  %178 = load i32, i32* %12, align 4
  %179 = shl i32 1, %178
  %180 = and i32 %177, %179
  %181 = icmp ne i32 %180, 0
  br i1 %181, label %193, label %182

182:                                              ; preds = %176
  %183 = load i32, i32* %9, align 4
  %184 = shl i32 1, %183
  %185 = load %struct.w83627ehf_data*, %struct.w83627ehf_data** %6, align 8
  %186 = getelementptr inbounds %struct.w83627ehf_data, %struct.w83627ehf_data* %185, i32 0, i32 3
  %187 = load i32, i32* %186, align 4
  %188 = or i32 %187, %184
  store i32 %188, i32* %186, align 4
  %189 = load i32, i32* %12, align 4
  %190 = shl i32 1, %189
  %191 = load i32, i32* %11, align 4
  %192 = or i32 %191, %190
  store i32 %192, i32* %11, align 4
  br label %193

193:                                              ; preds = %182, %176, %120
  %194 = load i32, i32* %12, align 4
  %195 = load %struct.w83627ehf_data*, %struct.w83627ehf_data** %6, align 8
  %196 = getelementptr inbounds %struct.w83627ehf_data, %struct.w83627ehf_data* %195, i32 0, i32 5
  %197 = load i32*, i32** %196, align 8
  %198 = load i32, i32* %9, align 4
  %199 = sext i32 %198 to i64
  %200 = getelementptr inbounds i32, i32* %197, i64 %199
  store i32 %194, i32* %200, align 4
  %201 = load i32, i32* %9, align 4
  %202 = icmp sgt i32 %201, 0
  br i1 %202, label %203, label %223

203:                                              ; preds = %193
  %204 = load %struct.w83627ehf_data*, %struct.w83627ehf_data** %6, align 8
  %205 = getelementptr inbounds %struct.w83627ehf_data, %struct.w83627ehf_data* %204, i32 0, i32 5
  %206 = load i32*, i32** %205, align 8
  %207 = getelementptr inbounds i32, i32* %206, i64 0
  %208 = load i32, i32* %207, align 4
  %209 = icmp ne i32 %208, 1
  br i1 %209, label %210, label %223

210:                                              ; preds = %203
  %211 = load %struct.w83627ehf_data*, %struct.w83627ehf_data** %6, align 8
  %212 = getelementptr inbounds %struct.w83627ehf_data, %struct.w83627ehf_data* %211, i32 0, i32 5
  %213 = load i32*, i32** %212, align 8
  %214 = load i32, i32* %9, align 4
  %215 = sext i32 %214 to i64
  %216 = getelementptr inbounds i32, i32* %213, i64 %215
  %217 = load i32, i32* %216, align 4
  %218 = icmp eq i32 %217, 1
  br i1 %218, label %219, label %223

219:                                              ; preds = %210
  %220 = load %struct.w83627ehf_data*, %struct.w83627ehf_data** %6, align 8
  %221 = load i32, i32* %9, align 4
  %222 = call i32 @w82627ehf_swap_tempreg(%struct.w83627ehf_data* %220, i32 0, i32 %221)
  br label %223

223:                                              ; preds = %219, %210, %203, %193
  %224 = load i32, i32* %9, align 4
  %225 = icmp sgt i32 %224, 1
  br i1 %225, label %226, label %246

226:                                              ; preds = %223
  %227 = load %struct.w83627ehf_data*, %struct.w83627ehf_data** %6, align 8
  %228 = getelementptr inbounds %struct.w83627ehf_data, %struct.w83627ehf_data* %227, i32 0, i32 5
  %229 = load i32*, i32** %228, align 8
  %230 = getelementptr inbounds i32, i32* %229, i64 1
  %231 = load i32, i32* %230, align 4
  %232 = icmp ne i32 %231, 2
  br i1 %232, label %233, label %246

233:                                              ; preds = %226
  %234 = load %struct.w83627ehf_data*, %struct.w83627ehf_data** %6, align 8
  %235 = getelementptr inbounds %struct.w83627ehf_data, %struct.w83627ehf_data* %234, i32 0, i32 5
  %236 = load i32*, i32** %235, align 8
  %237 = load i32, i32* %9, align 4
  %238 = sext i32 %237 to i64
  %239 = getelementptr inbounds i32, i32* %236, i64 %238
  %240 = load i32, i32* %239, align 4
  %241 = icmp eq i32 %240, 2
  br i1 %241, label %242, label %246

242:                                              ; preds = %233
  %243 = load %struct.w83627ehf_data*, %struct.w83627ehf_data** %6, align 8
  %244 = load i32, i32* %9, align 4
  %245 = call i32 @w82627ehf_swap_tempreg(%struct.w83627ehf_data* %243, i32 1, i32 %244)
  br label %246

246:                                              ; preds = %242, %233, %226, %223
  %247 = load i32, i32* %9, align 4
  %248 = icmp sgt i32 %247, 2
  br i1 %248, label %249, label %269

249:                                              ; preds = %246
  %250 = load %struct.w83627ehf_data*, %struct.w83627ehf_data** %6, align 8
  %251 = getelementptr inbounds %struct.w83627ehf_data, %struct.w83627ehf_data* %250, i32 0, i32 5
  %252 = load i32*, i32** %251, align 8
  %253 = getelementptr inbounds i32, i32* %252, i64 2
  %254 = load i32, i32* %253, align 4
  %255 = icmp ne i32 %254, 3
  br i1 %255, label %256, label %269

256:                                              ; preds = %249
  %257 = load %struct.w83627ehf_data*, %struct.w83627ehf_data** %6, align 8
  %258 = getelementptr inbounds %struct.w83627ehf_data, %struct.w83627ehf_data* %257, i32 0, i32 5
  %259 = load i32*, i32** %258, align 8
  %260 = load i32, i32* %9, align 4
  %261 = sext i32 %260 to i64
  %262 = getelementptr inbounds i32, i32* %259, i64 %261
  %263 = load i32, i32* %262, align 4
  %264 = icmp eq i32 %263, 3
  br i1 %264, label %265, label %269

265:                                              ; preds = %256
  %266 = load %struct.w83627ehf_data*, %struct.w83627ehf_data** %6, align 8
  %267 = load i32, i32* %9, align 4
  %268 = call i32 @w82627ehf_swap_tempreg(%struct.w83627ehf_data* %266, i32 2, i32 %267)
  br label %269

269:                                              ; preds = %265, %256, %249, %246
  br label %270

270:                                              ; preds = %269
  %271 = load i32, i32* %9, align 4
  %272 = add nsw i32 %271, 1
  store i32 %272, i32* %9, align 4
  br label %116

273:                                              ; preds = %116
  %274 = load %struct.w83627ehf_sio_data*, %struct.w83627ehf_sio_data** %5, align 8
  %275 = getelementptr inbounds %struct.w83627ehf_sio_data, %struct.w83627ehf_sio_data* %274, i32 0, i32 0
  %276 = load i64, i64* %275, align 8
  %277 = icmp eq i64 %276, 131
  br i1 %277, label %278, label %318

278:                                              ; preds = %273
  %279 = load %struct.w83627ehf_data*, %struct.w83627ehf_data** %6, align 8
  %280 = getelementptr inbounds %struct.w83627ehf_data, %struct.w83627ehf_data* %279, i32 0, i32 5
  %281 = load i32*, i32** %280, align 8
  %282 = getelementptr inbounds i32, i32* %281, i64 2
  %283 = load i32, i32* %282, align 4
  %284 = icmp eq i32 %283, 3
  br i1 %284, label %285, label %314

285:                                              ; preds = %278
  %286 = load %struct.w83627ehf_data*, %struct.w83627ehf_data** %6, align 8
  %287 = getelementptr inbounds %struct.w83627ehf_data, %struct.w83627ehf_data* %286, i32 0, i32 4
  %288 = load i32*, i32** %287, align 8
  %289 = getelementptr inbounds i32, i32* %288, i64 2
  %290 = load i32, i32* %289, align 4
  %291 = icmp ne i32 %290, 0
  br i1 %291, label %292, label %300

292:                                              ; preds = %285
  %293 = load %struct.w83627ehf_data*, %struct.w83627ehf_data** %6, align 8
  %294 = load %struct.w83627ehf_data*, %struct.w83627ehf_data** %6, align 8
  %295 = getelementptr inbounds %struct.w83627ehf_data, %struct.w83627ehf_data* %294, i32 0, i32 4
  %296 = load i32*, i32** %295, align 8
  %297 = getelementptr inbounds i32, i32* %296, i64 2
  %298 = load i32, i32* %297, align 4
  %299 = call i32 @w83627ehf_read_value(%struct.w83627ehf_data* %293, i32 %298)
  store i32 %299, i32* %13, align 4
  br label %301

300:                                              ; preds = %285
  store i32 0, i32* %13, align 4
  br label %301

301:                                              ; preds = %300, %292
  %302 = load i32, i32* %13, align 4
  %303 = and i32 %302, 1
  %304 = icmp ne i32 %303, 0
  br i1 %304, label %305, label %310

305:                                              ; preds = %301
  %306 = load %struct.w83627ehf_data*, %struct.w83627ehf_data** %6, align 8
  %307 = getelementptr inbounds %struct.w83627ehf_data, %struct.w83627ehf_data* %306, i32 0, i32 3
  %308 = load i32, i32* %307, align 4
  %309 = and i32 %308, -5
  store i32 %309, i32* %307, align 4
  br label %313

310:                                              ; preds = %301
  %311 = load %struct.w83627ehf_data*, %struct.w83627ehf_data** %6, align 8
  %312 = getelementptr inbounds %struct.w83627ehf_data, %struct.w83627ehf_data* %311, i32 0, i32 6
  store i32 1, i32* %312, align 8
  br label %313

313:                                              ; preds = %310, %305
  br label %314

314:                                              ; preds = %313, %278
  %315 = load i8*, i8** @nct6776_temp_label, align 8
  %316 = load %struct.w83627ehf_data*, %struct.w83627ehf_data** %6, align 8
  %317 = getelementptr inbounds %struct.w83627ehf_data, %struct.w83627ehf_data* %316, i32 0, i32 18
  store i8* %315, i8** %317, align 8
  br label %322

318:                                              ; preds = %273
  %319 = load i8*, i8** @nct6775_temp_label, align 8
  %320 = load %struct.w83627ehf_data*, %struct.w83627ehf_data** %6, align 8
  %321 = getelementptr inbounds %struct.w83627ehf_data, %struct.w83627ehf_data* %320, i32 0, i32 18
  store i8* %319, i8** %321, align 8
  br label %322

322:                                              ; preds = %318, %314
  %323 = load %struct.w83627ehf_data*, %struct.w83627ehf_data** %6, align 8
  %324 = getelementptr inbounds %struct.w83627ehf_data, %struct.w83627ehf_data* %323, i32 0, i32 3
  %325 = load i32, i32* %324, align 4
  %326 = and i32 %325, 7
  %327 = load %struct.w83627ehf_data*, %struct.w83627ehf_data** %6, align 8
  %328 = getelementptr inbounds %struct.w83627ehf_data, %struct.w83627ehf_data* %327, i32 0, i32 7
  store i32 %326, i32* %328, align 4
  store i32 0, i32* %9, align 4
  br label %329

329:                                              ; preds = %350, %322
  %330 = load i32, i32* %9, align 4
  %331 = icmp slt i32 %330, 3
  br i1 %331, label %332, label %353

332:                                              ; preds = %329
  %333 = load %struct.w83627ehf_data*, %struct.w83627ehf_data** %6, align 8
  %334 = getelementptr inbounds %struct.w83627ehf_data, %struct.w83627ehf_data* %333, i32 0, i32 5
  %335 = load i32*, i32** %334, align 8
  %336 = load i32, i32* %9, align 4
  %337 = sext i32 %336 to i64
  %338 = getelementptr inbounds i32, i32* %335, i64 %337
  %339 = load i32, i32* %338, align 4
  %340 = icmp sgt i32 %339, 3
  br i1 %340, label %341, label %349

341:                                              ; preds = %332
  %342 = load i32, i32* %9, align 4
  %343 = shl i32 1, %342
  %344 = xor i32 %343, -1
  %345 = load %struct.w83627ehf_data*, %struct.w83627ehf_data** %6, align 8
  %346 = getelementptr inbounds %struct.w83627ehf_data, %struct.w83627ehf_data* %345, i32 0, i32 7
  %347 = load i32, i32* %346, align 4
  %348 = and i32 %347, %344
  store i32 %348, i32* %346, align 4
  br label %349

349:                                              ; preds = %341, %332
  br label %350

350:                                              ; preds = %349
  %351 = load i32, i32* %9, align 4
  %352 = add nsw i32 %351, 1
  store i32 %352, i32* %9, align 4
  br label %329

353:                                              ; preds = %329
  br label %679

354:                                              ; preds = %110
  %355 = load %struct.w83627ehf_sio_data*, %struct.w83627ehf_sio_data** %5, align 8
  %356 = getelementptr inbounds %struct.w83627ehf_sio_data, %struct.w83627ehf_sio_data* %355, i32 0, i32 0
  %357 = load i64, i64* %356, align 8
  %358 = icmp eq i64 %357, 128
  br i1 %358, label %359, label %507

359:                                              ; preds = %354
  %360 = load %struct.w83627ehf_data*, %struct.w83627ehf_data** %6, align 8
  %361 = call i32 @w83627ehf_set_temp_reg_ehf(%struct.w83627ehf_data* %360, i32 4)
  %362 = load %struct.w83627ehf_data*, %struct.w83627ehf_data** %6, align 8
  %363 = call i32 @w83627ehf_read_value(%struct.w83627ehf_data* %362, i32 74)
  store i32 %363, i32* %14, align 4
  %364 = load i32, i32* %14, align 4
  %365 = ashr i32 %364, 5
  %366 = load %struct.w83627ehf_data*, %struct.w83627ehf_data** %6, align 8
  %367 = getelementptr inbounds %struct.w83627ehf_data, %struct.w83627ehf_data* %366, i32 0, i32 5
  %368 = load i32*, i32** %367, align 8
  %369 = getelementptr inbounds i32, i32* %368, i64 0
  store i32 %365, i32* %369, align 4
  %370 = load %struct.w83627ehf_data*, %struct.w83627ehf_data** %6, align 8
  %371 = call i32 @w83627ehf_read_value(%struct.w83627ehf_data* %370, i32 73)
  store i32 %371, i32* %14, align 4
  %372 = load i32, i32* %14, align 4
  %373 = and i32 %372, 7
  %374 = load %struct.w83627ehf_data*, %struct.w83627ehf_data** %6, align 8
  %375 = getelementptr inbounds %struct.w83627ehf_data, %struct.w83627ehf_data* %374, i32 0, i32 5
  %376 = load i32*, i32** %375, align 8
  %377 = getelementptr inbounds i32, i32* %376, i64 1
  store i32 %373, i32* %377, align 4
  %378 = load i32, i32* %14, align 4
  %379 = ashr i32 %378, 4
  %380 = and i32 %379, 7
  %381 = load %struct.w83627ehf_data*, %struct.w83627ehf_data** %6, align 8
  %382 = getelementptr inbounds %struct.w83627ehf_data, %struct.w83627ehf_data* %381, i32 0, i32 5
  %383 = load i32*, i32** %382, align 8
  %384 = getelementptr inbounds i32, i32* %383, i64 2
  store i32 %380, i32* %384, align 4
  %385 = load %struct.w83627ehf_data*, %struct.w83627ehf_data** %6, align 8
  %386 = call i32 @w83627ehf_read_value(%struct.w83627ehf_data* %385, i32 125)
  store i32 %386, i32* %14, align 4
  %387 = load i32, i32* %14, align 4
  %388 = and i32 %387, 7
  store i32 %388, i32* %14, align 4
  %389 = load i32, i32* %14, align 4
  %390 = load %struct.w83627ehf_data*, %struct.w83627ehf_data** %6, align 8
  %391 = getelementptr inbounds %struct.w83627ehf_data, %struct.w83627ehf_data* %390, i32 0, i32 5
  %392 = load i32*, i32** %391, align 8
  %393 = getelementptr inbounds i32, i32* %392, i64 0
  %394 = load i32, i32* %393, align 4
  %395 = icmp ne i32 %389, %394
  br i1 %395, label %396, label %422

396:                                              ; preds = %359
  %397 = load i32, i32* %14, align 4
  %398 = load %struct.w83627ehf_data*, %struct.w83627ehf_data** %6, align 8
  %399 = getelementptr inbounds %struct.w83627ehf_data, %struct.w83627ehf_data* %398, i32 0, i32 5
  %400 = load i32*, i32** %399, align 8
  %401 = getelementptr inbounds i32, i32* %400, i64 1
  %402 = load i32, i32* %401, align 4
  %403 = icmp ne i32 %397, %402
  br i1 %403, label %404, label %422

404:                                              ; preds = %396
  %405 = load i32, i32* %14, align 4
  %406 = load %struct.w83627ehf_data*, %struct.w83627ehf_data** %6, align 8
  %407 = getelementptr inbounds %struct.w83627ehf_data, %struct.w83627ehf_data* %406, i32 0, i32 5
  %408 = load i32*, i32** %407, align 8
  %409 = getelementptr inbounds i32, i32* %408, i64 2
  %410 = load i32, i32* %409, align 4
  %411 = icmp ne i32 %405, %410
  br i1 %411, label %412, label %422

412:                                              ; preds = %404
  %413 = load i32, i32* %14, align 4
  %414 = load %struct.w83627ehf_data*, %struct.w83627ehf_data** %6, align 8
  %415 = getelementptr inbounds %struct.w83627ehf_data, %struct.w83627ehf_data* %414, i32 0, i32 5
  %416 = load i32*, i32** %415, align 8
  %417 = getelementptr inbounds i32, i32* %416, i64 3
  store i32 %413, i32* %417, align 4
  %418 = load %struct.w83627ehf_data*, %struct.w83627ehf_data** %6, align 8
  %419 = getelementptr inbounds %struct.w83627ehf_data, %struct.w83627ehf_data* %418, i32 0, i32 3
  %420 = load i32, i32* %419, align 4
  %421 = or i32 %420, 8
  store i32 %421, i32* %419, align 4
  br label %422

422:                                              ; preds = %412, %404, %396, %359
  %423 = load %struct.w83627ehf_data*, %struct.w83627ehf_data** %6, align 8
  %424 = load i32*, i32** @W83627EHF_REG_TEMP_CONFIG, align 8
  %425 = getelementptr inbounds i32, i32* %424, i64 2
  %426 = load i32, i32* %425, align 4
  %427 = call i32 @w83627ehf_read_value(%struct.w83627ehf_data* %423, i32 %426)
  store i32 %427, i32* %14, align 4
  %428 = load %struct.w83627ehf_data*, %struct.w83627ehf_data** %6, align 8
  %429 = getelementptr inbounds %struct.w83627ehf_data, %struct.w83627ehf_data* %428, i32 0, i32 5
  %430 = load i32*, i32** %429, align 8
  %431 = getelementptr inbounds i32, i32* %430, i64 2
  %432 = load i32, i32* %431, align 4
  %433 = icmp eq i32 %432, 2
  br i1 %433, label %434, label %443

434:                                              ; preds = %422
  %435 = load i32, i32* %14, align 4
  %436 = and i32 %435, 1
  %437 = icmp ne i32 %436, 0
  br i1 %437, label %438, label %443

438:                                              ; preds = %434
  %439 = load %struct.w83627ehf_data*, %struct.w83627ehf_data** %6, align 8
  %440 = getelementptr inbounds %struct.w83627ehf_data, %struct.w83627ehf_data* %439, i32 0, i32 3
  %441 = load i32, i32* %440, align 4
  %442 = and i32 %441, -5
  store i32 %442, i32* %440, align 4
  br label %443

443:                                              ; preds = %438, %434, %422
  %444 = load %struct.w83627ehf_data*, %struct.w83627ehf_data** %6, align 8
  %445 = getelementptr inbounds %struct.w83627ehf_data, %struct.w83627ehf_data* %444, i32 0, i32 5
  %446 = load i32*, i32** %445, align 8
  %447 = getelementptr inbounds i32, i32* %446, i64 2
  %448 = load i32, i32* %447, align 4
  %449 = icmp eq i32 %448, 2
  br i1 %449, label %450, label %456

450:                                              ; preds = %443
  %451 = load %struct.w83627ehf_data*, %struct.w83627ehf_data** %6, align 8
  %452 = getelementptr inbounds %struct.w83627ehf_data, %struct.w83627ehf_data* %451, i32 0, i32 3
  %453 = load i32, i32* %452, align 4
  %454 = and i32 %453, 4
  %455 = icmp ne i32 %454, 0
  br i1 %455, label %469, label %456

456:                                              ; preds = %450, %443
  %457 = load %struct.w83627ehf_data*, %struct.w83627ehf_data** %6, align 8
  %458 = getelementptr inbounds %struct.w83627ehf_data, %struct.w83627ehf_data* %457, i32 0, i32 5
  %459 = load i32*, i32** %458, align 8
  %460 = getelementptr inbounds i32, i32* %459, i64 3
  %461 = load i32, i32* %460, align 4
  %462 = icmp eq i32 %461, 2
  br i1 %462, label %463, label %472

463:                                              ; preds = %456
  %464 = load %struct.w83627ehf_data*, %struct.w83627ehf_data** %6, align 8
  %465 = getelementptr inbounds %struct.w83627ehf_data, %struct.w83627ehf_data* %464, i32 0, i32 3
  %466 = load i32, i32* %465, align 4
  %467 = and i32 %466, 8
  %468 = icmp ne i32 %467, 0
  br i1 %468, label %469, label %472

469:                                              ; preds = %463, %450
  %470 = load %struct.w83627ehf_data*, %struct.w83627ehf_data** %6, align 8
  %471 = getelementptr inbounds %struct.w83627ehf_data, %struct.w83627ehf_data* %470, i32 0, i32 6
  store i32 1, i32* %471, align 8
  br label %472

472:                                              ; preds = %469, %463, %456
  %473 = load i8*, i8** @w83667hg_b_temp_label, align 8
  %474 = load %struct.w83627ehf_data*, %struct.w83627ehf_data** %6, align 8
  %475 = getelementptr inbounds %struct.w83627ehf_data, %struct.w83627ehf_data* %474, i32 0, i32 18
  store i8* %473, i8** %475, align 8
  %476 = load %struct.w83627ehf_data*, %struct.w83627ehf_data** %6, align 8
  %477 = getelementptr inbounds %struct.w83627ehf_data, %struct.w83627ehf_data* %476, i32 0, i32 3
  %478 = load i32, i32* %477, align 4
  %479 = and i32 %478, 7
  %480 = load %struct.w83627ehf_data*, %struct.w83627ehf_data** %6, align 8
  %481 = getelementptr inbounds %struct.w83627ehf_data, %struct.w83627ehf_data* %480, i32 0, i32 7
  store i32 %479, i32* %481, align 4
  store i32 0, i32* %9, align 4
  br label %482

482:                                              ; preds = %503, %472
  %483 = load i32, i32* %9, align 4
  %484 = icmp slt i32 %483, 3
  br i1 %484, label %485, label %506

485:                                              ; preds = %482
  %486 = load %struct.w83627ehf_data*, %struct.w83627ehf_data** %6, align 8
  %487 = getelementptr inbounds %struct.w83627ehf_data, %struct.w83627ehf_data* %486, i32 0, i32 5
  %488 = load i32*, i32** %487, align 8
  %489 = load i32, i32* %9, align 4
  %490 = sext i32 %489 to i64
  %491 = getelementptr inbounds i32, i32* %488, i64 %490
  %492 = load i32, i32* %491, align 4
  %493 = icmp sgt i32 %492, 2
  br i1 %493, label %494, label %502

494:                                              ; preds = %485
  %495 = load i32, i32* %9, align 4
  %496 = shl i32 1, %495
  %497 = xor i32 %496, -1
  %498 = load %struct.w83627ehf_data*, %struct.w83627ehf_data** %6, align 8
  %499 = getelementptr inbounds %struct.w83627ehf_data, %struct.w83627ehf_data* %498, i32 0, i32 7
  %500 = load i32, i32* %499, align 4
  %501 = and i32 %500, %497
  store i32 %501, i32* %499, align 4
  br label %502

502:                                              ; preds = %494, %485
  br label %503

503:                                              ; preds = %502
  %504 = load i32, i32* %9, align 4
  %505 = add nsw i32 %504, 1
  store i32 %505, i32* %9, align 4
  br label %482

506:                                              ; preds = %482
  br label %678

507:                                              ; preds = %354
  %508 = load %struct.w83627ehf_sio_data*, %struct.w83627ehf_sio_data** %5, align 8
  %509 = getelementptr inbounds %struct.w83627ehf_sio_data, %struct.w83627ehf_sio_data* %508, i32 0, i32 0
  %510 = load i64, i64* %509, align 8
  %511 = icmp eq i64 %510, 130
  br i1 %511, label %512, label %645

512:                                              ; preds = %507
  %513 = load %struct.w83627ehf_data*, %struct.w83627ehf_data** %6, align 8
  %514 = call i32 @w83627ehf_set_temp_reg_ehf(%struct.w83627ehf_data* %513, i32 3)
  %515 = load %struct.w83627ehf_data*, %struct.w83627ehf_data** %6, align 8
  %516 = getelementptr inbounds %struct.w83627ehf_data, %struct.w83627ehf_data* %515, i32 0, i32 5
  %517 = load i32*, i32** %516, align 8
  %518 = getelementptr inbounds i32, i32* %517, i64 0
  store i32 0, i32* %518, align 4
  %519 = load %struct.w83627ehf_data*, %struct.w83627ehf_data** %6, align 8
  %520 = call i32 @w83627ehf_read_value(%struct.w83627ehf_data* %519, i32 73)
  %521 = and i32 %520, 7
  store i32 %521, i32* %15, align 4
  %522 = load i32, i32* %15, align 4
  %523 = icmp eq i32 %522, 0
  br i1 %523, label %524, label %529

524:                                              ; preds = %512
  %525 = load %struct.w83627ehf_data*, %struct.w83627ehf_data** %6, align 8
  %526 = getelementptr inbounds %struct.w83627ehf_data, %struct.w83627ehf_data* %525, i32 0, i32 5
  %527 = load i32*, i32** %526, align 8
  %528 = getelementptr inbounds i32, i32* %527, i64 1
  store i32 1, i32* %528, align 4
  br label %548

529:                                              ; preds = %512
  %530 = load i32, i32* %15, align 4
  %531 = icmp sge i32 %530, 2
  br i1 %531, label %532, label %542

532:                                              ; preds = %529
  %533 = load i32, i32* %15, align 4
  %534 = icmp sle i32 %533, 5
  br i1 %534, label %535, label %542

535:                                              ; preds = %532
  %536 = load i32, i32* %15, align 4
  %537 = add nsw i32 %536, 2
  %538 = load %struct.w83627ehf_data*, %struct.w83627ehf_data** %6, align 8
  %539 = getelementptr inbounds %struct.w83627ehf_data, %struct.w83627ehf_data* %538, i32 0, i32 5
  %540 = load i32*, i32** %539, align 8
  %541 = getelementptr inbounds i32, i32* %540, i64 1
  store i32 %537, i32* %541, align 4
  br label %547

542:                                              ; preds = %532, %529
  %543 = load %struct.w83627ehf_data*, %struct.w83627ehf_data** %6, align 8
  %544 = getelementptr inbounds %struct.w83627ehf_data, %struct.w83627ehf_data* %543, i32 0, i32 3
  %545 = load i32, i32* %544, align 4
  %546 = and i32 %545, -3
  store i32 %546, i32* %544, align 4
  br label %547

547:                                              ; preds = %542, %535
  br label %548

548:                                              ; preds = %547, %524
  %549 = load %struct.w83627ehf_data*, %struct.w83627ehf_data** %6, align 8
  %550 = call i32 @w83627ehf_read_value(%struct.w83627ehf_data* %549, i32 74)
  store i32 %550, i32* %15, align 4
  %551 = load i32, i32* %15, align 4
  %552 = ashr i32 %551, 5
  %553 = load %struct.w83627ehf_data*, %struct.w83627ehf_data** %6, align 8
  %554 = getelementptr inbounds %struct.w83627ehf_data, %struct.w83627ehf_data* %553, i32 0, i32 5
  %555 = load i32*, i32** %554, align 8
  %556 = getelementptr inbounds i32, i32* %555, i64 2
  store i32 %552, i32* %556, align 4
  %557 = load %struct.w83627ehf_data*, %struct.w83627ehf_data** %6, align 8
  %558 = getelementptr inbounds %struct.w83627ehf_data, %struct.w83627ehf_data* %557, i32 0, i32 5
  %559 = load i32*, i32** %558, align 8
  %560 = getelementptr inbounds i32, i32* %559, i64 2
  %561 = load i32, i32* %560, align 4
  %562 = icmp eq i32 %561, 2
  br i1 %562, label %600, label %563

563:                                              ; preds = %548
  %564 = load %struct.w83627ehf_data*, %struct.w83627ehf_data** %6, align 8
  %565 = getelementptr inbounds %struct.w83627ehf_data, %struct.w83627ehf_data* %564, i32 0, i32 5
  %566 = load i32*, i32** %565, align 8
  %567 = getelementptr inbounds i32, i32* %566, i64 2
  %568 = load i32, i32* %567, align 4
  %569 = icmp eq i32 %568, 3
  br i1 %569, label %600, label %570

570:                                              ; preds = %563
  %571 = load %struct.w83627ehf_data*, %struct.w83627ehf_data** %6, align 8
  %572 = getelementptr inbounds %struct.w83627ehf_data, %struct.w83627ehf_data* %571, i32 0, i32 5
  %573 = load i32*, i32** %572, align 8
  %574 = getelementptr inbounds i32, i32* %573, i64 2
  %575 = load i32, i32* %574, align 4
  %576 = load %struct.w83627ehf_data*, %struct.w83627ehf_data** %6, align 8
  %577 = getelementptr inbounds %struct.w83627ehf_data, %struct.w83627ehf_data* %576, i32 0, i32 5
  %578 = load i32*, i32** %577, align 8
  %579 = getelementptr inbounds i32, i32* %578, i64 0
  %580 = load i32, i32* %579, align 4
  %581 = icmp eq i32 %575, %580
  br i1 %581, label %600, label %582

582:                                              ; preds = %570
  %583 = load %struct.w83627ehf_data*, %struct.w83627ehf_data** %6, align 8
  %584 = getelementptr inbounds %struct.w83627ehf_data, %struct.w83627ehf_data* %583, i32 0, i32 3
  %585 = load i32, i32* %584, align 4
  %586 = and i32 %585, 2
  %587 = icmp ne i32 %586, 0
  br i1 %587, label %588, label %605

588:                                              ; preds = %582
  %589 = load %struct.w83627ehf_data*, %struct.w83627ehf_data** %6, align 8
  %590 = getelementptr inbounds %struct.w83627ehf_data, %struct.w83627ehf_data* %589, i32 0, i32 5
  %591 = load i32*, i32** %590, align 8
  %592 = getelementptr inbounds i32, i32* %591, i64 2
  %593 = load i32, i32* %592, align 4
  %594 = load %struct.w83627ehf_data*, %struct.w83627ehf_data** %6, align 8
  %595 = getelementptr inbounds %struct.w83627ehf_data, %struct.w83627ehf_data* %594, i32 0, i32 5
  %596 = load i32*, i32** %595, align 8
  %597 = getelementptr inbounds i32, i32* %596, i64 1
  %598 = load i32, i32* %597, align 4
  %599 = icmp eq i32 %593, %598
  br i1 %599, label %600, label %605

600:                                              ; preds = %588, %570, %563, %548
  %601 = load %struct.w83627ehf_data*, %struct.w83627ehf_data** %6, align 8
  %602 = getelementptr inbounds %struct.w83627ehf_data, %struct.w83627ehf_data* %601, i32 0, i32 3
  %603 = load i32, i32* %602, align 4
  %604 = and i32 %603, -5
  store i32 %604, i32* %602, align 4
  br label %608

605:                                              ; preds = %588, %582
  %606 = load %struct.w83627ehf_data*, %struct.w83627ehf_data** %6, align 8
  %607 = getelementptr inbounds %struct.w83627ehf_data, %struct.w83627ehf_data* %606, i32 0, i32 8
  store i32 1, i32* %607, align 8
  br label %608

608:                                              ; preds = %605, %600
  %609 = load %struct.w83627ehf_data*, %struct.w83627ehf_data** %6, align 8
  %610 = getelementptr inbounds %struct.w83627ehf_data, %struct.w83627ehf_data* %609, i32 0, i32 6
  store i32 1, i32* %610, align 8
  %611 = load i8*, i8** @w83667hg_b_temp_label, align 8
  %612 = load %struct.w83627ehf_data*, %struct.w83627ehf_data** %6, align 8
  %613 = getelementptr inbounds %struct.w83627ehf_data, %struct.w83627ehf_data* %612, i32 0, i32 18
  store i8* %611, i8** %613, align 8
  %614 = load %struct.w83627ehf_data*, %struct.w83627ehf_data** %6, align 8
  %615 = getelementptr inbounds %struct.w83627ehf_data, %struct.w83627ehf_data* %614, i32 0, i32 3
  %616 = load i32, i32* %615, align 4
  %617 = and i32 %616, 3
  %618 = load %struct.w83627ehf_data*, %struct.w83627ehf_data** %6, align 8
  %619 = getelementptr inbounds %struct.w83627ehf_data, %struct.w83627ehf_data* %618, i32 0, i32 7
  store i32 %617, i32* %619, align 4
  store i32 0, i32* %9, align 4
  br label %620

620:                                              ; preds = %641, %608
  %621 = load i32, i32* %9, align 4
  %622 = icmp slt i32 %621, 3
  br i1 %622, label %623, label %644

623:                                              ; preds = %620
  %624 = load %struct.w83627ehf_data*, %struct.w83627ehf_data** %6, align 8
  %625 = getelementptr inbounds %struct.w83627ehf_data, %struct.w83627ehf_data* %624, i32 0, i32 5
  %626 = load i32*, i32** %625, align 8
  %627 = load i32, i32* %9, align 4
  %628 = sext i32 %627 to i64
  %629 = getelementptr inbounds i32, i32* %626, i64 %628
  %630 = load i32, i32* %629, align 4
  %631 = icmp sgt i32 %630, 1
  br i1 %631, label %632, label %640

632:                                              ; preds = %623
  %633 = load i32, i32* %9, align 4
  %634 = shl i32 1, %633
  %635 = xor i32 %634, -1
  %636 = load %struct.w83627ehf_data*, %struct.w83627ehf_data** %6, align 8
  %637 = getelementptr inbounds %struct.w83627ehf_data, %struct.w83627ehf_data* %636, i32 0, i32 7
  %638 = load i32, i32* %637, align 4
  %639 = and i32 %638, %635
  store i32 %639, i32* %637, align 4
  br label %640

640:                                              ; preds = %632, %623
  br label %641

641:                                              ; preds = %640
  %642 = load i32, i32* %9, align 4
  %643 = add nsw i32 %642, 1
  store i32 %643, i32* %9, align 4
  br label %620

644:                                              ; preds = %620
  br label %677

645:                                              ; preds = %507
  %646 = load %struct.w83627ehf_data*, %struct.w83627ehf_data** %6, align 8
  %647 = call i32 @w83627ehf_set_temp_reg_ehf(%struct.w83627ehf_data* %646, i32 3)
  %648 = load %struct.w83627ehf_sio_data*, %struct.w83627ehf_sio_data** %5, align 8
  %649 = getelementptr inbounds %struct.w83627ehf_sio_data, %struct.w83627ehf_sio_data* %648, i32 0, i32 0
  %650 = load i64, i64* %649, align 8
  %651 = icmp eq i64 %650, 129
  br i1 %651, label %652, label %670

652:                                              ; preds = %645
  %653 = load %struct.w83627ehf_data*, %struct.w83627ehf_data** %6, align 8
  %654 = load i32*, i32** @W83627EHF_REG_TEMP_CONFIG, align 8
  %655 = getelementptr inbounds i32, i32* %654, i64 2
  %656 = load i32, i32* %655, align 4
  %657 = call i32 @w83627ehf_read_value(%struct.w83627ehf_data* %653, i32 %656)
  store i32 %657, i32* %16, align 4
  %658 = load i32, i32* %16, align 4
  %659 = and i32 %658, 1
  %660 = icmp ne i32 %659, 0
  br i1 %660, label %661, label %666

661:                                              ; preds = %652
  %662 = load %struct.w83627ehf_data*, %struct.w83627ehf_data** %6, align 8
  %663 = getelementptr inbounds %struct.w83627ehf_data, %struct.w83627ehf_data* %662, i32 0, i32 3
  %664 = load i32, i32* %663, align 4
  %665 = and i32 %664, -5
  store i32 %665, i32* %663, align 4
  br label %669

666:                                              ; preds = %652
  %667 = load %struct.w83627ehf_data*, %struct.w83627ehf_data** %6, align 8
  %668 = getelementptr inbounds %struct.w83627ehf_data, %struct.w83627ehf_data* %667, i32 0, i32 6
  store i32 1, i32* %668, align 8
  br label %669

669:                                              ; preds = %666, %661
  br label %670

670:                                              ; preds = %669, %645
  %671 = load %struct.w83627ehf_data*, %struct.w83627ehf_data** %6, align 8
  %672 = getelementptr inbounds %struct.w83627ehf_data, %struct.w83627ehf_data* %671, i32 0, i32 3
  %673 = load i32, i32* %672, align 4
  %674 = and i32 %673, 7
  %675 = load %struct.w83627ehf_data*, %struct.w83627ehf_data** %6, align 8
  %676 = getelementptr inbounds %struct.w83627ehf_data, %struct.w83627ehf_data* %675, i32 0, i32 7
  store i32 %674, i32* %676, align 4
  br label %677

677:                                              ; preds = %670, %644
  br label %678

678:                                              ; preds = %677, %506
  br label %679

679:                                              ; preds = %678, %353
  %680 = load %struct.w83627ehf_sio_data*, %struct.w83627ehf_sio_data** %5, align 8
  %681 = getelementptr inbounds %struct.w83627ehf_sio_data, %struct.w83627ehf_sio_data* %680, i32 0, i32 0
  %682 = load i64, i64* %681, align 8
  %683 = icmp eq i64 %682, 132
  br i1 %683, label %684, label %720

684:                                              ; preds = %679
  %685 = load %struct.w83627ehf_data*, %struct.w83627ehf_data** %6, align 8
  %686 = getelementptr inbounds %struct.w83627ehf_data, %struct.w83627ehf_data* %685, i32 0, i32 9
  store i32 1, i32* %686, align 4
  %687 = load i8*, i8** @fan_from_reg16, align 8
  %688 = load %struct.w83627ehf_data*, %struct.w83627ehf_data** %6, align 8
  %689 = getelementptr inbounds %struct.w83627ehf_data, %struct.w83627ehf_data* %688, i32 0, i32 32
  store i8* %687, i8** %689, align 8
  %690 = load i8*, i8** @fan_from_reg8, align 8
  %691 = load %struct.w83627ehf_data*, %struct.w83627ehf_data** %6, align 8
  %692 = getelementptr inbounds %struct.w83627ehf_data, %struct.w83627ehf_data* %691, i32 0, i32 31
  store i8* %690, i8** %692, align 8
  %693 = load i8*, i8** @NCT6775_REG_PWM, align 8
  %694 = load %struct.w83627ehf_data*, %struct.w83627ehf_data** %6, align 8
  %695 = getelementptr inbounds %struct.w83627ehf_data, %struct.w83627ehf_data* %694, i32 0, i32 30
  store i8* %693, i8** %695, align 8
  %696 = load i8*, i8** @NCT6775_REG_TARGET, align 8
  %697 = load %struct.w83627ehf_data*, %struct.w83627ehf_data** %6, align 8
  %698 = getelementptr inbounds %struct.w83627ehf_data, %struct.w83627ehf_data* %697, i32 0, i32 29
  store i8* %696, i8** %698, align 8
  %699 = load i8*, i8** @NCT6775_REG_FAN, align 8
  %700 = load %struct.w83627ehf_data*, %struct.w83627ehf_data** %6, align 8
  %701 = getelementptr inbounds %struct.w83627ehf_data, %struct.w83627ehf_data* %700, i32 0, i32 28
  store i8* %699, i8** %701, align 8
  %702 = load i8*, i8** @W83627EHF_REG_FAN_MIN, align 8
  %703 = load %struct.w83627ehf_data*, %struct.w83627ehf_data** %6, align 8
  %704 = getelementptr inbounds %struct.w83627ehf_data, %struct.w83627ehf_data* %703, i32 0, i32 27
  store i8* %702, i8** %704, align 8
  %705 = load i8*, i8** @NCT6775_REG_FAN_START_OUTPUT, align 8
  %706 = load %struct.w83627ehf_data*, %struct.w83627ehf_data** %6, align 8
  %707 = getelementptr inbounds %struct.w83627ehf_data, %struct.w83627ehf_data* %706, i32 0, i32 26
  store i8* %705, i8** %707, align 8
  %708 = load i8*, i8** @NCT6775_REG_FAN_STOP_OUTPUT, align 8
  %709 = load %struct.w83627ehf_data*, %struct.w83627ehf_data** %6, align 8
  %710 = getelementptr inbounds %struct.w83627ehf_data, %struct.w83627ehf_data* %709, i32 0, i32 25
  store i8* %708, i8** %710, align 8
  %711 = load i8*, i8** @NCT6775_REG_FAN_STOP_TIME, align 8
  %712 = load %struct.w83627ehf_data*, %struct.w83627ehf_data** %6, align 8
  %713 = getelementptr inbounds %struct.w83627ehf_data, %struct.w83627ehf_data* %712, i32 0, i32 24
  store i8* %711, i8** %713, align 8
  %714 = load i32, i32* @NCT6775_REG_FAN_MAX_OUTPUT, align 4
  %715 = load %struct.w83627ehf_data*, %struct.w83627ehf_data** %6, align 8
  %716 = getelementptr inbounds %struct.w83627ehf_data, %struct.w83627ehf_data* %715, i32 0, i32 23
  store i32 %714, i32* %716, align 8
  %717 = load i32*, i32** @NCT6775_REG_FAN_STEP_OUTPUT, align 8
  %718 = load %struct.w83627ehf_data*, %struct.w83627ehf_data** %6, align 8
  %719 = getelementptr inbounds %struct.w83627ehf_data, %struct.w83627ehf_data* %718, i32 0, i32 10
  store i32* %717, i32** %719, align 8
  br label %834

720:                                              ; preds = %679
  %721 = load %struct.w83627ehf_sio_data*, %struct.w83627ehf_sio_data** %5, align 8
  %722 = getelementptr inbounds %struct.w83627ehf_sio_data, %struct.w83627ehf_sio_data* %721, i32 0, i32 0
  %723 = load i64, i64* %722, align 8
  %724 = icmp eq i64 %723, 131
  br i1 %724, label %725, label %755

725:                                              ; preds = %720
  %726 = load %struct.w83627ehf_data*, %struct.w83627ehf_data** %6, align 8
  %727 = getelementptr inbounds %struct.w83627ehf_data, %struct.w83627ehf_data* %726, i32 0, i32 9
  store i32 0, i32* %727, align 4
  %728 = load i8*, i8** @fan_from_reg13, align 8
  %729 = load %struct.w83627ehf_data*, %struct.w83627ehf_data** %6, align 8
  %730 = getelementptr inbounds %struct.w83627ehf_data, %struct.w83627ehf_data* %729, i32 0, i32 32
  store i8* %728, i8** %730, align 8
  %731 = load i8*, i8** @fan_from_reg13, align 8
  %732 = load %struct.w83627ehf_data*, %struct.w83627ehf_data** %6, align 8
  %733 = getelementptr inbounds %struct.w83627ehf_data, %struct.w83627ehf_data* %732, i32 0, i32 31
  store i8* %731, i8** %733, align 8
  %734 = load i8*, i8** @NCT6775_REG_PWM, align 8
  %735 = load %struct.w83627ehf_data*, %struct.w83627ehf_data** %6, align 8
  %736 = getelementptr inbounds %struct.w83627ehf_data, %struct.w83627ehf_data* %735, i32 0, i32 30
  store i8* %734, i8** %736, align 8
  %737 = load i8*, i8** @NCT6775_REG_TARGET, align 8
  %738 = load %struct.w83627ehf_data*, %struct.w83627ehf_data** %6, align 8
  %739 = getelementptr inbounds %struct.w83627ehf_data, %struct.w83627ehf_data* %738, i32 0, i32 29
  store i8* %737, i8** %739, align 8
  %740 = load i8*, i8** @NCT6775_REG_FAN, align 8
  %741 = load %struct.w83627ehf_data*, %struct.w83627ehf_data** %6, align 8
  %742 = getelementptr inbounds %struct.w83627ehf_data, %struct.w83627ehf_data* %741, i32 0, i32 28
  store i8* %740, i8** %742, align 8
  %743 = load i8*, i8** @NCT6776_REG_FAN_MIN, align 8
  %744 = load %struct.w83627ehf_data*, %struct.w83627ehf_data** %6, align 8
  %745 = getelementptr inbounds %struct.w83627ehf_data, %struct.w83627ehf_data* %744, i32 0, i32 27
  store i8* %743, i8** %745, align 8
  %746 = load i8*, i8** @NCT6775_REG_FAN_START_OUTPUT, align 8
  %747 = load %struct.w83627ehf_data*, %struct.w83627ehf_data** %6, align 8
  %748 = getelementptr inbounds %struct.w83627ehf_data, %struct.w83627ehf_data* %747, i32 0, i32 26
  store i8* %746, i8** %748, align 8
  %749 = load i8*, i8** @NCT6775_REG_FAN_STOP_OUTPUT, align 8
  %750 = load %struct.w83627ehf_data*, %struct.w83627ehf_data** %6, align 8
  %751 = getelementptr inbounds %struct.w83627ehf_data, %struct.w83627ehf_data* %750, i32 0, i32 25
  store i8* %749, i8** %751, align 8
  %752 = load i8*, i8** @NCT6775_REG_FAN_STOP_TIME, align 8
  %753 = load %struct.w83627ehf_data*, %struct.w83627ehf_data** %6, align 8
  %754 = getelementptr inbounds %struct.w83627ehf_data, %struct.w83627ehf_data* %753, i32 0, i32 24
  store i8* %752, i8** %754, align 8
  br label %833

755:                                              ; preds = %720
  %756 = load %struct.w83627ehf_sio_data*, %struct.w83627ehf_sio_data** %5, align 8
  %757 = getelementptr inbounds %struct.w83627ehf_sio_data, %struct.w83627ehf_sio_data* %756, i32 0, i32 0
  %758 = load i64, i64* %757, align 8
  %759 = icmp eq i64 %758, 128
  br i1 %759, label %760, label %796

760:                                              ; preds = %755
  %761 = load %struct.w83627ehf_data*, %struct.w83627ehf_data** %6, align 8
  %762 = getelementptr inbounds %struct.w83627ehf_data, %struct.w83627ehf_data* %761, i32 0, i32 9
  store i32 1, i32* %762, align 4
  %763 = load i8*, i8** @fan_from_reg8, align 8
  %764 = load %struct.w83627ehf_data*, %struct.w83627ehf_data** %6, align 8
  %765 = getelementptr inbounds %struct.w83627ehf_data, %struct.w83627ehf_data* %764, i32 0, i32 32
  store i8* %763, i8** %765, align 8
  %766 = load i8*, i8** @fan_from_reg8, align 8
  %767 = load %struct.w83627ehf_data*, %struct.w83627ehf_data** %6, align 8
  %768 = getelementptr inbounds %struct.w83627ehf_data, %struct.w83627ehf_data* %767, i32 0, i32 31
  store i8* %766, i8** %768, align 8
  %769 = load i8*, i8** @W83627EHF_REG_PWM, align 8
  %770 = load %struct.w83627ehf_data*, %struct.w83627ehf_data** %6, align 8
  %771 = getelementptr inbounds %struct.w83627ehf_data, %struct.w83627ehf_data* %770, i32 0, i32 30
  store i8* %769, i8** %771, align 8
  %772 = load i8*, i8** @W83627EHF_REG_TARGET, align 8
  %773 = load %struct.w83627ehf_data*, %struct.w83627ehf_data** %6, align 8
  %774 = getelementptr inbounds %struct.w83627ehf_data, %struct.w83627ehf_data* %773, i32 0, i32 29
  store i8* %772, i8** %774, align 8
  %775 = load i8*, i8** @W83627EHF_REG_FAN, align 8
  %776 = load %struct.w83627ehf_data*, %struct.w83627ehf_data** %6, align 8
  %777 = getelementptr inbounds %struct.w83627ehf_data, %struct.w83627ehf_data* %776, i32 0, i32 28
  store i8* %775, i8** %777, align 8
  %778 = load i8*, i8** @W83627EHF_REG_FAN_MIN, align 8
  %779 = load %struct.w83627ehf_data*, %struct.w83627ehf_data** %6, align 8
  %780 = getelementptr inbounds %struct.w83627ehf_data, %struct.w83627ehf_data* %779, i32 0, i32 27
  store i8* %778, i8** %780, align 8
  %781 = load i8*, i8** @W83627EHF_REG_FAN_START_OUTPUT, align 8
  %782 = load %struct.w83627ehf_data*, %struct.w83627ehf_data** %6, align 8
  %783 = getelementptr inbounds %struct.w83627ehf_data, %struct.w83627ehf_data* %782, i32 0, i32 26
  store i8* %781, i8** %783, align 8
  %784 = load i8*, i8** @W83627EHF_REG_FAN_STOP_OUTPUT, align 8
  %785 = load %struct.w83627ehf_data*, %struct.w83627ehf_data** %6, align 8
  %786 = getelementptr inbounds %struct.w83627ehf_data, %struct.w83627ehf_data* %785, i32 0, i32 25
  store i8* %784, i8** %786, align 8
  %787 = load i8*, i8** @W83627EHF_REG_FAN_STOP_TIME, align 8
  %788 = load %struct.w83627ehf_data*, %struct.w83627ehf_data** %6, align 8
  %789 = getelementptr inbounds %struct.w83627ehf_data, %struct.w83627ehf_data* %788, i32 0, i32 24
  store i8* %787, i8** %789, align 8
  %790 = load i32, i32* @W83627EHF_REG_FAN_MAX_OUTPUT_W83667_B, align 4
  %791 = load %struct.w83627ehf_data*, %struct.w83627ehf_data** %6, align 8
  %792 = getelementptr inbounds %struct.w83627ehf_data, %struct.w83627ehf_data* %791, i32 0, i32 23
  store i32 %790, i32* %792, align 8
  %793 = load i32*, i32** @W83627EHF_REG_FAN_STEP_OUTPUT_W83667_B, align 8
  %794 = load %struct.w83627ehf_data*, %struct.w83627ehf_data** %6, align 8
  %795 = getelementptr inbounds %struct.w83627ehf_data, %struct.w83627ehf_data* %794, i32 0, i32 10
  store i32* %793, i32** %795, align 8
  br label %832

796:                                              ; preds = %755
  %797 = load %struct.w83627ehf_data*, %struct.w83627ehf_data** %6, align 8
  %798 = getelementptr inbounds %struct.w83627ehf_data, %struct.w83627ehf_data* %797, i32 0, i32 9
  store i32 1, i32* %798, align 4
  %799 = load i8*, i8** @fan_from_reg8, align 8
  %800 = load %struct.w83627ehf_data*, %struct.w83627ehf_data** %6, align 8
  %801 = getelementptr inbounds %struct.w83627ehf_data, %struct.w83627ehf_data* %800, i32 0, i32 32
  store i8* %799, i8** %801, align 8
  %802 = load i8*, i8** @fan_from_reg8, align 8
  %803 = load %struct.w83627ehf_data*, %struct.w83627ehf_data** %6, align 8
  %804 = getelementptr inbounds %struct.w83627ehf_data, %struct.w83627ehf_data* %803, i32 0, i32 31
  store i8* %802, i8** %804, align 8
  %805 = load i8*, i8** @W83627EHF_REG_PWM, align 8
  %806 = load %struct.w83627ehf_data*, %struct.w83627ehf_data** %6, align 8
  %807 = getelementptr inbounds %struct.w83627ehf_data, %struct.w83627ehf_data* %806, i32 0, i32 30
  store i8* %805, i8** %807, align 8
  %808 = load i8*, i8** @W83627EHF_REG_TARGET, align 8
  %809 = load %struct.w83627ehf_data*, %struct.w83627ehf_data** %6, align 8
  %810 = getelementptr inbounds %struct.w83627ehf_data, %struct.w83627ehf_data* %809, i32 0, i32 29
  store i8* %808, i8** %810, align 8
  %811 = load i8*, i8** @W83627EHF_REG_FAN, align 8
  %812 = load %struct.w83627ehf_data*, %struct.w83627ehf_data** %6, align 8
  %813 = getelementptr inbounds %struct.w83627ehf_data, %struct.w83627ehf_data* %812, i32 0, i32 28
  store i8* %811, i8** %813, align 8
  %814 = load i8*, i8** @W83627EHF_REG_FAN_MIN, align 8
  %815 = load %struct.w83627ehf_data*, %struct.w83627ehf_data** %6, align 8
  %816 = getelementptr inbounds %struct.w83627ehf_data, %struct.w83627ehf_data* %815, i32 0, i32 27
  store i8* %814, i8** %816, align 8
  %817 = load i8*, i8** @W83627EHF_REG_FAN_START_OUTPUT, align 8
  %818 = load %struct.w83627ehf_data*, %struct.w83627ehf_data** %6, align 8
  %819 = getelementptr inbounds %struct.w83627ehf_data, %struct.w83627ehf_data* %818, i32 0, i32 26
  store i8* %817, i8** %819, align 8
  %820 = load i8*, i8** @W83627EHF_REG_FAN_STOP_OUTPUT, align 8
  %821 = load %struct.w83627ehf_data*, %struct.w83627ehf_data** %6, align 8
  %822 = getelementptr inbounds %struct.w83627ehf_data, %struct.w83627ehf_data* %821, i32 0, i32 25
  store i8* %820, i8** %822, align 8
  %823 = load i8*, i8** @W83627EHF_REG_FAN_STOP_TIME, align 8
  %824 = load %struct.w83627ehf_data*, %struct.w83627ehf_data** %6, align 8
  %825 = getelementptr inbounds %struct.w83627ehf_data, %struct.w83627ehf_data* %824, i32 0, i32 24
  store i8* %823, i8** %825, align 8
  %826 = load i32, i32* @W83627EHF_REG_FAN_MAX_OUTPUT_COMMON, align 4
  %827 = load %struct.w83627ehf_data*, %struct.w83627ehf_data** %6, align 8
  %828 = getelementptr inbounds %struct.w83627ehf_data, %struct.w83627ehf_data* %827, i32 0, i32 23
  store i32 %826, i32* %828, align 8
  %829 = load i32*, i32** @W83627EHF_REG_FAN_STEP_OUTPUT_COMMON, align 8
  %830 = load %struct.w83627ehf_data*, %struct.w83627ehf_data** %6, align 8
  %831 = getelementptr inbounds %struct.w83627ehf_data, %struct.w83627ehf_data* %830, i32 0, i32 10
  store i32* %829, i32** %831, align 8
  br label %832

832:                                              ; preds = %796, %760
  br label %833

833:                                              ; preds = %832, %725
  br label %834

834:                                              ; preds = %833, %684
  %835 = load %struct.w83627ehf_sio_data*, %struct.w83627ehf_sio_data** %5, align 8
  %836 = getelementptr inbounds %struct.w83627ehf_sio_data, %struct.w83627ehf_sio_data* %835, i32 0, i32 0
  %837 = load i64, i64* %836, align 8
  %838 = icmp eq i64 %837, 130
  br i1 %838, label %839, label %843

839:                                              ; preds = %834
  %840 = load i32, i32* @scale_in_w83627uhg, align 4
  %841 = load %struct.w83627ehf_data*, %struct.w83627ehf_data** %6, align 8
  %842 = getelementptr inbounds %struct.w83627ehf_data, %struct.w83627ehf_data* %841, i32 0, i32 22
  store i32 %840, i32* %842, align 4
  br label %847

843:                                              ; preds = %834
  %844 = load i32, i32* @scale_in_common, align 4
  %845 = load %struct.w83627ehf_data*, %struct.w83627ehf_data** %6, align 8
  %846 = getelementptr inbounds %struct.w83627ehf_data, %struct.w83627ehf_data* %845, i32 0, i32 22
  store i32 %844, i32* %846, align 4
  br label %847

847:                                              ; preds = %843, %839
  %848 = load %struct.w83627ehf_data*, %struct.w83627ehf_data** %6, align 8
  %849 = load %struct.w83627ehf_sio_data*, %struct.w83627ehf_sio_data** %5, align 8
  %850 = getelementptr inbounds %struct.w83627ehf_sio_data, %struct.w83627ehf_sio_data* %849, i32 0, i32 0
  %851 = load i64, i64* %850, align 8
  %852 = trunc i64 %851 to i32
  %853 = call i32 @w83627ehf_init_device(%struct.w83627ehf_data* %848, i32 %852)
  %854 = call i32 (...) @vid_which_vrm()
  %855 = load %struct.w83627ehf_data*, %struct.w83627ehf_data** %6, align 8
  %856 = getelementptr inbounds %struct.w83627ehf_data, %struct.w83627ehf_data* %855, i32 0, i32 11
  store i32 %854, i32* %856, align 8
  %857 = load %struct.w83627ehf_sio_data*, %struct.w83627ehf_sio_data** %5, align 8
  %858 = getelementptr inbounds %struct.w83627ehf_sio_data, %struct.w83627ehf_sio_data* %857, i32 0, i32 1
  %859 = load i32, i32* %858, align 8
  %860 = call i32 @superio_enter(i32 %859)
  store i32 %860, i32* %10, align 4
  %861 = load i32, i32* %10, align 4
  %862 = icmp ne i32 %861, 0
  br i1 %862, label %863, label %864

863:                                              ; preds = %847
  br label %1591

864:                                              ; preds = %847
  %865 = load %struct.w83627ehf_sio_data*, %struct.w83627ehf_sio_data** %5, align 8
  %866 = getelementptr inbounds %struct.w83627ehf_sio_data, %struct.w83627ehf_sio_data* %865, i32 0, i32 0
  %867 = load i64, i64* %866, align 8
  %868 = icmp eq i64 %867, 129
  br i1 %868, label %884, label %869

869:                                              ; preds = %864
  %870 = load %struct.w83627ehf_sio_data*, %struct.w83627ehf_sio_data** %5, align 8
  %871 = getelementptr inbounds %struct.w83627ehf_sio_data, %struct.w83627ehf_sio_data* %870, i32 0, i32 0
  %872 = load i64, i64* %871, align 8
  %873 = icmp eq i64 %872, 128
  br i1 %873, label %884, label %874

874:                                              ; preds = %869
  %875 = load %struct.w83627ehf_sio_data*, %struct.w83627ehf_sio_data** %5, align 8
  %876 = getelementptr inbounds %struct.w83627ehf_sio_data, %struct.w83627ehf_sio_data* %875, i32 0, i32 0
  %877 = load i64, i64* %876, align 8
  %878 = icmp eq i64 %877, 132
  br i1 %878, label %884, label %879

879:                                              ; preds = %874
  %880 = load %struct.w83627ehf_sio_data*, %struct.w83627ehf_sio_data** %5, align 8
  %881 = getelementptr inbounds %struct.w83627ehf_sio_data, %struct.w83627ehf_sio_data* %880, i32 0, i32 0
  %882 = load i64, i64* %881, align 8
  %883 = icmp eq i64 %882, 131
  br i1 %883, label %884, label %906

884:                                              ; preds = %879, %874, %869, %864
  %885 = load %struct.w83627ehf_sio_data*, %struct.w83627ehf_sio_data** %5, align 8
  %886 = getelementptr inbounds %struct.w83627ehf_sio_data, %struct.w83627ehf_sio_data* %885, i32 0, i32 1
  %887 = load i32, i32* %886, align 8
  %888 = load i32, i32* @W83667HG_LD_VID, align 4
  %889 = call i32 @superio_select(i32 %887, i32 %888)
  %890 = load %struct.w83627ehf_sio_data*, %struct.w83627ehf_sio_data** %5, align 8
  %891 = getelementptr inbounds %struct.w83627ehf_sio_data, %struct.w83627ehf_sio_data* %890, i32 0, i32 1
  %892 = load i32, i32* %891, align 8
  %893 = call i32 @superio_inb(i32 %892, i32 227)
  %894 = load %struct.w83627ehf_data*, %struct.w83627ehf_data** %6, align 8
  %895 = getelementptr inbounds %struct.w83627ehf_data, %struct.w83627ehf_data* %894, i32 0, i32 12
  store i32 %893, i32* %895, align 4
  %896 = load %struct.device*, %struct.device** %4, align 8
  %897 = call i32 @device_create_file(%struct.device* %896, i32* @dev_attr_cpu0_vid)
  store i32 %897, i32* %10, align 4
  %898 = load i32, i32* %10, align 4
  %899 = icmp ne i32 %898, 0
  br i1 %899, label %900, label %905

900:                                              ; preds = %884
  %901 = load %struct.w83627ehf_sio_data*, %struct.w83627ehf_sio_data** %5, align 8
  %902 = getelementptr inbounds %struct.w83627ehf_sio_data, %struct.w83627ehf_sio_data* %901, i32 0, i32 1
  %903 = load i32, i32* %902, align 8
  %904 = call i32 @superio_exit(i32 %903)
  br label %1591

905:                                              ; preds = %884
  br label %1009

906:                                              ; preds = %879
  %907 = load %struct.w83627ehf_sio_data*, %struct.w83627ehf_sio_data** %5, align 8
  %908 = getelementptr inbounds %struct.w83627ehf_sio_data, %struct.w83627ehf_sio_data* %907, i32 0, i32 0
  %909 = load i64, i64* %908, align 8
  %910 = icmp ne i64 %909, 130
  br i1 %910, label %911, label %1008

911:                                              ; preds = %906
  %912 = load %struct.w83627ehf_sio_data*, %struct.w83627ehf_sio_data** %5, align 8
  %913 = getelementptr inbounds %struct.w83627ehf_sio_data, %struct.w83627ehf_sio_data* %912, i32 0, i32 1
  %914 = load i32, i32* %913, align 8
  %915 = load i32, i32* @W83627EHF_LD_HWM, align 4
  %916 = call i32 @superio_select(i32 %914, i32 %915)
  %917 = load %struct.w83627ehf_sio_data*, %struct.w83627ehf_sio_data** %5, align 8
  %918 = getelementptr inbounds %struct.w83627ehf_sio_data, %struct.w83627ehf_sio_data* %917, i32 0, i32 1
  %919 = load i32, i32* %918, align 8
  %920 = load i32, i32* @SIO_REG_VID_CTRL, align 4
  %921 = call i32 @superio_inb(i32 %919, i32 %920)
  %922 = and i32 %921, 128
  %923 = icmp ne i32 %922, 0
  br i1 %923, label %924, label %1004

924:                                              ; preds = %911
  %925 = load %struct.w83627ehf_sio_data*, %struct.w83627ehf_sio_data** %5, align 8
  %926 = getelementptr inbounds %struct.w83627ehf_sio_data, %struct.w83627ehf_sio_data* %925, i32 0, i32 0
  %927 = load i64, i64* %926, align 8
  %928 = load i64, i64* @w83627ehf, align 8
  %929 = icmp eq i64 %927, %928
  br i1 %929, label %930, label %975

930:                                              ; preds = %924
  %931 = load %struct.w83627ehf_sio_data*, %struct.w83627ehf_sio_data** %5, align 8
  %932 = getelementptr inbounds %struct.w83627ehf_sio_data, %struct.w83627ehf_sio_data* %931, i32 0, i32 1
  %933 = load i32, i32* %932, align 8
  %934 = load i32, i32* @SIO_REG_EN_VRM10, align 4
  %935 = call i32 @superio_inb(i32 %933, i32 %934)
  store i32 %935, i32* %8, align 4
  %936 = load i32, i32* %8, align 4
  %937 = and i32 %936, 8
  %938 = icmp ne i32 %937, 0
  br i1 %938, label %939, label %954

939:                                              ; preds = %930
  %940 = load %struct.w83627ehf_data*, %struct.w83627ehf_data** %6, align 8
  %941 = getelementptr inbounds %struct.w83627ehf_data, %struct.w83627ehf_data* %940, i32 0, i32 11
  %942 = load i32, i32* %941, align 8
  %943 = icmp eq i32 %942, 90
  br i1 %943, label %944, label %954

944:                                              ; preds = %939
  %945 = load %struct.device*, %struct.device** %4, align 8
  %946 = call i32 @dev_warn(%struct.device* %945, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0))
  %947 = load %struct.w83627ehf_sio_data*, %struct.w83627ehf_sio_data** %5, align 8
  %948 = getelementptr inbounds %struct.w83627ehf_sio_data, %struct.w83627ehf_sio_data* %947, i32 0, i32 1
  %949 = load i32, i32* %948, align 8
  %950 = load i32, i32* @SIO_REG_EN_VRM10, align 4
  %951 = load i32, i32* %8, align 4
  %952 = and i32 %951, -9
  %953 = call i32 @superio_outb(i32 %949, i32 %950, i32 %952)
  br label %974

954:                                              ; preds = %939, %930
  %955 = load i32, i32* %8, align 4
  %956 = and i32 %955, 8
  %957 = icmp ne i32 %956, 0
  br i1 %957, label %973, label %958

958:                                              ; preds = %954
  %959 = load %struct.w83627ehf_data*, %struct.w83627ehf_data** %6, align 8
  %960 = getelementptr inbounds %struct.w83627ehf_data, %struct.w83627ehf_data* %959, i32 0, i32 11
  %961 = load i32, i32* %960, align 8
  %962 = icmp eq i32 %961, 100
  br i1 %962, label %963, label %973

963:                                              ; preds = %958
  %964 = load %struct.device*, %struct.device** %4, align 8
  %965 = call i32 @dev_warn(%struct.device* %964, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.2, i64 0, i64 0))
  %966 = load %struct.w83627ehf_sio_data*, %struct.w83627ehf_sio_data** %5, align 8
  %967 = getelementptr inbounds %struct.w83627ehf_sio_data, %struct.w83627ehf_sio_data* %966, i32 0, i32 1
  %968 = load i32, i32* %967, align 8
  %969 = load i32, i32* @SIO_REG_EN_VRM10, align 4
  %970 = load i32, i32* %8, align 4
  %971 = or i32 %970, 8
  %972 = call i32 @superio_outb(i32 %968, i32 %969, i32 %971)
  br label %973

973:                                              ; preds = %963, %958, %954
  br label %974

974:                                              ; preds = %973, %944
  br label %975

975:                                              ; preds = %974, %924
  %976 = load %struct.w83627ehf_sio_data*, %struct.w83627ehf_sio_data** %5, align 8
  %977 = getelementptr inbounds %struct.w83627ehf_sio_data, %struct.w83627ehf_sio_data* %976, i32 0, i32 1
  %978 = load i32, i32* %977, align 8
  %979 = load i32, i32* @SIO_REG_VID_DATA, align 4
  %980 = call i32 @superio_inb(i32 %978, i32 %979)
  %981 = load %struct.w83627ehf_data*, %struct.w83627ehf_data** %6, align 8
  %982 = getelementptr inbounds %struct.w83627ehf_data, %struct.w83627ehf_data* %981, i32 0, i32 12
  store i32 %980, i32* %982, align 4
  %983 = load %struct.w83627ehf_sio_data*, %struct.w83627ehf_sio_data** %5, align 8
  %984 = getelementptr inbounds %struct.w83627ehf_sio_data, %struct.w83627ehf_sio_data* %983, i32 0, i32 0
  %985 = load i64, i64* %984, align 8
  %986 = load i64, i64* @w83627ehf, align 8
  %987 = icmp eq i64 %985, %986
  br i1 %987, label %988, label %993

988:                                              ; preds = %975
  %989 = load %struct.w83627ehf_data*, %struct.w83627ehf_data** %6, align 8
  %990 = getelementptr inbounds %struct.w83627ehf_data, %struct.w83627ehf_data* %989, i32 0, i32 12
  %991 = load i32, i32* %990, align 4
  %992 = and i32 %991, 63
  store i32 %992, i32* %990, align 4
  br label %993

993:                                              ; preds = %988, %975
  %994 = load %struct.device*, %struct.device** %4, align 8
  %995 = call i32 @device_create_file(%struct.device* %994, i32* @dev_attr_cpu0_vid)
  store i32 %995, i32* %10, align 4
  %996 = load i32, i32* %10, align 4
  %997 = icmp ne i32 %996, 0
  br i1 %997, label %998, label %1003

998:                                              ; preds = %993
  %999 = load %struct.w83627ehf_sio_data*, %struct.w83627ehf_sio_data** %5, align 8
  %1000 = getelementptr inbounds %struct.w83627ehf_sio_data, %struct.w83627ehf_sio_data* %999, i32 0, i32 1
  %1001 = load i32, i32* %1000, align 8
  %1002 = call i32 @superio_exit(i32 %1001)
  br label %1591

1003:                                             ; preds = %993
  br label %1007

1004:                                             ; preds = %911
  %1005 = load %struct.device*, %struct.device** %4, align 8
  %1006 = call i32 @dev_info(%struct.device* %1005, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.3, i64 0, i64 0))
  br label %1007

1007:                                             ; preds = %1004, %1003
  br label %1008

1008:                                             ; preds = %1007, %906
  br label %1009

1009:                                             ; preds = %1008, %905
  %1010 = load i64, i64* @fan_debounce, align 8
  %1011 = icmp ne i64 %1010, 0
  br i1 %1011, label %1012, label %1058

1012:                                             ; preds = %1009
  %1013 = load %struct.w83627ehf_sio_data*, %struct.w83627ehf_sio_data** %5, align 8
  %1014 = getelementptr inbounds %struct.w83627ehf_sio_data, %struct.w83627ehf_sio_data* %1013, i32 0, i32 0
  %1015 = load i64, i64* %1014, align 8
  %1016 = icmp eq i64 %1015, 132
  br i1 %1016, label %1022, label %1017

1017:                                             ; preds = %1012
  %1018 = load %struct.w83627ehf_sio_data*, %struct.w83627ehf_sio_data** %5, align 8
  %1019 = getelementptr inbounds %struct.w83627ehf_sio_data, %struct.w83627ehf_sio_data* %1018, i32 0, i32 0
  %1020 = load i64, i64* %1019, align 8
  %1021 = icmp eq i64 %1020, 131
  br i1 %1021, label %1022, label %1058

1022:                                             ; preds = %1017, %1012
  %1023 = load %struct.w83627ehf_sio_data*, %struct.w83627ehf_sio_data** %5, align 8
  %1024 = getelementptr inbounds %struct.w83627ehf_sio_data, %struct.w83627ehf_sio_data* %1023, i32 0, i32 1
  %1025 = load i32, i32* %1024, align 8
  %1026 = load i32, i32* @W83627EHF_LD_HWM, align 4
  %1027 = call i32 @superio_select(i32 %1025, i32 %1026)
  %1028 = load %struct.w83627ehf_sio_data*, %struct.w83627ehf_sio_data** %5, align 8
  %1029 = getelementptr inbounds %struct.w83627ehf_sio_data, %struct.w83627ehf_sio_data* %1028, i32 0, i32 1
  %1030 = load i32, i32* %1029, align 8
  %1031 = load i32, i32* @NCT6775_REG_FAN_DEBOUNCE, align 4
  %1032 = call i32 @superio_inb(i32 %1030, i32 %1031)
  store i32 %1032, i32* %17, align 4
  %1033 = load %struct.w83627ehf_sio_data*, %struct.w83627ehf_sio_data** %5, align 8
  %1034 = getelementptr inbounds %struct.w83627ehf_sio_data, %struct.w83627ehf_sio_data* %1033, i32 0, i32 0
  %1035 = load i64, i64* %1034, align 8
  %1036 = icmp eq i64 %1035, 131
  br i1 %1036, label %1037, label %1045

1037:                                             ; preds = %1022
  %1038 = load %struct.w83627ehf_sio_data*, %struct.w83627ehf_sio_data** %5, align 8
  %1039 = getelementptr inbounds %struct.w83627ehf_sio_data, %struct.w83627ehf_sio_data* %1038, i32 0, i32 1
  %1040 = load i32, i32* %1039, align 8
  %1041 = load i32, i32* @NCT6775_REG_FAN_DEBOUNCE, align 4
  %1042 = load i32, i32* %17, align 4
  %1043 = or i32 62, %1042
  %1044 = call i32 @superio_outb(i32 %1040, i32 %1041, i32 %1043)
  br label %1053

1045:                                             ; preds = %1022
  %1046 = load %struct.w83627ehf_sio_data*, %struct.w83627ehf_sio_data** %5, align 8
  %1047 = getelementptr inbounds %struct.w83627ehf_sio_data, %struct.w83627ehf_sio_data* %1046, i32 0, i32 1
  %1048 = load i32, i32* %1047, align 8
  %1049 = load i32, i32* @NCT6775_REG_FAN_DEBOUNCE, align 4
  %1050 = load i32, i32* %17, align 4
  %1051 = or i32 30, %1050
  %1052 = call i32 @superio_outb(i32 %1048, i32 %1049, i32 %1051)
  br label %1053

1053:                                             ; preds = %1045, %1037
  %1054 = load %struct.w83627ehf_data*, %struct.w83627ehf_data** %6, align 8
  %1055 = getelementptr inbounds %struct.w83627ehf_data, %struct.w83627ehf_data* %1054, i32 0, i32 21
  %1056 = load i32, i32* %1055, align 8
  %1057 = call i32 @pr_info(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.4, i64 0, i64 0), i32 %1056)
  br label %1058

1058:                                             ; preds = %1053, %1017, %1009
  %1059 = load %struct.w83627ehf_sio_data*, %struct.w83627ehf_sio_data** %5, align 8
  %1060 = load %struct.w83627ehf_data*, %struct.w83627ehf_data** %6, align 8
  %1061 = call i32 @w83627ehf_check_fan_inputs(%struct.w83627ehf_sio_data* %1059, %struct.w83627ehf_data* %1060)
  %1062 = load %struct.w83627ehf_sio_data*, %struct.w83627ehf_sio_data** %5, align 8
  %1063 = getelementptr inbounds %struct.w83627ehf_sio_data, %struct.w83627ehf_sio_data* %1062, i32 0, i32 1
  %1064 = load i32, i32* %1063, align 8
  %1065 = call i32 @superio_exit(i32 %1064)
  %1066 = load %struct.device*, %struct.device** %4, align 8
  %1067 = load %struct.w83627ehf_data*, %struct.w83627ehf_data** %6, align 8
  %1068 = call i32 @w83627ehf_update_fan_div_common(%struct.device* %1066, %struct.w83627ehf_data* %1067)
  %1069 = load %struct.device*, %struct.device** %4, align 8
  %1070 = load %struct.w83627ehf_data*, %struct.w83627ehf_data** %6, align 8
  %1071 = call i32 @w83627ehf_update_pwm_common(%struct.device* %1069, %struct.w83627ehf_data* %1070)
  store i32 0, i32* %9, align 4
  br label %1072

1072:                                             ; preds = %1092, %1058
  %1073 = load i32, i32* %9, align 4
  %1074 = load %struct.w83627ehf_data*, %struct.w83627ehf_data** %6, align 8
  %1075 = getelementptr inbounds %struct.w83627ehf_data, %struct.w83627ehf_data* %1074, i32 0, i32 2
  %1076 = load i32, i32* %1075, align 8
  %1077 = icmp slt i32 %1073, %1076
  br i1 %1077, label %1078, label %1095

1078:                                             ; preds = %1072
  %1079 = load %struct.w83627ehf_data*, %struct.w83627ehf_data** %6, align 8
  %1080 = getelementptr inbounds %struct.w83627ehf_data, %struct.w83627ehf_data* %1079, i32 0, i32 19
  %1081 = load i32*, i32** %1080, align 8
  %1082 = load i32, i32* %9, align 4
  %1083 = sext i32 %1082 to i64
  %1084 = getelementptr inbounds i32, i32* %1081, i64 %1083
  %1085 = load i32, i32* %1084, align 4
  %1086 = load %struct.w83627ehf_data*, %struct.w83627ehf_data** %6, align 8
  %1087 = getelementptr inbounds %struct.w83627ehf_data, %struct.w83627ehf_data* %1086, i32 0, i32 20
  %1088 = load i32*, i32** %1087, align 8
  %1089 = load i32, i32* %9, align 4
  %1090 = sext i32 %1089 to i64
  %1091 = getelementptr inbounds i32, i32* %1088, i64 %1090
  store i32 %1085, i32* %1091, align 4
  br label %1092

1092:                                             ; preds = %1078
  %1093 = load i32, i32* %9, align 4
  %1094 = add nsw i32 %1093, 1
  store i32 %1094, i32* %9, align 4
  br label %1072

1095:                                             ; preds = %1072
  store i32 0, i32* %9, align 4
  br label %1096

1096:                                             ; preds = %1113, %1095
  %1097 = load i32, i32* %9, align 4
  %1098 = load %struct.sensor_device_attribute*, %struct.sensor_device_attribute** @sda_sf3_arrays, align 8
  %1099 = call i32 @ARRAY_SIZE(%struct.sensor_device_attribute* %1098)
  %1100 = icmp slt i32 %1097, %1099
  br i1 %1100, label %1101, label %1116

1101:                                             ; preds = %1096
  %1102 = load %struct.device*, %struct.device** %4, align 8
  %1103 = load %struct.sensor_device_attribute*, %struct.sensor_device_attribute** @sda_sf3_arrays, align 8
  %1104 = load i32, i32* %9, align 4
  %1105 = sext i32 %1104 to i64
  %1106 = getelementptr inbounds %struct.sensor_device_attribute, %struct.sensor_device_attribute* %1103, i64 %1105
  %1107 = getelementptr inbounds %struct.sensor_device_attribute, %struct.sensor_device_attribute* %1106, i32 0, i32 1
  %1108 = call i32 @device_create_file(%struct.device* %1102, i32* %1107)
  store i32 %1108, i32* %10, align 4
  %1109 = load i32, i32* %10, align 4
  %1110 = icmp ne i32 %1109, 0
  br i1 %1110, label %1111, label %1112

1111:                                             ; preds = %1101
  br label %1588

1112:                                             ; preds = %1101
  br label %1113

1113:                                             ; preds = %1112
  %1114 = load i32, i32* %9, align 4
  %1115 = add nsw i32 %1114, 1
  store i32 %1115, i32* %9, align 4
  br label %1096

1116:                                             ; preds = %1096
  store i32 0, i32* %9, align 4
  br label %1117

1117:                                             ; preds = %1151, %1116
  %1118 = load i32, i32* %9, align 4
  %1119 = load %struct.sensor_device_attribute*, %struct.sensor_device_attribute** @sda_sf3_max_step_arrays, align 8
  %1120 = call i32 @ARRAY_SIZE(%struct.sensor_device_attribute* %1119)
  %1121 = icmp slt i32 %1118, %1120
  br i1 %1121, label %1122, label %1154

1122:                                             ; preds = %1117
  %1123 = load %struct.sensor_device_attribute*, %struct.sensor_device_attribute** @sda_sf3_max_step_arrays, align 8
  %1124 = load i32, i32* %9, align 4
  %1125 = sext i32 %1124 to i64
  %1126 = getelementptr inbounds %struct.sensor_device_attribute, %struct.sensor_device_attribute* %1123, i64 %1125
  store %struct.sensor_device_attribute* %1126, %struct.sensor_device_attribute** %18, align 8
  %1127 = load %struct.w83627ehf_data*, %struct.w83627ehf_data** %6, align 8
  %1128 = getelementptr inbounds %struct.w83627ehf_data, %struct.w83627ehf_data* %1127, i32 0, i32 10
  %1129 = load i32*, i32** %1128, align 8
  %1130 = icmp ne i32* %1129, null
  br i1 %1130, label %1131, label %1150

1131:                                             ; preds = %1122
  %1132 = load %struct.w83627ehf_data*, %struct.w83627ehf_data** %6, align 8
  %1133 = getelementptr inbounds %struct.w83627ehf_data, %struct.w83627ehf_data* %1132, i32 0, i32 10
  %1134 = load i32*, i32** %1133, align 8
  %1135 = load %struct.sensor_device_attribute*, %struct.sensor_device_attribute** %18, align 8
  %1136 = getelementptr inbounds %struct.sensor_device_attribute, %struct.sensor_device_attribute* %1135, i32 0, i32 0
  %1137 = load i64, i64* %1136, align 8
  %1138 = getelementptr inbounds i32, i32* %1134, i64 %1137
  %1139 = load i32, i32* %1138, align 4
  %1140 = icmp ne i32 %1139, 255
  br i1 %1140, label %1141, label %1150

1141:                                             ; preds = %1131
  %1142 = load %struct.device*, %struct.device** %4, align 8
  %1143 = load %struct.sensor_device_attribute*, %struct.sensor_device_attribute** %18, align 8
  %1144 = getelementptr inbounds %struct.sensor_device_attribute, %struct.sensor_device_attribute* %1143, i32 0, i32 1
  %1145 = call i32 @device_create_file(%struct.device* %1142, i32* %1144)
  store i32 %1145, i32* %10, align 4
  %1146 = load i32, i32* %10, align 4
  %1147 = icmp ne i32 %1146, 0
  br i1 %1147, label %1148, label %1149

1148:                                             ; preds = %1141
  br label %1588

1149:                                             ; preds = %1141
  br label %1150

1150:                                             ; preds = %1149, %1131, %1122
  br label %1151

1151:                                             ; preds = %1150
  %1152 = load i32, i32* %9, align 4
  %1153 = add nsw i32 %1152, 1
  store i32 %1153, i32* %9, align 4
  br label %1117

1154:                                             ; preds = %1117
  %1155 = load %struct.w83627ehf_data*, %struct.w83627ehf_data** %6, align 8
  %1156 = getelementptr inbounds %struct.w83627ehf_data, %struct.w83627ehf_data* %1155, i32 0, i32 13
  %1157 = load i32, i32* %1156, align 8
  %1158 = and i32 %1157, 4
  %1159 = icmp ne i32 %1158, 0
  br i1 %1159, label %1160, label %1187

1160:                                             ; preds = %1154
  %1161 = load %struct.w83627ehf_data*, %struct.w83627ehf_data** %6, align 8
  %1162 = getelementptr inbounds %struct.w83627ehf_data, %struct.w83627ehf_data* %1161, i32 0, i32 2
  %1163 = load i32, i32* %1162, align 8
  %1164 = icmp sge i32 %1163, 3
  br i1 %1164, label %1165, label %1187

1165:                                             ; preds = %1160
  store i32 0, i32* %9, align 4
  br label %1166

1166:                                             ; preds = %1183, %1165
  %1167 = load i32, i32* %9, align 4
  %1168 = load %struct.sensor_device_attribute*, %struct.sensor_device_attribute** @sda_sf3_arrays_fan3, align 8
  %1169 = call i32 @ARRAY_SIZE(%struct.sensor_device_attribute* %1168)
  %1170 = icmp slt i32 %1167, %1169
  br i1 %1170, label %1171, label %1186

1171:                                             ; preds = %1166
  %1172 = load %struct.device*, %struct.device** %4, align 8
  %1173 = load %struct.sensor_device_attribute*, %struct.sensor_device_attribute** @sda_sf3_arrays_fan3, align 8
  %1174 = load i32, i32* %9, align 4
  %1175 = sext i32 %1174 to i64
  %1176 = getelementptr inbounds %struct.sensor_device_attribute, %struct.sensor_device_attribute* %1173, i64 %1175
  %1177 = getelementptr inbounds %struct.sensor_device_attribute, %struct.sensor_device_attribute* %1176, i32 0, i32 1
  %1178 = call i32 @device_create_file(%struct.device* %1172, i32* %1177)
  store i32 %1178, i32* %10, align 4
  %1179 = load i32, i32* %10, align 4
  %1180 = icmp ne i32 %1179, 0
  br i1 %1180, label %1181, label %1182

1181:                                             ; preds = %1171
  br label %1588

1182:                                             ; preds = %1171
  br label %1183

1183:                                             ; preds = %1182
  %1184 = load i32, i32* %9, align 4
  %1185 = add nsw i32 %1184, 1
  store i32 %1185, i32* %9, align 4
  br label %1166

1186:                                             ; preds = %1166
  br label %1187

1187:                                             ; preds = %1186, %1160, %1154
  %1188 = load %struct.w83627ehf_data*, %struct.w83627ehf_data** %6, align 8
  %1189 = getelementptr inbounds %struct.w83627ehf_data, %struct.w83627ehf_data* %1188, i32 0, i32 13
  %1190 = load i32, i32* %1189, align 8
  %1191 = and i32 %1190, 8
  %1192 = icmp ne i32 %1191, 0
  br i1 %1192, label %1193, label %1220

1193:                                             ; preds = %1187
  %1194 = load %struct.w83627ehf_data*, %struct.w83627ehf_data** %6, align 8
  %1195 = getelementptr inbounds %struct.w83627ehf_data, %struct.w83627ehf_data* %1194, i32 0, i32 2
  %1196 = load i32, i32* %1195, align 8
  %1197 = icmp sge i32 %1196, 4
  br i1 %1197, label %1198, label %1220

1198:                                             ; preds = %1193
  store i32 0, i32* %9, align 4
  br label %1199

1199:                                             ; preds = %1216, %1198
  %1200 = load i32, i32* %9, align 4
  %1201 = load %struct.sensor_device_attribute*, %struct.sensor_device_attribute** @sda_sf3_arrays_fan4, align 8
  %1202 = call i32 @ARRAY_SIZE(%struct.sensor_device_attribute* %1201)
  %1203 = icmp slt i32 %1200, %1202
  br i1 %1203, label %1204, label %1219

1204:                                             ; preds = %1199
  %1205 = load %struct.device*, %struct.device** %4, align 8
  %1206 = load %struct.sensor_device_attribute*, %struct.sensor_device_attribute** @sda_sf3_arrays_fan4, align 8
  %1207 = load i32, i32* %9, align 4
  %1208 = sext i32 %1207 to i64
  %1209 = getelementptr inbounds %struct.sensor_device_attribute, %struct.sensor_device_attribute* %1206, i64 %1208
  %1210 = getelementptr inbounds %struct.sensor_device_attribute, %struct.sensor_device_attribute* %1209, i32 0, i32 1
  %1211 = call i32 @device_create_file(%struct.device* %1205, i32* %1210)
  store i32 %1211, i32* %10, align 4
  %1212 = load i32, i32* %10, align 4
  %1213 = icmp ne i32 %1212, 0
  br i1 %1213, label %1214, label %1215

1214:                                             ; preds = %1204
  br label %1588

1215:                                             ; preds = %1204
  br label %1216

1216:                                             ; preds = %1215
  %1217 = load i32, i32* %9, align 4
  %1218 = add nsw i32 %1217, 1
  store i32 %1218, i32* %9, align 4
  br label %1199

1219:                                             ; preds = %1199
  br label %1220

1220:                                             ; preds = %1219, %1193, %1187
  store i32 0, i32* %9, align 4
  br label %1221

1221:                                             ; preds = %1274, %1220
  %1222 = load i32, i32* %9, align 4
  %1223 = load %struct.w83627ehf_data*, %struct.w83627ehf_data** %6, align 8
  %1224 = getelementptr inbounds %struct.w83627ehf_data, %struct.w83627ehf_data* %1223, i32 0, i32 1
  %1225 = load i32, i32* %1224, align 4
  %1226 = icmp slt i32 %1222, %1225
  br i1 %1226, label %1227, label %1277

1227:                                             ; preds = %1221
  %1228 = load i32, i32* %9, align 4
  %1229 = icmp eq i32 %1228, 6
  br i1 %1229, label %1230, label %1236

1230:                                             ; preds = %1227
  %1231 = load %struct.w83627ehf_data*, %struct.w83627ehf_data** %6, align 8
  %1232 = getelementptr inbounds %struct.w83627ehf_data, %struct.w83627ehf_data* %1231, i32 0, i32 6
  %1233 = load i32, i32* %1232, align 8
  %1234 = icmp ne i32 %1233, 0
  br i1 %1234, label %1235, label %1236

1235:                                             ; preds = %1230
  br label %1274

1236:                                             ; preds = %1230, %1227
  %1237 = load %struct.device*, %struct.device** %4, align 8
  %1238 = load %struct.TYPE_27__*, %struct.TYPE_27__** @sda_in_input, align 8
  %1239 = load i32, i32* %9, align 4
  %1240 = sext i32 %1239 to i64
  %1241 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %1238, i64 %1240
  %1242 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %1241, i32 0, i32 0
  %1243 = call i32 @device_create_file(%struct.device* %1237, i32* %1242)
  store i32 %1243, i32* %10, align 4
  %1244 = icmp ne i32 %1243, 0
  br i1 %1244, label %1272, label %1245

1245:                                             ; preds = %1236
  %1246 = load %struct.device*, %struct.device** %4, align 8
  %1247 = load %struct.TYPE_28__*, %struct.TYPE_28__** @sda_in_alarm, align 8
  %1248 = load i32, i32* %9, align 4
  %1249 = sext i32 %1248 to i64
  %1250 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %1247, i64 %1249
  %1251 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %1250, i32 0, i32 0
  %1252 = call i32 @device_create_file(%struct.device* %1246, i32* %1251)
  store i32 %1252, i32* %10, align 4
  %1253 = icmp ne i32 %1252, 0
  br i1 %1253, label %1272, label %1254

1254:                                             ; preds = %1245
  %1255 = load %struct.device*, %struct.device** %4, align 8
  %1256 = load %struct.TYPE_25__*, %struct.TYPE_25__** @sda_in_min, align 8
  %1257 = load i32, i32* %9, align 4
  %1258 = sext i32 %1257 to i64
  %1259 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %1256, i64 %1258
  %1260 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %1259, i32 0, i32 0
  %1261 = call i32 @device_create_file(%struct.device* %1255, i32* %1260)
  store i32 %1261, i32* %10, align 4
  %1262 = icmp ne i32 %1261, 0
  br i1 %1262, label %1272, label %1263

1263:                                             ; preds = %1254
  %1264 = load %struct.device*, %struct.device** %4, align 8
  %1265 = load %struct.TYPE_26__*, %struct.TYPE_26__** @sda_in_max, align 8
  %1266 = load i32, i32* %9, align 4
  %1267 = sext i32 %1266 to i64
  %1268 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %1265, i64 %1267
  %1269 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %1268, i32 0, i32 0
  %1270 = call i32 @device_create_file(%struct.device* %1264, i32* %1269)
  store i32 %1270, i32* %10, align 4
  %1271 = icmp ne i32 %1270, 0
  br i1 %1271, label %1272, label %1273

1272:                                             ; preds = %1263, %1254, %1245, %1236
  br label %1588

1273:                                             ; preds = %1263
  br label %1274

1274:                                             ; preds = %1273, %1235
  %1275 = load i32, i32* %9, align 4
  %1276 = add nsw i32 %1275, 1
  store i32 %1276, i32* %9, align 4
  br label %1221

1277:                                             ; preds = %1221
  store i32 0, i32* %9, align 4
  br label %1278

1278:                                             ; preds = %1399, %1277
  %1279 = load i32, i32* %9, align 4
  %1280 = icmp slt i32 %1279, 5
  br i1 %1280, label %1281, label %1402

1281:                                             ; preds = %1278
  %1282 = load %struct.w83627ehf_data*, %struct.w83627ehf_data** %6, align 8
  %1283 = getelementptr inbounds %struct.w83627ehf_data, %struct.w83627ehf_data* %1282, i32 0, i32 13
  %1284 = load i32, i32* %1283, align 8
  %1285 = load i32, i32* %9, align 4
  %1286 = shl i32 1, %1285
  %1287 = and i32 %1284, %1286
  %1288 = icmp ne i32 %1287, 0
  br i1 %1288, label %1289, label %1398

1289:                                             ; preds = %1281
  %1290 = load %struct.device*, %struct.device** %4, align 8
  %1291 = load %struct.TYPE_30__*, %struct.TYPE_30__** @sda_fan_input, align 8
  %1292 = load i32, i32* %9, align 4
  %1293 = sext i32 %1292 to i64
  %1294 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %1291, i64 %1293
  %1295 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %1294, i32 0, i32 0
  %1296 = call i32 @device_create_file(%struct.device* %1290, i32* %1295)
  store i32 %1296, i32* %10, align 4
  %1297 = icmp ne i32 %1296, 0
  br i1 %1297, label %1307, label %1298

1298:                                             ; preds = %1289
  %1299 = load %struct.device*, %struct.device** %4, align 8
  %1300 = load %struct.TYPE_33__*, %struct.TYPE_33__** @sda_fan_alarm, align 8
  %1301 = load i32, i32* %9, align 4
  %1302 = sext i32 %1301 to i64
  %1303 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %1300, i64 %1302
  %1304 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %1303, i32 0, i32 0
  %1305 = call i32 @device_create_file(%struct.device* %1299, i32* %1304)
  store i32 %1305, i32* %10, align 4
  %1306 = icmp ne i32 %1305, 0
  br i1 %1306, label %1307, label %1308

1307:                                             ; preds = %1298, %1289
  br label %1588

1308:                                             ; preds = %1298
  %1309 = load %struct.w83627ehf_sio_data*, %struct.w83627ehf_sio_data** %5, align 8
  %1310 = getelementptr inbounds %struct.w83627ehf_sio_data, %struct.w83627ehf_sio_data* %1309, i32 0, i32 0
  %1311 = load i64, i64* %1310, align 8
  %1312 = icmp ne i64 %1311, 131
  br i1 %1312, label %1313, label %1325

1313:                                             ; preds = %1308
  %1314 = load %struct.device*, %struct.device** %4, align 8
  %1315 = load %struct.TYPE_31__*, %struct.TYPE_31__** @sda_fan_div, align 8
  %1316 = load i32, i32* %9, align 4
  %1317 = sext i32 %1316 to i64
  %1318 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %1315, i64 %1317
  %1319 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %1318, i32 0, i32 0
  %1320 = call i32 @device_create_file(%struct.device* %1314, i32* %1319)
  store i32 %1320, i32* %10, align 4
  %1321 = load i32, i32* %10, align 4
  %1322 = icmp ne i32 %1321, 0
  br i1 %1322, label %1323, label %1324

1323:                                             ; preds = %1313
  br label %1588

1324:                                             ; preds = %1313
  br label %1325

1325:                                             ; preds = %1324, %1308
  %1326 = load %struct.w83627ehf_data*, %struct.w83627ehf_data** %6, align 8
  %1327 = getelementptr inbounds %struct.w83627ehf_data, %struct.w83627ehf_data* %1326, i32 0, i32 14
  %1328 = load i32, i32* %1327, align 4
  %1329 = load i32, i32* %9, align 4
  %1330 = shl i32 1, %1329
  %1331 = and i32 %1328, %1330
  %1332 = icmp ne i32 %1331, 0
  br i1 %1332, label %1333, label %1345

1333:                                             ; preds = %1325
  %1334 = load %struct.device*, %struct.device** %4, align 8
  %1335 = load %struct.TYPE_29__*, %struct.TYPE_29__** @sda_fan_min, align 8
  %1336 = load i32, i32* %9, align 4
  %1337 = sext i32 %1336 to i64
  %1338 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %1335, i64 %1337
  %1339 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %1338, i32 0, i32 0
  %1340 = call i32 @device_create_file(%struct.device* %1334, i32* %1339)
  store i32 %1340, i32* %10, align 4
  %1341 = load i32, i32* %10, align 4
  %1342 = icmp ne i32 %1341, 0
  br i1 %1342, label %1343, label %1344

1343:                                             ; preds = %1333
  br label %1588

1344:                                             ; preds = %1333
  br label %1345

1345:                                             ; preds = %1344, %1325
  %1346 = load i32, i32* %9, align 4
  %1347 = load %struct.w83627ehf_data*, %struct.w83627ehf_data** %6, align 8
  %1348 = getelementptr inbounds %struct.w83627ehf_data, %struct.w83627ehf_data* %1347, i32 0, i32 2
  %1349 = load i32, i32* %1348, align 8
  %1350 = icmp slt i32 %1346, %1349
  br i1 %1350, label %1351, label %1397

1351:                                             ; preds = %1345
  %1352 = load %struct.device*, %struct.device** %4, align 8
  %1353 = load %struct.TYPE_24__*, %struct.TYPE_24__** @sda_pwm, align 8
  %1354 = load i32, i32* %9, align 4
  %1355 = sext i32 %1354 to i64
  %1356 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %1353, i64 %1355
  %1357 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %1356, i32 0, i32 0
  %1358 = call i32 @device_create_file(%struct.device* %1352, i32* %1357)
  store i32 %1358, i32* %10, align 4
  %1359 = icmp ne i32 %1358, 0
  br i1 %1359, label %1396, label %1360

1360:                                             ; preds = %1351
  %1361 = load %struct.device*, %struct.device** %4, align 8
  %1362 = load %struct.TYPE_22__*, %struct.TYPE_22__** @sda_pwm_mode, align 8
  %1363 = load i32, i32* %9, align 4
  %1364 = sext i32 %1363 to i64
  %1365 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %1362, i64 %1364
  %1366 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %1365, i32 0, i32 0
  %1367 = call i32 @device_create_file(%struct.device* %1361, i32* %1366)
  store i32 %1367, i32* %10, align 4
  %1368 = icmp ne i32 %1367, 0
  br i1 %1368, label %1396, label %1369

1369:                                             ; preds = %1360
  %1370 = load %struct.device*, %struct.device** %4, align 8
  %1371 = load %struct.TYPE_23__*, %struct.TYPE_23__** @sda_pwm_enable, align 8
  %1372 = load i32, i32* %9, align 4
  %1373 = sext i32 %1372 to i64
  %1374 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %1371, i64 %1373
  %1375 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %1374, i32 0, i32 0
  %1376 = call i32 @device_create_file(%struct.device* %1370, i32* %1375)
  store i32 %1376, i32* %10, align 4
  %1377 = icmp ne i32 %1376, 0
  br i1 %1377, label %1396, label %1378

1378:                                             ; preds = %1369
  %1379 = load %struct.device*, %struct.device** %4, align 8
  %1380 = load %struct.TYPE_42__*, %struct.TYPE_42__** @sda_target_temp, align 8
  %1381 = load i32, i32* %9, align 4
  %1382 = sext i32 %1381 to i64
  %1383 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %1380, i64 %1382
  %1384 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %1383, i32 0, i32 0
  %1385 = call i32 @device_create_file(%struct.device* %1379, i32* %1384)
  store i32 %1385, i32* %10, align 4
  %1386 = icmp ne i32 %1385, 0
  br i1 %1386, label %1396, label %1387

1387:                                             ; preds = %1378
  %1388 = load %struct.device*, %struct.device** %4, align 8
  %1389 = load %struct.TYPE_32__*, %struct.TYPE_32__** @sda_tolerance, align 8
  %1390 = load i32, i32* %9, align 4
  %1391 = sext i32 %1390 to i64
  %1392 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %1389, i64 %1391
  %1393 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %1392, i32 0, i32 0
  %1394 = call i32 @device_create_file(%struct.device* %1388, i32* %1393)
  store i32 %1394, i32* %10, align 4
  %1395 = icmp ne i32 %1394, 0
  br i1 %1395, label %1396, label %1397

1396:                                             ; preds = %1387, %1378, %1369, %1360, %1351
  br label %1588

1397:                                             ; preds = %1387, %1345
  br label %1398

1398:                                             ; preds = %1397, %1281
  br label %1399

1399:                                             ; preds = %1398
  %1400 = load i32, i32* %9, align 4
  %1401 = add nsw i32 %1400, 1
  store i32 %1401, i32* %9, align 4
  br label %1278

1402:                                             ; preds = %1278
  store i32 0, i32* %9, align 4
  br label %1403

1403:                                             ; preds = %1539, %1402
  %1404 = load i32, i32* %9, align 4
  %1405 = load i32, i32* @NUM_REG_TEMP, align 4
  %1406 = icmp slt i32 %1404, %1405
  br i1 %1406, label %1407, label %1542

1407:                                             ; preds = %1403
  %1408 = load %struct.w83627ehf_data*, %struct.w83627ehf_data** %6, align 8
  %1409 = getelementptr inbounds %struct.w83627ehf_data, %struct.w83627ehf_data* %1408, i32 0, i32 3
  %1410 = load i32, i32* %1409, align 4
  %1411 = load i32, i32* %9, align 4
  %1412 = shl i32 1, %1411
  %1413 = and i32 %1410, %1412
  %1414 = icmp ne i32 %1413, 0
  br i1 %1414, label %1416, label %1415

1415:                                             ; preds = %1407
  br label %1539

1416:                                             ; preds = %1407
  %1417 = load %struct.device*, %struct.device** %4, align 8
  %1418 = load %struct.TYPE_40__*, %struct.TYPE_40__** @sda_temp_input, align 8
  %1419 = load i32, i32* %9, align 4
  %1420 = sext i32 %1419 to i64
  %1421 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %1418, i64 %1420
  %1422 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %1421, i32 0, i32 0
  %1423 = call i32 @device_create_file(%struct.device* %1417, i32* %1422)
  store i32 %1423, i32* %10, align 4
  %1424 = load i32, i32* %10, align 4
  %1425 = icmp ne i32 %1424, 0
  br i1 %1425, label %1426, label %1427

1426:                                             ; preds = %1416
  br label %1588

1427:                                             ; preds = %1416
  %1428 = load %struct.w83627ehf_data*, %struct.w83627ehf_data** %6, align 8
  %1429 = getelementptr inbounds %struct.w83627ehf_data, %struct.w83627ehf_data* %1428, i32 0, i32 18
  %1430 = load i8*, i8** %1429, align 8
  %1431 = icmp ne i8* %1430, null
  br i1 %1431, label %1432, label %1444

1432:                                             ; preds = %1427
  %1433 = load %struct.device*, %struct.device** %4, align 8
  %1434 = load %struct.TYPE_39__*, %struct.TYPE_39__** @sda_temp_label, align 8
  %1435 = load i32, i32* %9, align 4
  %1436 = sext i32 %1435 to i64
  %1437 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %1434, i64 %1436
  %1438 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %1437, i32 0, i32 0
  %1439 = call i32 @device_create_file(%struct.device* %1433, i32* %1438)
  store i32 %1439, i32* %10, align 4
  %1440 = load i32, i32* %10, align 4
  %1441 = icmp ne i32 %1440, 0
  br i1 %1441, label %1442, label %1443

1442:                                             ; preds = %1432
  br label %1588

1443:                                             ; preds = %1432
  br label %1444

1444:                                             ; preds = %1443, %1427
  %1445 = load i32, i32* %9, align 4
  %1446 = icmp eq i32 %1445, 2
  br i1 %1446, label %1447, label %1453

1447:                                             ; preds = %1444
  %1448 = load %struct.w83627ehf_data*, %struct.w83627ehf_data** %6, align 8
  %1449 = getelementptr inbounds %struct.w83627ehf_data, %struct.w83627ehf_data* %1448, i32 0, i32 8
  %1450 = load i32, i32* %1449, align 8
  %1451 = icmp ne i32 %1450, 0
  br i1 %1451, label %1452, label %1453

1452:                                             ; preds = %1447
  br label %1539

1453:                                             ; preds = %1447, %1444
  %1454 = load %struct.w83627ehf_data*, %struct.w83627ehf_data** %6, align 8
  %1455 = getelementptr inbounds %struct.w83627ehf_data, %struct.w83627ehf_data* %1454, i32 0, i32 17
  %1456 = load i64*, i64** %1455, align 8
  %1457 = load i32, i32* %9, align 4
  %1458 = sext i32 %1457 to i64
  %1459 = getelementptr inbounds i64, i64* %1456, i64 %1458
  %1460 = load i64, i64* %1459, align 8
  %1461 = icmp ne i64 %1460, 0
  br i1 %1461, label %1462, label %1474

1462:                                             ; preds = %1453
  %1463 = load %struct.device*, %struct.device** %4, align 8
  %1464 = load %struct.TYPE_38__*, %struct.TYPE_38__** @sda_temp_max, align 8
  %1465 = load i32, i32* %9, align 4
  %1466 = sext i32 %1465 to i64
  %1467 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %1464, i64 %1466
  %1468 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %1467, i32 0, i32 0
  %1469 = call i32 @device_create_file(%struct.device* %1463, i32* %1468)
  store i32 %1469, i32* %10, align 4
  %1470 = load i32, i32* %10, align 4
  %1471 = icmp ne i32 %1470, 0
  br i1 %1471, label %1472, label %1473

1472:                                             ; preds = %1462
  br label %1588

1473:                                             ; preds = %1462
  br label %1474

1474:                                             ; preds = %1473, %1453
  %1475 = load %struct.w83627ehf_data*, %struct.w83627ehf_data** %6, align 8
  %1476 = getelementptr inbounds %struct.w83627ehf_data, %struct.w83627ehf_data* %1475, i32 0, i32 16
  %1477 = load i64*, i64** %1476, align 8
  %1478 = load i32, i32* %9, align 4
  %1479 = sext i32 %1478 to i64
  %1480 = getelementptr inbounds i64, i64* %1477, i64 %1479
  %1481 = load i64, i64* %1480, align 8
  %1482 = icmp ne i64 %1481, 0
  br i1 %1482, label %1483, label %1495

1483:                                             ; preds = %1474
  %1484 = load %struct.device*, %struct.device** %4, align 8
  %1485 = load %struct.TYPE_37__*, %struct.TYPE_37__** @sda_temp_max_hyst, align 8
  %1486 = load i32, i32* %9, align 4
  %1487 = sext i32 %1486 to i64
  %1488 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %1485, i64 %1487
  %1489 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %1488, i32 0, i32 0
  %1490 = call i32 @device_create_file(%struct.device* %1484, i32* %1489)
  store i32 %1490, i32* %10, align 4
  %1491 = load i32, i32* %10, align 4
  %1492 = icmp ne i32 %1491, 0
  br i1 %1492, label %1493, label %1494

1493:                                             ; preds = %1483
  br label %1588

1494:                                             ; preds = %1483
  br label %1495

1495:                                             ; preds = %1494, %1474
  %1496 = load i32, i32* %9, align 4
  %1497 = icmp sgt i32 %1496, 2
  br i1 %1497, label %1498, label %1499

1498:                                             ; preds = %1495
  br label %1539

1499:                                             ; preds = %1495
  %1500 = load %struct.device*, %struct.device** %4, align 8
  %1501 = load %struct.TYPE_41__*, %struct.TYPE_41__** @sda_temp_alarm, align 8
  %1502 = load i32, i32* %9, align 4
  %1503 = sext i32 %1502 to i64
  %1504 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %1501, i64 %1503
  %1505 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %1504, i32 0, i32 0
  %1506 = call i32 @device_create_file(%struct.device* %1500, i32* %1505)
  store i32 %1506, i32* %10, align 4
  %1507 = icmp ne i32 %1506, 0
  br i1 %1507, label %1517, label %1508

1508:                                             ; preds = %1499
  %1509 = load %struct.device*, %struct.device** %4, align 8
  %1510 = load %struct.TYPE_35__*, %struct.TYPE_35__** @sda_temp_type, align 8
  %1511 = load i32, i32* %9, align 4
  %1512 = sext i32 %1511 to i64
  %1513 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %1510, i64 %1512
  %1514 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %1513, i32 0, i32 0
  %1515 = call i32 @device_create_file(%struct.device* %1509, i32* %1514)
  store i32 %1515, i32* %10, align 4
  %1516 = icmp ne i32 %1515, 0
  br i1 %1516, label %1517, label %1518

1517:                                             ; preds = %1508, %1499
  br label %1588

1518:                                             ; preds = %1508
  %1519 = load %struct.w83627ehf_data*, %struct.w83627ehf_data** %6, align 8
  %1520 = getelementptr inbounds %struct.w83627ehf_data, %struct.w83627ehf_data* %1519, i32 0, i32 7
  %1521 = load i32, i32* %1520, align 4
  %1522 = load i32, i32* %9, align 4
  %1523 = shl i32 1, %1522
  %1524 = and i32 %1521, %1523
  %1525 = icmp ne i32 %1524, 0
  br i1 %1525, label %1526, label %1538

1526:                                             ; preds = %1518
  %1527 = load %struct.device*, %struct.device** %4, align 8
  %1528 = load %struct.TYPE_36__*, %struct.TYPE_36__** @sda_temp_offset, align 8
  %1529 = load i32, i32* %9, align 4
  %1530 = sext i32 %1529 to i64
  %1531 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %1528, i64 %1530
  %1532 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %1531, i32 0, i32 0
  %1533 = call i32 @device_create_file(%struct.device* %1527, i32* %1532)
  store i32 %1533, i32* %10, align 4
  %1534 = load i32, i32* %10, align 4
  %1535 = icmp ne i32 %1534, 0
  br i1 %1535, label %1536, label %1537

1536:                                             ; preds = %1526
  br label %1588

1537:                                             ; preds = %1526
  br label %1538

1538:                                             ; preds = %1537, %1518
  br label %1539

1539:                                             ; preds = %1538, %1498, %1452, %1415
  %1540 = load i32, i32* %9, align 4
  %1541 = add nsw i32 %1540, 1
  store i32 %1541, i32* %9, align 4
  br label %1403

1542:                                             ; preds = %1403
  %1543 = load %struct.device*, %struct.device** %4, align 8
  %1544 = load %struct.TYPE_34__*, %struct.TYPE_34__** @sda_caseopen, align 8
  %1545 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %1544, i64 0
  %1546 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %1545, i32 0, i32 0
  %1547 = call i32 @device_create_file(%struct.device* %1543, i32* %1546)
  store i32 %1547, i32* %10, align 4
  %1548 = load i32, i32* %10, align 4
  %1549 = icmp ne i32 %1548, 0
  br i1 %1549, label %1550, label %1551

1550:                                             ; preds = %1542
  br label %1588

1551:                                             ; preds = %1542
  %1552 = load %struct.w83627ehf_sio_data*, %struct.w83627ehf_sio_data** %5, align 8
  %1553 = getelementptr inbounds %struct.w83627ehf_sio_data, %struct.w83627ehf_sio_data* %1552, i32 0, i32 0
  %1554 = load i64, i64* %1553, align 8
  %1555 = icmp eq i64 %1554, 131
  br i1 %1555, label %1556, label %1566

1556:                                             ; preds = %1551
  %1557 = load %struct.device*, %struct.device** %4, align 8
  %1558 = load %struct.TYPE_34__*, %struct.TYPE_34__** @sda_caseopen, align 8
  %1559 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %1558, i64 1
  %1560 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %1559, i32 0, i32 0
  %1561 = call i32 @device_create_file(%struct.device* %1557, i32* %1560)
  store i32 %1561, i32* %10, align 4
  %1562 = load i32, i32* %10, align 4
  %1563 = icmp ne i32 %1562, 0
  br i1 %1563, label %1564, label %1565

1564:                                             ; preds = %1556
  br label %1588

1565:                                             ; preds = %1556
  br label %1566

1566:                                             ; preds = %1565, %1551
  %1567 = load %struct.device*, %struct.device** %4, align 8
  %1568 = call i32 @device_create_file(%struct.device* %1567, i32* @dev_attr_name)
  store i32 %1568, i32* %10, align 4
  %1569 = load i32, i32* %10, align 4
  %1570 = icmp ne i32 %1569, 0
  br i1 %1570, label %1571, label %1572

1571:                                             ; preds = %1566
  br label %1588

1572:                                             ; preds = %1566
  %1573 = load %struct.device*, %struct.device** %4, align 8
  %1574 = call i32 @hwmon_device_register(%struct.device* %1573)
  %1575 = load %struct.w83627ehf_data*, %struct.w83627ehf_data** %6, align 8
  %1576 = getelementptr inbounds %struct.w83627ehf_data, %struct.w83627ehf_data* %1575, i32 0, i32 15
  store i32 %1574, i32* %1576, align 8
  %1577 = load %struct.w83627ehf_data*, %struct.w83627ehf_data** %6, align 8
  %1578 = getelementptr inbounds %struct.w83627ehf_data, %struct.w83627ehf_data* %1577, i32 0, i32 15
  %1579 = load i32, i32* %1578, align 8
  %1580 = call i64 @IS_ERR(i32 %1579)
  %1581 = icmp ne i64 %1580, 0
  br i1 %1581, label %1582, label %1587

1582:                                             ; preds = %1572
  %1583 = load %struct.w83627ehf_data*, %struct.w83627ehf_data** %6, align 8
  %1584 = getelementptr inbounds %struct.w83627ehf_data, %struct.w83627ehf_data* %1583, i32 0, i32 15
  %1585 = load i32, i32* %1584, align 8
  %1586 = call i32 @PTR_ERR(i32 %1585)
  store i32 %1586, i32* %10, align 4
  br label %1588

1587:                                             ; preds = %1572
  store i32 0, i32* %2, align 4
  br label %1599

1588:                                             ; preds = %1582, %1571, %1564, %1550, %1536, %1517, %1493, %1472, %1442, %1426, %1396, %1343, %1323, %1307, %1272, %1214, %1181, %1148, %1111
  %1589 = load %struct.device*, %struct.device** %4, align 8
  %1590 = call i32 @w83627ehf_device_remove_files(%struct.device* %1589)
  br label %1591

1591:                                             ; preds = %1588, %998, %900, %863, %54
  %1592 = load %struct.resource*, %struct.resource** %7, align 8
  %1593 = getelementptr inbounds %struct.resource, %struct.resource* %1592, i32 0, i32 0
  %1594 = load i64, i64* %1593, align 8
  %1595 = load i64, i64* @IOREGION_LENGTH, align 8
  %1596 = call i32 @release_region(i64 %1594, i64 %1595)
  br label %1597

1597:                                             ; preds = %1591, %33
  %1598 = load i32, i32* %10, align 4
  store i32 %1598, i32* %2, align 4
  br label %1599

1599:                                             ; preds = %1597, %1587
  %1600 = load i32, i32* %2, align 4
  ret i32 %1600
}

declare dso_local %struct.w83627ehf_sio_data* @dev_get_platdata(%struct.device*) #1

declare dso_local %struct.resource* @platform_get_resource(%struct.platform_device*, i32, i32) #1

declare dso_local i32 @request_region(i64, i64, i32) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, i64, i64) #1

declare dso_local %struct.w83627ehf_data* @devm_kzalloc(%struct.device*, i32, i32) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.w83627ehf_data*) #1

declare dso_local i32 @w83627ehf_read_value(%struct.w83627ehf_data*, i32) #1

declare dso_local i32 @w82627ehf_swap_tempreg(%struct.w83627ehf_data*, i32, i32) #1

declare dso_local i32 @w83627ehf_set_temp_reg_ehf(%struct.w83627ehf_data*, i32) #1

declare dso_local i32 @w83627ehf_init_device(%struct.w83627ehf_data*, i32) #1

declare dso_local i32 @vid_which_vrm(...) #1

declare dso_local i32 @superio_enter(i32) #1

declare dso_local i32 @superio_select(i32, i32) #1

declare dso_local i32 @superio_inb(i32, i32) #1

declare dso_local i32 @device_create_file(%struct.device*, i32*) #1

declare dso_local i32 @superio_exit(i32) #1

declare dso_local i32 @dev_warn(%struct.device*, i8*) #1

declare dso_local i32 @superio_outb(i32, i32, i32) #1

declare dso_local i32 @dev_info(%struct.device*, i8*) #1

declare dso_local i32 @pr_info(i8*, i32) #1

declare dso_local i32 @w83627ehf_check_fan_inputs(%struct.w83627ehf_sio_data*, %struct.w83627ehf_data*) #1

declare dso_local i32 @w83627ehf_update_fan_div_common(%struct.device*, %struct.w83627ehf_data*) #1

declare dso_local i32 @w83627ehf_update_pwm_common(%struct.device*, %struct.w83627ehf_data*) #1

declare dso_local i32 @ARRAY_SIZE(%struct.sensor_device_attribute*) #1

declare dso_local i32 @hwmon_device_register(%struct.device*) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @PTR_ERR(i32) #1

declare dso_local i32 @w83627ehf_device_remove_files(%struct.device*) #1

declare dso_local i32 @release_region(i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
