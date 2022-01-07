; ModuleID = '/home/carl/AnghaBench/linux/drivers/leds/extr_leds-lp8501.c_lp8501_remove.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/leds/extr_leds-lp8501.c_lp8501_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_client = type { i32 }
%struct.lp55xx_led = type { %struct.lp55xx_chip* }
%struct.lp55xx_chip = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_client*)* @lp8501_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lp8501_remove(%struct.i2c_client* %0) #0 {
  %2 = alloca %struct.i2c_client*, align 8
  %3 = alloca %struct.lp55xx_led*, align 8
  %4 = alloca %struct.lp55xx_chip*, align 8
  store %struct.i2c_client* %0, %struct.i2c_client** %2, align 8
  %5 = load %struct.i2c_client*, %struct.i2c_client** %2, align 8
  %6 = call %struct.lp55xx_led* @i2c_get_clientdata(%struct.i2c_client* %5)
  store %struct.lp55xx_led* %6, %struct.lp55xx_led** %3, align 8
  %7 = load %struct.lp55xx_led*, %struct.lp55xx_led** %3, align 8
  %8 = getelementptr inbounds %struct.lp55xx_led, %struct.lp55xx_led* %7, i32 0, i32 0
  %9 = load %struct.lp55xx_chip*, %struct.lp55xx_chip** %8, align 8
  store %struct.lp55xx_chip* %9, %struct.lp55xx_chip** %4, align 8
  %10 = load %struct.lp55xx_chip*, %struct.lp55xx_chip** %4, align 8
  %11 = call i32 @lp8501_stop_engine(%struct.lp55xx_chip* %10)
  %12 = load %struct.lp55xx_chip*, %struct.lp55xx_chip** %4, align 8
  %13 = call i32 @lp55xx_unregister_sysfs(%struct.lp55xx_chip* %12)
  %14 = load %struct.lp55xx_led*, %struct.lp55xx_led** %3, align 8
  %15 = load %struct.lp55xx_chip*, %struct.lp55xx_chip** %4, align 8
  %16 = call i32 @lp55xx_unregister_leds(%struct.lp55xx_led* %14, %struct.lp55xx_chip* %15)
  %17 = load %struct.lp55xx_chip*, %struct.lp55xx_chip** %4, align 8
  %18 = call i32 @lp55xx_deinit_device(%struct.lp55xx_chip* %17)
  ret i32 0
}

declare dso_local %struct.lp55xx_led* @i2c_get_clientdata(%struct.i2c_client*) #1

declare dso_local i32 @lp8501_stop_engine(%struct.lp55xx_chip*) #1

declare dso_local i32 @lp55xx_unregister_sysfs(%struct.lp55xx_chip*) #1

declare dso_local i32 @lp55xx_unregister_leds(%struct.lp55xx_led*, %struct.lp55xx_chip*) #1

declare dso_local i32 @lp55xx_deinit_device(%struct.lp55xx_chip*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
