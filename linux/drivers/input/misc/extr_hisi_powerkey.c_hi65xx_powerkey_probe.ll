; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/misc/extr_hisi_powerkey.c_hi65xx_powerkey_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/misc/extr_hisi_powerkey.c_hi65xx_powerkey_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32 }
%struct.platform_device = type { %struct.device }
%struct.device = type { i32 }
%struct.input_dev = type { i8*, i8* }

@.str = private unnamed_addr constant [33 x i8] c"failed to allocate input device\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [15 x i8] c"hisi_on/input0\00", align 1
@.str.2 = private unnamed_addr constant [22 x i8] c"HISI 65xx PowerOn Key\00", align 1
@EV_KEY = common dso_local global i32 0, align 4
@KEY_POWER = common dso_local global i32 0, align 4
@KEY_RESTART = common dso_local global i32 0, align 4
@hi65xx_irq_info = common dso_local global %struct.TYPE_3__* null, align 8
@IRQF_ONESHOT = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [29 x i8] c"couldn't request irq %s: %d\0A\00", align 1
@.str.4 = private unnamed_addr constant [37 x i8] c"failed to register input device: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @hi65xx_powerkey_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hi65xx_powerkey_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.input_dev*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %9 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %10 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %9, i32 0, i32 0
  store %struct.device* %10, %struct.device** %4, align 8
  %11 = load %struct.device*, %struct.device** %4, align 8
  %12 = call %struct.input_dev* @devm_input_allocate_device(%struct.device* %11)
  store %struct.input_dev* %12, %struct.input_dev** %5, align 8
  %13 = load %struct.input_dev*, %struct.input_dev** %5, align 8
  %14 = icmp ne %struct.input_dev* %13, null
  br i1 %14, label %20, label %15

15:                                               ; preds = %1
  %16 = load %struct.device*, %struct.device** %4, align 8
  %17 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %16, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0))
  %18 = load i32, i32* @ENOMEM, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %2, align 4
  br label %99

20:                                               ; preds = %1
  %21 = load %struct.input_dev*, %struct.input_dev** %5, align 8
  %22 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %21, i32 0, i32 0
  store i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0), i8** %22, align 8
  %23 = load %struct.input_dev*, %struct.input_dev** %5, align 8
  %24 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %23, i32 0, i32 1
  store i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i64 0, i64 0), i8** %24, align 8
  %25 = load %struct.input_dev*, %struct.input_dev** %5, align 8
  %26 = load i32, i32* @EV_KEY, align 4
  %27 = load i32, i32* @KEY_POWER, align 4
  %28 = call i32 @input_set_capability(%struct.input_dev* %25, i32 %26, i32 %27)
  %29 = load %struct.input_dev*, %struct.input_dev** %5, align 8
  %30 = load i32, i32* @EV_KEY, align 4
  %31 = load i32, i32* @KEY_RESTART, align 4
  %32 = call i32 @input_set_capability(%struct.input_dev* %29, i32 %30, i32 %31)
  store i32 0, i32* %7, align 4
  br label %33

33:                                               ; preds = %83, %20
  %34 = load i32, i32* %7, align 4
  %35 = load %struct.TYPE_3__*, %struct.TYPE_3__** @hi65xx_irq_info, align 8
  %36 = call i32 @ARRAY_SIZE(%struct.TYPE_3__* %35)
  %37 = icmp slt i32 %34, %36
  br i1 %37, label %38, label %86

38:                                               ; preds = %33
  %39 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %40 = load %struct.TYPE_3__*, %struct.TYPE_3__** @hi65xx_irq_info, align 8
  %41 = load i32, i32* %7, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %40, i64 %42
  %44 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = call i32 @platform_get_irq_byname(%struct.platform_device* %39, i32 %45)
  store i32 %46, i32* %6, align 4
  %47 = load i32, i32* %6, align 4
  %48 = icmp slt i32 %47, 0
  br i1 %48, label %49, label %51

49:                                               ; preds = %38
  %50 = load i32, i32* %6, align 4
  store i32 %50, i32* %2, align 4
  br label %99

51:                                               ; preds = %38
  %52 = load %struct.device*, %struct.device** %4, align 8
  %53 = load i32, i32* %6, align 4
  %54 = load %struct.TYPE_3__*, %struct.TYPE_3__** @hi65xx_irq_info, align 8
  %55 = load i32, i32* %7, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %54, i64 %56
  %58 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 4
  %60 = load i32, i32* @IRQF_ONESHOT, align 4
  %61 = load %struct.TYPE_3__*, %struct.TYPE_3__** @hi65xx_irq_info, align 8
  %62 = load i32, i32* %7, align 4
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %61, i64 %63
  %65 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = load %struct.input_dev*, %struct.input_dev** %5, align 8
  %68 = call i32 @devm_request_any_context_irq(%struct.device* %52, i32 %53, i32 %59, i32 %60, i32 %66, %struct.input_dev* %67)
  store i32 %68, i32* %8, align 4
  %69 = load i32, i32* %8, align 4
  %70 = icmp slt i32 %69, 0
  br i1 %70, label %71, label %82

71:                                               ; preds = %51
  %72 = load %struct.device*, %struct.device** %4, align 8
  %73 = load %struct.TYPE_3__*, %struct.TYPE_3__** @hi65xx_irq_info, align 8
  %74 = load i32, i32* %7, align 4
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %73, i64 %75
  %77 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  %79 = load i32, i32* %8, align 4
  %80 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %72, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.3, i64 0, i64 0), i32 %78, i32 %79)
  %81 = load i32, i32* %8, align 4
  store i32 %81, i32* %2, align 4
  br label %99

82:                                               ; preds = %51
  br label %83

83:                                               ; preds = %82
  %84 = load i32, i32* %7, align 4
  %85 = add nsw i32 %84, 1
  store i32 %85, i32* %7, align 4
  br label %33

86:                                               ; preds = %33
  %87 = load %struct.input_dev*, %struct.input_dev** %5, align 8
  %88 = call i32 @input_register_device(%struct.input_dev* %87)
  store i32 %88, i32* %8, align 4
  %89 = load i32, i32* %8, align 4
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %91, label %96

91:                                               ; preds = %86
  %92 = load %struct.device*, %struct.device** %4, align 8
  %93 = load i32, i32* %8, align 4
  %94 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %92, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.4, i64 0, i64 0), i32 %93)
  %95 = load i32, i32* %8, align 4
  store i32 %95, i32* %2, align 4
  br label %99

96:                                               ; preds = %86
  %97 = load %struct.device*, %struct.device** %4, align 8
  %98 = call i32 @device_init_wakeup(%struct.device* %97, i32 1)
  store i32 0, i32* %2, align 4
  br label %99

99:                                               ; preds = %96, %91, %71, %49, %15
  %100 = load i32, i32* %2, align 4
  ret i32 %100
}

declare dso_local %struct.input_dev* @devm_input_allocate_device(%struct.device*) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, ...) #1

declare dso_local i32 @input_set_capability(%struct.input_dev*, i32, i32) #1

declare dso_local i32 @ARRAY_SIZE(%struct.TYPE_3__*) #1

declare dso_local i32 @platform_get_irq_byname(%struct.platform_device*, i32) #1

declare dso_local i32 @devm_request_any_context_irq(%struct.device*, i32, i32, i32, i32, %struct.input_dev*) #1

declare dso_local i32 @input_register_device(%struct.input_dev*) #1

declare dso_local i32 @device_init_wakeup(%struct.device*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
