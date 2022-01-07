; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/adc/extr_qcom-spmi-adc5.c_adc5_get_dt_channel_data.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/adc/extr_qcom-spmi-adc5.c_adc5_get_dt_channel_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.adc5_chip = type { %struct.TYPE_6__*, %struct.device* }
%struct.TYPE_6__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32 }
%struct.device = type { i32 }
%struct.adc5_channel_prop = type { i64, i8*, i32, i32, i32, i32, i32, i32 }
%struct.device_node = type { i8* }
%struct.adc5_data = type { i32, i32, i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }

@.str = private unnamed_addr constant [4 x i8] c"reg\00", align 1
@.str.1 = private unnamed_addr constant [27 x i8] c"invalid channel number %s\0A\00", align 1
@ADC5_PARALLEL_ISENSE_VBAT_IDATA = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [30 x i8] c"%s invalid channel number %d\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [6 x i8] c"label\00", align 1
@.str.4 = private unnamed_addr constant [22 x i8] c"Invalid channel name\0A\00", align 1
@.str.5 = private unnamed_addr constant [16 x i8] c"qcom,decimation\00", align 1
@.str.6 = private unnamed_addr constant [28 x i8] c"%02x invalid decimation %d\0A\00", align 1
@ADC5_DECIMATION_DEFAULT = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [17 x i8] c"qcom,pre-scaling\00", align 1
@.str.8 = private unnamed_addr constant [34 x i8] c"%02x invalid pre-scaling <%d %d>\0A\00", align 1
@.str.9 = private unnamed_addr constant [20 x i8] c"qcom,hw-settle-time\00", align 1
@ADC5_USR_REVISION1 = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [29 x i8] c"Invalid dig version read %d\0A\00", align 1
@.str.11 = private unnamed_addr constant [28 x i8] c"dig_ver:minor:%d, major:%d\0A\00", align 1
@ADC5_HW_SETTLE_DIFF_MINOR = common dso_local global i64 0, align 8
@ADC5_HW_SETTLE_DIFF_MAJOR = common dso_local global i64 0, align 8
@.str.12 = private unnamed_addr constant [35 x i8] c"%02x invalid hw-settle-time %d us\0A\00", align 1
@VADC_DEF_HW_SETTLE_TIME = common dso_local global i32 0, align 4
@.str.13 = private unnamed_addr constant [17 x i8] c"qcom,avg-samples\00", align 1
@.str.14 = private unnamed_addr constant [29 x i8] c"%02x invalid avg-samples %d\0A\00", align 1
@VADC_DEF_AVG_SAMPLES = common dso_local global i32 0, align 4
@.str.15 = private unnamed_addr constant [17 x i8] c"qcom,ratiometric\00", align 1
@ADC5_RATIOMETRIC_CAL = common dso_local global i32 0, align 4
@ADC5_ABSOLUTE_CAL = common dso_local global i32 0, align 4
@ADC5_TIMER_CAL = common dso_local global i32 0, align 4
@.str.16 = private unnamed_addr constant [14 x i8] c"%02x name %s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.adc5_chip*, %struct.adc5_channel_prop*, %struct.device_node*, %struct.adc5_data*)* @adc5_get_dt_channel_data to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @adc5_get_dt_channel_data(%struct.adc5_chip* %0, %struct.adc5_channel_prop* %1, %struct.device_node* %2, %struct.adc5_data* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.adc5_chip*, align 8
  %7 = alloca %struct.adc5_channel_prop*, align 8
  %8 = alloca %struct.device_node*, align 8
  %9 = alloca %struct.adc5_data*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca [2 x i64], align 16
  %15 = alloca i32, align 4
  %16 = alloca %struct.device*, align 8
  %17 = alloca [2 x i64], align 16
  store %struct.adc5_chip* %0, %struct.adc5_chip** %6, align 8
  store %struct.adc5_channel_prop* %1, %struct.adc5_channel_prop** %7, align 8
  store %struct.device_node* %2, %struct.device_node** %8, align 8
  store %struct.adc5_data* %3, %struct.adc5_data** %9, align 8
  %18 = load %struct.device_node*, %struct.device_node** %8, align 8
  %19 = getelementptr inbounds %struct.device_node, %struct.device_node* %18, i32 0, i32 0
  %20 = load i8*, i8** %19, align 8
  store i8* %20, i8** %10, align 8
  %21 = load %struct.adc5_chip*, %struct.adc5_chip** %6, align 8
  %22 = getelementptr inbounds %struct.adc5_chip, %struct.adc5_chip* %21, i32 0, i32 1
  %23 = load %struct.device*, %struct.device** %22, align 8
  store %struct.device* %23, %struct.device** %16, align 8
  %24 = load %struct.device_node*, %struct.device_node** %8, align 8
  %25 = call i32 @of_property_read_u32(%struct.device_node* %24, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i64* %12)
  store i32 %25, i32* %15, align 4
  %26 = load i32, i32* %15, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %33

