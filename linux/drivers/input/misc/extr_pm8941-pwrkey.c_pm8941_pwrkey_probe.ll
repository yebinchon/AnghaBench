; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/misc/extr_pm8941-pwrkey.c_pm8941_pwrkey_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/misc/extr_pm8941-pwrkey.c_pm8941_pwrkey_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.TYPE_15__ }
%struct.TYPE_15__ = type { i32, %struct.device* }
%struct.device = type { i32, %struct.device* }
%struct.pm8941_pwrkey = type { i32, i64, i32, %struct.TYPE_13__, %struct.TYPE_16__*, %struct.TYPE_14__*, i8*, i32, %struct.TYPE_15__* }
%struct.TYPE_13__ = type { i32 }
%struct.TYPE_16__ = type { i8*, i8* }
%struct.TYPE_14__ = type { i32 }

@.str = private unnamed_addr constant [9 x i8] c"debounce\00", align 1
@.str.1 = private unnamed_addr constant [27 x i8] c"invalid debounce time: %u\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [13 x i8] c"bias-pull-up\00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [25 x i8] c"failed to locate regmap\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [4 x i8] c"reg\00", align 1
@PON_REV2 = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [28 x i8] c"failed to set debounce: %d\0A\00", align 1
@.str.6 = private unnamed_addr constant [11 x i8] c"linux,code\00", align 1
@.str.7 = private unnamed_addr constant [35 x i8] c"no linux,code assuming power (%d)\0A\00", align 1
@KEY_POWER = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [33 x i8] c"unable to allocate input device\0A\00", align 1
@EV_KEY = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [14 x i8] c"pm8941_pwrkey\00", align 1
@.str.10 = private unnamed_addr constant [21 x i8] c"pm8941_pwrkey/input0\00", align 1
@USEC_PER_SEC = common dso_local global i32 0, align 4
@PON_DBC_CTL = common dso_local global i32 0, align 4
@PON_DBC_DELAY_MASK = common dso_local global i32 0, align 4
@PON_PULL_CTL = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [24 x i8] c"failed to set pull: %d\0A\00", align 1
@pm8941_pwrkey_irq = common dso_local global i32 0, align 4
@IRQF_ONESHOT = common dso_local global i32 0, align 4
@.str.12 = private unnamed_addr constant [27 x i8] c"failed requesting IRQ: %d\0A\00", align 1
@.str.13 = private unnamed_addr constant [37 x i8] c"failed to register input device: %d\0A\00", align 1
@pm8941_reboot_notify = common dso_local global i32 0, align 4
@.str.14 = private unnamed_addr constant [40 x i8] c"failed to register reboot notifier: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @pm8941_pwrkey_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pm8941_pwrkey_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.pm8941_pwrkey*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.device*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %9 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %10 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = call i32 @of_property_read_u32(i32 %12, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i32* %7)
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %16

15:                                               ; preds = %1
  store i32 15625, i32* %7, align 4
  br label %16

16:                                               ; preds = %15, %1
  %17 = load i32, i32* %7, align 4
  %18 = icmp sgt i32 %17, 2000000
  br i1 %18, label %22, label %19

19:                                               ; preds = %16
  %20 = load i32, i32* %7, align 4
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %22, label %29

22:                                               ; preds = %19, %16
  %23 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %24 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %23, i32 0, i32 0
  %25 = load i32, i32* %7, align 4
  %26 = call i32 (%struct.TYPE_15__*, i8*, ...) @dev_err(%struct.TYPE_15__* %24, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0), i32 %25)
  %27 = load i32, i32* @EINVAL, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %2, align 4
  br label %302

29:                                               ; preds = %19
  %30 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %31 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = call i32 @of_property_read_bool(i32 %33, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0))
  store i32 %34, i32* %5, align 4
  %35 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %36 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %35, i32 0, i32 0
  %37 = load i32, i32* @GFP_KERNEL, align 4
  %38 = call %struct.pm8941_pwrkey* @devm_kzalloc(%struct.TYPE_15__* %36, i32 64, i32 %37)
  store %struct.pm8941_pwrkey* %38, %struct.pm8941_pwrkey** %4, align 8
  %39 = load %struct.pm8941_pwrkey*, %struct.pm8941_pwrkey** %4, align 8
  %40 = icmp ne %struct.pm8941_pwrkey* %39, null
  br i1 %40, label %44, label %41

