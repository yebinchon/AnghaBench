; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/keyboard/extr_samsung-keypad.c_samsung_keypad_stop.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/keyboard/extr_samsung-keypad.c_samsung_keypad_stop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.samsung_keypad = type { i32, %struct.TYPE_2__*, i32, i32, i64, i32 }
%struct.TYPE_2__ = type { i32 }

@SAMSUNG_KEYIFSTSCLR = common dso_local global i64 0, align 8
@SAMSUNG_KEYIFCON = common dso_local global i64 0, align 8
@SAMSUNG_KEYIFCON_INT_F_EN = common dso_local global i32 0, align 4
@SAMSUNG_KEYIFCON_INT_R_EN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.samsung_keypad*)* @samsung_keypad_stop to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @samsung_keypad_stop(%struct.samsung_keypad* %0) #0 {
  %2 = alloca %struct.samsung_keypad*, align 8
  %3 = alloca i32, align 4
  store %struct.samsung_keypad* %0, %struct.samsung_keypad** %2, align 8
  %4 = load %struct.samsung_keypad*, %struct.samsung_keypad** %2, align 8
  %5 = getelementptr inbounds %struct.samsung_keypad, %struct.samsung_keypad* %4, i32 0, i32 1
  %6 = load %struct.TYPE_2__*, %struct.TYPE_2__** %5, align 8
  %7 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %6, i32 0, i32 0
  %8 = call i32 @pm_runtime_get_sync(i32* %7)
  %9 = load %struct.samsung_keypad*, %struct.samsung_keypad** %2, align 8
  %10 = getelementptr inbounds %struct.samsung_keypad, %struct.samsung_keypad* %9, i32 0, i32 0
  store i32 1, i32* %10, align 8
  %11 = load %struct.samsung_keypad*, %struct.samsung_keypad** %2, align 8
  %12 = getelementptr inbounds %struct.samsung_keypad, %struct.samsung_keypad* %11, i32 0, i32 5
  %13 = call i32 @wake_up(i32* %12)
  %14 = load %struct.samsung_keypad*, %struct.samsung_keypad** %2, align 8
  %15 = getelementptr inbounds %struct.samsung_keypad, %struct.samsung_keypad* %14, i32 0, i32 2
  %16 = load i32, i32* %15, align 8
  %17 = call i32 @disable_irq(i32 %16)
  %18 = load %struct.samsung_keypad*, %struct.samsung_keypad** %2, align 8
  %19 = getelementptr inbounds %struct.samsung_keypad, %struct.samsung_keypad* %18, i32 0, i32 4
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* @SAMSUNG_KEYIFSTSCLR, align 8
  %22 = add nsw i64 %20, %21
  %23 = call i32 @writel(i32 -1, i64 %22)
  %24 = load %struct.samsung_keypad*, %struct.samsung_keypad** %2, align 8
  %25 = getelementptr inbounds %struct.samsung_keypad, %struct.samsung_keypad* %24, i32 0, i32 4
  %26 = load i64, i64* %25, align 8
  %27 = load i64, i64* @SAMSUNG_KEYIFCON, align 8
  %28 = add nsw i64 %26, %27
  %29 = call i32 @readl(i64 %28)
  store i32 %29, i32* %3, align 4
  %30 = load i32, i32* @SAMSUNG_KEYIFCON_INT_F_EN, align 4
  %31 = load i32, i32* @SAMSUNG_KEYIFCON_INT_R_EN, align 4
  %32 = or i32 %30, %31
  %33 = xor i32 %32, -1
  %34 = load i32, i32* %3, align 4
  %35 = and i32 %34, %33
  store i32 %35, i32* %3, align 4
  %36 = load i32, i32* %3, align 4
  %37 = load %struct.samsung_keypad*, %struct.samsung_keypad** %2, align 8
  %38 = getelementptr inbounds %struct.samsung_keypad, %struct.samsung_keypad* %37, i32 0, i32 4
  %39 = load i64, i64* %38, align 8
  %40 = load i64, i64* @SAMSUNG_KEYIFCON, align 8
  %41 = add nsw i64 %39, %40
  %42 = call i32 @writel(i32 %36, i64 %41)
  %43 = load %struct.samsung_keypad*, %struct.samsung_keypad** %2, align 8
  %44 = getelementptr inbounds %struct.samsung_keypad, %struct.samsung_keypad* %43, i32 0, i32 3
  %45 = load i32, i32* %44, align 4
  %46 = call i32 @clk_disable(i32 %45)
  %47 = load %struct.samsung_keypad*, %struct.samsung_keypad** %2, align 8
  %48 = getelementptr inbounds %struct.samsung_keypad, %struct.samsung_keypad* %47, i32 0, i32 2
  %49 = load i32, i32* %48, align 8
  %50 = call i32 @enable_irq(i32 %49)
  %51 = load %struct.samsung_keypad*, %struct.samsung_keypad** %2, align 8
  %52 = getelementptr inbounds %struct.samsung_keypad, %struct.samsung_keypad* %51, i32 0, i32 1
  %53 = load %struct.TYPE_2__*, %struct.TYPE_2__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %53, i32 0, i32 0
  %55 = call i32 @pm_runtime_put(i32* %54)
  ret void
}

declare dso_local i32 @pm_runtime_get_sync(i32*) #1

declare dso_local i32 @wake_up(i32*) #1

declare dso_local i32 @disable_irq(i32) #1

declare dso_local i32 @writel(i32, i64) #1

declare dso_local i32 @readl(i64) #1

declare dso_local i32 @clk_disable(i32) #1

declare dso_local i32 @enable_irq(i32) #1

declare dso_local i32 @pm_runtime_put(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
