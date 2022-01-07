; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/keyboard/extr_cap11xx.c_cap11xx_set_sleep.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/keyboard/extr_cap11xx.c_cap11xx_set_sleep.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cap11xx_priv = type { i32, i64 }

@CONFIG_LEDS_CLASS = common dso_local global i32 0, align 4
@CAP11XX_REG_MAIN_CONTROL = common dso_local global i32 0, align 4
@CAP11XX_REG_MAIN_CONTROL_DLSEEP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cap11xx_priv*, i32)* @cap11xx_set_sleep to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cap11xx_set_sleep(%struct.cap11xx_priv* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.cap11xx_priv*, align 8
  %5 = alloca i32, align 4
  store %struct.cap11xx_priv* %0, %struct.cap11xx_priv** %4, align 8
  store i32 %1, i32* %5, align 4
  %6 = load i32, i32* @CONFIG_LEDS_CLASS, align 4
  %7 = call i64 @IS_ENABLED(i32 %6)
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %15

9:                                                ; preds = %2
  %10 = load %struct.cap11xx_priv*, %struct.cap11xx_priv** %4, align 8
  %11 = getelementptr inbounds %struct.cap11xx_priv, %struct.cap11xx_priv* %10, i32 0, i32 1
  %12 = load i64, i64* %11, align 8
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %15

14:                                               ; preds = %9
  store i32 0, i32* %3, align 4
  br label %29

15:                                               ; preds = %9, %2
  %16 = load %struct.cap11xx_priv*, %struct.cap11xx_priv** %4, align 8
  %17 = getelementptr inbounds %struct.cap11xx_priv, %struct.cap11xx_priv* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = load i32, i32* @CAP11XX_REG_MAIN_CONTROL, align 4
  %20 = load i32, i32* @CAP11XX_REG_MAIN_CONTROL_DLSEEP, align 4
  %21 = load i32, i32* %5, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %15
  %24 = load i32, i32* @CAP11XX_REG_MAIN_CONTROL_DLSEEP, align 4
  br label %26

25:                                               ; preds = %15
  br label %26

26:                                               ; preds = %25, %23
  %27 = phi i32 [ %24, %23 ], [ 0, %25 ]
  %28 = call i32 @regmap_update_bits(i32 %18, i32 %19, i32 %20, i32 %27)
  store i32 %28, i32* %3, align 4
  br label %29

29:                                               ; preds = %26, %14
  %30 = load i32, i32* %3, align 4
  ret i32 %30
}

declare dso_local i64 @IS_ENABLED(i32) #1

declare dso_local i32 @regmap_update_bits(i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
