; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpio/extr_gpio-lp3943.c_lp3943_gpio_set_mode.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpio/extr_gpio-lp3943.c_lp3943_gpio_set_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lp3943_gpio = type { %struct.lp3943* }
%struct.lp3943 = type { %struct.lp3943_reg_cfg* }
%struct.lp3943_reg_cfg = type { i64, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.lp3943_gpio*, i64, i64)* @lp3943_gpio_set_mode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lp3943_gpio_set_mode(%struct.lp3943_gpio* %0, i64 %1, i64 %2) #0 {
  %4 = alloca %struct.lp3943_gpio*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.lp3943*, align 8
  %8 = alloca %struct.lp3943_reg_cfg*, align 8
  store %struct.lp3943_gpio* %0, %struct.lp3943_gpio** %4, align 8
  store i64 %1, i64* %5, align 8
  store i64 %2, i64* %6, align 8
  %9 = load %struct.lp3943_gpio*, %struct.lp3943_gpio** %4, align 8
  %10 = getelementptr inbounds %struct.lp3943_gpio, %struct.lp3943_gpio* %9, i32 0, i32 0
  %11 = load %struct.lp3943*, %struct.lp3943** %10, align 8
  store %struct.lp3943* %11, %struct.lp3943** %7, align 8
  %12 = load %struct.lp3943*, %struct.lp3943** %7, align 8
  %13 = getelementptr inbounds %struct.lp3943, %struct.lp3943* %12, i32 0, i32 0
  %14 = load %struct.lp3943_reg_cfg*, %struct.lp3943_reg_cfg** %13, align 8
  store %struct.lp3943_reg_cfg* %14, %struct.lp3943_reg_cfg** %8, align 8
  %15 = load %struct.lp3943*, %struct.lp3943** %7, align 8
  %16 = load %struct.lp3943_reg_cfg*, %struct.lp3943_reg_cfg** %8, align 8
  %17 = load i64, i64* %5, align 8
  %18 = getelementptr inbounds %struct.lp3943_reg_cfg, %struct.lp3943_reg_cfg* %16, i64 %17
  %19 = getelementptr inbounds %struct.lp3943_reg_cfg, %struct.lp3943_reg_cfg* %18, i32 0, i32 2
  %20 = load i32, i32* %19, align 4
  %21 = load %struct.lp3943_reg_cfg*, %struct.lp3943_reg_cfg** %8, align 8
  %22 = load i64, i64* %5, align 8
  %23 = getelementptr inbounds %struct.lp3943_reg_cfg, %struct.lp3943_reg_cfg* %21, i64 %22
  %24 = getelementptr inbounds %struct.lp3943_reg_cfg, %struct.lp3943_reg_cfg* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 8
  %26 = load i64, i64* %6, align 8
  %27 = load %struct.lp3943_reg_cfg*, %struct.lp3943_reg_cfg** %8, align 8
  %28 = load i64, i64* %5, align 8
  %29 = getelementptr inbounds %struct.lp3943_reg_cfg, %struct.lp3943_reg_cfg* %27, i64 %28
  %30 = getelementptr inbounds %struct.lp3943_reg_cfg, %struct.lp3943_reg_cfg* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = shl i64 %26, %31
  %33 = call i32 @lp3943_update_bits(%struct.lp3943* %15, i32 %20, i32 %25, i64 %32)
  ret i32 %33
}

declare dso_local i32 @lp3943_update_bits(%struct.lp3943*, i32, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