41:                                               ; preds = %29
  %42 = load i32, i32* @ENOMEM, align 4
  %43 = sub nsw i32 0, %42
  store i32 %43, i32* %2, align 4
  br label %302

44:                                               ; preds = %29
  %45 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %46 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %45, i32 0, i32 0
  %47 = load %struct.pm8941_pwrkey*, %struct.pm8941_pwrkey** %4, align 8
  %48 = getelementptr inbounds %struct.pm8941_pwrkey, %struct.pm8941_pwrkey* %47, i32 0, i32 8
  store %struct.TYPE_15__* %46, %struct.TYPE_15__** %48, align 8
  %49 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %50 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %49, i32 0, i32 0
  %51 = call %struct.TYPE_14__* @of_device_get_match_data(%struct.TYPE_15__* %50)
  %52 = load %struct.pm8941_pwrkey*, %struct.pm8941_pwrkey** %4, align 8
  %53 = getelementptr inbounds %struct.pm8941_pwrkey, %struct.pm8941_pwrkey* %52, i32 0, i32 5
  store %struct.TYPE_14__* %51, %struct.TYPE_14__** %53, align 8
  %54 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %55 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %55, i32 0, i32 1
  %57 = load %struct.device*, %struct.device** %56, align 8
  store %struct.device* %57, %struct.device** %6, align 8
  %58 = load %struct.device*, %struct.device** %6, align 8
  %59 = call i8* @dev_get_regmap(%struct.device* %58, i32* null)
  %60 = load %struct.pm8941_pwrkey*, %struct.pm8941_pwrkey** %4, align 8
  %61 = getelementptr inbounds %struct.pm8941_pwrkey, %struct.pm8941_pwrkey* %60, i32 0, i32 6
  store i8* %59, i8** %61, align 8
  %62 = load %struct.pm8941_pwrkey*, %struct.pm8941_pwrkey** %4, align 8
  %63 = getelementptr inbounds %struct.pm8941_pwrkey, %struct.pm8941_pwrkey* %62, i32 0, i32 6
  %64 = load i8*, i8** %63, align 8
  %65 = icmp ne i8* %64, null
  br i1 %65, label %90, label %66

66:                                               ; preds = %44
  %67 = load %struct.device*, %struct.device** %6, align 8
  %68 = getelementptr inbounds %struct.device, %struct.device* %67, i32 0, i32 1
  %69 = load %struct.device*, %struct.device** %68, align 8
  %70 = call i8* @dev_get_regmap(%struct.device* %69, i32* null)
  %71 = load %struct.pm8941_pwrkey*, %struct.pm8941_pwrkey** %4, align 8
  %72 = getelementptr inbounds %struct.pm8941_pwrkey, %struct.pm8941_pwrkey* %71, i32 0, i32 6
  store i8* %70, i8** %72, align 8
  %73 = load %struct.pm8941_pwrkey*, %struct.pm8941_pwrkey** %4, align 8
  %74 = getelementptr inbounds %struct.pm8941_pwrkey, %struct.pm8941_pwrkey* %73, i32 0, i32 6
  %75 = load i8*, i8** %74, align 8
  %76 = icmp ne i8* %75, null
  br i1 %76, label %83, label %77

77:                                               ; preds = %66
  %78 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %79 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %78, i32 0, i32 0
  %80 = call i32 (%struct.TYPE_15__*, i8*, ...) @dev_err(%struct.TYPE_15__* %79, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.3, i64 0, i64 0))
  %81 = load i32, i32* @ENODEV, align 4
  %82 = sub nsw i32 0, %81
  store i32 %82, i32* %2, align 4
  br label %302

