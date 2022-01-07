; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/misc/extr_tps65218-pwrbutton.c_tps6521x_pb_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/misc/extr_tps65218-pwrbutton.c_tps6521x_pb_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.device }
%struct.device = type { i32, i32 }
%struct.tps6521x_pwrbutton = type { %struct.TYPE_6__*, %struct.input_dev*, %struct.device*, i32, i32 }
%struct.TYPE_6__ = type { i8* }
%struct.input_dev = type { i8*, %struct.TYPE_5__, %struct.TYPE_4__, i32 }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_4__ = type { %struct.device* }
%struct.of_device_id = type { %struct.TYPE_6__* }

@of_tps6521x_pb_match = common dso_local global i32 0, align 4
@ENXIO = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [10 x i8] c"%s/input0\00", align 1
@BUS_I2C = common dso_local global i32 0, align 4
@EV_KEY = common dso_local global i32 0, align 4
@KEY_POWER = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@tps6521x_pb_irq = common dso_local global i32 0, align 4
@IRQF_TRIGGER_RISING = common dso_local global i32 0, align 4
@IRQF_TRIGGER_FALLING = common dso_local global i32 0, align 4
@IRQF_ONESHOT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [31 x i8] c"failed to request IRQ #%d: %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [33 x i8] c"Can't register power button: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @tps6521x_pb_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tps6521x_pb_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.tps6521x_pwrbutton*, align 8
  %6 = alloca %struct.input_dev*, align 8
  %7 = alloca %struct.of_device_id*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %10 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %11 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %10, i32 0, i32 0
  store %struct.device* %11, %struct.device** %4, align 8
  %12 = load i32, i32* @of_tps6521x_pb_match, align 4
  %13 = load %struct.device*, %struct.device** %4, align 8
  %14 = getelementptr inbounds %struct.device, %struct.device* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  %16 = call %struct.of_device_id* @of_match_node(i32 %12, i32 %15)
  store %struct.of_device_id* %16, %struct.of_device_id** %7, align 8
  %17 = load %struct.of_device_id*, %struct.of_device_id** %7, align 8
  %18 = icmp ne %struct.of_device_id* %17, null
  br i1 %18, label %22, label %19

19:                                               ; preds = %1
  %20 = load i32, i32* @ENXIO, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %2, align 4
  br label %134

22:                                               ; preds = %1
  %23 = load %struct.device*, %struct.device** %4, align 8
  %24 = load i32, i32* @GFP_KERNEL, align 4
  %25 = call %struct.tps6521x_pwrbutton* @devm_kzalloc(%struct.device* %23, i32 32, i32 %24)
  store %struct.tps6521x_pwrbutton* %25, %struct.tps6521x_pwrbutton** %5, align 8
  %26 = load %struct.tps6521x_pwrbutton*, %struct.tps6521x_pwrbutton** %5, align 8
  %27 = icmp ne %struct.tps6521x_pwrbutton* %26, null
  br i1 %27, label %31, label %28

28:                                               ; preds = %22
  %29 = load i32, i32* @ENOMEM, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %2, align 4
  br label %134

31:                                               ; preds = %22
  %32 = load %struct.of_device_id*, %struct.of_device_id** %7, align 8
  %33 = getelementptr inbounds %struct.of_device_id, %struct.of_device_id* %32, i32 0, i32 0
  %34 = load %struct.TYPE_6__*, %struct.TYPE_6__** %33, align 8
  %35 = load %struct.tps6521x_pwrbutton*, %struct.tps6521x_pwrbutton** %5, align 8
  %36 = getelementptr inbounds %struct.tps6521x_pwrbutton, %struct.tps6521x_pwrbutton* %35, i32 0, i32 0
  store %struct.TYPE_6__* %34, %struct.TYPE_6__** %36, align 8
  %37 = load %struct.device*, %struct.device** %4, align 8
  %38 = call %struct.input_dev* @devm_input_allocate_device(%struct.device* %37)
  store %struct.input_dev* %38, %struct.input_dev** %6, align 8
  %39 = load %struct.input_dev*, %struct.input_dev** %6, align 8
  %40 = icmp ne %struct.input_dev* %39, null
  br i1 %40, label %44, label %41

41:                                               ; preds = %31
  %42 = load i32, i32* @ENOMEM, align 4
  %43 = sub nsw i32 0, %42
  store i32 %43, i32* %2, align 4
  br label %134