28:                                               ; preds = %4
  %29 = load %struct.device*, %struct.device** %16, align 8
  %30 = load i8*, i8** %10, align 8
  %31 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %29, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0), i8* %30)
  %32 = load i32, i32* %15, align 4
  store i32 %32, i32* %5, align 4
  br label %250

33:                                               ; preds = %4
  %34 = load i64, i64* %12, align 8
  %35 = load i64, i64* @ADC5_PARALLEL_ISENSE_VBAT_IDATA, align 8
  %36 = icmp ugt i64 %34, %35
  br i1 %36, label %46, label %37

37:                                               ; preds = %33
  %38 = load %struct.adc5_data*, %struct.adc5_data** %9, align 8
  %39 = getelementptr inbounds %struct.adc5_data, %struct.adc5_data* %38, i32 0, i32 3
  %40 = load %struct.TYPE_4__*, %struct.TYPE_4__** %39, align 8
  %41 = load i64, i64* %12, align 8
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i64 %41
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %53, label %46

46:                                               ; preds = %37, %33
  %47 = load %struct.device*, %struct.device** %16, align 8
  %48 = load i8*, i8** %10, align 8
  %49 = load i64, i64* %12, align 8
  %50 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %47, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i64 0, i64 0), i8* %48, i64 %49)
  %51 = load i32, i32* @EINVAL, align 4
  %52 = sub nsw i32 0, %51
  store i32 %52, i32* %5, align 4
  br label %250

53:                                               ; preds = %37
  %54 = load i64, i64* %12, align 8
  %55 = load %struct.adc5_channel_prop*, %struct.adc5_channel_prop** %7, align 8
  %56 = getelementptr inbounds %struct.adc5_channel_prop, %struct.adc5_channel_prop* %55, i32 0, i32 0
  store i64 %54, i64* %56, align 8
  %57 = load %struct.device_node*, %struct.device_node** %8, align 8
  %58 = call i64 @of_get_property(%struct.device_node* %57, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0), i32* null)
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %62

60:                                               ; preds = %53
  %61 = inttoptr i64 %58 to i8*
  br label %66

62:                                               ; preds = %53
  %63 = load %struct.device_node*, %struct.device_node** %8, align 8
  %64 = getelementptr inbounds %struct.device_node, %struct.device_node* %63, i32 0, i32 0
  %65 = load i8*, i8** %64, align 8
  br label %66

66:                                               ; preds = %62, %60
  %67 = phi i8* [ %61, %60 ], [ %65, %62 ]
  store i8* %67, i8** %11, align 8
  %68 = load i8*, i8** %11, align 8
  %69 = icmp ne i8* %68, null
  br i1 %69, label %74, label %70

70:                                               ; preds = %66
  %71 = call i32 @pr_err(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.4, i64 0, i64 0))
  %72 = load i32, i32* @EINVAL, align 4
  %73 = sub nsw i32 0, %72
  store i32 %73, i32* %5, align 4
  br label %250

