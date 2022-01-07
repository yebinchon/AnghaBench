; ModuleID = '/home/carl/AnghaBench/linux/drivers/leds/extr_leds-bd2802.c_bd2802_configure.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/leds/extr_leds-bd2802.c_bd2802_configure.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bd2802_led = type { i32, %struct.bd2802_led_platform_data* }
%struct.bd2802_led_platform_data = type { i32 }

@LED1 = common dso_local global i32 0, align 4
@RED = common dso_local global i32 0, align 4
@BD2802_REG_HOURSETUP = common dso_local global i32 0, align 4
@LED2 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bd2802_led*)* @bd2802_configure to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bd2802_configure(%struct.bd2802_led* %0) #0 {
  %2 = alloca %struct.bd2802_led*, align 8
  %3 = alloca %struct.bd2802_led_platform_data*, align 8
  %4 = alloca i32, align 4
  store %struct.bd2802_led* %0, %struct.bd2802_led** %2, align 8
  %5 = load %struct.bd2802_led*, %struct.bd2802_led** %2, align 8
  %6 = getelementptr inbounds %struct.bd2802_led, %struct.bd2802_led* %5, i32 0, i32 1
  %7 = load %struct.bd2802_led_platform_data*, %struct.bd2802_led_platform_data** %6, align 8
  store %struct.bd2802_led_platform_data* %7, %struct.bd2802_led_platform_data** %3, align 8
  %8 = load i32, i32* @LED1, align 4
  %9 = load i32, i32* @RED, align 4
  %10 = load i32, i32* @BD2802_REG_HOURSETUP, align 4
  %11 = call i32 @bd2802_get_reg_addr(i32 %8, i32 %9, i32 %10)
  store i32 %11, i32* %4, align 4
  %12 = load %struct.bd2802_led*, %struct.bd2802_led** %2, align 8
  %13 = getelementptr inbounds %struct.bd2802_led, %struct.bd2802_led* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = load i32, i32* %4, align 4
  %16 = load %struct.bd2802_led_platform_data*, %struct.bd2802_led_platform_data** %3, align 8
  %17 = getelementptr inbounds %struct.bd2802_led_platform_data, %struct.bd2802_led_platform_data* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @bd2802_write_byte(i32 %14, i32 %15, i32 %18)
  %20 = load i32, i32* @LED2, align 4
  %21 = load i32, i32* @RED, align 4
  %22 = load i32, i32* @BD2802_REG_HOURSETUP, align 4
  %23 = call i32 @bd2802_get_reg_addr(i32 %20, i32 %21, i32 %22)
  store i32 %23, i32* %4, align 4
  %24 = load %struct.bd2802_led*, %struct.bd2802_led** %2, align 8
  %25 = getelementptr inbounds %struct.bd2802_led, %struct.bd2802_led* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = load i32, i32* %4, align 4
  %28 = load %struct.bd2802_led_platform_data*, %struct.bd2802_led_platform_data** %3, align 8
  %29 = getelementptr inbounds %struct.bd2802_led_platform_data, %struct.bd2802_led_platform_data* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @bd2802_write_byte(i32 %26, i32 %27, i32 %30)
  ret void
}

declare dso_local i32 @bd2802_get_reg_addr(i32, i32, i32) #1

declare dso_local i32 @bd2802_write_byte(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
