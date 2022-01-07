; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/misc/extr_stpmic1_onkey.c_stpmic1_onkey_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/misc/extr_stpmic1_onkey.c_stpmic1_onkey_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.device }
%struct.device = type { i32 }
%struct.stpmic1 = type { i32 }
%struct.input_dev = type { i8*, i8* }
%struct.stpmic1_onkey = type { i64, i64, %struct.input_dev* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [14 x i8] c"onkey-falling\00", align 1
@.str.1 = private unnamed_addr constant [13 x i8] c"onkey-rising\00", align 1
@.str.2 = private unnamed_addr constant [19 x i8] c"power-off-time-sec\00", align 1
@.str.3 = private unnamed_addr constant [27 x i8] c"power-off-time=%d seconds\0A\00", align 1
@PONKEY_PWR_OFF = common dso_local global i32 0, align 4
@PONKEY_TURNOFF_TIMER_MASK = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [33 x i8] c"power-off-time-sec out of range\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [23 x i8] c"st,onkey-clear-cc-flag\00", align 1
@PONKEY_CC_FLAG_CLEAR = common dso_local global i32 0, align 4
@PKEY_TURNOFF_CR = common dso_local global i32 0, align 4
@PONKEY_TURNOFF_MASK = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [34 x i8] c"PKEY_TURNOFF_CR write failed: %d\0A\00", align 1
@.str.7 = private unnamed_addr constant [21 x i8] c"st,onkey-pu-inactive\00", align 1
@PADS_PULL_CR = common dso_local global i32 0, align 4
@PONKEY_PU_INACTIVE = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [37 x i8] c"ONKEY Pads configuration failed: %d\0A\00", align 1
@.str.9 = private unnamed_addr constant [39 x i8] c"Can't allocate Pwr Onkey Input Device\0A\00", align 1
@.str.10 = private unnamed_addr constant [11 x i8] c"pmic_onkey\00", align 1
@.str.11 = private unnamed_addr constant [18 x i8] c"pmic_onkey/input0\00", align 1
@EV_KEY = common dso_local global i32 0, align 4
@KEY_POWER = common dso_local global i32 0, align 4
@onkey_falling_irq = common dso_local global i32 0, align 4
@IRQF_ONESHOT = common dso_local global i32 0, align 4
@.str.12 = private unnamed_addr constant [33 x i8] c"Can't get IRQ Onkey Falling: %d\0A\00", align 1
@onkey_rising_irq = common dso_local global i32 0, align 4
@.str.13 = private unnamed_addr constant [32 x i8] c"Can't get IRQ Onkey Rising: %d\0A\00", align 1
@.str.14 = private unnamed_addr constant [33 x i8] c"Can't register power button: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @stpmic1_onkey_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @stpmic1_onkey_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.stpmic1*, align 8
  %5 = alloca %struct.device*, align 8
  %6 = alloca %struct.input_dev*, align 8
  %7 = alloca %struct.stpmic1_onkey*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %11 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %12 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.device, %struct.device* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = call %struct.stpmic1* @dev_get_drvdata(i32 %14)
  store %struct.stpmic1* %15, %struct.stpmic1** %4, align 8
  %16 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %17 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %16, i32 0, i32 0
  store %struct.device* %17, %struct.device** %5, align 8
  store i32 0, i32* %9, align 4
  %18 = load %struct.device*, %struct.device** %5, align 8
  %19 = load i32, i32* @GFP_KERNEL, align 4
  %20 = call %struct.stpmic1_onkey* @devm_kzalloc(%struct.device* %18, i32 24, i32 %19)
  store %struct.stpmic1_onkey* %20, %struct.stpmic1_onkey** %7, align 8
  %21 = load %struct.stpmic1_onkey*, %struct.stpmic1_onkey** %7, align 8
  %22 = icmp ne %struct.stpmic1_onkey* %21, null
  br i1 %22, label %26, label %23

23:                                               ; preds = %1
  %24 = load i32, i32* @ENOMEM, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %2, align 4
  br label %203

26:                                               ; preds = %1
  %27 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %28 = call i8* @platform_get_irq_byname(%struct.platform_device* %27, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  %29 = ptrtoint i8* %28 to i64
  %30 = load %struct.stpmic1_onkey*, %struct.stpmic1_onkey** %7, align 8
  %31 = getelementptr inbounds %struct.stpmic1_onkey, %struct.stpmic1_onkey* %30, i32 0, i32 0
  store i64 %29, i64* %31, align 8
  %32 = load %struct.stpmic1_onkey*, %struct.stpmic1_onkey** %7, align 8
  %33 = getelementptr inbounds %struct.stpmic1_onkey, %struct.stpmic1_onkey* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = icmp slt i64 %34, 0
  br i1 %35, label %36, label %41

36:                                               ; preds = %26
  %37 = load %struct.stpmic1_onkey*, %struct.stpmic1_onkey** %7, align 8
  %38 = getelementptr inbounds %struct.stpmic1_onkey, %struct.stpmic1_onkey* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = trunc i64 %39 to i32
  store i32 %40, i32* %2, align 4
  br label %203

41:                                               ; preds = %26
  %42 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %43 = call i8* @platform_get_irq_byname(%struct.platform_device* %42, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0))
  %44 = ptrtoint i8* %43 to i64
  %45 = load %struct.stpmic1_onkey*, %struct.stpmic1_onkey** %7, align 8
  %46 = getelementptr inbounds %struct.stpmic1_onkey, %struct.stpmic1_onkey* %45, i32 0, i32 1
  store i64 %44, i64* %46, align 8
  %47 = load %struct.stpmic1_onkey*, %struct.stpmic1_onkey** %7, align 8
  %48 = getelementptr inbounds %struct.stpmic1_onkey, %struct.stpmic1_onkey* %47, i32 0, i32 1
  %49 = load i64, i64* %48, align 8
  %50 = icmp slt i64 %49, 0
  br i1 %50, label %51, label %56

51:                                               ; preds = %41
  %52 = load %struct.stpmic1_onkey*, %struct.stpmic1_onkey** %7, align 8
  %53 = getelementptr inbounds %struct.stpmic1_onkey, %struct.stpmic1_onkey* %52, i32 0, i32 1
  %54 = load i64, i64* %53, align 8
  %55 = trunc i64 %54 to i32
  store i32 %55, i32* %2, align 4
  br label %203

56:                                               ; preds = %41
  %57 = load %struct.device*, %struct.device** %5, align 8
  %58 = call i32 @device_property_read_u32(%struct.device* %57, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i64 0, i64 0), i32* %8)
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %85, label %60

