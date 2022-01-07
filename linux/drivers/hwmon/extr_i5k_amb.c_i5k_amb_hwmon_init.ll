; ModuleID = '/home/carl/AnghaBench/linux/drivers/hwmon/extr_i5k_amb.c_i5k_amb_hwmon_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hwmon/extr_i5k_amb.c_i5k_amb_hwmon_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { %struct.TYPE_7__, i32, i32 }
%struct.TYPE_7__ = type { i32, i32 }
%struct.platform_device = type { i32 }
%struct.i5k_amb_data = type { i32*, i32, %struct.i5k_device_attribute*, i32 }
%struct.i5k_device_attribute = type { %struct.TYPE_6__, i32 }
%struct.TYPE_6__ = type { i32, %struct.TYPE_8__ }

@MAX_MEM_CHANNELS = common dso_local global i32 0, align 4
@KNOBS_PER_AMB = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@REAL_MAX_AMBS_PER_CHANNEL = common dso_local global i32 0, align 4
@AMB_SYSFS_NAME_LEN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [13 x i8] c"temp%d_label\00", align 1
@show_label = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [13 x i8] c"temp%d_input\00", align 1
@show_amb_temp = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [11 x i8] c"temp%d_min\00", align 1
@show_amb_min = common dso_local global i32 0, align 4
@store_amb_min = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [11 x i8] c"temp%d_mid\00", align 1
@show_amb_mid = common dso_local global i32 0, align 4
@store_amb_mid = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [11 x i8] c"temp%d_max\00", align 1
@show_amb_max = common dso_local global i32 0, align 4
@store_amb_max = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [13 x i8] c"temp%d_alarm\00", align 1
@show_amb_alarm = common dso_local global i32 0, align 4
@dev_attr_name = common dso_local global %struct.TYPE_8__ zeroinitializer, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @i5k_amb_hwmon_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @i5k_amb_hwmon_init(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.i5k_amb_data*, align 8
  %12 = alloca %struct.i5k_device_attribute*, align 8
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  store i32 0, i32* %7, align 4
  store i32 0, i32* %9, align 4
  store i32 0, i32* %10, align 4
  %13 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %14 = call %struct.i5k_amb_data* @platform_get_drvdata(%struct.platform_device* %13)
  store %struct.i5k_amb_data* %14, %struct.i5k_amb_data** %11, align 8
  store i32 0, i32* %4, align 4
  br label %15

15:                                               ; preds = %33, %1
  %16 = load i32, i32* %4, align 4
  %17 = load i32, i32* @MAX_MEM_CHANNELS, align 4
  %18 = icmp slt i32 %16, %17
  br i1 %18, label %19, label %36

19:                                               ; preds = %15
  %20 = load %struct.i5k_amb_data*, %struct.i5k_amb_data** %11, align 8
  %21 = getelementptr inbounds %struct.i5k_amb_data, %struct.i5k_amb_data* %20, i32 0, i32 0
  %22 = load i32*, i32** %21, align 8
  %23 = load i32, i32* %4, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds i32, i32* %22, i64 %24
  %26 = load i32, i32* %25, align 4
  %27 = and i32 %26, 32767
  %28 = call i64 @hweight16(i32 %27)
  %29 = load i32, i32* %10, align 4
  %30 = sext i32 %29 to i64
  %31 = add nsw i64 %30, %28
  %32 = trunc i64 %31 to i32
  store i32 %32, i32* %10, align 4
  br label %33

33:                                               ; preds = %19
  %34 = load i32, i32* %4, align 4
  %35 = add nsw i32 %34, 1
  store i32 %35, i32* %4, align 4
  br label %15

36:                                               ; preds = %15
  %37 = load i32, i32* %10, align 4
  %38 = load i32, i32* @KNOBS_PER_AMB, align 4
  %39 = call i32 @array3_size(i32 %37, i32 %38, i32 24)
  %40 = load i32, i32* @GFP_KERNEL, align 4
  %41 = call %struct.i5k_device_attribute* @kzalloc(i32 %39, i32 %40)
  %42 = load %struct.i5k_amb_data*, %struct.i5k_amb_data** %11, align 8
  %43 = getelementptr inbounds %struct.i5k_amb_data, %struct.i5k_amb_data* %42, i32 0, i32 2
  store %struct.i5k_device_attribute* %41, %struct.i5k_device_attribute** %43, align 8
  %44 = load %struct.i5k_amb_data*, %struct.i5k_amb_data** %11, align 8
  %45 = getelementptr inbounds %struct.i5k_amb_data, %struct.i5k_amb_data* %44, i32 0, i32 2
  %46 = load %struct.i5k_device_attribute*, %struct.i5k_device_attribute** %45, align 8
  %47 = icmp ne %struct.i5k_device_attribute* %46, null
  br i1 %47, label %51, label %48

48:                                               ; preds = %36
  %49 = load i32, i32* @ENOMEM, align 4
  %50 = sub nsw i32 0, %49
  store i32 %50, i32* %2, align 4
  br label %491

51:                                               ; preds = %36
  %52 = load %struct.i5k_amb_data*, %struct.i5k_amb_data** %11, align 8
  %53 = getelementptr inbounds %struct.i5k_amb_data, %struct.i5k_amb_data* %52, i32 0, i32 1
  store i32 0, i32* %53, align 8
  store i32 0, i32* %4, align 4
  br label %54

54:                                               ; preds = %432, %51
  %55 = load i32, i32* %4, align 4
  %56 = load i32, i32* @MAX_MEM_CHANNELS, align 4
  %57 = icmp slt i32 %55, %56
  br i1 %57, label %58, label %435

58:                                               ; preds = %54
  %59 = load %struct.i5k_amb_data*, %struct.i5k_amb_data** %11, align 8
  %60 = getelementptr inbounds %struct.i5k_amb_data, %struct.i5k_amb_data* %59, i32 0, i32 0
  %61 = load i32*, i32** %60, align 8
  %62 = load i32, i32* %4, align 4
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds i32, i32* %61, i64 %63
  %65 = load i32, i32* %64, align 4
  store i32 %65, i32* %8, align 4
  store i32 0, i32* %5, align 4
  br label %66

66:                                               ; preds = %426, %58
  %67 = load i32, i32* %5, align 4
  %68 = load i32, i32* @REAL_MAX_AMBS_PER_CHANNEL, align 4
  %69 = icmp slt i32 %67, %68
  br i1 %69, label %70, label %431

70:                                               ; preds = %66
  %71 = load i32, i32* %4, align 4
  %72 = load i32, i32* %5, align 4
  %73 = call i32 @amb_num_from_reg(i32 %71, i32 %72)
  store i32 %73, i32* %6, align 4
  %74 = load i32, i32* %8, align 4
  %75 = and i32 %74, 1
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %78, label %77

77:                                               ; preds = %70
  br label %426

78:                                               ; preds = %70
  %79 = load i32, i32* %7, align 4
  %80 = add nsw i32 %79, 1
  store i32 %80, i32* %7, align 4
  %81 = load %struct.i5k_amb_data*, %struct.i5k_amb_data** %11, align 8
  %82 = getelementptr inbounds %struct.i5k_amb_data, %struct.i5k_amb_data* %81, i32 0, i32 2
  %83 = load %struct.i5k_device_attribute*, %struct.i5k_device_attribute** %82, align 8
  %84 = load %struct.i5k_amb_data*, %struct.i5k_amb_data** %11, align 8
  %85 = getelementptr inbounds %struct.i5k_amb_data, %struct.i5k_amb_data* %84, i32 0, i32 1
  %86 = load i32, i32* %85, align 8
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds %struct.i5k_device_attribute, %struct.i5k_device_attribute* %83, i64 %87
  store %struct.i5k_device_attribute* %88, %struct.i5k_device_attribute** %12, align 8
  %89 = load %struct.i5k_device_attribute*, %struct.i5k_device_attribute** %12, align 8
  %90 = getelementptr inbounds %struct.i5k_device_attribute, %struct.i5k_device_attribute* %89, i32 0, i32 1
  %91 = load i32, i32* %90, align 4
  %92 = load i32, i32* @AMB_SYSFS_NAME_LEN, align 4
  %93 = load i32, i32* %7, align 4
  %94 = call i32 @snprintf(i32 %91, i32 %92, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i32 %93)
  %95 = load %struct.i5k_device_attribute*, %struct.i5k_device_attribute** %12, align 8
  %96 = getelementptr inbounds %struct.i5k_device_attribute, %struct.i5k_device_attribute* %95, i32 0, i32 1
  %97 = load i32, i32* %96, align 4
  %98 = load %struct.i5k_device_attribute*, %struct.i5k_device_attribute** %12, align 8
  %99 = getelementptr inbounds %struct.i5k_device_attribute, %struct.i5k_device_attribute* %98, i32 0, i32 0
  %100 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %99, i32 0, i32 1
  %101 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %100, i32 0, i32 0
  %102 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %101, i32 0, i32 1
  store i32 %97, i32* %102, align 4
  %103 = load %struct.i5k_device_attribute*, %struct.i5k_device_attribute** %12, align 8
  %104 = getelementptr inbounds %struct.i5k_device_attribute, %struct.i5k_device_attribute* %103, i32 0, i32 0
  %105 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %104, i32 0, i32 1
  %106 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %105, i32 0, i32 0
  %107 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %106, i32 0, i32 0
  store i32 292, i32* %107, align 4
  %108 = load i32, i32* @show_label, align 4
  %109 = load %struct.i5k_device_attribute*, %struct.i5k_device_attribute** %12, align 8
  %110 = getelementptr inbounds %struct.i5k_device_attribute, %struct.i5k_device_attribute* %109, i32 0, i32 0
  %111 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %110, i32 0, i32 1
  %112 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %111, i32 0, i32 1
  store i32 %108, i32* %112, align 4
  %113 = load i32, i32* %6, align 4
  %114 = load %struct.i5k_device_attribute*, %struct.i5k_device_attribute** %12, align 8
  %115 = getelementptr inbounds %struct.i5k_device_attribute, %struct.i5k_device_attribute* %114, i32 0, i32 0
  %116 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %115, i32 0, i32 0
  store i32 %113, i32* %116, align 4
  %117 = load %struct.i5k_device_attribute*, %struct.i5k_device_attribute** %12, align 8
  %118 = getelementptr inbounds %struct.i5k_device_attribute, %struct.i5k_device_attribute* %117, i32 0, i32 0
  %119 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %118, i32 0, i32 1
  %120 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %119, i32 0, i32 0
  %121 = call i32 @sysfs_attr_init(%struct.TYPE_7__* %120)
  %122 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %123 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %122, i32 0, i32 0
  %124 = load %struct.i5k_device_attribute*, %struct.i5k_device_attribute** %12, align 8
  %125 = getelementptr inbounds %struct.i5k_device_attribute, %struct.i5k_device_attribute* %124, i32 0, i32 0
  %126 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %125, i32 0, i32 1
  %127 = call i32 @device_create_file(i32* %123, %struct.TYPE_8__* %126)
  store i32 %127, i32* %9, align 4
  %128 = load i32, i32* %9, align 4
  %129 = icmp ne i32 %128, 0
  br i1 %129, label %130, label %131

130:                                              ; preds = %78
  br label %460

131:                                              ; preds = %78
  %132 = load %struct.i5k_amb_data*, %struct.i5k_amb_data** %11, align 8
  %133 = getelementptr inbounds %struct.i5k_amb_data, %struct.i5k_amb_data* %132, i32 0, i32 1
  %134 = load i32, i32* %133, align 8
  %135 = add nsw i32 %134, 1
  store i32 %135, i32* %133, align 8
  %136 = load %struct.i5k_amb_data*, %struct.i5k_amb_data** %11, align 8
  %137 = getelementptr inbounds %struct.i5k_amb_data, %struct.i5k_amb_data* %136, i32 0, i32 2
  %138 = load %struct.i5k_device_attribute*, %struct.i5k_device_attribute** %137, align 8
  %139 = load %struct.i5k_amb_data*, %struct.i5k_amb_data** %11, align 8
  %140 = getelementptr inbounds %struct.i5k_amb_data, %struct.i5k_amb_data* %139, i32 0, i32 1
  %141 = load i32, i32* %140, align 8
  %142 = sext i32 %141 to i64
  %143 = getelementptr inbounds %struct.i5k_device_attribute, %struct.i5k_device_attribute* %138, i64 %142
  store %struct.i5k_device_attribute* %143, %struct.i5k_device_attribute** %12, align 8
  %144 = load %struct.i5k_device_attribute*, %struct.i5k_device_attribute** %12, align 8
  %145 = getelementptr inbounds %struct.i5k_device_attribute, %struct.i5k_device_attribute* %144, i32 0, i32 1
  %146 = load i32, i32* %145, align 4
  %147 = load i32, i32* @AMB_SYSFS_NAME_LEN, align 4
  %148 = load i32, i32* %7, align 4
  %149 = call i32 @snprintf(i32 %146, i32 %147, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0), i32 %148)
  %150 = load %struct.i5k_device_attribute*, %struct.i5k_device_attribute** %12, align 8
  %151 = getelementptr inbounds %struct.i5k_device_attribute, %struct.i5k_device_attribute* %150, i32 0, i32 1
  %152 = load i32, i32* %151, align 4
  %153 = load %struct.i5k_device_attribute*, %struct.i5k_device_attribute** %12, align 8
  %154 = getelementptr inbounds %struct.i5k_device_attribute, %struct.i5k_device_attribute* %153, i32 0, i32 0
  %155 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %154, i32 0, i32 1
  %156 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %155, i32 0, i32 0
  %157 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %156, i32 0, i32 1
  store i32 %152, i32* %157, align 4
  %158 = load %struct.i5k_device_attribute*, %struct.i5k_device_attribute** %12, align 8
  %159 = getelementptr inbounds %struct.i5k_device_attribute, %struct.i5k_device_attribute* %158, i32 0, i32 0
  %160 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %159, i32 0, i32 1
  %161 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %160, i32 0, i32 0
  %162 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %161, i32 0, i32 0
  store i32 292, i32* %162, align 4
  %163 = load i32, i32* @show_amb_temp, align 4
  %164 = load %struct.i5k_device_attribute*, %struct.i5k_device_attribute** %12, align 8
  %165 = getelementptr inbounds %struct.i5k_device_attribute, %struct.i5k_device_attribute* %164, i32 0, i32 0
  %166 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %165, i32 0, i32 1
  %167 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %166, i32 0, i32 1
  store i32 %163, i32* %167, align 4
  %168 = load i32, i32* %6, align 4
  %169 = load %struct.i5k_device_attribute*, %struct.i5k_device_attribute** %12, align 8
  %170 = getelementptr inbounds %struct.i5k_device_attribute, %struct.i5k_device_attribute* %169, i32 0, i32 0
  %171 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %170, i32 0, i32 0
  store i32 %168, i32* %171, align 4
  %172 = load %struct.i5k_device_attribute*, %struct.i5k_device_attribute** %12, align 8
  %173 = getelementptr inbounds %struct.i5k_device_attribute, %struct.i5k_device_attribute* %172, i32 0, i32 0
  %174 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %173, i32 0, i32 1
  %175 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %174, i32 0, i32 0
  %176 = call i32 @sysfs_attr_init(%struct.TYPE_7__* %175)
  %177 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %178 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %177, i32 0, i32 0
  %179 = load %struct.i5k_device_attribute*, %struct.i5k_device_attribute** %12, align 8
  %180 = getelementptr inbounds %struct.i5k_device_attribute, %struct.i5k_device_attribute* %179, i32 0, i32 0
  %181 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %180, i32 0, i32 1
  %182 = call i32 @device_create_file(i32* %178, %struct.TYPE_8__* %181)
  store i32 %182, i32* %9, align 4
  %183 = load i32, i32* %9, align 4
  %184 = icmp ne i32 %183, 0
  br i1 %184, label %185, label %186

