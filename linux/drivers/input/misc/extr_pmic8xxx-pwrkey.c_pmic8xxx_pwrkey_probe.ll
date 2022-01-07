; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/misc/extr_pmic8xxx-pwrkey.c_pmic8xxx_pwrkey_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/misc/extr_pmic8xxx-pwrkey.c_pmic8xxx_pwrkey_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32, i32 }
%struct.input_dev = type { i8*, i8* }
%struct.regmap = type { i32 }
%struct.pmic8xxx_pwrkey = type { i32, %struct.regmap*, i32 }

@.str = private unnamed_addr constant [9 x i8] c"debounce\00", align 1
@USEC_PER_SEC = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [33 x i8] c"invalid power key trigger delay\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [8 x i8] c"pull-up\00", align 1
@.str.3 = private unnamed_addr constant [40 x i8] c"failed to locate regmap for the device\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [29 x i8] c"Can't allocate power button\0A\00", align 1
@EV_KEY = common dso_local global i32 0, align 4
@KEY_POWER = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [16 x i8] c"pmic8xxx_pwrkey\00", align 1
@.str.6 = private unnamed_addr constant [23 x i8] c"pmic8xxx_pwrkey/input0\00", align 1
@PON_CNTL_1 = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [34 x i8] c"failed reading PON_CNTL_1 err=%d\0A\00", align 1
@PON_CNTL_TRIG_DELAY_MASK = common dso_local global i32 0, align 4
@PON_CNTL_PULL_UP = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [34 x i8] c"failed writing PON_CNTL_1 err=%d\0A\00", align 1
@pwrkey_press_irq = common dso_local global i32 0, align 4
@IRQF_TRIGGER_RISING = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [22 x i8] c"pmic8xxx_pwrkey_press\00", align 1
@.str.10 = private unnamed_addr constant [33 x i8] c"Can't get %d IRQ for pwrkey: %d\0A\00", align 1
@pwrkey_release_irq = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [24 x i8] c"pmic8xxx_pwrkey_release\00", align 1
@.str.12 = private unnamed_addr constant [30 x i8] c"Can't register power key: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @pmic8xxx_pwrkey_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pmic8xxx_pwrkey_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.input_dev*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.regmap*, align 8
  %11 = alloca %struct.pmic8xxx_pwrkey*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %14 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %15 = call i32 @platform_get_irq(%struct.platform_device* %14, i32 0)
  store i32 %15, i32* %5, align 4
  %16 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %17 = call i32 @platform_get_irq(%struct.platform_device* %16, i32 1)
  store i32 %17, i32* %6, align 4
  %18 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %19 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = call i64 @of_property_read_u32(i32 %21, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i32* %12)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %1
  store i32 15625, i32* %12, align 4
  br label %25

25:                                               ; preds = %24, %1
  %26 = load i32, i32* %12, align 4
  %27 = load i32, i32* @USEC_PER_SEC, align 4
  %28 = mul nsw i32 %27, 2
  %29 = icmp sgt i32 %26, %28
  br i1 %29, label %35, label %30

30:                                               ; preds = %25
  %31 = load i32, i32* %12, align 4
  %32 = load i32, i32* @USEC_PER_SEC, align 4
  %33 = sdiv i32 %32, 64
  %34 = icmp slt i32 %31, %33
  br i1 %34, label %35, label %41

35:                                               ; preds = %30, %25
  %36 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %37 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %36, i32 0, i32 0
  %38 = call i32 (%struct.TYPE_8__*, i8*, ...) @dev_err(%struct.TYPE_8__* %37, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0))
  %39 = load i32, i32* @EINVAL, align 4
  %40 = sub nsw i32 0, %39
  store i32 %40, i32* %2, align 4
  br label %205

41:                                               ; preds = %30
  %42 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %43 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = call i32 @of_property_read_bool(i32 %45, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0))
  store i32 %46, i32* %13, align 4
  %47 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %48 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = call %struct.regmap* @dev_get_regmap(i32 %50, i32* null)
  store %struct.regmap* %51, %struct.regmap** %10, align 8
  %52 = load %struct.regmap*, %struct.regmap** %10, align 8
  %53 = icmp ne %struct.regmap* %52, null
  br i1 %53, label %60, label %54

