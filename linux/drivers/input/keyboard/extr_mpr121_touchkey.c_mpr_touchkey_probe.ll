; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/keyboard/extr_mpr121_touchkey.c_mpr_touchkey_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/keyboard/extr_mpr121_touchkey.c_mpr_touchkey_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_client = type { i32, %struct.device }
%struct.device = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32 }
%struct.i2c_device_id = type { i32 }
%struct.regulator = type { i32 }
%struct.mpr121_touchkey = type { i32, i32*, %struct.input_dev*, %struct.i2c_client* }
%struct.input_dev = type { i8*, i32, i32, i32*, i32, %struct.TYPE_5__, %struct.TYPE_4__ }
%struct.TYPE_5__ = type { %struct.device* }
%struct.TYPE_4__ = type { i32 }

@.str = private unnamed_addr constant [31 x i8] c"irq number should not be zero\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [15 x i8] c"linux,keycodes\00", align 1
@MPR121_MAX_KEY_COUNT = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [28 x i8] c"too many keys defined (%d)\0A\00", align 1
@.str.3 = private unnamed_addr constant [43 x i8] c"failed to read linux,keycode property: %d\0A\00", align 1
@.str.4 = private unnamed_addr constant [26 x i8] c"Freescale MPR121 Touchkey\00", align 1
@BUS_I2C = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [11 x i8] c"autorepeat\00", align 1
@EV_REP = common dso_local global i32 0, align 4
@EV_MSC = common dso_local global i32 0, align 4
@MSC_SCAN = common dso_local global i32 0, align 4
@EV_KEY = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [25 x i8] c"Failed to init register\0A\00", align 1
@mpr_touchkey_interrupt = common dso_local global i32 0, align 4
@IRQF_TRIGGER_FALLING = common dso_local global i32 0, align 4
@IRQF_ONESHOT = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [30 x i8] c"Failed to register interrupt\0A\00", align 1
@.str.8 = private unnamed_addr constant [14 x i8] c"wakeup-source\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_client*, %struct.i2c_device_id*)* @mpr_touchkey_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mpr_touchkey_probe(%struct.i2c_client* %0, %struct.i2c_device_id* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.i2c_client*, align 8
  %5 = alloca %struct.i2c_device_id*, align 8
  %6 = alloca %struct.device*, align 8
  %7 = alloca %struct.regulator*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.mpr121_touchkey*, align 8
  %10 = alloca %struct.input_dev*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.i2c_client* %0, %struct.i2c_client** %4, align 8
  store %struct.i2c_device_id* %1, %struct.i2c_device_id** %5, align 8
  %13 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %14 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %13, i32 0, i32 1
  store %struct.device* %14, %struct.device** %6, align 8
  %15 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %16 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %24, label %19

19:                                               ; preds = %2
  %20 = load %struct.device*, %struct.device** %6, align 8
  %21 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %20, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  %22 = load i32, i32* @EINVAL, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %3, align 4
  br label %197

