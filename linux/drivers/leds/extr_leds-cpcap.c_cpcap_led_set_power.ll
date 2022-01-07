; ModuleID = '/home/carl/AnghaBench/linux/drivers/leds/extr_leds-cpcap.c_cpcap_led_set_power.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/leds/extr_leds-cpcap.c_cpcap_led_set_power.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cpcap_led = type { i32, i32, i32 }

@.str = private unnamed_addr constant [22 x i8] c"regulator failure: %d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cpcap_led*, i32)* @cpcap_led_set_power to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cpcap_led_set_power(%struct.cpcap_led* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.cpcap_led*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.cpcap_led* %0, %struct.cpcap_led** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load i32, i32* %5, align 4
  %8 = load %struct.cpcap_led*, %struct.cpcap_led** %4, align 8
  %9 = getelementptr inbounds %struct.cpcap_led, %struct.cpcap_led* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = icmp eq i32 %7, %10
  br i1 %11, label %12, label %13

12:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %40

13:                                               ; preds = %2
  %14 = load i32, i32* %5, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %21

16:                                               ; preds = %13
  %17 = load %struct.cpcap_led*, %struct.cpcap_led** %4, align 8
  %18 = getelementptr inbounds %struct.cpcap_led, %struct.cpcap_led* %17, i32 0, i32 2
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @regulator_enable(i32 %19)
  store i32 %20, i32* %6, align 4
  br label %26

21:                                               ; preds = %13
  %22 = load %struct.cpcap_led*, %struct.cpcap_led** %4, align 8
  %23 = getelementptr inbounds %struct.cpcap_led, %struct.cpcap_led* %22, i32 0, i32 2
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @regulator_disable(i32 %24)
  store i32 %25, i32* %6, align 4
  br label %26

26:                                               ; preds = %21, %16
  %27 = load i32, i32* %6, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %36

29:                                               ; preds = %26
  %30 = load %struct.cpcap_led*, %struct.cpcap_led** %4, align 8
  %31 = getelementptr inbounds %struct.cpcap_led, %struct.cpcap_led* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = load i32, i32* %6, align 4
  %34 = call i32 @dev_err(i32 %32, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 %33)
  %35 = load i32, i32* %6, align 4
  store i32 %35, i32* %3, align 4
  br label %40

36:                                               ; preds = %26
  %37 = load i32, i32* %5, align 4
  %38 = load %struct.cpcap_led*, %struct.cpcap_led** %4, align 8
  %39 = getelementptr inbounds %struct.cpcap_led, %struct.cpcap_led* %38, i32 0, i32 0
  store i32 %37, i32* %39, align 4
  store i32 0, i32* %3, align 4
  br label %40

40:                                               ; preds = %36, %29, %12
  %41 = load i32, i32* %3, align 4
  ret i32 %41
}

declare dso_local i32 @regulator_enable(i32) #1

declare dso_local i32 @regulator_disable(i32) #1

declare dso_local i32 @dev_err(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