60:                                               ; preds = %56
  %61 = load i32, i32* %8, align 4
  %62 = icmp ugt i32 %61, 0
  br i1 %62, label %63, label %79

63:                                               ; preds = %60
  %64 = load i32, i32* %8, align 4
  %65 = icmp ule i32 %64, 16
  br i1 %65, label %66, label %79

66:                                               ; preds = %63
  %67 = load %struct.device*, %struct.device** %5, align 8
  %68 = load i32, i32* %8, align 4
  %69 = call i32 @dev_dbg(%struct.device* %67, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.3, i64 0, i64 0), i32 %68)
  %70 = load i32, i32* @PONKEY_PWR_OFF, align 4
  %71 = load i32, i32* %9, align 4
  %72 = or i32 %71, %70
  store i32 %72, i32* %9, align 4
  %73 = load i32, i32* %8, align 4
  %74 = sub i32 16, %73
  %75 = load i32, i32* @PONKEY_TURNOFF_TIMER_MASK, align 4
  %76 = and i32 %74, %75
  %77 = load i32, i32* %9, align 4
  %78 = or i32 %77, %76
  store i32 %78, i32* %9, align 4
  br label %84

79:                                               ; preds = %63, %60
  %80 = load %struct.device*, %struct.device** %5, align 8
  %81 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %80, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.4, i64 0, i64 0))
  %82 = load i32, i32* @EINVAL, align 4
  %83 = sub nsw i32 0, %82
  store i32 %83, i32* %2, align 4
  br label %203

84:                                               ; preds = %66
  br label %85

85:                                               ; preds = %84, %56
  %86 = load %struct.device*, %struct.device** %5, align 8
  %87 = call i64 @device_property_present(%struct.device* %86, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.5, i64 0, i64 0))
  %88 = icmp ne i64 %87, 0
  br i1 %88, label %89, label %93

89:                                               ; preds = %85
  %90 = load i32, i32* @PONKEY_CC_FLAG_CLEAR, align 4
  %91 = load i32, i32* %9, align 4
  %92 = or i32 %91, %90
  store i32 %92, i32* %9, align 4
  br label %93

93:                                               ; preds = %89, %85
  %94 = load %struct.stpmic1*, %struct.stpmic1** %4, align 8
  %95 = getelementptr inbounds %struct.stpmic1, %struct.stpmic1* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 4
  %97 = load i32, i32* @PKEY_TURNOFF_CR, align 4
  %98 = load i32, i32* @PONKEY_TURNOFF_MASK, align 4
  %99 = load i32, i32* %9, align 4
  %100 = call i32 @regmap_update_bits(i32 %96, i32 %97, i32 %98, i32 %99)
  store i32 %100, i32* %10, align 4
  %101 = load i32, i32* %10, align 4
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %103, label %108