24:                                               ; preds = %2
  %25 = load %struct.device*, %struct.device** %6, align 8
  %26 = call %struct.regulator* @mpr121_vdd_supply_init(%struct.device* %25)
  store %struct.regulator* %26, %struct.regulator** %7, align 8
  %27 = load %struct.regulator*, %struct.regulator** %7, align 8
  %28 = call i64 @IS_ERR(%struct.regulator* %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %33

30:                                               ; preds = %24
  %31 = load %struct.regulator*, %struct.regulator** %7, align 8
  %32 = call i32 @PTR_ERR(%struct.regulator* %31)
  store i32 %32, i32* %3, align 4
  br label %197

33:                                               ; preds = %24
  %34 = load %struct.regulator*, %struct.regulator** %7, align 8
  %35 = call i32 @regulator_get_voltage(%struct.regulator* %34)
  store i32 %35, i32* %8, align 4
  %36 = load %struct.device*, %struct.device** %6, align 8
  %37 = load i32, i32* @GFP_KERNEL, align 4
  %38 = call %struct.mpr121_touchkey* @devm_kzalloc(%struct.device* %36, i32 32, i32 %37)
  store %struct.mpr121_touchkey* %38, %struct.mpr121_touchkey** %9, align 8
  %39 = load %struct.mpr121_touchkey*, %struct.mpr121_touchkey** %9, align 8
  %40 = icmp ne %struct.mpr121_touchkey* %39, null
  br i1 %40, label %44, label %41

41:                                               ; preds = %33
  %42 = load i32, i32* @ENOMEM, align 4
  %43 = sub nsw i32 0, %42
  store i32 %43, i32* %3, align 4
  br label %197

44:                                               ; preds = %33
  %45 = load %struct.device*, %struct.device** %6, align 8
  %46 = call %struct.input_dev* @devm_input_allocate_device(%struct.device* %45)
  store %struct.input_dev* %46, %struct.input_dev** %10, align 8
  %47 = load %struct.input_dev*, %struct.input_dev** %10, align 8
  %48 = icmp ne %struct.input_dev* %47, null
  br i1 %48, label %52, label %49

49:                                               ; preds = %44
  %50 = load i32, i32* @ENOMEM, align 4
  %51 = sub nsw i32 0, %50
  store i32 %51, i32* %3, align 4
  br label %197

52:                                               ; preds = %44
  %53 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %54 = load %struct.mpr121_touchkey*, %struct.mpr121_touchkey** %9, align 8
  %55 = getelementptr inbounds %struct.mpr121_touchkey, %struct.mpr121_touchkey* %54, i32 0, i32 3
  store %struct.i2c_client* %53, %struct.i2c_client** %55, align 8
  %56 = load %struct.input_dev*, %struct.input_dev** %10, align 8
  %57 = load %struct.mpr121_touchkey*, %struct.mpr121_touchkey** %9, align 8
  %58 = getelementptr inbounds %struct.mpr121_touchkey, %struct.mpr121_touchkey* %57, i32 0, i32 2
  store %struct.input_dev* %56, %struct.input_dev** %58, align 8
  %59 = load %struct.device*, %struct.device** %6, align 8
  %60 = call i32 @device_property_count_u32(%struct.device* %59, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0))
  %61 = load %struct.mpr121_touchkey*, %struct.mpr121_touchkey** %9, align 8
  %62 = getelementptr inbounds %struct.mpr121_touchkey, %struct.mpr121_touchkey* %61, i32 0, i32 0
  store i32 %60, i32* %62, align 8
  %63 = load %struct.mpr121_touchkey*, %struct.mpr121_touchkey** %9, align 8
  %64 = getelementptr inbounds %struct.mpr121_touchkey, %struct.mpr121_touchkey* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 8
  %66 = load i32, i32* @MPR121_MAX_KEY_COUNT, align 4
  %67 = icmp sgt i32 %65, %66
  br i1 %67, label %68, label %76

68:                                               ; preds = %52
  %69 = load %struct.device*, %struct.device** %6, align 8
  %70 = load %struct.mpr121_touchkey*, %struct.mpr121_touchkey** %9, align 8
  %71 = getelementptr inbounds %struct.mpr121_touchkey, %struct.mpr121_touchkey* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 8
  %73 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %69, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i64 0, i64 0), i32 %72)
  %74 = load i32, i32* @EINVAL, align 4
  %75 = sub nsw i32 0, %74
  store i32 %75, i32* %3, align 4
  br label %197

76:                                               ; preds = %52
  %77 = load %struct.device*, %struct.device** %6, align 8
  %78 = load %struct.mpr121_touchkey*, %struct.mpr121_touchkey** %9, align 8
  %79 = getelementptr inbounds %struct.mpr121_touchkey, %struct.mpr121_touchkey* %78, i32 0, i32 1
  %80 = load i32*, i32** %79, align 8
  %81 = load %struct.mpr121_touchkey*, %struct.mpr121_touchkey** %9, align 8
  %82 = getelementptr inbounds %struct.mpr121_touchkey, %struct.mpr121_touchkey* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 8
  %84 = call i32 @device_property_read_u32_array(%struct.device* %77, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0), i32* %80, i32 %83)
  store i32 %84, i32* %11, align 4
  %85 = load i32, i32* %11, align 4
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %92

87:                                               ; preds = %76
  %88 = load %struct.device*, %struct.device** %6, align 8
  %89 = load i32, i32* %11, align 4
  %90 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %88, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.3, i64 0, i64 0), i32 %89)
  %91 = load i32, i32* %11, align 4
  store i32 %91, i32* %3, align 4
  br label %197

92:                                               ; preds = %76
  %93 = load %struct.input_dev*, %struct.input_dev** %10, align 8
  %94 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %93, i32 0, i32 0
  store i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.4, i64 0, i64 0), i8** %94, align 8
  %95 = load i32, i32* @BUS_I2C, align 4
  %96 = load %struct.input_dev*, %struct.input_dev** %10, align 8
  %97 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %96, i32 0, i32 6
  %98 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %97, i32 0, i32 0
  store i32 %95, i32* %98, align 8
  %99 = load %struct.device*, %struct.device** %6, align 8
  %100 = load %struct.input_dev*, %struct.input_dev** %10, align 8
  %101 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %100, i32 0, i32 5
  %102 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %101, i32 0, i32 0
  store %struct.device* %99, %struct.device** %102, align 8
  %103 = load %struct.device*, %struct.device** %6, align 8
  %104 = call i64 @device_property_read_bool(%struct.device* %103, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.5, i64 0, i64 0))
  %105 = icmp ne i64 %104, 0
  br i1 %105, label %106, label %112

