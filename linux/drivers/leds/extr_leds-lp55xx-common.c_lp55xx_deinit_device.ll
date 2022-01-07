; ModuleID = '/home/carl/AnghaBench/linux/drivers/leds/extr_leds-lp55xx-common.c_lp55xx_deinit_device.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/leds/extr_leds-lp55xx-common.c_lp55xx_deinit_device.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lp55xx_chip = type { i64, %struct.lp55xx_platform_data* }
%struct.lp55xx_platform_data = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @lp55xx_deinit_device(%struct.lp55xx_chip* %0) #0 {
  %2 = alloca %struct.lp55xx_chip*, align 8
  %3 = alloca %struct.lp55xx_platform_data*, align 8
  store %struct.lp55xx_chip* %0, %struct.lp55xx_chip** %2, align 8
  %4 = load %struct.lp55xx_chip*, %struct.lp55xx_chip** %2, align 8
  %5 = getelementptr inbounds %struct.lp55xx_chip, %struct.lp55xx_chip* %4, i32 0, i32 1
  %6 = load %struct.lp55xx_platform_data*, %struct.lp55xx_platform_data** %5, align 8
  store %struct.lp55xx_platform_data* %6, %struct.lp55xx_platform_data** %3, align 8
  %7 = load %struct.lp55xx_chip*, %struct.lp55xx_chip** %2, align 8
  %8 = getelementptr inbounds %struct.lp55xx_chip, %struct.lp55xx_chip* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %16

11:                                               ; preds = %1
  %12 = load %struct.lp55xx_chip*, %struct.lp55xx_chip** %2, align 8
  %13 = getelementptr inbounds %struct.lp55xx_chip, %struct.lp55xx_chip* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = call i32 @clk_disable_unprepare(i64 %14)
  br label %16

16:                                               ; preds = %11, %1
  %17 = load %struct.lp55xx_platform_data*, %struct.lp55xx_platform_data** %3, align 8
  %18 = getelementptr inbounds %struct.lp55xx_platform_data, %struct.lp55xx_platform_data* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = call i64 @gpio_is_valid(i32 %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %27

22:                                               ; preds = %16
  %23 = load %struct.lp55xx_platform_data*, %struct.lp55xx_platform_data** %3, align 8
  %24 = getelementptr inbounds %struct.lp55xx_platform_data, %struct.lp55xx_platform_data* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @gpio_set_value(i32 %25, i32 0)
  br label %27

27:                                               ; preds = %22, %16
  ret void
}

declare dso_local i32 @clk_disable_unprepare(i64) #1

declare dso_local i64 @gpio_is_valid(i32) #1

declare dso_local i32 @gpio_set_value(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