83:                                               ; preds = %66
  %84 = load %struct.device*, %struct.device** %6, align 8
  %85 = getelementptr inbounds %struct.device, %struct.device* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 8
  %87 = load %struct.pm8941_pwrkey*, %struct.pm8941_pwrkey** %4, align 8
  %88 = getelementptr inbounds %struct.pm8941_pwrkey, %struct.pm8941_pwrkey* %87, i32 0, i32 0
  %89 = call i32 @of_property_read_u32(i32 %86, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0), i32* %88)
  store i32 %89, i32* %8, align 4
  br label %98

90:                                               ; preds = %44
  %91 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %92 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %91, i32 0, i32 0
  %93 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 8
  %95 = load %struct.pm8941_pwrkey*, %struct.pm8941_pwrkey** %4, align 8
  %96 = getelementptr inbounds %struct.pm8941_pwrkey, %struct.pm8941_pwrkey* %95, i32 0, i32 0
  %97 = call i32 @of_property_read_u32(i32 %94, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0), i32* %96)
  store i32 %97, i32* %8, align 4
  br label %98

98:                                               ; preds = %90, %83
  %99 = load i32, i32* %8, align 4
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %101, label %103

101:                                              ; preds = %98
  %102 = load i32, i32* %8, align 4
  store i32 %102, i32* %2, align 4
  br label %302

103:                                              ; preds = %98
  %104 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %105 = call i64 @platform_get_irq(%struct.platform_device* %104, i32 0)
  %106 = load %struct.pm8941_pwrkey*, %struct.pm8941_pwrkey** %4, align 8
  %107 = getelementptr inbounds %struct.pm8941_pwrkey, %struct.pm8941_pwrkey* %106, i32 0, i32 1
  store i64 %105, i64* %107, align 8
  %108 = load %struct.pm8941_pwrkey*, %struct.pm8941_pwrkey** %4, align 8
  %109 = getelementptr inbounds %struct.pm8941_pwrkey, %struct.pm8941_pwrkey* %108, i32 0, i32 1
  %110 = load i64, i64* %109, align 8
  %111 = icmp slt i64 %110, 0
  br i1 %111, label %112, label %117

112:                                              ; preds = %103
  %113 = load %struct.pm8941_pwrkey*, %struct.pm8941_pwrkey** %4, align 8
  %114 = getelementptr inbounds %struct.pm8941_pwrkey, %struct.pm8941_pwrkey* %113, i32 0, i32 1
  %115 = load i64, i64* %114, align 8
  %116 = trunc i64 %115 to i32
  store i32 %116, i32* %2, align 4
  br label %302

117:                                              ; preds = %103
  %118 = load %struct.pm8941_pwrkey*, %struct.pm8941_pwrkey** %4, align 8
  %119 = getelementptr inbounds %struct.pm8941_pwrkey, %struct.pm8941_pwrkey* %118, i32 0, i32 6
  %120 = load i8*, i8** %119, align 8
  %121 = load %struct.pm8941_pwrkey*, %struct.pm8941_pwrkey** %4, align 8
  %122 = getelementptr inbounds %struct.pm8941_pwrkey, %struct.pm8941_pwrkey* %121, i32 0, i32 0
  %123 = load i32, i32* %122, align 8
  %124 = load i32, i32* @PON_REV2, align 4
  %125 = add nsw i32 %123, %124
  %126 = load %struct.pm8941_pwrkey*, %struct.pm8941_pwrkey** %4, align 8
  %127 = getelementptr inbounds %struct.pm8941_pwrkey, %struct.pm8941_pwrkey* %126, i32 0, i32 7
  %128 = call i32 @regmap_read(i8* %120, i32 %125, i32* %127)
  store i32 %128, i32* %8, align 4
  %129 = load i32, i32* %8, align 4
  %130 = icmp ne i32 %129, 0
  br i1 %130, label %131, label %137