54:                                               ; preds = %41
  %55 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %56 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %55, i32 0, i32 0
  %57 = call i32 (%struct.TYPE_8__*, i8*, ...) @dev_err(%struct.TYPE_8__* %56, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.3, i64 0, i64 0))
  %58 = load i32, i32* @ENODEV, align 4
  %59 = sub nsw i32 0, %58
  store i32 %59, i32* %2, align 4
  br label %205

60:                                               ; preds = %41
  %61 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %62 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %61, i32 0, i32 0
  %63 = load i32, i32* @GFP_KERNEL, align 4
  %64 = call %struct.pmic8xxx_pwrkey* @devm_kzalloc(%struct.TYPE_8__* %62, i32 24, i32 %63)
  store %struct.pmic8xxx_pwrkey* %64, %struct.pmic8xxx_pwrkey** %11, align 8
  %65 = load %struct.pmic8xxx_pwrkey*, %struct.pmic8xxx_pwrkey** %11, align 8
  %66 = icmp ne %struct.pmic8xxx_pwrkey* %65, null
  br i1 %66, label %70, label %67

67:                                               ; preds = %60
  %68 = load i32, i32* @ENOMEM, align 4
  %69 = sub nsw i32 0, %68
  store i32 %69, i32* %2, align 4
  br label %205

70:                                               ; preds = %60
  %71 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %72 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %71, i32 0, i32 0
  %73 = call i32 @of_device_get_match_data(%struct.TYPE_8__* %72)
  %74 = load %struct.pmic8xxx_pwrkey*, %struct.pmic8xxx_pwrkey** %11, align 8
  %75 = getelementptr inbounds %struct.pmic8xxx_pwrkey, %struct.pmic8xxx_pwrkey* %74, i32 0, i32 2
  store i32 %73, i32* %75, align 8
  %76 = load %struct.regmap*, %struct.regmap** %10, align 8
  %77 = load %struct.pmic8xxx_pwrkey*, %struct.pmic8xxx_pwrkey** %11, align 8
  %78 = getelementptr inbounds %struct.pmic8xxx_pwrkey, %struct.pmic8xxx_pwrkey* %77, i32 0, i32 1
  store %struct.regmap* %76, %struct.regmap** %78, align 8
  %79 = load i32, i32* %6, align 4
  %80 = load %struct.pmic8xxx_pwrkey*, %struct.pmic8xxx_pwrkey** %11, align 8
  %81 = getelementptr inbounds %struct.pmic8xxx_pwrkey, %struct.pmic8xxx_pwrkey* %80, i32 0, i32 0
  store i32 %79, i32* %81, align 8
  %82 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %83 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %82, i32 0, i32 0
  %84 = call %struct.input_dev* @devm_input_allocate_device(%struct.TYPE_8__* %83)
  store %struct.input_dev* %84, %struct.input_dev** %4, align 8
  %85 = load %struct.input_dev*, %struct.input_dev** %4, align 8
  %86 = icmp ne %struct.input_dev* %85, null
  br i1 %86, label %93, label %87

87:                                               ; preds = %70
  %88 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %89 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %88, i32 0, i32 0
  %90 = call i32 @dev_dbg(%struct.TYPE_8__* %89, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.4, i64 0, i64 0))
  %91 = load i32, i32* @ENOMEM, align 4
  %92 = sub nsw i32 0, %91
  store i32 %92, i32* %2, align 4
  br label %205

93:                                               ; preds = %70
  %94 = load %struct.input_dev*, %struct.input_dev** %4, align 8
  %95 = load i32, i32* @EV_KEY, align 4
  %96 = load i32, i32* @KEY_POWER, align 4
  %97 = call i32 @input_set_capability(%struct.input_dev* %94, i32 %95, i32 %96)
  %98 = load %struct.input_dev*, %struct.input_dev** %4, align 8
  %99 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %98, i32 0, i32 0
  store i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.5, i64 0, i64 0), i8** %99, align 8
  %100 = load %struct.input_dev*, %struct.input_dev** %4, align 8
  %101 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %100, i32 0, i32 1
  store i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.6, i64 0, i64 0), i8** %101, align 8
  %102 = load i32, i32* %12, align 4
  %103 = shl i32 %102, 6
  %104 = load i32, i32* @USEC_PER_SEC, align 4
  %105 = sdiv i32 %103, %104
  store i32 %105, i32* %8, align 4
  %106 = load i32, i32* %8, align 4
  %107 = call i32 @ilog2(i32 %106)
  store i32 %107, i32* %8, align 4
  %108 = load %struct.regmap*, %struct.regmap** %10, align 8
  %109 = load i32, i32* @PON_CNTL_1, align 4
  %110 = call i32 @regmap_read(%struct.regmap* %108, i32 %109, i32* %9)
  store i32 %110, i32* %7, align 4
  %111 = load i32, i32* %7, align 4
  %112 = icmp slt i32 %111, 0
  br i1 %112, label %113, label %119