74:                                               ; preds = %66
  %75 = load i8*, i8** %11, align 8
  %76 = load %struct.adc5_channel_prop*, %struct.adc5_channel_prop** %7, align 8
  %77 = getelementptr inbounds %struct.adc5_channel_prop, %struct.adc5_channel_prop* %76, i32 0, i32 1
  store i8* %75, i8** %77, align 8
  %78 = load %struct.device_node*, %struct.device_node** %8, align 8
  %79 = call i32 @of_property_read_u32(%struct.device_node* %78, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.5, i64 0, i64 0), i64* %13)
  store i32 %79, i32* %15, align 4
  %80 = load i32, i32* %15, align 4
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %100, label %82

82:                                               ; preds = %74
  %83 = load i64, i64* %13, align 8
  %84 = load %struct.adc5_data*, %struct.adc5_data** %9, align 8
  %85 = getelementptr inbounds %struct.adc5_data, %struct.adc5_data* %84, i32 0, i32 2
  %86 = load i32, i32* %85, align 8
  %87 = call i32 @adc5_decimation_from_dt(i64 %83, i32 %86)
  store i32 %87, i32* %15, align 4
  %88 = load i32, i32* %15, align 4
  %89 = icmp slt i32 %88, 0
  br i1 %89, label %90, label %96

90:                                               ; preds = %82
  %91 = load %struct.device*, %struct.device** %16, align 8
  %92 = load i64, i64* %12, align 8
  %93 = load i64, i64* %13, align 8
  %94 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %91, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.6, i64 0, i64 0), i64 %92, i64 %93)
  %95 = load i32, i32* %15, align 4
  store i32 %95, i32* %5, align 4
  br label %250

96:                                               ; preds = %82
  %97 = load i32, i32* %15, align 4
  %98 = load %struct.adc5_channel_prop*, %struct.adc5_channel_prop** %7, align 8
  %99 = getelementptr inbounds %struct.adc5_channel_prop, %struct.adc5_channel_prop* %98, i32 0, i32 2
  store i32 %97, i32* %99, align 8
  br label %104

100:                                              ; preds = %74
  %101 = load i32, i32* @ADC5_DECIMATION_DEFAULT, align 4
  %102 = load %struct.adc5_channel_prop*, %struct.adc5_channel_prop** %7, align 8
  %103 = getelementptr inbounds %struct.adc5_channel_prop, %struct.adc5_channel_prop* %102, i32 0, i32 2
  store i32 %101, i32* %103, align 8
  br label %104

104:                                              ; preds = %100, %96
  %105 = load %struct.device_node*, %struct.device_node** %8, align 8
  %106 = getelementptr inbounds [2 x i64], [2 x i64]* %14, i64 0, i64 0
  %107 = call i32 @of_property_read_u32_array(%struct.device_node* %105, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.7, i64 0, i64 0), i64* %106, i32 2)
  store i32 %107, i32* %15, align 4
  %108 = load i32, i32* %15, align 4
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %131, label %110

110:                                              ; preds = %104
  %111 = getelementptr inbounds [2 x i64], [2 x i64]* %14, i64 0, i64 0
  %112 = load i64, i64* %111, align 16
  %113 = getelementptr inbounds [2 x i64], [2 x i64]* %14, i64 0, i64 1
  %114 = load i64, i64* %113, align 8
  %115 = call i32 @adc5_prescaling_from_dt(i64 %112, i64 %114)
  store i32 %115, i32* %15, align 4
  %116 = load i32, i32* %15, align 4
  %117 = icmp slt i32 %116, 0
  br i1 %117, label %118, label %127

118:                                              ; preds = %110
  %119 = load %struct.device*, %struct.device** %16, align 8
  %120 = load i64, i64* %12, align 8
  %121 = getelementptr inbounds [2 x i64], [2 x i64]* %14, i64 0, i64 0
  %122 = load i64, i64* %121, align 16
  %123 = getelementptr inbounds [2 x i64], [2 x i64]* %14, i64 0, i64 1
  %124 = load i64, i64* %123, align 8
  %125 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %119, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.8, i64 0, i64 0), i64 %120, i64 %122, i64 %124)
  %126 = load i32, i32* %15, align 4
  store i32 %126, i32* %5, align 4
  br label %250