131:                                              ; preds = %117
  %132 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %133 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %132, i32 0, i32 0
  %134 = load i32, i32* %8, align 4
  %135 = call i32 (%struct.TYPE_15__*, i8*, ...) @dev_err(%struct.TYPE_15__* %133, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.5, i64 0, i64 0), i32 %134)
  %136 = load i32, i32* %8, align 4
  store i32 %136, i32* %2, align 4
  br label %302

137:                                              ; preds = %117
  %138 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %139 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %138, i32 0, i32 0
  %140 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %139, i32 0, i32 0
  %141 = load i32, i32* %140, align 8
  %142 = load %struct.pm8941_pwrkey*, %struct.pm8941_pwrkey** %4, align 8
  %143 = getelementptr inbounds %struct.pm8941_pwrkey, %struct.pm8941_pwrkey* %142, i32 0, i32 2
  %144 = call i32 @of_property_read_u32(i32 %141, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.6, i64 0, i64 0), i32* %143)
  store i32 %144, i32* %8, align 4
  %145 = load i32, i32* %8, align 4
  %146 = icmp ne i32 %145, 0
  br i1 %146, label %147, label %155

147:                                              ; preds = %137
  %148 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %149 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %148, i32 0, i32 0
  %150 = load i32, i32* %8, align 4
  %151 = call i32 (%struct.TYPE_15__*, i8*, ...) @dev_dbg(%struct.TYPE_15__* %149, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.7, i64 0, i64 0), i32 %150)
  %152 = load i32, i32* @KEY_POWER, align 4
  %153 = load %struct.pm8941_pwrkey*, %struct.pm8941_pwrkey** %4, align 8
  %154 = getelementptr inbounds %struct.pm8941_pwrkey, %struct.pm8941_pwrkey* %153, i32 0, i32 2
  store i32 %152, i32* %154, align 8
  br label %155

155:                                              ; preds = %147, %137
  %156 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %157 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %156, i32 0, i32 0
  %158 = call %struct.TYPE_16__* @devm_input_allocate_device(%struct.TYPE_15__* %157)
  %159 = load %struct.pm8941_pwrkey*, %struct.pm8941_pwrkey** %4, align 8
  %160 = getelementptr inbounds %struct.pm8941_pwrkey, %struct.pm8941_pwrkey* %159, i32 0, i32 4
  store %struct.TYPE_16__* %158, %struct.TYPE_16__** %160, align 8
  %161 = load %struct.pm8941_pwrkey*, %struct.pm8941_pwrkey** %4, align 8
  %162 = getelementptr inbounds %struct.pm8941_pwrkey, %struct.pm8941_pwrkey* %161, i32 0, i32 4
  %163 = load %struct.TYPE_16__*, %struct.TYPE_16__** %162, align 8
  %164 = icmp ne %struct.TYPE_16__* %163, null
  br i1 %164, label %171, label %165

165:                                              ; preds = %155
  %166 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %167 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %166, i32 0, i32 0
  %168 = call i32 (%struct.TYPE_15__*, i8*, ...) @dev_dbg(%struct.TYPE_15__* %167, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.8, i64 0, i64 0))
  %169 = load i32, i32* @ENOMEM, align 4
  %170 = sub nsw i32 0, %169
  store i32 %170, i32* %2, align 4
  br label %302

