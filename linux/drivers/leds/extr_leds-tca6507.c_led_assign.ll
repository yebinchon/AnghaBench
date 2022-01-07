; ModuleID = '/home/carl/AnghaBench/linux/drivers/leds/extr_leds-tca6507.c_led_assign.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/leds/extr_leds-tca6507.c_led_assign.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tca6507_led = type { i64, i64, %struct.tca6507_chip* }
%struct.tca6507_chip = type { i32, i64, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tca6507_led*)* @led_assign to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @led_assign(%struct.tca6507_led* %0) #0 {
  %2 = alloca %struct.tca6507_led*, align 8
  %3 = alloca %struct.tca6507_chip*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  store %struct.tca6507_led* %0, %struct.tca6507_led** %2, align 8
  %6 = load %struct.tca6507_led*, %struct.tca6507_led** %2, align 8
  %7 = getelementptr inbounds %struct.tca6507_led, %struct.tca6507_led* %6, i32 0, i32 2
  %8 = load %struct.tca6507_chip*, %struct.tca6507_chip** %7, align 8
  store %struct.tca6507_chip* %8, %struct.tca6507_chip** %3, align 8
  %9 = load %struct.tca6507_chip*, %struct.tca6507_chip** %3, align 8
  %10 = getelementptr inbounds %struct.tca6507_chip, %struct.tca6507_chip* %9, i32 0, i32 2
  %11 = load i64, i64* %5, align 8
  %12 = call i32 @spin_lock_irqsave(i32* %10, i64 %11)
  %13 = load %struct.tca6507_led*, %struct.tca6507_led** %2, align 8
  %14 = call i32 @led_release(%struct.tca6507_led* %13)
  %15 = load %struct.tca6507_led*, %struct.tca6507_led** %2, align 8
  %16 = call i32 @led_prepare(%struct.tca6507_led* %15)
  store i32 %16, i32* %4, align 4
  %17 = load i32, i32* %4, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %26

19:                                               ; preds = %1
  %20 = load %struct.tca6507_led*, %struct.tca6507_led** %2, align 8
  %21 = getelementptr inbounds %struct.tca6507_led, %struct.tca6507_led* %20, i32 0, i32 1
  store i64 0, i64* %21, align 8
  %22 = load %struct.tca6507_led*, %struct.tca6507_led** %2, align 8
  %23 = getelementptr inbounds %struct.tca6507_led, %struct.tca6507_led* %22, i32 0, i32 0
  store i64 0, i64* %23, align 8
  %24 = load %struct.tca6507_led*, %struct.tca6507_led** %2, align 8
  %25 = call i32 @led_prepare(%struct.tca6507_led* %24)
  br label %26

26:                                               ; preds = %19, %1
  %27 = load %struct.tca6507_chip*, %struct.tca6507_chip** %3, align 8
  %28 = getelementptr inbounds %struct.tca6507_chip, %struct.tca6507_chip* %27, i32 0, i32 2
  %29 = load i64, i64* %5, align 8
  %30 = call i32 @spin_unlock_irqrestore(i32* %28, i64 %29)
  %31 = load %struct.tca6507_chip*, %struct.tca6507_chip** %3, align 8
  %32 = getelementptr inbounds %struct.tca6507_chip, %struct.tca6507_chip* %31, i32 0, i32 1
  %33 = load i64, i64* %32, align 8
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %39

35:                                               ; preds = %26
  %36 = load %struct.tca6507_chip*, %struct.tca6507_chip** %3, align 8
  %37 = getelementptr inbounds %struct.tca6507_chip, %struct.tca6507_chip* %36, i32 0, i32 0
  %38 = call i32 @schedule_work(i32* %37)
  br label %39

39:                                               ; preds = %35, %26
  %40 = load i32, i32* %4, align 4
  ret i32 %40
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @led_release(%struct.tca6507_led*) #1

declare dso_local i32 @led_prepare(%struct.tca6507_led*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @schedule_work(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