106:                                              ; preds = %92
  %107 = load i32, i32* @EV_REP, align 4
  %108 = load %struct.input_dev*, %struct.input_dev** %10, align 8
  %109 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %108, i32 0, i32 4
  %110 = load i32, i32* %109, align 8
  %111 = call i32 @__set_bit(i32 %107, i32 %110)
  br label %112

112:                                              ; preds = %106, %92
  %113 = load %struct.input_dev*, %struct.input_dev** %10, align 8
  %114 = load i32, i32* @EV_MSC, align 4
  %115 = load i32, i32* @MSC_SCAN, align 4
  %116 = call i32 @input_set_capability(%struct.input_dev* %113, i32 %114, i32 %115)
  %117 = load %struct.mpr121_touchkey*, %struct.mpr121_touchkey** %9, align 8
  %118 = getelementptr inbounds %struct.mpr121_touchkey, %struct.mpr121_touchkey* %117, i32 0, i32 1
  %119 = load i32*, i32** %118, align 8
  %120 = load %struct.input_dev*, %struct.input_dev** %10, align 8
  %121 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %120, i32 0, i32 3
  store i32* %119, i32** %121, align 8
  %122 = load %struct.input_dev*, %struct.input_dev** %10, align 8
  %123 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %122, i32 0, i32 1
  store i32 4, i32* %123, align 8
  %124 = load %struct.mpr121_touchkey*, %struct.mpr121_touchkey** %9, align 8
  %125 = getelementptr inbounds %struct.mpr121_touchkey, %struct.mpr121_touchkey* %124, i32 0, i32 0
  %126 = load i32, i32* %125, align 8
  %127 = load %struct.input_dev*, %struct.input_dev** %10, align 8
  %128 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %127, i32 0, i32 2
  store i32 %126, i32* %128, align 4
  store i32 0, i32* %12, align 4
  br label %129

129:                                              ; preds = %146, %112
  %130 = load i32, i32* %12, align 4
  %131 = load %struct.mpr121_touchkey*, %struct.mpr121_touchkey** %9, align 8
  %132 = getelementptr inbounds %struct.mpr121_touchkey, %struct.mpr121_touchkey* %131, i32 0, i32 0
  %133 = load i32, i32* %132, align 8
  %134 = icmp slt i32 %130, %133
  br i1 %134, label %135, label %149

135:                                              ; preds = %129
  %136 = load %struct.input_dev*, %struct.input_dev** %10, align 8
  %137 = load i32, i32* @EV_KEY, align 4
  %138 = load %struct.mpr121_touchkey*, %struct.mpr121_touchkey** %9, align 8
  %139 = getelementptr inbounds %struct.mpr121_touchkey, %struct.mpr121_touchkey* %138, i32 0, i32 1
  %140 = load i32*, i32** %139, align 8
  %141 = load i32, i32* %12, align 4
  %142 = sext i32 %141 to i64
  %143 = getelementptr inbounds i32, i32* %140, i64 %142
  %144 = load i32, i32* %143, align 4
  %145 = call i32 @input_set_capability(%struct.input_dev* %136, i32 %137, i32 %144)
  br label %146

146:                                              ; preds = %135
  %147 = load i32, i32* %12, align 4
  %148 = add nsw i32 %147, 1
  store i32 %148, i32* %12, align 4
  br label %129

149:                                              ; preds = %129
  %150 = load %struct.mpr121_touchkey*, %struct.mpr121_touchkey** %9, align 8
  %151 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %152 = load i32, i32* %8, align 4
  %153 = call i32 @mpr121_phys_init(%struct.mpr121_touchkey* %150, %struct.i2c_client* %151, i32 %152)
  store i32 %153, i32* %11, align 4
  %154 = load i32, i32* %11, align 4
  %155 = icmp ne i32 %154, 0
  br i1 %155, label %156, label %160

156:                                              ; preds = %149
  %157 = load %struct.device*, %struct.device** %6, align 8
  %158 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %157, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.6, i64 0, i64 0))
  %159 = load i32, i32* %11, align 4
  store i32 %159, i32* %3, align 4
  br label %197