103:                                              ; preds = %93
  %104 = load %struct.device*, %struct.device** %5, align 8
  %105 = load i32, i32* %10, align 4
  %106 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %104, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.6, i64 0, i64 0), i32 %105)
  %107 = load i32, i32* %10, align 4
  store i32 %107, i32* %2, align 4
  br label %203

108:                                              ; preds = %93
  %109 = load %struct.device*, %struct.device** %5, align 8
  %110 = call i64 @device_property_present(%struct.device* %109, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.7, i64 0, i64 0))
  %111 = icmp ne i64 %110, 0
  br i1 %111, label %112, label %128

112:                                              ; preds = %108
  %113 = load %struct.stpmic1*, %struct.stpmic1** %4, align 8
  %114 = getelementptr inbounds %struct.stpmic1, %struct.stpmic1* %113, i32 0, i32 0
  %115 = load i32, i32* %114, align 4
  %116 = load i32, i32* @PADS_PULL_CR, align 4
  %117 = load i32, i32* @PONKEY_PU_INACTIVE, align 4
  %118 = load i32, i32* @PONKEY_PU_INACTIVE, align 4
  %119 = call i32 @regmap_update_bits(i32 %115, i32 %116, i32 %117, i32 %118)
  store i32 %119, i32* %10, align 4
  %120 = load i32, i32* %10, align 4
  %121 = icmp ne i32 %120, 0
  br i1 %121, label %122, label %127

122:                                              ; preds = %112
  %123 = load %struct.device*, %struct.device** %5, align 8
  %124 = load i32, i32* %10, align 4
  %125 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %123, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.8, i64 0, i64 0), i32 %124)
  %126 = load i32, i32* %10, align 4
  store i32 %126, i32* %2, align 4
  br label %203

127:                                              ; preds = %112
  br label %128

128:                                              ; preds = %127, %108
  %129 = load %struct.device*, %struct.device** %5, align 8
  %130 = call %struct.input_dev* @devm_input_allocate_device(%struct.device* %129)
  store %struct.input_dev* %130, %struct.input_dev** %6, align 8
  %131 = load %struct.input_dev*, %struct.input_dev** %6, align 8
  %132 = icmp ne %struct.input_dev* %131, null
  br i1 %132, label %138, label %133

133:                                              ; preds = %128
  %134 = load %struct.device*, %struct.device** %5, align 8
  %135 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %134, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.9, i64 0, i64 0))
  %136 = load i32, i32* @ENOMEM, align 4
  %137 = sub nsw i32 0, %136
  store i32 %137, i32* %2, align 4
  br label %203

138:                                              ; preds = %128
  %139 = load %struct.input_dev*, %struct.input_dev** %6, align 8
  %140 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %139, i32 0, i32 0
  store i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.10, i64 0, i64 0), i8** %140, align 8
  %141 = load %struct.input_dev*, %struct.input_dev** %6, align 8
  %142 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %141, i32 0, i32 1
  store i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.11, i64 0, i64 0), i8** %142, align 8
  %143 = load %struct.input_dev*, %struct.input_dev** %6, align 8
  %144 = load i32, i32* @EV_KEY, align 4
  %145 = load i32, i32* @KEY_POWER, align 4
  %146 = call i32 @input_set_capability(%struct.input_dev* %143, i32 %144, i32 %145)
  %147 = load %struct.input_dev*, %struct.input_dev** %6, align 8
  %148 = load %struct.stpmic1_onkey*, %struct.stpmic1_onkey** %7, align 8
  %149 = getelementptr inbounds %struct.stpmic1_onkey, %struct.stpmic1_onkey* %148, i32 0, i32 2
  store %struct.input_dev* %147, %struct.input_dev** %149, align 8
  %150 = load %struct.device*, %struct.device** %5, align 8
  %151 = load %struct.stpmic1_onkey*, %struct.stpmic1_onkey** %7, align 8
  %152 = getelementptr inbounds %struct.stpmic1_onkey, %struct.stpmic1_onkey* %151, i32 0, i32 0
  %153 = load i64, i64* %152, align 8
  %154 = trunc i64 %153 to i32
  %155 = load i32, i32* @onkey_falling_irq, align 4
  %156 = load i32, i32* @IRQF_ONESHOT, align 4
  %157 = load %struct.device*, %struct.device** %5, align 8
  %158 = call i32 @dev_name(%struct.device* %157)
  %159 = load %struct.stpmic1_onkey*, %struct.stpmic1_onkey** %7, align 8
  %160 = call i32 @devm_request_threaded_irq(%struct.device* %150, i32 %154, i32* null, i32 %155, i32 %156, i32 %158, %struct.stpmic1_onkey* %159)
  store i32 %160, i32* %10, align 4
  %161 = load i32, i32* %10, align 4
  %162 = icmp ne i32 %161, 0
  br i1 %162, label %163, label %168

