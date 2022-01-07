; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/misc/extr_cpcap-pwrbutton.c_powerbutton_irq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/misc/extr_cpcap-pwrbutton.c_powerbutton_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cpcap_power_button = type { i32, i32, i32 }

@.str = private unnamed_addr constant [20 x i8] c"irq read failed: %d\00", align 1
@IRQ_HANDLED = common dso_local global i32 0, align 4
@KEY_POWER = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @powerbutton_irq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @powerbutton_irq(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca %struct.cpcap_power_button*, align 8
  %7 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i8* %1, i8** %5, align 8
  %8 = load i8*, i8** %5, align 8
  %9 = bitcast i8* %8 to %struct.cpcap_power_button*
  store %struct.cpcap_power_button* %9, %struct.cpcap_power_button** %6, align 8
  %10 = load %struct.cpcap_power_button*, %struct.cpcap_power_button** %6, align 8
  %11 = getelementptr inbounds %struct.cpcap_power_button, %struct.cpcap_power_button* %10, i32 0, i32 2
  %12 = load i32, i32* %11, align 4
  %13 = load i32, i32* %4, align 4
  %14 = call i32 @cpcap_sense_virq(i32 %12, i32 %13)
  store i32 %14, i32* %7, align 4
  %15 = load i32, i32* %7, align 4
  %16 = icmp slt i32 %15, 0
  br i1 %16, label %17, label %24

17:                                               ; preds = %2
  %18 = load %struct.cpcap_power_button*, %struct.cpcap_power_button** %6, align 8
  %19 = getelementptr inbounds %struct.cpcap_power_button, %struct.cpcap_power_button* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = load i32, i32* %7, align 4
  %22 = call i32 @dev_err(i32 %20, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 %21)
  %23 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %23, i32* %3, align 4
  br label %40

24:                                               ; preds = %2
  %25 = load %struct.cpcap_power_button*, %struct.cpcap_power_button** %6, align 8
  %26 = getelementptr inbounds %struct.cpcap_power_button, %struct.cpcap_power_button* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @pm_wakeup_event(i32 %27, i32 0)
  %29 = load %struct.cpcap_power_button*, %struct.cpcap_power_button** %6, align 8
  %30 = getelementptr inbounds %struct.cpcap_power_button, %struct.cpcap_power_button* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = load i32, i32* @KEY_POWER, align 4
  %33 = load i32, i32* %7, align 4
  %34 = call i32 @input_report_key(i32 %31, i32 %32, i32 %33)
  %35 = load %struct.cpcap_power_button*, %struct.cpcap_power_button** %6, align 8
  %36 = getelementptr inbounds %struct.cpcap_power_button, %struct.cpcap_power_button* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @input_sync(i32 %37)
  %39 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %39, i32* %3, align 4
  br label %40

40:                                               ; preds = %24, %17
  %41 = load i32, i32* %3, align 4
  ret i32 %41
}

declare dso_local i32 @cpcap_sense_virq(i32, i32) #1

declare dso_local i32 @dev_err(i32, i8*, i32) #1

declare dso_local i32 @pm_wakeup_event(i32, i32) #1

declare dso_local i32 @input_report_key(i32, i32, i32) #1

declare dso_local i32 @input_sync(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