160:                                              ; preds = %149
  %161 = load %struct.device*, %struct.device** %6, align 8
  %162 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %163 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %162, i32 0, i32 0
  %164 = load i32, i32* %163, align 8
  %165 = load i32, i32* @mpr_touchkey_interrupt, align 4
  %166 = load i32, i32* @IRQF_TRIGGER_FALLING, align 4
  %167 = load i32, i32* @IRQF_ONESHOT, align 4
  %168 = or i32 %166, %167
  %169 = load %struct.device*, %struct.device** %6, align 8
  %170 = getelementptr inbounds %struct.device, %struct.device* %169, i32 0, i32 0
  %171 = load %struct.TYPE_6__*, %struct.TYPE_6__** %170, align 8
  %172 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %171, i32 0, i32 0
  %173 = load i32, i32* %172, align 4
  %174 = load %struct.mpr121_touchkey*, %struct.mpr121_touchkey** %9, align 8
  %175 = call i32 @devm_request_threaded_irq(%struct.device* %161, i32 %164, i32* null, i32 %165, i32 %168, i32 %173, %struct.mpr121_touchkey* %174)
  store i32 %175, i32* %11, align 4
  %176 = load i32, i32* %11, align 4
  %177 = icmp ne i32 %176, 0
  br i1 %177, label %178, label %182

178:                                              ; preds = %160
  %179 = load %struct.device*, %struct.device** %6, align 8
  %180 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %179, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.7, i64 0, i64 0))
  %181 = load i32, i32* %11, align 4
  store i32 %181, i32* %3, align 4
  br label %197

182:                                              ; preds = %160
  %183 = load %struct.input_dev*, %struct.input_dev** %10, align 8
  %184 = call i32 @input_register_device(%struct.input_dev* %183)
  store i32 %184, i32* %11, align 4
  %185 = load i32, i32* %11, align 4
  %186 = icmp ne i32 %185, 0
  br i1 %186, label %187, label %189

187:                                              ; preds = %182
  %188 = load i32, i32* %11, align 4
  store i32 %188, i32* %3, align 4
  br label %197

189:                                              ; preds = %182
  %190 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %191 = load %struct.mpr121_touchkey*, %struct.mpr121_touchkey** %9, align 8
  %192 = call i32 @i2c_set_clientdata(%struct.i2c_client* %190, %struct.mpr121_touchkey* %191)
  %193 = load %struct.device*, %struct.device** %6, align 8
  %194 = load %struct.device*, %struct.device** %6, align 8
  %195 = call i64 @device_property_read_bool(%struct.device* %194, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.8, i64 0, i64 0))
  %196 = call i32 @device_init_wakeup(%struct.device* %193, i64 %195)
  store i32 0, i32* %3, align 4
  br label %197

197:                                              ; preds = %189, %187, %178, %156, %87, %68, %49, %41, %30, %19
  %198 = load i32, i32* %3, align 4
  ret i32 %198
}

declare dso_local i32 @dev_err(%struct.device*, i8*, ...) #1

declare dso_local %struct.regulator* @mpr121_vdd_supply_init(%struct.device*) #1

declare dso_local i64 @IS_ERR(%struct.regulator*) #1

declare dso_local i32 @PTR_ERR(%struct.regulator*) #1

declare dso_local i32 @regulator_get_voltage(%struct.regulator*) #1

declare dso_local %struct.mpr121_touchkey* @devm_kzalloc(%struct.device*, i32, i32) #1

declare dso_local %struct.input_dev* @devm_input_allocate_device(%struct.device*) #1

declare dso_local i32 @device_property_count_u32(%struct.device*, i8*) #1

declare dso_local i32 @device_property_read_u32_array(%struct.device*, i8*, i32*, i32) #1

declare dso_local i64 @device_property_read_bool(%struct.device*, i8*) #1

declare dso_local i32 @__set_bit(i32, i32) #1

declare dso_local i32 @input_set_capability(%struct.input_dev*, i32, i32) #1

declare dso_local i32 @mpr121_phys_init(%struct.mpr121_touchkey*, %struct.i2c_client*, i32) #1

declare dso_local i32 @devm_request_threaded_irq(%struct.device*, i32, i32*, i32, i32, i32, %struct.mpr121_touchkey*) #1

declare dso_local i32 @input_register_device(%struct.input_dev*) #1

declare dso_local i32 @i2c_set_clientdata(%struct.i2c_client*, %struct.mpr121_touchkey*) #1

declare dso_local i32 @device_init_wakeup(%struct.device*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