185:                                              ; preds = %131
  br label %460

186:                                              ; preds = %131
  %187 = load %struct.i5k_amb_data*, %struct.i5k_amb_data** %11, align 8
  %188 = getelementptr inbounds %struct.i5k_amb_data, %struct.i5k_amb_data* %187, i32 0, i32 1
  %189 = load i32, i32* %188, align 8
  %190 = add nsw i32 %189, 1
  store i32 %190, i32* %188, align 8
  %191 = load %struct.i5k_amb_data*, %struct.i5k_amb_data** %11, align 8
  %192 = getelementptr inbounds %struct.i5k_amb_data, %struct.i5k_amb_data* %191, i32 0, i32 2
  %193 = load %struct.i5k_device_attribute*, %struct.i5k_device_attribute** %192, align 8
  %194 = load %struct.i5k_amb_data*, %struct.i5k_amb_data** %11, align 8
  %195 = getelementptr inbounds %struct.i5k_amb_data, %struct.i5k_amb_data* %194, i32 0, i32 1
  %196 = load i32, i32* %195, align 8
  %197 = sext i32 %196 to i64
  %198 = getelementptr inbounds %struct.i5k_device_attribute, %struct.i5k_device_attribute* %193, i64 %197
  store %struct.i5k_device_attribute* %198, %struct.i5k_device_attribute** %12, align 8
  %199 = load %struct.i5k_device_attribute*, %struct.i5k_device_attribute** %12, align 8
  %200 = getelementptr inbounds %struct.i5k_device_attribute, %struct.i5k_device_attribute* %199, i32 0, i32 1
  %201 = load i32, i32* %200, align 4
  %202 = load i32, i32* @AMB_SYSFS_NAME_LEN, align 4
  %203 = load i32, i32* %7, align 4
  %204 = call i32 @snprintf(i32 %201, i32 %202, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0), i32 %203)
  %205 = load %struct.i5k_device_attribute*, %struct.i5k_device_attribute** %12, align 8
  %206 = getelementptr inbounds %struct.i5k_device_attribute, %struct.i5k_device_attribute* %205, i32 0, i32 1
  %207 = load i32, i32* %206, align 4
  %208 = load %struct.i5k_device_attribute*, %struct.i5k_device_attribute** %12, align 8
  %209 = getelementptr inbounds %struct.i5k_device_attribute, %struct.i5k_device_attribute* %208, i32 0, i32 0
  %210 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %209, i32 0, i32 1
  %211 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %210, i32 0, i32 0
  %212 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %211, i32 0, i32 1
  store i32 %207, i32* %212, align 4
  %213 = load %struct.i5k_device_attribute*, %struct.i5k_device_attribute** %12, align 8
  %214 = getelementptr inbounds %struct.i5k_device_attribute, %struct.i5k_device_attribute* %213, i32 0, i32 0
  %215 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %214, i32 0, i32 1
  %216 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %215, i32 0, i32 0
  %217 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %216, i32 0, i32 0
  store i32 420, i32* %217, align 4
  %218 = load i32, i32* @show_amb_min, align 4
  %219 = load %struct.i5k_device_attribute*, %struct.i5k_device_attribute** %12, align 8
  %220 = getelementptr inbounds %struct.i5k_device_attribute, %struct.i5k_device_attribute* %219, i32 0, i32 0
  %221 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %220, i32 0, i32 1
  %222 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %221, i32 0, i32 1
  store i32 %218, i32* %222, align 4
  %223 = load i32, i32* @store_amb_min, align 4
  %224 = load %struct.i5k_device_attribute*, %struct.i5k_device_attribute** %12, align 8
  %225 = getelementptr inbounds %struct.i5k_device_attribute, %struct.i5k_device_attribute* %224, i32 0, i32 0
  %226 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %225, i32 0, i32 1
  %227 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %226, i32 0, i32 2
  store i32 %223, i32* %227, align 4
  %228 = load i32, i32* %6, align 4
  %229 = load %struct.i5k_device_attribute*, %struct.i5k_device_attribute** %12, align 8
  %230 = getelementptr inbounds %struct.i5k_device_attribute, %struct.i5k_device_attribute* %229, i32 0, i32 0
  %231 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %230, i32 0, i32 0
  store i32 %228, i32* %231, align 4
  %232 = load %struct.i5k_device_attribute*, %struct.i5k_device_attribute** %12, align 8
  %233 = getelementptr inbounds %struct.i5k_device_attribute, %struct.i5k_device_attribute* %232, i32 0, i32 0
  %234 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %233, i32 0, i32 1
  %235 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %234, i32 0, i32 0
  %236 = call i32 @sysfs_attr_init(%struct.TYPE_7__* %235)
  %237 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %238 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %237, i32 0, i32 0
  %239 = load %struct.i5k_device_attribute*, %struct.i5k_device_attribute** %12, align 8
  %240 = getelementptr inbounds %struct.i5k_device_attribute, %struct.i5k_device_attribute* %239, i32 0, i32 0
  %241 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %240, i32 0, i32 1
  %242 = call i32 @device_create_file(i32* %238, %struct.TYPE_8__* %241)
  store i32 %242, i32* %9, align 4
  %243 = load i32, i32* %9, align 4
  %244 = icmp ne i32 %243, 0
  br i1 %244, label %245, label %246