44:                                               ; preds = %31
  %45 = load %struct.tps6521x_pwrbutton*, %struct.tps6521x_pwrbutton** %5, align 8
  %46 = getelementptr inbounds %struct.tps6521x_pwrbutton, %struct.tps6521x_pwrbutton* %45, i32 0, i32 0
  %47 = load %struct.TYPE_6__*, %struct.TYPE_6__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %47, i32 0, i32 0
  %49 = load i8*, i8** %48, align 8
  %50 = load %struct.input_dev*, %struct.input_dev** %6, align 8
  %51 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %50, i32 0, i32 0
  store i8* %49, i8** %51, align 8
  %52 = load %struct.tps6521x_pwrbutton*, %struct.tps6521x_pwrbutton** %5, align 8
  %53 = getelementptr inbounds %struct.tps6521x_pwrbutton, %struct.tps6521x_pwrbutton* %52, i32 0, i32 4
  %54 = load i32, i32* %53, align 4
  %55 = load %struct.tps6521x_pwrbutton*, %struct.tps6521x_pwrbutton** %5, align 8
  %56 = getelementptr inbounds %struct.tps6521x_pwrbutton, %struct.tps6521x_pwrbutton* %55, i32 0, i32 0
  %57 = load %struct.TYPE_6__*, %struct.TYPE_6__** %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %57, i32 0, i32 0
  %59 = load i8*, i8** %58, align 8
  %60 = call i32 @snprintf(i32 %54, i32 4, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i8* %59)
  %61 = load %struct.tps6521x_pwrbutton*, %struct.tps6521x_pwrbutton** %5, align 8
  %62 = getelementptr inbounds %struct.tps6521x_pwrbutton, %struct.tps6521x_pwrbutton* %61, i32 0, i32 4
  %63 = load i32, i32* %62, align 4
  %64 = load %struct.input_dev*, %struct.input_dev** %6, align 8
  %65 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %64, i32 0, i32 3
  store i32 %63, i32* %65, align 8
  %66 = load %struct.device*, %struct.device** %4, align 8
  %67 = load %struct.input_dev*, %struct.input_dev** %6, align 8
  %68 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %67, i32 0, i32 2
  %69 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %68, i32 0, i32 0
  store %struct.device* %66, %struct.device** %69, align 8
  %70 = load i32, i32* @BUS_I2C, align 4
  %71 = load %struct.input_dev*, %struct.input_dev** %6, align 8
  %72 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %71, i32 0, i32 1
  %73 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %72, i32 0, i32 0
  store i32 %70, i32* %73, align 8
  %74 = load %struct.input_dev*, %struct.input_dev** %6, align 8
  %75 = load i32, i32* @EV_KEY, align 4
  %76 = load i32, i32* @KEY_POWER, align 4
  %77 = call i32 @input_set_capability(%struct.input_dev* %74, i32 %75, i32 %76)
  %78 = load %struct.device*, %struct.device** %4, align 8
  %79 = getelementptr inbounds %struct.device, %struct.device* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 4
  %81 = call i32 @dev_get_regmap(i32 %80, i32* null)
  %82 = load %struct.tps6521x_pwrbutton*, %struct.tps6521x_pwrbutton** %5, align 8
  %83 = getelementptr inbounds %struct.tps6521x_pwrbutton, %struct.tps6521x_pwrbutton* %82, i32 0, i32 3
  store i32 %81, i32* %83, align 8
  %84 = load %struct.device*, %struct.device** %4, align 8
  %85 = load %struct.tps6521x_pwrbutton*, %struct.tps6521x_pwrbutton** %5, align 8
  %86 = getelementptr inbounds %struct.tps6521x_pwrbutton, %struct.tps6521x_pwrbutton* %85, i32 0, i32 2
  store %struct.device* %84, %struct.device** %86, align 8
  %87 = load %struct.input_dev*, %struct.input_dev** %6, align 8
  %88 = load %struct.tps6521x_pwrbutton*, %struct.tps6521x_pwrbutton** %5, align 8
  %89 = getelementptr inbounds %struct.tps6521x_pwrbutton, %struct.tps6521x_pwrbutton* %88, i32 0, i32 1
  store %struct.input_dev* %87, %struct.input_dev** %89, align 8
  %90 = load %struct.device*, %struct.device** %4, align 8
  %91 = call i32 @device_init_wakeup(%struct.device* %90, i32 1)
  %92 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %93 = call i32 @platform_get_irq(%struct.platform_device* %92, i32 0)
  store i32 %93, i32* %9, align 4
  %94 = load i32, i32* %9, align 4
  %95 = icmp slt i32 %94, 0
  br i1 %95, label %96, label %99