171:                                              ; preds = %155
  %172 = load %struct.pm8941_pwrkey*, %struct.pm8941_pwrkey** %4, align 8
  %173 = getelementptr inbounds %struct.pm8941_pwrkey, %struct.pm8941_pwrkey* %172, i32 0, i32 4
  %174 = load %struct.TYPE_16__*, %struct.TYPE_16__** %173, align 8
  %175 = load i32, i32* @EV_KEY, align 4
  %176 = load %struct.pm8941_pwrkey*, %struct.pm8941_pwrkey** %4, align 8
  %177 = getelementptr inbounds %struct.pm8941_pwrkey, %struct.pm8941_pwrkey* %176, i32 0, i32 2
  %178 = load i32, i32* %177, align 8
  %179 = call i32 @input_set_capability(%struct.TYPE_16__* %174, i32 %175, i32 %178)
  %180 = load %struct.pm8941_pwrkey*, %struct.pm8941_pwrkey** %4, align 8
  %181 = getelementptr inbounds %struct.pm8941_pwrkey, %struct.pm8941_pwrkey* %180, i32 0, i32 4
  %182 = load %struct.TYPE_16__*, %struct.TYPE_16__** %181, align 8
  %183 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %182, i32 0, i32 0
  store i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.9, i64 0, i64 0), i8** %183, align 8
  %184 = load %struct.pm8941_pwrkey*, %struct.pm8941_pwrkey** %4, align 8
  %185 = getelementptr inbounds %struct.pm8941_pwrkey, %struct.pm8941_pwrkey* %184, i32 0, i32 4
  %186 = load %struct.TYPE_16__*, %struct.TYPE_16__** %185, align 8
  %187 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %186, i32 0, i32 1
  store i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.10, i64 0, i64 0), i8** %187, align 8
  %188 = load i32, i32* %7, align 4
  %189 = shl i32 %188, 6
  %190 = load i32, i32* @USEC_PER_SEC, align 4
  %191 = sdiv i32 %189, %190
  store i32 %191, i32* %7, align 4
  %192 = load i32, i32* %7, align 4
  %193 = call i32 @ilog2(i32 %192)
  store i32 %193, i32* %7, align 4
  %194 = load %struct.pm8941_pwrkey*, %struct.pm8941_pwrkey** %4, align 8
  %195 = getelementptr inbounds %struct.pm8941_pwrkey, %struct.pm8941_pwrkey* %194, i32 0, i32 6
  %196 = load i8*, i8** %195, align 8
  %197 = load %struct.pm8941_pwrkey*, %struct.pm8941_pwrkey** %4, align 8
  %198 = getelementptr inbounds %struct.pm8941_pwrkey, %struct.pm8941_pwrkey* %197, i32 0, i32 0
  %199 = load i32, i32* %198, align 8
  %200 = load i32, i32* @PON_DBC_CTL, align 4
  %201 = add nsw i32 %199, %200
  %202 = load i32, i32* @PON_DBC_DELAY_MASK, align 4
  %203 = load i32, i32* %7, align 4
  %204 = call i32 @regmap_update_bits(i8* %196, i32 %201, i32 %202, i32 %203)
  store i32 %204, i32* %8, align 4
  %205 = load i32, i32* %8, align 4
  %206 = icmp ne i32 %205, 0
  br i1 %206, label %207, label %213

207:                                              ; preds = %171
  %208 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %209 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %208, i32 0, i32 0
  %210 = load i32, i32* %8, align 4
  %211 = call i32 (%struct.TYPE_15__*, i8*, ...) @dev_err(%struct.TYPE_15__* %209, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.5, i64 0, i64 0), i32 %210)
  %212 = load i32, i32* %8, align 4
  store i32 %212, i32* %2, align 4
  br label %302

213:                                              ; preds = %171
  %214 = load %struct.pm8941_pwrkey*, %struct.pm8941_pwrkey** %4, align 8
  %215 = getelementptr inbounds %struct.pm8941_pwrkey, %struct.pm8941_pwrkey* %214, i32 0, i32 6
  %216 = load i8*, i8** %215, align 8
  %217 = load %struct.pm8941_pwrkey*, %struct.pm8941_pwrkey** %4, align 8
  %218 = getelementptr inbounds %struct.pm8941_pwrkey, %struct.pm8941_pwrkey* %217, i32 0, i32 0
  %219 = load i32, i32* %218, align 8
  %220 = load i32, i32* @PON_PULL_CTL, align 4
  %221 = add nsw i32 %219, %220
  %222 = load %struct.pm8941_pwrkey*, %struct.pm8941_pwrkey** %4, align 8
  %223 = getelementptr inbounds %struct.pm8941_pwrkey, %struct.pm8941_pwrkey* %222, i32 0, i32 5
  %224 = load %struct.TYPE_14__*, %struct.TYPE_14__** %223, align 8
  %225 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %224, i32 0, i32 0
  %226 = load i32, i32* %225, align 4
  %227 = load i32, i32* %5, align 4
  %228 = icmp ne i32 %227, 0
  br i1 %228, label %229, label %235