163:                                              ; preds = %138
  %164 = load %struct.device*, %struct.device** %5, align 8
  %165 = load i32, i32* %10, align 4
  %166 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %164, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.12, i64 0, i64 0), i32 %165)
  %167 = load i32, i32* %10, align 4
  store i32 %167, i32* %2, align 4
  br label %203

168:                                              ; preds = %138
  %169 = load %struct.device*, %struct.device** %5, align 8
  %170 = load %struct.stpmic1_onkey*, %struct.stpmic1_onkey** %7, align 8
  %171 = getelementptr inbounds %struct.stpmic1_onkey, %struct.stpmic1_onkey* %170, i32 0, i32 1
  %172 = load i64, i64* %171, align 8
  %173 = trunc i64 %172 to i32
  %174 = load i32, i32* @onkey_rising_irq, align 4
  %175 = load i32, i32* @IRQF_ONESHOT, align 4
  %176 = load %struct.device*, %struct.device** %5, align 8
  %177 = call i32 @dev_name(%struct.device* %176)
  %178 = load %struct.stpmic1_onkey*, %struct.stpmic1_onkey** %7, align 8
  %179 = call i32 @devm_request_threaded_irq(%struct.device* %169, i32 %173, i32* null, i32 %174, i32 %175, i32 %177, %struct.stpmic1_onkey* %178)
  store i32 %179, i32* %10, align 4
  %180 = load i32, i32* %10, align 4
  %181 = icmp ne i32 %180, 0
  br i1 %181, label %182, label %187

182:                                              ; preds = %168
  %183 = load %struct.device*, %struct.device** %5, align 8
  %184 = load i32, i32* %10, align 4
  %185 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %183, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.13, i64 0, i64 0), i32 %184)
  %186 = load i32, i32* %10, align 4
  store i32 %186, i32* %2, align 4
  br label %203

187:                                              ; preds = %168
  %188 = load %struct.input_dev*, %struct.input_dev** %6, align 8
  %189 = call i32 @input_register_device(%struct.input_dev* %188)
  store i32 %189, i32* %10, align 4
  %190 = load i32, i32* %10, align 4
  %191 = icmp ne i32 %190, 0
  br i1 %191, label %192, label %197

192:                                              ; preds = %187
  %193 = load %struct.device*, %struct.device** %5, align 8
  %194 = load i32, i32* %10, align 4
  %195 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %193, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.14, i64 0, i64 0), i32 %194)
  %196 = load i32, i32* %10, align 4
  store i32 %196, i32* %2, align 4
  br label %203

197:                                              ; preds = %187
  %198 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %199 = load %struct.stpmic1_onkey*, %struct.stpmic1_onkey** %7, align 8
  %200 = call i32 @platform_set_drvdata(%struct.platform_device* %198, %struct.stpmic1_onkey* %199)
  %201 = load %struct.device*, %struct.device** %5, align 8
  %202 = call i32 @device_init_wakeup(%struct.device* %201, i32 1)
  store i32 0, i32* %2, align 4
  br label %203

203:                                              ; preds = %197, %192, %182, %163, %133, %122, %103, %79, %51, %36, %23
  %204 = load i32, i32* %2, align 4
  ret i32 %204
}

declare dso_local %struct.stpmic1* @dev_get_drvdata(i32) #1

declare dso_local %struct.stpmic1_onkey* @devm_kzalloc(%struct.device*, i32, i32) #1

declare dso_local i8* @platform_get_irq_byname(%struct.platform_device*, i8*) #1

declare dso_local i32 @device_property_read_u32(%struct.device*, i8*, i32*) #1

declare dso_local i32 @dev_dbg(%struct.device*, i8*, i32) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, ...) #1

declare dso_local i64 @device_property_present(%struct.device*, i8*) #1

declare dso_local i32 @regmap_update_bits(i32, i32, i32, i32) #1

declare dso_local %struct.input_dev* @devm_input_allocate_device(%struct.device*) #1

declare dso_local i32 @input_set_capability(%struct.input_dev*, i32, i32) #1

declare dso_local i32 @devm_request_threaded_irq(%struct.device*, i32, i32*, i32, i32, i32, %struct.stpmic1_onkey*) #1

declare dso_local i32 @dev_name(%struct.device*) #1

declare dso_local i32 @input_register_device(%struct.input_dev*) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.stpmic1_onkey*) #1

declare dso_local i32 @device_init_wakeup(%struct.device*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
