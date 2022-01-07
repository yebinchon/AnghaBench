; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/misc/extr_pcf8574_keypad.c_pcf8574_kp_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/misc/extr_pcf8574_keypad.c_pcf8574_kp_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_client = type { i32, i32 }
%struct.i2c_device_id = type { i32 }
%struct.input_dev = type { i64*, i32, i32, %struct.TYPE_2__, i32, i32, i32, i32* }
%struct.TYPE_2__ = type { i32, i32, i32, i32 }
%struct.kp_data = type { i64*, i32, i32, i32, %struct.i2c_client*, %struct.input_dev* }

@.str = private unnamed_addr constant [19 x i8] c"probe: write fail\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [29 x i8] c"Can't allocate input device\0A\00", align 1
@EV_KEY = common dso_local global i32 0, align 4
@pcf8574_kp_btncode = common dso_local global i64* null, align 8
@KEY_MAX = common dso_local global i64 0, align 8
@KEY_RESERVED = common dso_local global i32 0, align 4
@DRV_NAME = common dso_local global i8* null, align 8
@.str.2 = private unnamed_addr constant [15 x i8] c"kp_data/input0\00", align 1
@BUS_I2C = common dso_local global i32 0, align 4
@pcf8574_kp_irq_handler = common dso_local global i32 0, align 4
@IRQF_TRIGGER_LOW = common dso_local global i32 0, align 4
@IRQF_ONESHOT = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [20 x i8] c"IRQ %d is not free\0A\00", align 1
@.str.4 = private unnamed_addr constant [32 x i8] c"input_register_device() failed\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_client*, %struct.i2c_device_id*)* @pcf8574_kp_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pcf8574_kp_probe(%struct.i2c_client* %0, %struct.i2c_device_id* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.i2c_client*, align 8
  %5 = alloca %struct.i2c_device_id*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.input_dev*, align 8
  %9 = alloca %struct.kp_data*, align 8
  store %struct.i2c_client* %0, %struct.i2c_client** %4, align 8
  store %struct.i2c_device_id* %1, %struct.i2c_device_id** %5, align 8
  %10 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %11 = call i64 @i2c_smbus_write_byte(%struct.i2c_client* %10, i32 240)
  %12 = icmp slt i64 %11, 0
  br i1 %12, label %13, label %19

13:                                               ; preds = %2
  %14 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %15 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %14, i32 0, i32 1
  %16 = call i32 (i32*, i8*, ...) @dev_err(i32* %15, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0))
  %17 = load i32, i32* @ENODEV, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %3, align 4
  br label %192

19:                                               ; preds = %2
  %20 = load i32, i32* @GFP_KERNEL, align 4
  %21 = call %struct.kp_data* @kzalloc(i32 40, i32 %20)
  store %struct.kp_data* %21, %struct.kp_data** %9, align 8
  %22 = load %struct.kp_data*, %struct.kp_data** %9, align 8
  %23 = icmp ne %struct.kp_data* %22, null
  br i1 %23, label %27, label %24

24:                                               ; preds = %19
  %25 = load i32, i32* @ENOMEM, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %3, align 4
  br label %192

27:                                               ; preds = %19
  %28 = call %struct.input_dev* (...) @input_allocate_device()
  store %struct.input_dev* %28, %struct.input_dev** %8, align 8
  %29 = load %struct.input_dev*, %struct.input_dev** %8, align 8
  %30 = icmp ne %struct.input_dev* %29, null
  br i1 %30, label %37, label %31

31:                                               ; preds = %27
  %32 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %33 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %32, i32 0, i32 1
  %34 = call i32 (i32*, i8*, ...) @dev_err(i32* %33, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0))
  %35 = load i32, i32* @ENOMEM, align 4
  %36 = sub nsw i32 0, %35
  store i32 %36, i32* %7, align 4
  br label %188