96:                                               ; preds = %44
  %97 = load i32, i32* @EINVAL, align 4
  %98 = sub nsw i32 0, %97
  store i32 %98, i32* %2, align 4
  br label %134

99:                                               ; preds = %44
  %100 = load %struct.device*, %struct.device** %4, align 8
  %101 = load i32, i32* %9, align 4
  %102 = load i32, i32* @tps6521x_pb_irq, align 4
  %103 = load i32, i32* @IRQF_TRIGGER_RISING, align 4
  %104 = load i32, i32* @IRQF_TRIGGER_FALLING, align 4
  %105 = or i32 %103, %104
  %106 = load i32, i32* @IRQF_ONESHOT, align 4
  %107 = or i32 %105, %106
  %108 = load %struct.tps6521x_pwrbutton*, %struct.tps6521x_pwrbutton** %5, align 8
  %109 = getelementptr inbounds %struct.tps6521x_pwrbutton, %struct.tps6521x_pwrbutton* %108, i32 0, i32 0
  %110 = load %struct.TYPE_6__*, %struct.TYPE_6__** %109, align 8
  %111 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %110, i32 0, i32 0
  %112 = load i8*, i8** %111, align 8
  %113 = load %struct.tps6521x_pwrbutton*, %struct.tps6521x_pwrbutton** %5, align 8
  %114 = call i32 @devm_request_threaded_irq(%struct.device* %100, i32 %101, i32* null, i32 %102, i32 %107, i8* %112, %struct.tps6521x_pwrbutton* %113)
  store i32 %114, i32* %8, align 4
  %115 = load i32, i32* %8, align 4
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %117, label %123

117:                                              ; preds = %99
  %118 = load %struct.device*, %struct.device** %4, align 8
  %119 = load i32, i32* %9, align 4
  %120 = load i32, i32* %8, align 4
  %121 = call i32 (%struct.device*, i8*, i32, ...) @dev_err(%struct.device* %118, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0), i32 %119, i32 %120)
  %122 = load i32, i32* %8, align 4
  store i32 %122, i32* %2, align 4
  br label %134

123:                                              ; preds = %99
  %124 = load %struct.input_dev*, %struct.input_dev** %6, align 8
  %125 = call i32 @input_register_device(%struct.input_dev* %124)
  store i32 %125, i32* %8, align 4
  %126 = load i32, i32* %8, align 4
  %127 = icmp ne i32 %126, 0
  br i1 %127, label %128, label %133

128:                                              ; preds = %123
  %129 = load %struct.device*, %struct.device** %4, align 8
  %130 = load i32, i32* %8, align 4
  %131 = call i32 (%struct.device*, i8*, i32, ...) @dev_err(%struct.device* %129, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.2, i64 0, i64 0), i32 %130)
  %132 = load i32, i32* %8, align 4
  store i32 %132, i32* %2, align 4
  br label %134

133:                                              ; preds = %123
  store i32 0, i32* %2, align 4
  br label %134

134:                                              ; preds = %133, %128, %117, %96, %41, %28, %19
  %135 = load i32, i32* %2, align 4
  ret i32 %135
}

declare dso_local %struct.of_device_id* @of_match_node(i32, i32) #1

declare dso_local %struct.tps6521x_pwrbutton* @devm_kzalloc(%struct.device*, i32, i32) #1

declare dso_local %struct.input_dev* @devm_input_allocate_device(%struct.device*) #1

declare dso_local i32 @snprintf(i32, i32, i8*, i8*) #1

declare dso_local i32 @input_set_capability(%struct.input_dev*, i32, i32) #1

declare dso_local i32 @dev_get_regmap(i32, i32*) #1

declare dso_local i32 @device_init_wakeup(%struct.device*, i32) #1

declare dso_local i32 @platform_get_irq(%struct.platform_device*, i32) #1

declare dso_local i32 @devm_request_threaded_irq(%struct.device*, i32, i32*, i32, i32, i8*, %struct.tps6521x_pwrbutton*) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, i32, ...) #1

declare dso_local i32 @input_register_device(%struct.input_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