245:                                              ; preds = %186
  br label %460

246:                                              ; preds = %186
  %247 = load %struct.i5k_amb_data*, %struct.i5k_amb_data** %11, align 8
  %248 = getelementptr inbounds %struct.i5k_amb_data, %struct.i5k_amb_data* %247, i32 0, i32 1
  %249 = load i32, i32* %248, align 8
  %250 = add nsw i32 %249, 1
  store i32 %250, i32* %248, align 8
  %251 = load %struct.i5k_amb_data*, %struct.i5k_amb_data** %11, align 8
  %252 = getelementptr inbounds %struct.i5k_amb_data, %struct.i5k_amb_data* %251, i32 0, i32 2
  %253 = load %struct.i5k_device_attribute*, %struct.i5k_device_attribute** %252, align 8
  %254 = load %struct.i5k_amb_data*, %struct.i5k_amb_data** %11, align 8
  %255 = getelementptr inbounds %struct.i5k_amb_data, %struct.i5k_amb_data* %254, i32 0, i32 1
  %256 = load i32, i32* %255, align 8
  %257 = sext i32 %256 to i64
  %258 = getelementptr inbounds %struct.i5k_device_attribute, %struct.i5k_device_attribute* %253, i64 %257
  store %struct.i5k_device_attribute* %258, %struct.i5k_device_attribute** %12, align 8
  %259 = load %struct.i5k_device_attribute*, %struct.i5k_device_attribute** %12, align 8
  %260 = getelementptr inbounds %struct.i5k_device_attribute, %struct.i5k_device_attribute* %259, i32 0, i32 1
  %261 = load i32, i32* %260, align 4
  %262 = load i32, i32* @AMB_SYSFS_NAME_LEN, align 4
  %263 = load i32, i32* %7, align 4
  %264 = call i32 @snprintf(i32 %261, i32 %262, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i64 0, i64 0), i32 %263)
  %265 = load %struct.i5k_device_attribute*, %struct.i5k_device_attribute** %12, align 8
  %266 = getelementptr inbounds %struct.i5k_device_attribute, %struct.i5k_device_attribute* %265, i32 0, i32 1
  %267 = load i32, i32* %266, align 4
  %268 = load %struct.i5k_device_attribute*, %struct.i5k_device_attribute** %12, align 8
  %269 = getelementptr inbounds %struct.i5k_device_attribute, %struct.i5k_device_attribute* %268, i32 0, i32 0
  %270 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %269, i32 0, i32 1
  %271 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %270, i32 0, i32 0
  %272 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %271, i32 0, i32 1
  store i32 %267, i32* %272, align 4
  %273 = load %struct.i5k_device_attribute*, %struct.i5k_device_attribute** %12, align 8
  %274 = getelementptr inbounds %struct.i5k_device_attribute, %struct.i5k_device_attribute* %273, i32 0, i32 0
  %275 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %274, i32 0, i32 1
  %276 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %275, i32 0, i32 0
  %277 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %276, i32 0, i32 0
  store i32 420, i32* %277, align 4
  %278 = load i32, i32* @show_amb_mid, align 4
  %279 = load %struct.i5k_device_attribute*, %struct.i5k_device_attribute** %12, align 8
  %280 = getelementptr inbounds %struct.i5k_device_attribute, %struct.i5k_device_attribute* %279, i32 0, i32 0
  %281 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %280, i32 0, i32 1
  %282 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %281, i32 0, i32 1
  store i32 %278, i32* %282, align 4
  %283 = load i32, i32* @store_amb_mid, align 4
  %284 = load %struct.i5k_device_attribute*, %struct.i5k_device_attribute** %12, align 8
  %285 = getelementptr inbounds %struct.i5k_device_attribute, %struct.i5k_device_attribute* %284, i32 0, i32 0
  %286 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %285, i32 0, i32 1
  %287 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %286, i32 0, i32 2
  store i32 %283, i32* %287, align 4
  %288 = load i32, i32* %6, align 4
  %289 = load %struct.i5k_device_attribute*, %struct.i5k_device_attribute** %12, align 8
  %290 = getelementptr inbounds %struct.i5k_device_attribute, %struct.i5k_device_attribute* %289, i32 0, i32 0
  %291 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %290, i32 0, i32 0
  store i32 %288, i32* %291, align 4
  %292 = load %struct.i5k_device_attribute*, %struct.i5k_device_attribute** %12, align 8
  %293 = getelementptr inbounds %struct.i5k_device_attribute, %struct.i5k_device_attribute* %292, i32 0, i32 0
  %294 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %293, i32 0, i32 1
  %295 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %294, i32 0, i32 0
  %296 = call i32 @sysfs_attr_init(%struct.TYPE_7__* %295)
  %297 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %298 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %297, i32 0, i32 0
  %299 = load %struct.i5k_device_attribute*, %struct.i5k_device_attribute** %12, align 8
  %300 = getelementptr inbounds %struct.i5k_device_attribute, %struct.i5k_device_attribute* %299, i32 0, i32 0
  %301 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %300, i32 0, i32 1
  %302 = call i32 @device_create_file(i32* %298, %struct.TYPE_8__* %301)
  store i32 %302, i32* %9, align 4
  %303 = load i32, i32* %9, align 4
  %304 = icmp ne i32 %303, 0
  br i1 %304, label %305, label %306

