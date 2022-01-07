; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/misc/extr_cpcap-pwrbutton.c_cpcap_power_button_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/misc/extr_cpcap-pwrbutton.c_cpcap_power_button_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.TYPE_12__ }
%struct.TYPE_12__ = type { i32 }
%struct.cpcap_power_button = type { %struct.TYPE_11__*, %struct.TYPE_12__*, i32 }
%struct.TYPE_11__ = type { i8*, i8*, %struct.TYPE_10__ }
%struct.TYPE_10__ = type { %struct.TYPE_12__* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [16 x i8] c"cpcap-pwrbutton\00", align 1
@.str.1 = private unnamed_addr constant [23 x i8] c"cpcap-pwrbutton/input0\00", align 1
@EV_KEY = common dso_local global i32 0, align 4
@KEY_POWER = common dso_local global i32 0, align 4
@powerbutton_irq = common dso_local global i32 0, align 4
@IRQF_ONESHOT = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [16 x i8] c"cpcap_pwrbutton\00", align 1
@.str.3 = private unnamed_addr constant [24 x i8] c"IRQ request failed: %d\0A\00", align 1
@.str.4 = private unnamed_addr constant [27 x i8] c"Input register failed: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @cpcap_power_button_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cpcap_power_button_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.cpcap_power_button*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %7 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %8 = call i32 @platform_get_irq(%struct.platform_device* %7, i32 0)
  store i32 %8, i32* %5, align 4
  %9 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %10 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %9, i32 0, i32 0
  %11 = load i32, i32* @GFP_KERNEL, align 4
  %12 = call %struct.cpcap_power_button* @devm_kmalloc(%struct.TYPE_12__* %10, i32 24, i32 %11)
  store %struct.cpcap_power_button* %12, %struct.cpcap_power_button** %4, align 8
  %13 = load %struct.cpcap_power_button*, %struct.cpcap_power_button** %4, align 8
  %14 = icmp ne %struct.cpcap_power_button* %13, null
  br i1 %14, label %18, label %15

15:                                               ; preds = %1
  %16 = load i32, i32* @ENOMEM, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %2, align 4
  br label %105

18:                                               ; preds = %1
  %19 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %20 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %19, i32 0, i32 0
  %21 = call %struct.TYPE_11__* @devm_input_allocate_device(%struct.TYPE_12__* %20)
  %22 = load %struct.cpcap_power_button*, %struct.cpcap_power_button** %4, align 8
  %23 = getelementptr inbounds %struct.cpcap_power_button, %struct.cpcap_power_button* %22, i32 0, i32 0
  store %struct.TYPE_11__* %21, %struct.TYPE_11__** %23, align 8
  %24 = load %struct.cpcap_power_button*, %struct.cpcap_power_button** %4, align 8
  %25 = getelementptr inbounds %struct.cpcap_power_button, %struct.cpcap_power_button* %24, i32 0, i32 0
  %26 = load %struct.TYPE_11__*, %struct.TYPE_11__** %25, align 8
  %27 = icmp ne %struct.TYPE_11__* %26, null
  br i1 %27, label %31, label %28

28:                                               ; preds = %18
  %29 = load i32, i32* @ENOMEM, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %2, align 4
  br label %105

31:                                               ; preds = %18
  %32 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %33 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @dev_get_regmap(i32 %35, i32* null)
  %37 = load %struct.cpcap_power_button*, %struct.cpcap_power_button** %4, align 8
  %38 = getelementptr inbounds %struct.cpcap_power_button, %struct.cpcap_power_button* %37, i32 0, i32 2
  store i32 %36, i32* %38, align 8
  %39 = load %struct.cpcap_power_button*, %struct.cpcap_power_button** %4, align 8
  %40 = getelementptr inbounds %struct.cpcap_power_button, %struct.cpcap_power_button* %39, i32 0, i32 2
  %41 = load i32, i32* %40, align 8
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %46, label %43

43:                                               ; preds = %31
  %44 = load i32, i32* @ENODEV, align 4
  %45 = sub nsw i32 0, %44
  store i32 %45, i32* %2, align 4
  br label %105

46:                                               ; preds = %31
  %47 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %48 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %47, i32 0, i32 0
  %49 = load %struct.cpcap_power_button*, %struct.cpcap_power_button** %4, align 8
  %50 = getelementptr inbounds %struct.cpcap_power_button, %struct.cpcap_power_button* %49, i32 0, i32 1
  store %struct.TYPE_12__* %48, %struct.TYPE_12__** %50, align 8
  %51 = load %struct.cpcap_power_button*, %struct.cpcap_power_button** %4, align 8
  %52 = getelementptr inbounds %struct.cpcap_power_button, %struct.cpcap_power_button* %51, i32 0, i32 0
  %53 = load %struct.TYPE_11__*, %struct.TYPE_11__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %53, i32 0, i32 0
  store i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i8** %54, align 8
  %55 = load %struct.cpcap_power_button*, %struct.cpcap_power_button** %4, align 8
  %56 = getelementptr inbounds %struct.cpcap_power_button, %struct.cpcap_power_button* %55, i32 0, i32 0
  %57 = load %struct.TYPE_11__*, %struct.TYPE_11__** %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %57, i32 0, i32 1
  store i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i8** %58, align 8
  %59 = load %struct.cpcap_power_button*, %struct.cpcap_power_button** %4, align 8
  %60 = getelementptr inbounds %struct.cpcap_power_button, %struct.cpcap_power_button* %59, i32 0, i32 1
  %61 = load %struct.TYPE_12__*, %struct.TYPE_12__** %60, align 8
  %62 = load %struct.cpcap_power_button*, %struct.cpcap_power_button** %4, align 8
  %63 = getelementptr inbounds %struct.cpcap_power_button, %struct.cpcap_power_button* %62, i32 0, i32 0
  %64 = load %struct.TYPE_11__*, %struct.TYPE_11__** %63, align 8
  %65 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %64, i32 0, i32 2
  %66 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %65, i32 0, i32 0
  store %struct.TYPE_12__* %61, %struct.TYPE_12__** %66, align 8
  %67 = load %struct.cpcap_power_button*, %struct.cpcap_power_button** %4, align 8
  %68 = getelementptr inbounds %struct.cpcap_power_button, %struct.cpcap_power_button* %67, i32 0, i32 0
  %69 = load %struct.TYPE_11__*, %struct.TYPE_11__** %68, align 8
  %70 = load i32, i32* @EV_KEY, align 4
  %71 = load i32, i32* @KEY_POWER, align 4
  %72 = call i32 @input_set_capability(%struct.TYPE_11__* %69, i32 %70, i32 %71)
  %73 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %74 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %73, i32 0, i32 0
  %75 = load i32, i32* %5, align 4
  %76 = load i32, i32* @powerbutton_irq, align 4
  %77 = load i32, i32* @IRQF_ONESHOT, align 4
  %78 = load %struct.cpcap_power_button*, %struct.cpcap_power_button** %4, align 8
  %79 = call i32 @devm_request_threaded_irq(%struct.TYPE_12__* %74, i32 %75, i32* null, i32 %76, i32 %77, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i64 0, i64 0), %struct.cpcap_power_button* %78)
  store i32 %79, i32* %6, align 4
  %80 = load i32, i32* %6, align 4
  %81 = icmp slt i32 %80, 0
  br i1 %81, label %82, label %88