113:                                              ; preds = %93
  %114 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %115 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %114, i32 0, i32 0
  %116 = load i32, i32* %7, align 4
  %117 = call i32 (%struct.TYPE_8__*, i8*, ...) @dev_err(%struct.TYPE_8__* %115, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.7, i64 0, i64 0), i32 %116)
  %118 = load i32, i32* %7, align 4
  store i32 %118, i32* %2, align 4
  br label %205

119:                                              ; preds = %93
  %120 = load i32, i32* @PON_CNTL_TRIG_DELAY_MASK, align 4
  %121 = xor i32 %120, -1
  %122 = load i32, i32* %9, align 4
  %123 = and i32 %122, %121
  store i32 %123, i32* %9, align 4
  %124 = load i32, i32* %8, align 4
  %125 = load i32, i32* @PON_CNTL_TRIG_DELAY_MASK, align 4
  %126 = and i32 %124, %125
  %127 = load i32, i32* %9, align 4
  %128 = or i32 %127, %126
  store i32 %128, i32* %9, align 4
  %129 = load i32, i32* %13, align 4
  %130 = icmp ne i32 %129, 0
  br i1 %130, label %131, label %135

131:                                              ; preds = %119
  %132 = load i32, i32* @PON_CNTL_PULL_UP, align 4
  %133 = load i32, i32* %9, align 4
  %134 = or i32 %133, %132
  store i32 %134, i32* %9, align 4
  br label %140

135:                                              ; preds = %119
  %136 = load i32, i32* @PON_CNTL_PULL_UP, align 4
  %137 = xor i32 %136, -1
  %138 = load i32, i32* %9, align 4
  %139 = and i32 %138, %137
  store i32 %139, i32* %9, align 4
  br label %140

140:                                              ; preds = %135, %131
  %141 = load %struct.regmap*, %struct.regmap** %10, align 8
  %142 = load i32, i32* @PON_CNTL_1, align 4
  %143 = load i32, i32* %9, align 4
  %144 = call i32 @regmap_write(%struct.regmap* %141, i32 %142, i32 %143)
  store i32 %144, i32* %7, align 4
  %145 = load i32, i32* %7, align 4
  %146 = icmp slt i32 %145, 0
  br i1 %146, label %147, label %153

147:                                              ; preds = %140
  %148 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %149 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %148, i32 0, i32 0
  %150 = load i32, i32* %7, align 4
  %151 = call i32 (%struct.TYPE_8__*, i8*, ...) @dev_err(%struct.TYPE_8__* %149, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.8, i64 0, i64 0), i32 %150)
  %152 = load i32, i32* %7, align 4
  store i32 %152, i32* %2, align 4
  br label %205

153:                                              ; preds = %140
  %154 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %155 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %154, i32 0, i32 0
  %156 = load i32, i32* %6, align 4
  %157 = load i32, i32* @pwrkey_press_irq, align 4
  %158 = load i32, i32* @IRQF_TRIGGER_RISING, align 4
  %159 = load %struct.input_dev*, %struct.input_dev** %4, align 8
  %160 = call i32 @devm_request_irq(%struct.TYPE_8__* %155, i32 %156, i32 %157, i32 %158, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.9, i64 0, i64 0), %struct.input_dev* %159)
  store i32 %160, i32* %7, align 4
  %161 = load i32, i32* %7, align 4
  %162 = icmp ne i32 %161, 0
  br i1 %162, label %163, label %170

163:                                              ; preds = %153
  %164 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %165 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %164, i32 0, i32 0
  %166 = load i32, i32* %6, align 4
  %167 = load i32, i32* %7, align 4
  %168 = call i32 (%struct.TYPE_8__*, i8*, ...) @dev_err(%struct.TYPE_8__* %165, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.10, i64 0, i64 0), i32 %166, i32 %167)
  %169 = load i32, i32* %7, align 4
  store i32 %169, i32* %2, align 4
  br label %205