305:                                              ; preds = %246
  br label %460

306:                                              ; preds = %246
  %307 = load %struct.i5k_amb_data*, %struct.i5k_amb_data** %11, align 8
  %308 = getelementptr inbounds %struct.i5k_amb_data, %struct.i5k_amb_data* %307, i32 0, i32 1
  %309 = load i32, i32* %308, align 8
  %310 = add nsw i32 %309, 1
  store i32 %310, i32* %308, align 8
  %311 = load %struct.i5k_amb_data*, %struct.i5k_amb_data** %11, align 8
  %312 = getelementptr inbounds %struct.i5k_amb_data, %struct.i5k_amb_data* %311, i32 0, i32 2
  %313 = load %struct.i5k_device_attribute*, %struct.i5k_device_attribute** %312, align 8
  %314 = load %struct.i5k_amb_data*, %struct.i5k_amb_data** %11, align 8
  %315 = getelementptr inbounds %struct.i5k_amb_data, %struct.i5k_amb_data* %314, i32 0, i32 1
  %316 = load i32, i32* %315, align 8
  %317 = sext i32 %316 to i64
  %318 = getelementptr inbounds %struct.i5k_device_attribute, %struct.i5k_device_attribute* %313, i64 %317
  store %struct.i5k_device_attribute* %318, %struct.i5k_device_attribute** %12, align 8
  %319 = load %struct.i5k_device_attribute*, %struct.i5k_device_attribute** %12, align 8
  %320 = getelementptr inbounds %struct.i5k_device_attribute, %struct.i5k_device_attribute* %319, i32 0, i32 1
  %321 = load i32, i32* %320, align 4
  %322 = load i32, i32* @AMB_SYSFS_NAME_LEN, align 4
  %323 = load i32, i32* %7, align 4
  %324 = call i32 @snprintf(i32 %321, i32 %322, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i64 0, i64 0), i32 %323)
  %325 = load %struct.i5k_device_attribute*, %struct.i5k_device_attribute** %12, align 8
  %326 = getelementptr inbounds %struct.i5k_device_attribute, %struct.i5k_device_attribute* %325, i32 0, i32 1
  %327 = load i32, i32* %326, align 4
  %328 = load %struct.i5k_device_attribute*, %struct.i5k_device_attribute** %12, align 8
  %329 = getelementptr inbounds %struct.i5k_device_attribute, %struct.i5k_device_attribute* %328, i32 0, i32 0
  %330 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %329, i32 0, i32 1
  %331 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %330, i32 0, i32 0
  %332 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %331, i32 0, i32 1
  store i32 %327, i32* %332, align 4
  %333 = load %struct.i5k_device_attribute*, %struct.i5k_device_attribute** %12, align 8
  %334 = getelementptr inbounds %struct.i5k_device_attribute, %struct.i5k_device_attribute* %333, i32 0, i32 0
  %335 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %334, i32 0, i32 1
  %336 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %335, i32 0, i32 0
  %337 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %336, i32 0, i32 0
  store i32 420, i32* %337, align 4
  %338 = load i32, i32* @show_amb_max, align 4
  %339 = load %struct.i5k_device_attribute*, %struct.i5k_device_attribute** %12, align 8
  %340 = getelementptr inbounds %struct.i5k_device_attribute, %struct.i5k_device_attribute* %339, i32 0, i32 0
  %341 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %340, i32 0, i32 1
  %342 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %341, i32 0, i32 1
  store i32 %338, i32* %342, align 4
  %343 = load i32, i32* @store_amb_max, align 4
  %344 = load %struct.i5k_device_attribute*, %struct.i5k_device_attribute** %12, align 8
  %345 = getelementptr inbounds %struct.i5k_device_attribute, %struct.i5k_device_attribute* %344, i32 0, i32 0
  %346 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %345, i32 0, i32 1
  %347 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %346, i32 0, i32 2
  store i32 %343, i32* %347, align 4
  %348 = load i32, i32* %6, align 4
  %349 = load %struct.i5k_device_attribute*, %struct.i5k_device_attribute** %12, align 8
  %350 = getelementptr inbounds %struct.i5k_device_attribute, %struct.i5k_device_attribute* %349, i32 0, i32 0
  %351 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %350, i32 0, i32 0
  store i32 %348, i32* %351, align 4
  %352 = load %struct.i5k_device_attribute*, %struct.i5k_device_attribute** %12, align 8
  %353 = getelementptr inbounds %struct.i5k_device_attribute, %struct.i5k_device_attribute* %352, i32 0, i32 0
  %354 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %353, i32 0, i32 1
  %355 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %354, i32 0, i32 0
  %356 = call i32 @sysfs_attr_init(%struct.TYPE_7__* %355)
  %357 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %358 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %357, i32 0, i32 0
  %359 = load %struct.i5k_device_attribute*, %struct.i5k_device_attribute** %12, align 8
  %360 = getelementptr inbounds %struct.i5k_device_attribute, %struct.i5k_device_attribute* %359, i32 0, i32 0
  %361 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %360, i32 0, i32 1
  %362 = call i32 @device_create_file(i32* %358, %struct.TYPE_8__* %361)
  store i32 %362, i32* %9, align 4
  %363 = load i32, i32* %9, align 4
  %364 = icmp ne i32 %363, 0
  br i1 %364, label %365, label %366