229:                                              ; preds = %213
  %230 = load %struct.pm8941_pwrkey*, %struct.pm8941_pwrkey** %4, align 8
  %231 = getelementptr inbounds %struct.pm8941_pwrkey, %struct.pm8941_pwrkey* %230, i32 0, i32 5
  %232 = load %struct.TYPE_14__*, %struct.TYPE_14__** %231, align 8
  %233 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %232, i32 0, i32 0
  %234 = load i32, i32* %233, align 4
  br label %236

235:                                              ; preds = %213
  br label %236

236:                                              ; preds = %235, %229
  %237 = phi i32 [ %234, %229 ], [ 0, %235 ]
  %238 = call i32 @regmap_update_bits(i8* %216, i32 %221, i32 %226, i32 %237)
  store i32 %238, i32* %8, align 4
  %239 = load i32, i32* %8, align 4
  %240 = icmp ne i32 %239, 0
  br i1 %240, label %241, label %247

241:                                              ; preds = %236
  %242 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %243 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %242, i32 0, i32 0
  %244 = load i32, i32* %8, align 4
  %245 = call i32 (%struct.TYPE_15__*, i8*, ...) @dev_err(%struct.TYPE_15__* %243, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.11, i64 0, i64 0), i32 %244)
  %246 = load i32, i32* %8, align 4
  store i32 %246, i32* %2, align 4
  br label %302

247:                                              ; preds = %236
  %248 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %249 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %248, i32 0, i32 0
  %250 = load %struct.pm8941_pwrkey*, %struct.pm8941_pwrkey** %4, align 8
  %251 = getelementptr inbounds %struct.pm8941_pwrkey, %struct.pm8941_pwrkey* %250, i32 0, i32 1
  %252 = load i64, i64* %251, align 8
  %253 = trunc i64 %252 to i32
  %254 = load i32, i32* @pm8941_pwrkey_irq, align 4
  %255 = load i32, i32* @IRQF_ONESHOT, align 4
  %256 = load %struct.pm8941_pwrkey*, %struct.pm8941_pwrkey** %4, align 8
  %257 = call i32 @devm_request_threaded_irq(%struct.TYPE_15__* %249, i32 %253, i32* null, i32 %254, i32 %255, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.9, i64 0, i64 0), %struct.pm8941_pwrkey* %256)
  store i32 %257, i32* %8, align 4
  %258 = load i32, i32* %8, align 4
  %259 = icmp ne i32 %258, 0
  br i1 %259, label %260, label %266

260:                                              ; preds = %247
  %261 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %262 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %261, i32 0, i32 0
  %263 = load i32, i32* %8, align 4
  %264 = call i32 (%struct.TYPE_15__*, i8*, ...) @dev_err(%struct.TYPE_15__* %262, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.12, i64 0, i64 0), i32 %263)
  %265 = load i32, i32* %8, align 4
  store i32 %265, i32* %2, align 4
  br label %302

266:                                              ; preds = %247
  %267 = load %struct.pm8941_pwrkey*, %struct.pm8941_pwrkey** %4, align 8
  %268 = getelementptr inbounds %struct.pm8941_pwrkey, %struct.pm8941_pwrkey* %267, i32 0, i32 4
  %269 = load %struct.TYPE_16__*, %struct.TYPE_16__** %268, align 8
  %270 = call i32 @input_register_device(%struct.TYPE_16__* %269)
  store i32 %270, i32* %8, align 4
  %271 = load i32, i32* %8, align 4
  %272 = icmp ne i32 %271, 0
  br i1 %272, label %273, label %279

