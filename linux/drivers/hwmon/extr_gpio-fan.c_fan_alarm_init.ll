; ModuleID = '/home/carl/AnghaBench/linux/drivers/hwmon/extr_gpio-fan.c_fan_alarm_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hwmon/extr_gpio-fan.c_fan_alarm_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gpio_fan_data = type { i32, i32, %struct.device* }
%struct.device = type { i32 }

@fan_alarm_notify = common dso_local global i32 0, align 4
@IRQ_TYPE_EDGE_BOTH = common dso_local global i32 0, align 4
@fan_alarm_irq_handler = common dso_local global i32 0, align 4
@IRQF_SHARED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [15 x i8] c"GPIO fan alarm\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.gpio_fan_data*)* @fan_alarm_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fan_alarm_init(%struct.gpio_fan_data* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.gpio_fan_data*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.device*, align 8
  store %struct.gpio_fan_data* %0, %struct.gpio_fan_data** %3, align 8
  %6 = load %struct.gpio_fan_data*, %struct.gpio_fan_data** %3, align 8
  %7 = getelementptr inbounds %struct.gpio_fan_data, %struct.gpio_fan_data* %6, i32 0, i32 2
  %8 = load %struct.device*, %struct.device** %7, align 8
  store %struct.device* %8, %struct.device** %5, align 8
  %9 = load %struct.gpio_fan_data*, %struct.gpio_fan_data** %3, align 8
  %10 = getelementptr inbounds %struct.gpio_fan_data, %struct.gpio_fan_data* %9, i32 0, i32 1
  %11 = load i32, i32* %10, align 4
  %12 = call i32 @gpiod_to_irq(i32 %11)
  store i32 %12, i32* %4, align 4
  %13 = load i32, i32* %4, align 4
  %14 = icmp sle i32 %13, 0
  br i1 %14, label %15, label %16

15:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %30

16:                                               ; preds = %1
  %17 = load %struct.gpio_fan_data*, %struct.gpio_fan_data** %3, align 8
  %18 = getelementptr inbounds %struct.gpio_fan_data, %struct.gpio_fan_data* %17, i32 0, i32 0
  %19 = load i32, i32* @fan_alarm_notify, align 4
  %20 = call i32 @INIT_WORK(i32* %18, i32 %19)
  %21 = load i32, i32* %4, align 4
  %22 = load i32, i32* @IRQ_TYPE_EDGE_BOTH, align 4
  %23 = call i32 @irq_set_irq_type(i32 %21, i32 %22)
  %24 = load %struct.device*, %struct.device** %5, align 8
  %25 = load i32, i32* %4, align 4
  %26 = load i32, i32* @fan_alarm_irq_handler, align 4
  %27 = load i32, i32* @IRQF_SHARED, align 4
  %28 = load %struct.gpio_fan_data*, %struct.gpio_fan_data** %3, align 8
  %29 = call i32 @devm_request_irq(%struct.device* %24, i32 %25, i32 %26, i32 %27, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), %struct.gpio_fan_data* %28)
  store i32 %29, i32* %2, align 4
  br label %30

30:                                               ; preds = %16, %15
  %31 = load i32, i32* %2, align 4
  ret i32 %31
}

declare dso_local i32 @gpiod_to_irq(i32) #1

declare dso_local i32 @INIT_WORK(i32*, i32) #1

declare dso_local i32 @irq_set_irq_type(i32, i32) #1

declare dso_local i32 @devm_request_irq(%struct.device*, i32, i32, i32, i8*, %struct.gpio_fan_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
