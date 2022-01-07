; ModuleID = '/home/carl/AnghaBench/linux/drivers/leds/extr_leds-sunfire.c___clockboard_set.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/leds/extr_leds-sunfire.c___clockboard_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.led_classdev = type { i32 }
%struct.sunfire_led = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.led_classdev*, i32, i32)* @__clockboard_set to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @__clockboard_set(%struct.led_classdev* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.led_classdev*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.sunfire_led*, align 8
  %8 = alloca i32, align 4
  store %struct.led_classdev* %0, %struct.led_classdev** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %9 = load %struct.led_classdev*, %struct.led_classdev** %4, align 8
  %10 = call %struct.sunfire_led* @to_sunfire_led(%struct.led_classdev* %9)
  store %struct.sunfire_led* %10, %struct.sunfire_led** %7, align 8
  %11 = load %struct.sunfire_led*, %struct.sunfire_led** %7, align 8
  %12 = getelementptr inbounds %struct.sunfire_led, %struct.sunfire_led* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = call i32 @upa_readb(i32 %13)
  store i32 %14, i32* %8, align 4
  %15 = load i32, i32* %6, align 4
  switch i32 %15, label %29 [
    i32 128, label %16
  ]

16:                                               ; preds = %3
  %17 = load i32, i32* %5, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %24

19:                                               ; preds = %16
  %20 = load i32, i32* %6, align 4
  %21 = xor i32 %20, -1
  %22 = load i32, i32* %8, align 4
  %23 = and i32 %22, %21
  store i32 %23, i32* %8, align 4
  br label %28

24:                                               ; preds = %16
  %25 = load i32, i32* %6, align 4
  %26 = load i32, i32* %8, align 4
  %27 = or i32 %26, %25
  store i32 %27, i32* %8, align 4
  br label %28

28:                                               ; preds = %24, %19
  br label %42

29:                                               ; preds = %3
  %30 = load i32, i32* %5, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %36

32:                                               ; preds = %29
  %33 = load i32, i32* %6, align 4
  %34 = load i32, i32* %8, align 4
  %35 = or i32 %34, %33
  store i32 %35, i32* %8, align 4
  br label %41

36:                                               ; preds = %29
  %37 = load i32, i32* %6, align 4
  %38 = xor i32 %37, -1
  %39 = load i32, i32* %8, align 4
  %40 = and i32 %39, %38
  store i32 %40, i32* %8, align 4
  br label %41

41:                                               ; preds = %36, %32
  br label %42

42:                                               ; preds = %41, %28
  %43 = load i32, i32* %8, align 4
  %44 = load %struct.sunfire_led*, %struct.sunfire_led** %7, align 8
  %45 = getelementptr inbounds %struct.sunfire_led, %struct.sunfire_led* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = call i32 @upa_writeb(i32 %43, i32 %46)
  ret void
}

declare dso_local %struct.sunfire_led* @to_sunfire_led(%struct.led_classdev*) #1

declare dso_local i32 @upa_readb(i32) #1

declare dso_local i32 @upa_writeb(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