273:                                              ; preds = %266
  %274 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %275 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %274, i32 0, i32 0
  %276 = load i32, i32* %8, align 4
  %277 = call i32 (%struct.TYPE_15__*, i8*, ...) @dev_err(%struct.TYPE_15__* %275, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.13, i64 0, i64 0), i32 %276)
  %278 = load i32, i32* %8, align 4
  store i32 %278, i32* %2, align 4
  br label %302

279:                                              ; preds = %266
  %280 = load i32, i32* @pm8941_reboot_notify, align 4
  %281 = load %struct.pm8941_pwrkey*, %struct.pm8941_pwrkey** %4, align 8
  %282 = getelementptr inbounds %struct.pm8941_pwrkey, %struct.pm8941_pwrkey* %281, i32 0, i32 3
  %283 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %282, i32 0, i32 0
  store i32 %280, i32* %283, align 4
  %284 = load %struct.pm8941_pwrkey*, %struct.pm8941_pwrkey** %4, align 8
  %285 = getelementptr inbounds %struct.pm8941_pwrkey, %struct.pm8941_pwrkey* %284, i32 0, i32 3
  %286 = call i32 @register_reboot_notifier(%struct.TYPE_13__* %285)
  store i32 %286, i32* %8, align 4
  %287 = load i32, i32* %8, align 4
  %288 = icmp ne i32 %287, 0
  br i1 %288, label %289, label %295

289:                                              ; preds = %279
  %290 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %291 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %290, i32 0, i32 0
  %292 = load i32, i32* %8, align 4
  %293 = call i32 (%struct.TYPE_15__*, i8*, ...) @dev_err(%struct.TYPE_15__* %291, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.14, i64 0, i64 0), i32 %292)
  %294 = load i32, i32* %8, align 4
  store i32 %294, i32* %2, align 4
  br label %302

295:                                              ; preds = %279
  %296 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %297 = load %struct.pm8941_pwrkey*, %struct.pm8941_pwrkey** %4, align 8
  %298 = call i32 @platform_set_drvdata(%struct.platform_device* %296, %struct.pm8941_pwrkey* %297)
  %299 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %300 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %299, i32 0, i32 0
  %301 = call i32 @device_init_wakeup(%struct.TYPE_15__* %300, i32 1)
  store i32 0, i32* %2, align 4
  br label %302

302:                                              ; preds = %295, %289, %273, %260, %241, %207, %165, %131, %112, %101, %77, %41, %22
  %303 = load i32, i32* %2, align 4
  ret i32 %303
}

declare dso_local i32 @of_property_read_u32(i32, i8*, i32*) #1

declare dso_local i32 @dev_err(%struct.TYPE_15__*, i8*, ...) #1

declare dso_local i32 @of_property_read_bool(i32, i8*) #1

declare dso_local %struct.pm8941_pwrkey* @devm_kzalloc(%struct.TYPE_15__*, i32, i32) #1

declare dso_local %struct.TYPE_14__* @of_device_get_match_data(%struct.TYPE_15__*) #1

declare dso_local i8* @dev_get_regmap(%struct.device*, i32*) #1

declare dso_local i64 @platform_get_irq(%struct.platform_device*, i32) #1

declare dso_local i32 @regmap_read(i8*, i32, i32*) #1

declare dso_local i32 @dev_dbg(%struct.TYPE_15__*, i8*, ...) #1

declare dso_local %struct.TYPE_16__* @devm_input_allocate_device(%struct.TYPE_15__*) #1

declare dso_local i32 @input_set_capability(%struct.TYPE_16__*, i32, i32) #1

declare dso_local i32 @ilog2(i32) #1

declare dso_local i32 @regmap_update_bits(i8*, i32, i32, i32) #1

declare dso_local i32 @devm_request_threaded_irq(%struct.TYPE_15__*, i32, i32*, i32, i32, i8*, %struct.pm8941_pwrkey*) #1

declare dso_local i32 @input_register_device(%struct.TYPE_16__*) #1

declare dso_local i32 @register_reboot_notifier(%struct.TYPE_13__*) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.pm8941_pwrkey*) #1

declare dso_local i32 @device_init_wakeup(%struct.TYPE_15__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
