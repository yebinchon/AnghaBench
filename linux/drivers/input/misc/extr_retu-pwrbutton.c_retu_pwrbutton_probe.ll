; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/misc/extr_retu-pwrbutton.c_retu_pwrbutton_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/misc/extr_retu-pwrbutton.c_retu_pwrbutton_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }
%struct.retu_dev = type { i32 }
%struct.input_dev = type { i8*, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_5__* }

@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [15 x i8] c"retu-pwrbutton\00", align 1
@EV_KEY = common dso_local global i32 0, align 4
@KEY_POWER = common dso_local global i32 0, align 4
@retu_pwrbutton_irq = common dso_local global i32 0, align 4
@IRQF_ONESHOT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @retu_pwrbutton_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @retu_pwrbutton_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.retu_dev*, align 8
  %5 = alloca %struct.input_dev*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %8 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %9 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = call %struct.retu_dev* @dev_get_drvdata(i32 %11)
  store %struct.retu_dev* %12, %struct.retu_dev** %4, align 8
  %13 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %14 = call i32 @platform_get_irq(%struct.platform_device* %13, i32 0)
  store i32 %14, i32* %6, align 4
  %15 = load i32, i32* %6, align 4
  %16 = icmp slt i32 %15, 0
  br i1 %16, label %17, label %19

17:                                               ; preds = %1
  %18 = load i32, i32* %6, align 4
  store i32 %18, i32* %2, align 4
  br label %62

19:                                               ; preds = %1
  %20 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %21 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %20, i32 0, i32 0
  %22 = call %struct.input_dev* @devm_input_allocate_device(%struct.TYPE_5__* %21)
  store %struct.input_dev* %22, %struct.input_dev** %5, align 8
  %23 = load %struct.input_dev*, %struct.input_dev** %5, align 8
  %24 = icmp ne %struct.input_dev* %23, null
  br i1 %24, label %28, label %25

25:                                               ; preds = %19
  %26 = load i32, i32* @ENOMEM, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %2, align 4
  br label %62

28:                                               ; preds = %19
  %29 = load %struct.input_dev*, %struct.input_dev** %5, align 8
  %30 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %29, i32 0, i32 0
  store i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i8** %30, align 8
  %31 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %32 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %31, i32 0, i32 0
  %33 = load %struct.input_dev*, %struct.input_dev** %5, align 8
  %34 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %33, i32 0, i32 1
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 0
  store %struct.TYPE_5__* %32, %struct.TYPE_5__** %35, align 8
  %36 = load %struct.input_dev*, %struct.input_dev** %5, align 8
  %37 = load i32, i32* @EV_KEY, align 4
  %38 = load i32, i32* @KEY_POWER, align 4
  %39 = call i32 @input_set_capability(%struct.input_dev* %36, i32 %37, i32 %38)
  %40 = load %struct.input_dev*, %struct.input_dev** %5, align 8
  %41 = load %struct.retu_dev*, %struct.retu_dev** %4, align 8
  %42 = call i32 @input_set_drvdata(%struct.input_dev* %40, %struct.retu_dev* %41)
  %43 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %44 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %43, i32 0, i32 0
  %45 = load i32, i32* %6, align 4
  %46 = load i32, i32* @retu_pwrbutton_irq, align 4
  %47 = load i32, i32* @IRQF_ONESHOT, align 4
  %48 = load %struct.input_dev*, %struct.input_dev** %5, align 8
  %49 = call i32 @devm_request_threaded_irq(%struct.TYPE_5__* %44, i32 %45, i32* null, i32 %46, i32 %47, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), %struct.input_dev* %48)
  store i32 %49, i32* %7, align 4
  %50 = load i32, i32* %7, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %54

52:                                               ; preds = %28
  %53 = load i32, i32* %7, align 4
  store i32 %53, i32* %2, align 4
  br label %62

54:                                               ; preds = %28
  %55 = load %struct.input_dev*, %struct.input_dev** %5, align 8
  %56 = call i32 @input_register_device(%struct.input_dev* %55)
  store i32 %56, i32* %7, align 4
  %57 = load i32, i32* %7, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %61

59:                                               ; preds = %54
  %60 = load i32, i32* %7, align 4
  store i32 %60, i32* %2, align 4
  br label %62

61:                                               ; preds = %54
  store i32 0, i32* %2, align 4
  br label %62

62:                                               ; preds = %61, %59, %52, %25, %17
  %63 = load i32, i32* %2, align 4
  ret i32 %63
}

declare dso_local %struct.retu_dev* @dev_get_drvdata(i32) #1

declare dso_local i32 @platform_get_irq(%struct.platform_device*, i32) #1

declare dso_local %struct.input_dev* @devm_input_allocate_device(%struct.TYPE_5__*) #1

declare dso_local i32 @input_set_capability(%struct.input_dev*, i32, i32) #1

declare dso_local i32 @input_set_drvdata(%struct.input_dev*, %struct.retu_dev*) #1

declare dso_local i32 @devm_request_threaded_irq(%struct.TYPE_5__*, i32, i32*, i32, i32, i8*, %struct.input_dev*) #1

declare dso_local i32 @input_register_device(%struct.input_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
