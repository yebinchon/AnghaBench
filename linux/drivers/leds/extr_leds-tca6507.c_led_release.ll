; ModuleID = '/home/carl/AnghaBench/linux/drivers/leds/extr_leds-tca6507.c_led_release.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/leds/extr_leds-tca6507.c_led_release.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tca6507_led = type { i64, i64, %struct.tca6507_chip* }
%struct.tca6507_chip = type { %struct.bank* }
%struct.bank = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.tca6507_led*)* @led_release to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @led_release(%struct.tca6507_led* %0) #0 {
  %2 = alloca %struct.tca6507_led*, align 8
  %3 = alloca %struct.tca6507_chip*, align 8
  %4 = alloca %struct.bank*, align 8
  store %struct.tca6507_led* %0, %struct.tca6507_led** %2, align 8
  %5 = load %struct.tca6507_led*, %struct.tca6507_led** %2, align 8
  %6 = getelementptr inbounds %struct.tca6507_led, %struct.tca6507_led* %5, i32 0, i32 2
  %7 = load %struct.tca6507_chip*, %struct.tca6507_chip** %6, align 8
  store %struct.tca6507_chip* %7, %struct.tca6507_chip** %3, align 8
  %8 = load %struct.tca6507_led*, %struct.tca6507_led** %2, align 8
  %9 = getelementptr inbounds %struct.tca6507_led, %struct.tca6507_led* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = icmp sge i64 %10, 0
  br i1 %11, label %12, label %34

12:                                               ; preds = %1
  %13 = load %struct.tca6507_chip*, %struct.tca6507_chip** %3, align 8
  %14 = getelementptr inbounds %struct.tca6507_chip, %struct.tca6507_chip* %13, i32 0, i32 0
  %15 = load %struct.bank*, %struct.bank** %14, align 8
  %16 = load %struct.tca6507_led*, %struct.tca6507_led** %2, align 8
  %17 = getelementptr inbounds %struct.tca6507_led, %struct.tca6507_led* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = getelementptr inbounds %struct.bank, %struct.bank* %15, i64 %18
  store %struct.bank* %19, %struct.bank** %4, align 8
  %20 = load %struct.tca6507_led*, %struct.tca6507_led** %2, align 8
  %21 = getelementptr inbounds %struct.tca6507_led, %struct.tca6507_led* %20, i32 0, i32 1
  %22 = load i64, i64* %21, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %29

24:                                               ; preds = %12
  %25 = load %struct.bank*, %struct.bank** %4, align 8
  %26 = getelementptr inbounds %struct.bank, %struct.bank* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = add nsw i32 %27, -1
  store i32 %28, i32* %26, align 4
  br label %29

29:                                               ; preds = %24, %12
  %30 = load %struct.bank*, %struct.bank** %4, align 8
  %31 = getelementptr inbounds %struct.bank, %struct.bank* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = add nsw i32 %32, -1
  store i32 %33, i32* %31, align 4
  br label %34

34:                                               ; preds = %29, %1
  %35 = load %struct.tca6507_led*, %struct.tca6507_led** %2, align 8
  %36 = getelementptr inbounds %struct.tca6507_led, %struct.tca6507_led* %35, i32 0, i32 1
  store i64 0, i64* %36, align 8
  %37 = load %struct.tca6507_led*, %struct.tca6507_led** %2, align 8
  %38 = getelementptr inbounds %struct.tca6507_led, %struct.tca6507_led* %37, i32 0, i32 0
  store i64 -1, i64* %38, align 8
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
