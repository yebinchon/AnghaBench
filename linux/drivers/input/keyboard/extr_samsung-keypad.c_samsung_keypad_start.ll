; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/keyboard/extr_samsung-keypad.c_samsung_keypad_start.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/keyboard/extr_samsung-keypad.c_samsung_keypad_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.samsung_keypad = type { i32, %struct.TYPE_2__*, i64, i32 }
%struct.TYPE_2__ = type { i32 }

@SAMSUNG_KEYIFCON = common dso_local global i64 0, align 8
@SAMSUNG_KEYIFCON_INT_F_EN = common dso_local global i32 0, align 4
@SAMSUNG_KEYIFCON_INT_R_EN = common dso_local global i32 0, align 4
@SAMSUNG_KEYIFCOL = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.samsung_keypad*)* @samsung_keypad_start to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @samsung_keypad_start(%struct.samsung_keypad* %0) #0 {
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
  store i32 0, i32* %10, align 8
  %11 = load %struct.samsung_keypad*, %struct.samsung_keypad** %2, align 8
  %12 = getelementptr inbounds %struct.samsung_keypad, %struct.samsung_keypad* %11, i32 0, i32 3
  %13 = load i32, i32* %12, align 8
  %14 = call i32 @clk_enable(i32 %13)
  %15 = load %struct.samsung_keypad*, %struct.samsung_keypad** %2, align 8
  %16 = getelementptr inbounds %struct.samsung_keypad, %struct.samsung_keypad* %15, i32 0, i32 2
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* @SAMSUNG_KEYIFCON, align 8
  %19 = add nsw i64 %17, %18
  %20 = call i32 @readl(i64 %19)
  store i32 %20, i32* %3, align 4
  %21 = load i32, i32* @SAMSUNG_KEYIFCON_INT_F_EN, align 4
  %22 = load i32, i32* @SAMSUNG_KEYIFCON_INT_R_EN, align 4
  %23 = or i32 %21, %22
  %24 = load i32, i32* %3, align 4
  %25 = or i32 %24, %23
  store i32 %25, i32* %3, align 4
  %26 = load i32, i32* %3, align 4
  %27 = load %struct.samsung_keypad*, %struct.samsung_keypad** %2, align 8
  %28 = getelementptr inbounds %struct.samsung_keypad, %struct.samsung_keypad* %27, i32 0, i32 2
  %29 = load i64, i64* %28, align 8
  %30 = load i64, i64* @SAMSUNG_KEYIFCON, align 8
  %31 = add nsw i64 %29, %30
  %32 = call i32 @writel(i32 %26, i64 %31)
  %33 = load %struct.samsung_keypad*, %struct.samsung_keypad** %2, align 8
  %34 = getelementptr inbounds %struct.samsung_keypad, %struct.samsung_keypad* %33, i32 0, i32 2
  %35 = load i64, i64* %34, align 8
  %36 = load i64, i64* @SAMSUNG_KEYIFCOL, align 8
  %37 = add nsw i64 %35, %36
  %38 = call i32 @writel(i32 0, i64 %37)
  %39 = load %struct.samsung_keypad*, %struct.samsung_keypad** %2, align 8
  %40 = getelementptr inbounds %struct.samsung_keypad, %struct.samsung_keypad* %39, i32 0, i32 1
  %41 = load %struct.TYPE_2__*, %struct.TYPE_2__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 0
  %43 = call i32 @pm_runtime_put(i32* %42)
  ret void
}

declare dso_local i32 @pm_runtime_get_sync(i32*) #1

declare dso_local i32 @clk_enable(i32) #1

declare dso_local i32 @readl(i64) #1

declare dso_local i32 @writel(i32, i64) #1

declare dso_local i32 @pm_runtime_put(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