37:                                               ; preds = %27
  %38 = load %struct.input_dev*, %struct.input_dev** %8, align 8
  %39 = load %struct.kp_data*, %struct.kp_data** %9, align 8
  %40 = getelementptr inbounds %struct.kp_data, %struct.kp_data* %39, i32 0, i32 5
  store %struct.input_dev* %38, %struct.input_dev** %40, align 8
  %41 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %42 = load %struct.kp_data*, %struct.kp_data** %9, align 8
  %43 = getelementptr inbounds %struct.kp_data, %struct.kp_data* %42, i32 0, i32 4
  store %struct.i2c_client* %41, %struct.i2c_client** %43, align 8
  %44 = load i32, i32* @EV_KEY, align 4
  %45 = call i32 @BIT_MASK(i32 %44)
  %46 = load %struct.input_dev*, %struct.input_dev** %8, align 8
  %47 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %46, i32 0, i32 7
  %48 = load i32*, i32** %47, align 8
  %49 = getelementptr inbounds i32, i32* %48, i64 0
  store i32 %45, i32* %49, align 4
  %50 = load %struct.kp_data*, %struct.kp_data** %9, align 8
  %51 = getelementptr inbounds %struct.kp_data, %struct.kp_data* %50, i32 0, i32 0
  %52 = load i64*, i64** %51, align 8
  %53 = load %struct.input_dev*, %struct.input_dev** %8, align 8
  %54 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %53, i32 0, i32 0
  store i64* %52, i64** %54, align 8
  %55 = load %struct.input_dev*, %struct.input_dev** %8, align 8
  %56 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %55, i32 0, i32 1
  store i32 8, i32* %56, align 8
  %57 = load %struct.kp_data*, %struct.kp_data** %9, align 8
  %58 = getelementptr inbounds %struct.kp_data, %struct.kp_data* %57, i32 0, i32 0
  %59 = load i64*, i64** %58, align 8
  %60 = call i32 @ARRAY_SIZE(i64* %59)
  %61 = load %struct.input_dev*, %struct.input_dev** %8, align 8
  %62 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %61, i32 0, i32 2
  store i32 %60, i32* %62, align 4
  store i32 0, i32* %6, align 4
  br label %63

63:                                               ; preds = %102, %37
  %64 = load i32, i32* %6, align 4
  %65 = load i64*, i64** @pcf8574_kp_btncode, align 8
  %66 = call i32 @ARRAY_SIZE(i64* %65)
  %67 = icmp slt i32 %64, %66
  br i1 %67, label %68, label %105

68:                                               ; preds = %63
  %69 = load %struct.kp_data*, %struct.kp_data** %9, align 8
  %70 = getelementptr inbounds %struct.kp_data, %struct.kp_data* %69, i32 0, i32 0
  %71 = load i64*, i64** %70, align 8
  %72 = load i32, i32* %6, align 4
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds i64, i64* %71, i64 %73
  %75 = load i64, i64* %74, align 8
  %76 = load i64, i64* @KEY_MAX, align 8
  %77 = icmp sle i64 %75, %76
  br i1 %77, label %78, label %101

78:                                               ; preds = %68
  %79 = load i64*, i64** @pcf8574_kp_btncode, align 8
  %80 = load i32, i32* %6, align 4
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds i64, i64* %79, i64 %81
  %83 = load i64, i64* %82, align 8
  %84 = load %struct.kp_data*, %struct.kp_data** %9, align 8
  %85 = getelementptr inbounds %struct.kp_data, %struct.kp_data* %84, i32 0, i32 0
  %86 = load i64*, i64** %85, align 8
  %87 = load i32, i32* %6, align 4
  %88 = sext i32 %87 to i64
  %89 = getelementptr inbounds i64, i64* %86, i64 %88
  store i64 %83, i64* %89, align 8
  %90 = load %struct.kp_data*, %struct.kp_data** %9, align 8
  %91 = getelementptr inbounds %struct.kp_data, %struct.kp_data* %90, i32 0, i32 0
  %92 = load i64*, i64** %91, align 8
  %93 = load i32, i32* %6, align 4
  %94 = sext i32 %93 to i64
  %95 = getelementptr inbounds i64, i64* %92, i64 %94
  %96 = load i64, i64* %95, align 8
  %97 = load %struct.input_dev*, %struct.input_dev** %8, align 8
  %98 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %97, i32 0, i32 6
  %99 = load i32, i32* %98, align 8
  %100 = call i32 @__set_bit(i64 %96, i32 %99)
  br label %101