127:                                              ; preds = %110
  %128 = load i32, i32* %15, align 4
  %129 = load %struct.adc5_channel_prop*, %struct.adc5_channel_prop** %7, align 8
  %130 = getelementptr inbounds %struct.adc5_channel_prop, %struct.adc5_channel_prop* %129, i32 0, i32 3
  store i32 %128, i32* %130, align 4
  br label %145

131:                                              ; preds = %104
  %132 = load %struct.adc5_chip*, %struct.adc5_chip** %6, align 8
  %133 = getelementptr inbounds %struct.adc5_chip, %struct.adc5_chip* %132, i32 0, i32 0
  %134 = load %struct.TYPE_6__*, %struct.TYPE_6__** %133, align 8
  %135 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %134, i32 0, i32 0
  %136 = load %struct.TYPE_5__*, %struct.TYPE_5__** %135, align 8
  %137 = load %struct.adc5_channel_prop*, %struct.adc5_channel_prop** %7, align 8
  %138 = getelementptr inbounds %struct.adc5_channel_prop, %struct.adc5_channel_prop* %137, i32 0, i32 0
  %139 = load i64, i64* %138, align 8
  %140 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %136, i64 %139
  %141 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %140, i32 0, i32 0
  %142 = load i32, i32* %141, align 4
  %143 = load %struct.adc5_channel_prop*, %struct.adc5_channel_prop** %7, align 8
  %144 = getelementptr inbounds %struct.adc5_channel_prop, %struct.adc5_channel_prop* %143, i32 0, i32 3
  store i32 %142, i32* %144, align 4
  br label %145

145:                                              ; preds = %131, %127
  %146 = load %struct.device_node*, %struct.device_node** %8, align 8
  %147 = call i32 @of_property_read_u32(%struct.device_node* %146, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.9, i64 0, i64 0), i64* %13)
  store i32 %147, i32* %15, align 4
  %148 = load i32, i32* %15, align 4
  %149 = icmp ne i32 %148, 0
  br i1 %149, label %202, label %150

150:                                              ; preds = %145
  %151 = load %struct.adc5_chip*, %struct.adc5_chip** %6, align 8
  %152 = load i32, i32* @ADC5_USR_REVISION1, align 4
  %153 = getelementptr inbounds [2 x i64], [2 x i64]* %17, i64 0, i64 0
  %154 = call i32 @adc5_read(%struct.adc5_chip* %151, i32 %152, i64* %153, i32 16)
  store i32 %154, i32* %15, align 4
  %155 = load i32, i32* %15, align 4
  %156 = icmp slt i32 %155, 0
  br i1 %156, label %157, label %162

157:                                              ; preds = %150
  %158 = load %struct.device*, %struct.device** %16, align 8
  %159 = load i32, i32* %15, align 4
  %160 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %158, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.10, i64 0, i64 0), i32 %159)
  %161 = load i32, i32* %15, align 4
  store i32 %161, i32* %5, align 4
  br label %250

162:                                              ; preds = %150
  %163 = getelementptr inbounds [2 x i64], [2 x i64]* %17, i64 0, i64 0
  %164 = load i64, i64* %163, align 16
  %165 = getelementptr inbounds [2 x i64], [2 x i64]* %17, i64 0, i64 1
  %166 = load i64, i64* %165, align 8
  %167 = call i32 @pr_debug(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.11, i64 0, i64 0), i64 %164, i64 %166)
  %168 = getelementptr inbounds [2 x i64], [2 x i64]* %17, i64 0, i64 0
  %169 = load i64, i64* %168, align 16
  %170 = load i64, i64* @ADC5_HW_SETTLE_DIFF_MINOR, align 8
  %171 = icmp sge i64 %169, %170
  br i1 %171, label %172, label %183