365:                                              ; preds = %306
  br label %460

366:                                              ; preds = %306
  %367 = load %struct.i5k_amb_data*, %struct.i5k_amb_data** %11, align 8
  %368 = getelementptr inbounds %struct.i5k_amb_data, %struct.i5k_amb_data* %367, i32 0, i32 1
  %369 = load i32, i32* %368, align 8
  %370 = add nsw i32 %369, 1
  store i32 %370, i32* %368, align 8
  %371 = load %struct.i5k_amb_data*, %struct.i5k_amb_data** %11, align 8
  %372 = getelementptr inbounds %struct.i5k_amb_data, %struct.i5k_amb_data* %371, i32 0, i32 2
  %373 = load %struct.i5k_device_attribute*, %struct.i5k_device_attribute** %372, align 8
  %374 = load %struct.i5k_amb_data*, %struct.i5k_amb_data** %11, align 8
  %375 = getelementptr inbounds %struct.i5k_amb_data, %struct.i5k_amb_data* %374, i32 0, i32 1
  %376 = load i32, i32* %375, align 8
  %377 = sext i32 %376 to i64
  %378 = getelementptr inbounds %struct.i5k_device_attribute, %struct.i5k_device_attribute* %373, i64 %377
  store %struct.i5k_device_attribute* %378, %struct.i5k_device_attribute** %12, align 8
  %379 = load %struct.i5k_device_attribute*, %struct.i5k_device_attribute** %12, align 8
  %380 = getelementptr inbounds %struct.i5k_device_attribute, %struct.i5k_device_attribute* %379, i32 0, i32 1
  %381 = load i32, i32* %380, align 4
  %382 = load i32, i32* @AMB_SYSFS_NAME_LEN, align 4
  %383 = load i32, i32* %7, align 4
  %384 = call i32 @snprintf(i32 %381, i32 %382, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.5, i64 0, i64 0), i32 %383)
  %385 = load %struct.i5k_device_attribute*, %struct.i5k_device_attribute** %12, align 8
  %386 = getelementptr inbounds %struct.i5k_device_attribute, %struct.i5k_device_attribute* %385, i32 0, i32 1
  %387 = load i32, i32* %386, align 4
  %388 = load %struct.i5k_device_attribute*, %struct.i5k_device_attribute** %12, align 8
  %389 = getelementptr inbounds %struct.i5k_device_attribute, %struct.i5k_device_attribute* %388, i32 0, i32 0
  %390 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %389, i32 0, i32 1
  %391 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %390, i32 0, i32 0
  %392 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %391, i32 0, i32 1
  store i32 %387, i32* %392, align 4
  %393 = load %struct.i5k_device_attribute*, %struct.i5k_device_attribute** %12, align 8
  %394 = getelementptr inbounds %struct.i5k_device_attribute, %struct.i5k_device_attribute* %393, i32 0, i32 0
  %395 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %394, i32 0, i32 1
  %396 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %395, i32 0, i32 0
  %397 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %396, i32 0, i32 0
  store i32 292, i32* %397, align 4
  %398 = load i32, i32* @show_amb_alarm, align 4
  %399 = load %struct.i5k_device_attribute*, %struct.i5k_device_attribute** %12, align 8
  %400 = getelementptr inbounds %struct.i5k_device_attribute, %struct.i5k_device_attribute* %399, i32 0, i32 0
  %401 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %400, i32 0, i32 1
  %402 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %401, i32 0, i32 1
  store i32 %398, i32* %402, align 4
  %403 = load i32, i32* %6, align 4
  %404 = load %struct.i5k_device_attribute*, %struct.i5k_device_attribute** %12, align 8
  %405 = getelementptr inbounds %struct.i5k_device_attribute, %struct.i5k_device_attribute* %404, i32 0, i32 0
  %406 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %405, i32 0, i32 0
  store i32 %403, i32* %406, align 4
  %407 = load %struct.i5k_device_attribute*, %struct.i5k_device_attribute** %12, align 8
  %408 = getelementptr inbounds %struct.i5k_device_attribute, %struct.i5k_device_attribute* %407, i32 0, i32 0
  %409 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %408, i32 0, i32 1
  %410 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %409, i32 0, i32 0
  %411 = call i32 @sysfs_attr_init(%struct.TYPE_7__* %410)
  %412 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %413 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %412, i32 0, i32 0
  %414 = load %struct.i5k_device_attribute*, %struct.i5k_device_attribute** %12, align 8
  %415 = getelementptr inbounds %struct.i5k_device_attribute, %struct.i5k_device_attribute* %414, i32 0, i32 0
  %416 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %415, i32 0, i32 1
  %417 = call i32 @device_create_file(i32* %413, %struct.TYPE_8__* %416)
  store i32 %417, i32* %9, align 4
  %418 = load i32, i32* %9, align 4
  %419 = icmp ne i32 %418, 0
  br i1 %419, label %420, label %421

