; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/misc/extr_hisi_powerkey.c_hi65xx_restart_toggle_isr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/misc/extr_hisi_powerkey.c_hi65xx_restart_toggle_isr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.input_dev = type { %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32 }

@KEY_RESTART = common dso_local global i32 0, align 4
@MAX_HELD_TIME = common dso_local global i32 0, align 4
@IRQ_HANDLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @hi65xx_restart_toggle_isr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hi65xx_restart_toggle_isr(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.input_dev*, align 8
  %6 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i8* %1, i8** %4, align 8
  %7 = load i8*, i8** %4, align 8
  %8 = bitcast i8* %7 to %struct.input_dev*
  store %struct.input_dev* %8, %struct.input_dev** %5, align 8
  %9 = load i32, i32* @KEY_RESTART, align 4
  %10 = load %struct.input_dev*, %struct.input_dev** %5, align 8
  %11 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 4
  %13 = call i32 @test_bit(i32 %9, i32 %12)
  store i32 %13, i32* %6, align 4
  %14 = load %struct.input_dev*, %struct.input_dev** %5, align 8
  %15 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = load i32, i32* @MAX_HELD_TIME, align 4
  %19 = call i32 @pm_wakeup_event(i32 %17, i32 %18)
  %20 = load %struct.input_dev*, %struct.input_dev** %5, align 8
  %21 = load i32, i32* @KEY_RESTART, align 4
  %22 = load i32, i32* %6, align 4
  %23 = icmp ne i32 %22, 0
  %24 = xor i1 %23, true
  %25 = zext i1 %24 to i32
  %26 = call i32 @input_report_key(%struct.input_dev* %20, i32 %21, i32 %25)
  %27 = load %struct.input_dev*, %struct.input_dev** %5, align 8
  %28 = call i32 @input_sync(%struct.input_dev* %27)
  %29 = load i32, i32* @IRQ_HANDLED, align 4
  ret i32 %29
}

declare dso_local i32 @test_bit(i32, i32) #1

declare dso_local i32 @pm_wakeup_event(i32, i32) #1

declare dso_local i32 @input_report_key(%struct.input_dev*, i32, i32) #1

declare dso_local i32 @input_sync(%struct.input_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