172:                                              ; preds = %162
  %173 = getelementptr inbounds [2 x i64], [2 x i64]* %17, i64 0, i64 1
  %174 = load i64, i64* %173, align 8
  %175 = load i64, i64* @ADC5_HW_SETTLE_DIFF_MAJOR, align 8
  %176 = icmp sge i64 %174, %175
  br i1 %176, label %177, label %183

177:                                              ; preds = %172
  %178 = load i64, i64* %13, align 8
  %179 = load %struct.adc5_data*, %struct.adc5_data** %9, align 8
  %180 = getelementptr inbounds %struct.adc5_data, %struct.adc5_data* %179, i32 0, i32 1
  %181 = load i32, i32* %180, align 4
  %182 = call i32 @adc5_hw_settle_time_from_dt(i64 %178, i32 %181)
  store i32 %182, i32* %15, align 4
  br label %189

183:                                              ; preds = %172, %162
  %184 = load i64, i64* %13, align 8
  %185 = load %struct.adc5_data*, %struct.adc5_data** %9, align 8
  %186 = getelementptr inbounds %struct.adc5_data, %struct.adc5_data* %185, i32 0, i32 0
  %187 = load i32, i32* %186, align 8
  %188 = call i32 @adc5_hw_settle_time_from_dt(i64 %184, i32 %187)
  store i32 %188, i32* %15, align 4
  br label %189

189:                                              ; preds = %183, %177
  %190 = load i32, i32* %15, align 4
  %191 = icmp slt i32 %190, 0
  br i1 %191, label %192, label %198

192:                                              ; preds = %189
  %193 = load %struct.device*, %struct.device** %16, align 8
  %194 = load i64, i64* %12, align 8
  %195 = load i64, i64* %13, align 8
  %196 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %193, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.12, i64 0, i64 0), i64 %194, i64 %195)
  %197 = load i32, i32* %15, align 4
  store i32 %197, i32* %5, align 4
  br label %250

198:                                              ; preds = %189
  %199 = load i32, i32* %15, align 4
  %200 = load %struct.adc5_channel_prop*, %struct.adc5_channel_prop** %7, align 8
  %201 = getelementptr inbounds %struct.adc5_channel_prop, %struct.adc5_channel_prop* %200, i32 0, i32 4
  store i32 %199, i32* %201, align 8
  br label %206

202:                                              ; preds = %145
  %203 = load i32, i32* @VADC_DEF_HW_SETTLE_TIME, align 4
  %204 = load %struct.adc5_channel_prop*, %struct.adc5_channel_prop** %7, align 8
  %205 = getelementptr inbounds %struct.adc5_channel_prop, %struct.adc5_channel_prop* %204, i32 0, i32 4
  store i32 %203, i32* %205, align 8
  br label %206

206:                                              ; preds = %202, %198
  %207 = load %struct.device_node*, %struct.device_node** %8, align 8
  %208 = call i32 @of_property_read_u32(%struct.device_node* %207, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.13, i64 0, i64 0), i64* %13)
  store i32 %208, i32* %15, align 4
  %209 = load i32, i32* %15, align 4
  %210 = icmp ne i32 %209, 0
  br i1 %210, label %226, label %211

211:                                              ; preds = %206
  %212 = load i64, i64* %13, align 8
  %213 = call i32 @adc5_avg_samples_from_dt(i64 %212)
  store i32 %213, i32* %15, align 4
  %214 = load i32, i32* %15, align 4
  %215 = icmp slt i32 %214, 0
  br i1 %215, label %216, label %222

216:                                              ; preds = %211
  %217 = load %struct.device*, %struct.device** %16, align 8
  %218 = load i64, i64* %12, align 8
  %219 = load i64, i64* %13, align 8
  %220 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %217, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.14, i64 0, i64 0), i64 %218, i64 %219)
  %221 = load i32, i32* %15, align 4
  store i32 %221, i32* %5, align 4
  br label %250