420:                                              ; preds = %366
  br label %460

421:                                              ; preds = %366
  %422 = load %struct.i5k_amb_data*, %struct.i5k_amb_data** %11, align 8
  %423 = getelementptr inbounds %struct.i5k_amb_data, %struct.i5k_amb_data* %422, i32 0, i32 1
  %424 = load i32, i32* %423, align 8
  %425 = add nsw i32 %424, 1
  store i32 %425, i32* %423, align 8
  br label %426

426:                                              ; preds = %421, %77
  %427 = load i32, i32* %5, align 4
  %428 = add nsw i32 %427, 1
  store i32 %428, i32* %5, align 4
  %429 = load i32, i32* %8, align 4
  %430 = ashr i32 %429, 1
  store i32 %430, i32* %8, align 4
  br label %66

431:                                              ; preds = %66
  br label %432

432:                                              ; preds = %431
  %433 = load i32, i32* %4, align 4
  %434 = add nsw i32 %433, 1
  store i32 %434, i32* %4, align 4
  br label %54

435:                                              ; preds = %54
  %436 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %437 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %436, i32 0, i32 0
  %438 = call i32 @device_create_file(i32* %437, %struct.TYPE_8__* @dev_attr_name)
  store i32 %438, i32* %9, align 4
  %439 = load i32, i32* %9, align 4
  %440 = icmp ne i32 %439, 0
  br i1 %440, label %441, label %442

