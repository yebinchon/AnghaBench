; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/misc/extr_e3x0-button.c_e3x0_button_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/misc/extr_e3x0-button.c_e3x0_button_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { i32 }
%struct.input_dev = type { i8*, i8*, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32* }

@.str = private unnamed_addr constant [6 x i8] c"press\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"release\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [42 x i8] c"NI Ettus Research USRP E3x0 Button Driver\00", align 1
@.str.3 = private unnamed_addr constant [19 x i8] c"e3x0_button/input0\00", align 1
@EV_KEY = common dso_local global i32 0, align 4
@KEY_POWER = common dso_local global i32 0, align 4
@e3x0_button_press_handler = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [12 x i8] c"e3x0-button\00", align 1
@.str.5 = private unnamed_addr constant [38 x i8] c"Failed to request 'press' IRQ#%d: %d\0A\00", align 1
@e3x0_button_release_handler = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [40 x i8] c"Failed to request 'release' IRQ#%d: %d\0A\00", align 1
@.str.7 = private unnamed_addr constant [33 x i8] c"Can't register input device: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @e3x0_button_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @e3x0_button_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.input_dev*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %8 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %9 = call i32 @platform_get_irq_byname(%struct.platform_device* %8, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  store i32 %9, i32* %5, align 4
  %10 = load i32, i32* %5, align 4
  %11 = icmp slt i32 %10, 0
  br i1 %11, label %12, label %14

12:                                               ; preds = %1
  %13 = load i32, i32* %5, align 4
  store i32 %13, i32* %2, align 4
  br label %90

14:                                               ; preds = %1
  %15 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %16 = call i32 @platform_get_irq_byname(%struct.platform_device* %15, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0))
  store i32 %16, i32* %6, align 4
  %17 = load i32, i32* %6, align 4
  %18 = icmp slt i32 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %14
  %20 = load i32, i32* %6, align 4
  store i32 %20, i32* %2, align 4
  br label %90

21:                                               ; preds = %14
  %22 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %23 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %22, i32 0, i32 0
  %24 = call %struct.input_dev* @devm_input_allocate_device(i32* %23)
  store %struct.input_dev* %24, %struct.input_dev** %4, align 8
  %25 = load %struct.input_dev*, %struct.input_dev** %4, align 8
  %26 = icmp ne %struct.input_dev* %25, null
  br i1 %26, label %30, label %27

27:                                               ; preds = %21
  %28 = load i32, i32* @ENOMEM, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %2, align 4
  br label %90

30:                                               ; preds = %21
  %31 = load %struct.input_dev*, %struct.input_dev** %4, align 8
  %32 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %31, i32 0, i32 0
  store i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.2, i64 0, i64 0), i8** %32, align 8
  %33 = load %struct.input_dev*, %struct.input_dev** %4, align 8
  %34 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %33, i32 0, i32 1
  store i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.3, i64 0, i64 0), i8** %34, align 8
  %35 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %36 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %35, i32 0, i32 0
  %37 = load %struct.input_dev*, %struct.input_dev** %4, align 8
  %38 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %37, i32 0, i32 2
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 0
  store i32* %36, i32** %39, align 8
  %40 = load %struct.input_dev*, %struct.input_dev** %4, align 8
  %41 = load i32, i32* @EV_KEY, align 4
  %42 = load i32, i32* @KEY_POWER, align 4
  %43 = call i32 @input_set_capability(%struct.input_dev* %40, i32 %41, i32 %42)
  %44 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %45 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %44, i32 0, i32 0
  %46 = load i32, i32* %5, align 4
  %47 = load i32, i32* @e3x0_button_press_handler, align 4
  %48 = load %struct.input_dev*, %struct.input_dev** %4, align 8
  %49 = call i32 @devm_request_irq(i32* %45, i32 %46, i32 %47, i32 0, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.4, i64 0, i64 0), %struct.input_dev* %48)
  store i32 %49, i32* %7, align 4
  %50 = load i32, i32* %7, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %59

52:                                               ; preds = %30
  %53 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %54 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %53, i32 0, i32 0
  %55 = load i32, i32* %5, align 4
  %56 = load i32, i32* %7, align 4
  %57 = call i32 (i32*, i8*, i32, ...) @dev_err(i32* %54, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.5, i64 0, i64 0), i32 %55, i32 %56)
  %58 = load i32, i32* %7, align 4
  store i32 %58, i32* %2, align 4
  br label %90

59:                                               ; preds = %30
  %60 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %61 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %60, i32 0, i32 0
  %62 = load i32, i32* %6, align 4
  %63 = load i32, i32* @e3x0_button_release_handler, align 4
  %64 = load %struct.input_dev*, %struct.input_dev** %4, align 8
  %65 = call i32 @devm_request_irq(i32* %61, i32 %62, i32 %63, i32 0, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.4, i64 0, i64 0), %struct.input_dev* %64)
  store i32 %65, i32* %7, align 4
  %66 = load i32, i32* %7, align 4
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %75

68:                                               ; preds = %59
  %69 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %70 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %69, i32 0, i32 0
  %71 = load i32, i32* %6, align 4
  %72 = load i32, i32* %7, align 4
  %73 = call i32 (i32*, i8*, i32, ...) @dev_err(i32* %70, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.6, i64 0, i64 0), i32 %71, i32 %72)
  %74 = load i32, i32* %7, align 4
  store i32 %74, i32* %2, align 4
  br label %90

75:                                               ; preds = %59
  %76 = load %struct.input_dev*, %struct.input_dev** %4, align 8
  %77 = call i32 @input_register_device(%struct.input_dev* %76)
  store i32 %77, i32* %7, align 4
  %78 = load i32, i32* %7, align 4
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %86

80:                                               ; preds = %75
  %81 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %82 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %81, i32 0, i32 0
  %83 = load i32, i32* %7, align 4
  %84 = call i32 (i32*, i8*, i32, ...) @dev_err(i32* %82, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.7, i64 0, i64 0), i32 %83)
  %85 = load i32, i32* %7, align 4
  store i32 %85, i32* %2, align 4
  br label %90

86:                                               ; preds = %75
  %87 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %88 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %87, i32 0, i32 0
  %89 = call i32 @device_init_wakeup(i32* %88, i32 1)
  store i32 0, i32* %2, align 4
  br label %90

90:                                               ; preds = %86, %80, %68, %52, %27, %19, %12
  %91 = load i32, i32* %2, align 4
  ret i32 %91
}

declare dso_local i32 @platform_get_irq_byname(%struct.platform_device*, i8*) #1

declare dso_local %struct.input_dev* @devm_input_allocate_device(i32*) #1

declare dso_local i32 @input_set_capability(%struct.input_dev*, i32, i32) #1

declare dso_local i32 @devm_request_irq(i32*, i32, i32, i32, i8*, %struct.input_dev*) #1

declare dso_local i32 @dev_err(i32*, i8*, i32, ...) #1

declare dso_local i32 @input_register_device(%struct.input_dev*) #1

declare dso_local i32 @device_init_wakeup(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