170:                                              ; preds = %153
  %171 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %172 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %171, i32 0, i32 0
  %173 = load i32, i32* %5, align 4
  %174 = load i32, i32* @pwrkey_release_irq, align 4
  %175 = load i32, i32* @IRQF_TRIGGER_RISING, align 4
  %176 = load %struct.input_dev*, %struct.input_dev** %4, align 8
  %177 = call i32 @devm_request_irq(%struct.TYPE_8__* %172, i32 %173, i32 %174, i32 %175, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.11, i64 0, i64 0), %struct.input_dev* %176)
  store i32 %177, i32* %7, align 4
  %178 = load i32, i32* %7, align 4
  %179 = icmp ne i32 %178, 0
  br i1 %179, label %180, label %187

180:                                              ; preds = %170
  %181 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %182 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %181, i32 0, i32 0
  %183 = load i32, i32* %5, align 4
  %184 = load i32, i32* %7, align 4
  %185 = call i32 (%struct.TYPE_8__*, i8*, ...) @dev_err(%struct.TYPE_8__* %182, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.10, i64 0, i64 0), i32 %183, i32 %184)
  %186 = load i32, i32* %7, align 4
  store i32 %186, i32* %2, align 4
  br label %205

187:                                              ; preds = %170
  %188 = load %struct.input_dev*, %struct.input_dev** %4, align 8
  %189 = call i32 @input_register_device(%struct.input_dev* %188)
  store i32 %189, i32* %7, align 4
  %190 = load i32, i32* %7, align 4
  %191 = icmp ne i32 %190, 0
  br i1 %191, label %192, label %198

192:                                              ; preds = %187
  %193 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %194 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %193, i32 0, i32 0
  %195 = load i32, i32* %7, align 4
  %196 = call i32 (%struct.TYPE_8__*, i8*, ...) @dev_err(%struct.TYPE_8__* %194, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.12, i64 0, i64 0), i32 %195)
  %197 = load i32, i32* %7, align 4
  store i32 %197, i32* %2, align 4
  br label %205

198:                                              ; preds = %187
  %199 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %200 = load %struct.pmic8xxx_pwrkey*, %struct.pmic8xxx_pwrkey** %11, align 8
  %201 = call i32 @platform_set_drvdata(%struct.platform_device* %199, %struct.pmic8xxx_pwrkey* %200)
  %202 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %203 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %202, i32 0, i32 0
  %204 = call i32 @device_init_wakeup(%struct.TYPE_8__* %203, i32 1)
  store i32 0, i32* %2, align 4
  br label %205

205:                                              ; preds = %198, %192, %180, %163, %147, %113, %87, %67, %54, %35
  %206 = load i32, i32* %2, align 4
  ret i32 %206
}

declare dso_local i32 @platform_get_irq(%struct.platform_device*, i32) #1

declare dso_local i64 @of_property_read_u32(i32, i8*, i32*) #1

declare dso_local i32 @dev_err(%struct.TYPE_8__*, i8*, ...) #1

declare dso_local i32 @of_property_read_bool(i32, i8*) #1

declare dso_local %struct.regmap* @dev_get_regmap(i32, i32*) #1

declare dso_local %struct.pmic8xxx_pwrkey* @devm_kzalloc(%struct.TYPE_8__*, i32, i32) #1

declare dso_local i32 @of_device_get_match_data(%struct.TYPE_8__*) #1

declare dso_local %struct.input_dev* @devm_input_allocate_device(%struct.TYPE_8__*) #1

declare dso_local i32 @dev_dbg(%struct.TYPE_8__*, i8*) #1

declare dso_local i32 @input_set_capability(%struct.input_dev*, i32, i32) #1

declare dso_local i32 @ilog2(i32) #1

declare dso_local i32 @regmap_read(%struct.regmap*, i32, i32*) #1

declare dso_local i32 @regmap_write(%struct.regmap*, i32, i32) #1

declare dso_local i32 @devm_request_irq(%struct.TYPE_8__*, i32, i32, i32, i8*, %struct.input_dev*) #1

declare dso_local i32 @input_register_device(%struct.input_dev*) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.pmic8xxx_pwrkey*) #1

declare dso_local i32 @device_init_wakeup(%struct.TYPE_8__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