441:                                              ; preds = %435
  br label %460

442:                                              ; preds = %435
  %443 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %444 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %443, i32 0, i32 0
  %445 = call i32 @hwmon_device_register(i32* %444)
  %446 = load %struct.i5k_amb_data*, %struct.i5k_amb_data** %11, align 8
  %447 = getelementptr inbounds %struct.i5k_amb_data, %struct.i5k_amb_data* %446, i32 0, i32 3
  store i32 %445, i32* %447, align 8
  %448 = load %struct.i5k_amb_data*, %struct.i5k_amb_data** %11, align 8
  %449 = getelementptr inbounds %struct.i5k_amb_data, %struct.i5k_amb_data* %448, i32 0, i32 3
  %450 = load i32, i32* %449, align 8
  %451 = call i64 @IS_ERR(i32 %450)
  %452 = icmp ne i64 %451, 0
  br i1 %452, label %453, label %458

453:                                              ; preds = %442
  %454 = load %struct.i5k_amb_data*, %struct.i5k_amb_data** %11, align 8
  %455 = getelementptr inbounds %struct.i5k_amb_data, %struct.i5k_amb_data* %454, i32 0, i32 3
  %456 = load i32, i32* %455, align 8
  %457 = call i32 @PTR_ERR(i32 %456)
  store i32 %457, i32* %9, align 4
  br label %460

