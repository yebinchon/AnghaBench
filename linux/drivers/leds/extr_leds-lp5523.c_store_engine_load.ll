; ModuleID = '/home/carl/AnghaBench/linux/drivers/leds/extr_leds-lp5523.c_store_engine_load.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/leds/extr_leds-lp5523.c_store_engine_load.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.lp55xx_led = type { %struct.lp55xx_chip* }
%struct.lp55xx_chip = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.device_attribute*, i8*, i64, i32)* @store_engine_load to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @store_engine_load(%struct.device* %0, %struct.device_attribute* %1, i8* %2, i64 %3, i32 %4) #0 {
  %6 = alloca %struct.device*, align 8
  %7 = alloca %struct.device_attribute*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.lp55xx_led*, align 8
  %12 = alloca %struct.lp55xx_chip*, align 8
  %13 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %6, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %7, align 8
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  store i32 %4, i32* %10, align 4
  %14 = load %struct.device*, %struct.device** %6, align 8
  %15 = call i32 @to_i2c_client(%struct.device* %14)
  %16 = call %struct.lp55xx_led* @i2c_get_clientdata(i32 %15)
  store %struct.lp55xx_led* %16, %struct.lp55xx_led** %11, align 8
  %17 = load %struct.lp55xx_led*, %struct.lp55xx_led** %11, align 8
  %18 = getelementptr inbounds %struct.lp55xx_led, %struct.lp55xx_led* %17, i32 0, i32 0
  %19 = load %struct.lp55xx_chip*, %struct.lp55xx_chip** %18, align 8
  store %struct.lp55xx_chip* %19, %struct.lp55xx_chip** %12, align 8
  %20 = load %struct.lp55xx_chip*, %struct.lp55xx_chip** %12, align 8
  %21 = getelementptr inbounds %struct.lp55xx_chip, %struct.lp55xx_chip* %20, i32 0, i32 1
  %22 = call i32 @mutex_lock(i32* %21)
  %23 = load i32, i32* %10, align 4
  %24 = load %struct.lp55xx_chip*, %struct.lp55xx_chip** %12, align 8
  %25 = getelementptr inbounds %struct.lp55xx_chip, %struct.lp55xx_chip* %24, i32 0, i32 0
  store i32 %23, i32* %25, align 4
  %26 = load %struct.lp55xx_chip*, %struct.lp55xx_chip** %12, align 8
  %27 = call i32 @lp5523_load_engine_and_select_page(%struct.lp55xx_chip* %26)
  %28 = load %struct.lp55xx_chip*, %struct.lp55xx_chip** %12, align 8
  %29 = load i8*, i8** %8, align 8
  %30 = load i64, i64* %9, align 8
  %31 = call i32 @lp5523_update_program_memory(%struct.lp55xx_chip* %28, i8* %29, i64 %30)
  store i32 %31, i32* %13, align 4
  %32 = load %struct.lp55xx_chip*, %struct.lp55xx_chip** %12, align 8
  %33 = getelementptr inbounds %struct.lp55xx_chip, %struct.lp55xx_chip* %32, i32 0, i32 1
  %34 = call i32 @mutex_unlock(i32* %33)
  %35 = load i32, i32* %13, align 4
  ret i32 %35
}

declare dso_local %struct.lp55xx_led* @i2c_get_clientdata(i32) #1

declare dso_local i32 @to_i2c_client(%struct.device*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @lp5523_load_engine_and_select_page(%struct.lp55xx_chip*) #1

declare dso_local i32 @lp5523_update_program_memory(%struct.lp55xx_chip*, i8*, i64) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