101:                                              ; preds = %78, %68
  br label %102

102:                                              ; preds = %101
  %103 = load i32, i32* %6, align 4
  %104 = add nsw i32 %103, 1
  store i32 %104, i32* %6, align 4
  br label %63

105:                                              ; preds = %63
  %106 = load i32, i32* @KEY_RESERVED, align 4
  %107 = load %struct.input_dev*, %struct.input_dev** %8, align 8
  %108 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %107, i32 0, i32 6
  %109 = load i32, i32* %108, align 8
  %110 = call i32 @__clear_bit(i32 %106, i32 %109)
  %111 = load %struct.kp_data*, %struct.kp_data** %9, align 8
  %112 = getelementptr inbounds %struct.kp_data, %struct.kp_data* %111, i32 0, i32 3
  %113 = load i32, i32* %112, align 8
  %114 = load i8*, i8** @DRV_NAME, align 8
  %115 = call i32 @sprintf(i32 %113, i8* %114)
  %116 = load %struct.kp_data*, %struct.kp_data** %9, align 8
  %117 = getelementptr inbounds %struct.kp_data, %struct.kp_data* %116, i32 0, i32 2
  %118 = load i32, i32* %117, align 4
  %119 = call i32 @sprintf(i32 %118, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0))
  %120 = load %struct.kp_data*, %struct.kp_data** %9, align 8
  %121 = getelementptr inbounds %struct.kp_data, %struct.kp_data* %120, i32 0, i32 3
  %122 = load i32, i32* %121, align 8
  %123 = load %struct.input_dev*, %struct.input_dev** %8, align 8
  %124 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %123, i32 0, i32 5
  store i32 %122, i32* %124, align 4
  %125 = load %struct.kp_data*, %struct.kp_data** %9, align 8
  %126 = getelementptr inbounds %struct.kp_data, %struct.kp_data* %125, i32 0, i32 2
  %127 = load i32, i32* %126, align 4
  %128 = load %struct.input_dev*, %struct.input_dev** %8, align 8
  %129 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %128, i32 0, i32 4
  store i32 %127, i32* %129, align 8
  %130 = load i32, i32* @BUS_I2C, align 4
  %131 = load %struct.input_dev*, %struct.input_dev** %8, align 8
  %132 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %131, i32 0, i32 3
  %133 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %132, i32 0, i32 3
  store i32 %130, i32* %133, align 4
  %134 = load %struct.input_dev*, %struct.input_dev** %8, align 8
  %135 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %134, i32 0, i32 3
  %136 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %135, i32 0, i32 0
  store i32 1, i32* %136, align 8
  %137 = load %struct.input_dev*, %struct.input_dev** %8, align 8
  %138 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %137, i32 0, i32 3
  %139 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %138, i32 0, i32 1
  store i32 1, i32* %139, align 4
  %140 = load %struct.input_dev*, %struct.input_dev** %8, align 8
  %141 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %140, i32 0, i32 3
  %142 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %141, i32 0, i32 2
  store i32 256, i32* %142, align 8
  %143 = load %struct.kp_data*, %struct.kp_data** %9, align 8
  %144 = call i32 @read_state(%struct.kp_data* %143)
  %145 = load %struct.kp_data*, %struct.kp_data** %9, align 8
  %146 = getelementptr inbounds %struct.kp_data, %struct.kp_data* %145, i32 0, i32 1
  store i32 %144, i32* %146, align 8
  %147 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %148 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %147, i32 0, i32 0
  %149 = load i32, i32* %148, align 4
  %150 = load i32, i32* @pcf8574_kp_irq_handler, align 4
  %151 = load i32, i32* @IRQF_TRIGGER_LOW, align 4
  %152 = load i32, i32* @IRQF_ONESHOT, align 4
  %153 = or i32 %151, %152
  %154 = load i8*, i8** @DRV_NAME, align 8
  %155 = load %struct.kp_data*, %struct.kp_data** %9, align 8
  %156 = call i32 @request_threaded_irq(i32 %149, i32* null, i32 %150, i32 %153, i8* %154, %struct.kp_data* %155)
  store i32 %156, i32* %7, align 4
  %157 = load i32, i32* %7, align 4
  %158 = icmp ne i32 %157, 0
  br i1 %158, label %159, label %166