458:                                              ; preds = %442
  %459 = load i32, i32* %9, align 4
  store i32 %459, i32* %2, align 4
  br label %491

460:                                              ; preds = %453, %441, %420, %365, %305, %245, %185, %130
  %461 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %462 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %461, i32 0, i32 0
  %463 = call i32 @device_remove_file(i32* %462, %struct.TYPE_8__* @dev_attr_name)
  store i32 0, i32* %4, align 4
  br label %464

464:                                              ; preds = %482, %460
  %465 = load i32, i32* %4, align 4
  %466 = load %struct.i5k_amb_data*, %struct.i5k_amb_data** %11, align 8
  %467 = getelementptr inbounds %struct.i5k_amb_data, %struct.i5k_amb_data* %466, i32 0, i32 1
  %468 = load i32, i32* %467, align 8
  %469 = icmp slt i32 %465, %468
  br i1 %469, label %470, label %485

470:                                              ; preds = %464
  %471 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %472 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %471, i32 0, i32 0
  %473 = load %struct.i5k_amb_data*, %struct.i5k_amb_data** %11, align 8
  %474 = getelementptr inbounds %struct.i5k_amb_data, %struct.i5k_amb_data* %473, i32 0, i32 2
  %475 = load %struct.i5k_device_attribute*, %struct.i5k_device_attribute** %474, align 8
  %476 = load i32, i32* %4, align 4
  %477 = sext i32 %476 to i64
  %478 = getelementptr inbounds %struct.i5k_device_attribute, %struct.i5k_device_attribute* %475, i64 %477
  %479 = getelementptr inbounds %struct.i5k_device_attribute, %struct.i5k_device_attribute* %478, i32 0, i32 0
  %480 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %479, i32 0, i32 1
  %481 = call i32 @device_remove_file(i32* %472, %struct.TYPE_8__* %480)
  br label %482

482:                                              ; preds = %470
  %483 = load i32, i32* %4, align 4
  %484 = add nsw i32 %483, 1
  store i32 %484, i32* %4, align 4
  br label %464

485:                                              ; preds = %464
  %486 = load %struct.i5k_amb_data*, %struct.i5k_amb_data** %11, align 8
  %487 = getelementptr inbounds %struct.i5k_amb_data, %struct.i5k_amb_data* %486, i32 0, i32 2
  %488 = load %struct.i5k_device_attribute*, %struct.i5k_device_attribute** %487, align 8
  %489 = call i32 @kfree(%struct.i5k_device_attribute* %488)
  %490 = load i32, i32* %9, align 4
  store i32 %490, i32* %2, align 4
  br label %491

491:                                              ; preds = %485, %458, %48
  %492 = load i32, i32* %2, align 4
  ret i32 %492
}

declare dso_local %struct.i5k_amb_data* @platform_get_drvdata(%struct.platform_device*) #1

declare dso_local i64 @hweight16(i32) #1

declare dso_local %struct.i5k_device_attribute* @kzalloc(i32, i32) #1

declare dso_local i32 @array3_size(i32, i32, i32) #1

declare dso_local i32 @amb_num_from_reg(i32, i32) #1

declare dso_local i32 @snprintf(i32, i32, i8*, i32) #1

declare dso_local i32 @sysfs_attr_init(%struct.TYPE_7__*) #1

declare dso_local i32 @device_create_file(i32*, %struct.TYPE_8__*) #1

declare dso_local i32 @hwmon_device_register(i32*) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @PTR_ERR(i32) #1

declare dso_local i32 @device_remove_file(i32*, %struct.TYPE_8__*) #1

declare dso_local i32 @kfree(%struct.i5k_device_attribute*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
