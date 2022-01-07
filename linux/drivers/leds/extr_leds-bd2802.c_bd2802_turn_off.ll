; ModuleID = '/home/carl/AnghaBench/linux/drivers/leds/extr_leds-bd2802.c_bd2802_turn_off.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/leds/extr_leds-bd2802.c_bd2802_turn_off.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bd2802_led = type { i32 }

@BD2802_REG_CURRENT1SETUP = common dso_local global i32 0, align 4
@BD2802_CURRENT_000 = common dso_local global i32 0, align 4
@BD2802_REG_CURRENT2SETUP = common dso_local global i32 0, align 4
@BD2802_OFF = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bd2802_led*, i32, i32)* @bd2802_turn_off to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bd2802_turn_off(%struct.bd2802_led* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.bd2802_led*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.bd2802_led* %0, %struct.bd2802_led** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %8 = load %struct.bd2802_led*, %struct.bd2802_led** %4, align 8
  %9 = load i32, i32* %5, align 4
  %10 = load i32, i32* %6, align 4
  %11 = call i64 @bd2802_is_rgb_off(%struct.bd2802_led* %8, i32 %9, i32 %10)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %14

13:                                               ; preds = %3
  br label %40

14:                                               ; preds = %3
  %15 = load i32, i32* %5, align 4
  %16 = load i32, i32* %6, align 4
  %17 = load i32, i32* @BD2802_REG_CURRENT1SETUP, align 4
  %18 = call i32 @bd2802_get_reg_addr(i32 %15, i32 %16, i32 %17)
  store i32 %18, i32* %7, align 4
  %19 = load %struct.bd2802_led*, %struct.bd2802_led** %4, align 8
  %20 = getelementptr inbounds %struct.bd2802_led, %struct.bd2802_led* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = load i32, i32* %7, align 4
  %23 = load i32, i32* @BD2802_CURRENT_000, align 4
  %24 = call i32 @bd2802_write_byte(i32 %21, i32 %22, i32 %23)
  %25 = load i32, i32* %5, align 4
  %26 = load i32, i32* %6, align 4
  %27 = load i32, i32* @BD2802_REG_CURRENT2SETUP, align 4
  %28 = call i32 @bd2802_get_reg_addr(i32 %25, i32 %26, i32 %27)
  store i32 %28, i32* %7, align 4
  %29 = load %struct.bd2802_led*, %struct.bd2802_led** %4, align 8
  %30 = getelementptr inbounds %struct.bd2802_led, %struct.bd2802_led* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = load i32, i32* %7, align 4
  %33 = load i32, i32* @BD2802_CURRENT_000, align 4
  %34 = call i32 @bd2802_write_byte(i32 %31, i32 %32, i32 %33)
  %35 = load %struct.bd2802_led*, %struct.bd2802_led** %4, align 8
  %36 = load i32, i32* %5, align 4
  %37 = load i32, i32* %6, align 4
  %38 = load i32, i32* @BD2802_OFF, align 4
  %39 = call i32 @bd2802_update_state(%struct.bd2802_led* %35, i32 %36, i32 %37, i32 %38)
  br label %40

40:                                               ; preds = %14, %13
  ret void
}

declare dso_local i64 @bd2802_is_rgb_off(%struct.bd2802_led*, i32, i32) #1

declare dso_local i32 @bd2802_get_reg_addr(i32, i32, i32) #1

declare dso_local i32 @bd2802_write_byte(i32, i32, i32) #1

declare dso_local i32 @bd2802_update_state(%struct.bd2802_led*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