159:                                              ; preds = %105
  %160 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %161 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %160, i32 0, i32 1
  %162 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %163 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %162, i32 0, i32 0
  %164 = load i32, i32* %163, align 4
  %165 = call i32 (i32*, i8*, ...) @dev_err(i32* %161, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.3, i64 0, i64 0), i32 %164)
  br label %185

166:                                              ; preds = %105
  %167 = load %struct.input_dev*, %struct.input_dev** %8, align 8
  %168 = call i32 @input_register_device(%struct.input_dev* %167)
  store i32 %168, i32* %7, align 4
  %169 = load i32, i32* %7, align 4
  %170 = icmp ne i32 %169, 0
  br i1 %170, label %171, label %175

171:                                              ; preds = %166
  %172 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %173 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %172, i32 0, i32 1
  %174 = call i32 (i32*, i8*, ...) @dev_err(i32* %173, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.4, i64 0, i64 0))
  br label %179

175:                                              ; preds = %166
  %176 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %177 = load %struct.kp_data*, %struct.kp_data** %9, align 8
  %178 = call i32 @i2c_set_clientdata(%struct.i2c_client* %176, %struct.kp_data* %177)
  store i32 0, i32* %3, align 4
  br label %192

179:                                              ; preds = %171
  %180 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %181 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %180, i32 0, i32 0
  %182 = load i32, i32* %181, align 4
  %183 = load %struct.kp_data*, %struct.kp_data** %9, align 8
  %184 = call i32 @free_irq(i32 %182, %struct.kp_data* %183)
  br label %185

185:                                              ; preds = %179, %159
  %186 = load %struct.input_dev*, %struct.input_dev** %8, align 8
  %187 = call i32 @input_free_device(%struct.input_dev* %186)
  br label %188

188:                                              ; preds = %185, %31
  %189 = load %struct.kp_data*, %struct.kp_data** %9, align 8
  %190 = call i32 @kfree(%struct.kp_data* %189)
  %191 = load i32, i32* %7, align 4
  store i32 %191, i32* %3, align 4
  br label %192

192:                                              ; preds = %188, %175, %24, %13
  %193 = load i32, i32* %3, align 4
  ret i32 %193
}

declare dso_local i64 @i2c_smbus_write_byte(%struct.i2c_client*, i32) #1

declare dso_local i32 @dev_err(i32*, i8*, ...) #1

declare dso_local %struct.kp_data* @kzalloc(i32, i32) #1

declare dso_local %struct.input_dev* @input_allocate_device(...) #1

declare dso_local i32 @BIT_MASK(i32) #1

declare dso_local i32 @ARRAY_SIZE(i64*) #1

declare dso_local i32 @__set_bit(i64, i32) #1

declare dso_local i32 @__clear_bit(i32, i32) #1

declare dso_local i32 @sprintf(i32, i8*) #1

declare dso_local i32 @read_state(%struct.kp_data*) #1

declare dso_local i32 @request_threaded_irq(i32, i32*, i32, i32, i8*, %struct.kp_data*) #1

declare dso_local i32 @input_register_device(%struct.input_dev*) #1

declare dso_local i32 @i2c_set_clientdata(%struct.i2c_client*, %struct.kp_data*) #1

declare dso_local i32 @free_irq(i32, %struct.kp_data*) #1

declare dso_local i32 @input_free_device(%struct.input_dev*) #1

declare dso_local i32 @kfree(%struct.kp_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