222:                                              ; preds = %211
  %223 = load i32, i32* %15, align 4
  %224 = load %struct.adc5_channel_prop*, %struct.adc5_channel_prop** %7, align 8
  %225 = getelementptr inbounds %struct.adc5_channel_prop, %struct.adc5_channel_prop* %224, i32 0, i32 5
  store i32 %223, i32* %225, align 4
  br label %230

226:                                              ; preds = %206
  %227 = load i32, i32* @VADC_DEF_AVG_SAMPLES, align 4
  %228 = load %struct.adc5_channel_prop*, %struct.adc5_channel_prop** %7, align 8
  %229 = getelementptr inbounds %struct.adc5_channel_prop, %struct.adc5_channel_prop* %228, i32 0, i32 5
  store i32 %227, i32* %229, align 4
  br label %230

230:                                              ; preds = %226, %222
  %231 = load %struct.device_node*, %struct.device_node** %8, align 8
  %232 = call i64 @of_property_read_bool(%struct.device_node* %231, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.15, i64 0, i64 0))
  %233 = icmp ne i64 %232, 0
  br i1 %233, label %234, label %238

234:                                              ; preds = %230
  %235 = load i32, i32* @ADC5_RATIOMETRIC_CAL, align 4
  %236 = load %struct.adc5_channel_prop*, %struct.adc5_channel_prop** %7, align 8
  %237 = getelementptr inbounds %struct.adc5_channel_prop, %struct.adc5_channel_prop* %236, i32 0, i32 7
  store i32 %235, i32* %237, align 4
  br label %242

238:                                              ; preds = %230
  %239 = load i32, i32* @ADC5_ABSOLUTE_CAL, align 4
  %240 = load %struct.adc5_channel_prop*, %struct.adc5_channel_prop** %7, align 8
  %241 = getelementptr inbounds %struct.adc5_channel_prop, %struct.adc5_channel_prop* %240, i32 0, i32 7
  store i32 %239, i32* %241, align 4
  br label %242

242:                                              ; preds = %238, %234
  %243 = load i32, i32* @ADC5_TIMER_CAL, align 4
  %244 = load %struct.adc5_channel_prop*, %struct.adc5_channel_prop** %7, align 8
  %245 = getelementptr inbounds %struct.adc5_channel_prop, %struct.adc5_channel_prop* %244, i32 0, i32 6
  store i32 %243, i32* %245, align 8
  %246 = load %struct.device*, %struct.device** %16, align 8
  %247 = load i64, i64* %12, align 8
  %248 = load i8*, i8** %10, align 8
  %249 = call i32 @dev_dbg(%struct.device* %246, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.16, i64 0, i64 0), i64 %247, i8* %248)
  store i32 0, i32* %5, align 4
  br label %250

250:                                              ; preds = %242, %216, %192, %157, %118, %90, %70, %46, %28
  %251 = load i32, i32* %5, align 4
  ret i32 %251
}

declare dso_local i32 @of_property_read_u32(%struct.device_node*, i8*, i64*) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, ...) #1

declare dso_local i64 @of_get_property(%struct.device_node*, i8*, i32*) #1

declare dso_local i32 @pr_err(i8*) #1

declare dso_local i32 @adc5_decimation_from_dt(i64, i32) #1

declare dso_local i32 @of_property_read_u32_array(%struct.device_node*, i8*, i64*, i32) #1

declare dso_local i32 @adc5_prescaling_from_dt(i64, i64) #1

declare dso_local i32 @adc5_read(%struct.adc5_chip*, i32, i64*, i32) #1

declare dso_local i32 @pr_debug(i8*, i64, i64) #1

declare dso_local i32 @adc5_hw_settle_time_from_dt(i64, i32) #1

declare dso_local i32 @adc5_avg_samples_from_dt(i64) #1

declare dso_local i64 @of_property_read_bool(%struct.device_node*, i8*) #1

declare dso_local i32 @dev_dbg(%struct.device*, i8*, i64, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