82:                                               ; preds = %46
  %83 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %84 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %83, i32 0, i32 0
  %85 = load i32, i32* %6, align 4
  %86 = call i32 @dev_err(%struct.TYPE_12__* %84, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.3, i64 0, i64 0), i32 %85)
  %87 = load i32, i32* %6, align 4
  store i32 %87, i32* %2, align 4
  br label %105

88:                                               ; preds = %46
  %89 = load %struct.cpcap_power_button*, %struct.cpcap_power_button** %4, align 8
  %90 = getelementptr inbounds %struct.cpcap_power_button, %struct.cpcap_power_button* %89, i32 0, i32 0
  %91 = load %struct.TYPE_11__*, %struct.TYPE_11__** %90, align 8
  %92 = call i32 @input_register_device(%struct.TYPE_11__* %91)
  store i32 %92, i32* %6, align 4
  %93 = load i32, i32* %6, align 4
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %95, label %101

95:                                               ; preds = %88
  %96 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %97 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %96, i32 0, i32 0
  %98 = load i32, i32* %6, align 4
  %99 = call i32 @dev_err(%struct.TYPE_12__* %97, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.4, i64 0, i64 0), i32 %98)
  %100 = load i32, i32* %6, align 4
  store i32 %100, i32* %2, align 4
  br label %105

101:                                              ; preds = %88
  %102 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %103 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %102, i32 0, i32 0
  %104 = call i32 @device_init_wakeup(%struct.TYPE_12__* %103, i32 1)
  store i32 0, i32* %2, align 4
  br label %105

105:                                              ; preds = %101, %95, %82, %43, %28, %15
  %106 = load i32, i32* %2, align 4
  ret i32 %106
}

declare dso_local i32 @platform_get_irq(%struct.platform_device*, i32) #1

declare dso_local %struct.cpcap_power_button* @devm_kmalloc(%struct.TYPE_12__*, i32, i32) #1

declare dso_local %struct.TYPE_11__* @devm_input_allocate_device(%struct.TYPE_12__*) #1

declare dso_local i32 @dev_get_regmap(i32, i32*) #1

declare dso_local i32 @input_set_capability(%struct.TYPE_11__*, i32, i32) #1

declare dso_local i32 @devm_request_threaded_irq(%struct.TYPE_12__*, i32, i32*, i32, i32, i8*, %struct.cpcap_power_button*) #1

declare dso_local i32 @dev_err(%struct.TYPE_12__*, i8*, i32) #1

declare dso_local i32 @input_register_device(%struct.TYPE_11__*) #1

declare dso_local i32 @device_init_wakeup(%struct.TYPE_12__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
