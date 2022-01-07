; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/keyboard/extr_ep93xx_keypad.c_ep93xx_keypad_config.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/keyboard/extr_ep93xx_keypad.c_ep93xx_keypad_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ep93xx_keypad = type { i64, i32, %struct.ep93xx_keypad_platform_data* }
%struct.ep93xx_keypad_platform_data = type { i32, i32, i32, i32 }

@EP93XX_KEYPAD_DISABLE_3_KEY = common dso_local global i32 0, align 4
@KEY_INIT_DIS3KY = common dso_local global i32 0, align 4
@EP93XX_KEYPAD_DIAG_MODE = common dso_local global i32 0, align 4
@KEY_INIT_DIAG = common dso_local global i32 0, align 4
@EP93XX_KEYPAD_BACK_DRIVE = common dso_local global i32 0, align 4
@KEY_INIT_BACK = common dso_local global i32 0, align 4
@EP93XX_KEYPAD_TEST_MODE = common dso_local global i32 0, align 4
@KEY_INIT_T2 = common dso_local global i32 0, align 4
@KEY_INIT_DBNC_SHIFT = common dso_local global i32 0, align 4
@KEY_INIT_DBNC_MASK = common dso_local global i32 0, align 4
@KEY_INIT_PRSCL_SHIFT = common dso_local global i32 0, align 4
@KEY_INIT_PRSCL_MASK = common dso_local global i32 0, align 4
@KEY_INIT = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ep93xx_keypad*)* @ep93xx_keypad_config to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ep93xx_keypad_config(%struct.ep93xx_keypad* %0) #0 {
  %2 = alloca %struct.ep93xx_keypad*, align 8
  %3 = alloca %struct.ep93xx_keypad_platform_data*, align 8
  %4 = alloca i32, align 4
  store %struct.ep93xx_keypad* %0, %struct.ep93xx_keypad** %2, align 8
  %5 = load %struct.ep93xx_keypad*, %struct.ep93xx_keypad** %2, align 8
  %6 = getelementptr inbounds %struct.ep93xx_keypad, %struct.ep93xx_keypad* %5, i32 0, i32 2
  %7 = load %struct.ep93xx_keypad_platform_data*, %struct.ep93xx_keypad_platform_data** %6, align 8
  store %struct.ep93xx_keypad_platform_data* %7, %struct.ep93xx_keypad_platform_data** %3, align 8
  store i32 0, i32* %4, align 4
  %8 = load %struct.ep93xx_keypad*, %struct.ep93xx_keypad** %2, align 8
  %9 = getelementptr inbounds %struct.ep93xx_keypad, %struct.ep93xx_keypad* %8, i32 0, i32 1
  %10 = load i32, i32* %9, align 8
  %11 = load %struct.ep93xx_keypad_platform_data*, %struct.ep93xx_keypad_platform_data** %3, align 8
  %12 = getelementptr inbounds %struct.ep93xx_keypad_platform_data, %struct.ep93xx_keypad_platform_data* %11, i32 0, i32 3
  %13 = load i32, i32* %12, align 4
  %14 = call i32 @clk_set_rate(i32 %10, i32 %13)
  %15 = load %struct.ep93xx_keypad_platform_data*, %struct.ep93xx_keypad_platform_data** %3, align 8
  %16 = getelementptr inbounds %struct.ep93xx_keypad_platform_data, %struct.ep93xx_keypad_platform_data* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = load i32, i32* @EP93XX_KEYPAD_DISABLE_3_KEY, align 4
  %19 = and i32 %17, %18
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %25

21:                                               ; preds = %1
  %22 = load i32, i32* @KEY_INIT_DIS3KY, align 4
  %23 = load i32, i32* %4, align 4
  %24 = or i32 %23, %22
  store i32 %24, i32* %4, align 4
  br label %25

25:                                               ; preds = %21, %1
  %26 = load %struct.ep93xx_keypad_platform_data*, %struct.ep93xx_keypad_platform_data** %3, align 8
  %27 = getelementptr inbounds %struct.ep93xx_keypad_platform_data, %struct.ep93xx_keypad_platform_data* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load i32, i32* @EP93XX_KEYPAD_DIAG_MODE, align 4
  %30 = and i32 %28, %29
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %36

32:                                               ; preds = %25
  %33 = load i32, i32* @KEY_INIT_DIAG, align 4
  %34 = load i32, i32* %4, align 4
  %35 = or i32 %34, %33
  store i32 %35, i32* %4, align 4
  br label %36

36:                                               ; preds = %32, %25
  %37 = load %struct.ep93xx_keypad_platform_data*, %struct.ep93xx_keypad_platform_data** %3, align 8
  %38 = getelementptr inbounds %struct.ep93xx_keypad_platform_data, %struct.ep93xx_keypad_platform_data* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = load i32, i32* @EP93XX_KEYPAD_BACK_DRIVE, align 4
  %41 = and i32 %39, %40
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %47

43:                                               ; preds = %36
  %44 = load i32, i32* @KEY_INIT_BACK, align 4
  %45 = load i32, i32* %4, align 4
  %46 = or i32 %45, %44
  store i32 %46, i32* %4, align 4
  br label %47

47:                                               ; preds = %43, %36
  %48 = load %struct.ep93xx_keypad_platform_data*, %struct.ep93xx_keypad_platform_data** %3, align 8
  %49 = getelementptr inbounds %struct.ep93xx_keypad_platform_data, %struct.ep93xx_keypad_platform_data* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = load i32, i32* @EP93XX_KEYPAD_TEST_MODE, align 4
  %52 = and i32 %50, %51
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %58

54:                                               ; preds = %47
  %55 = load i32, i32* @KEY_INIT_T2, align 4
  %56 = load i32, i32* %4, align 4
  %57 = or i32 %56, %55
  store i32 %57, i32* %4, align 4
  br label %58

58:                                               ; preds = %54, %47
  %59 = load %struct.ep93xx_keypad_platform_data*, %struct.ep93xx_keypad_platform_data** %3, align 8
  %60 = getelementptr inbounds %struct.ep93xx_keypad_platform_data, %struct.ep93xx_keypad_platform_data* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 4
  %62 = load i32, i32* @KEY_INIT_DBNC_SHIFT, align 4
  %63 = shl i32 %61, %62
  %64 = load i32, i32* @KEY_INIT_DBNC_MASK, align 4
  %65 = and i32 %63, %64
  %66 = load i32, i32* %4, align 4
  %67 = or i32 %66, %65
  store i32 %67, i32* %4, align 4
  %68 = load %struct.ep93xx_keypad_platform_data*, %struct.ep93xx_keypad_platform_data** %3, align 8
  %69 = getelementptr inbounds %struct.ep93xx_keypad_platform_data, %struct.ep93xx_keypad_platform_data* %68, i32 0, i32 2
  %70 = load i32, i32* %69, align 4
  %71 = load i32, i32* @KEY_INIT_PRSCL_SHIFT, align 4
  %72 = shl i32 %70, %71
  %73 = load i32, i32* @KEY_INIT_PRSCL_MASK, align 4
  %74 = and i32 %72, %73
  %75 = load i32, i32* %4, align 4
  %76 = or i32 %75, %74
  store i32 %76, i32* %4, align 4
  %77 = load i32, i32* %4, align 4
  %78 = load %struct.ep93xx_keypad*, %struct.ep93xx_keypad** %2, align 8
  %79 = getelementptr inbounds %struct.ep93xx_keypad, %struct.ep93xx_keypad* %78, i32 0, i32 0
  %80 = load i64, i64* %79, align 8
  %81 = load i64, i64* @KEY_INIT, align 8
  %82 = add nsw i64 %80, %81
  %83 = call i32 @__raw_writel(i32 %77, i64 %82)
  ret void
}

declare dso_local i32 @clk_set_rate(i32, i32) #1

declare dso_local i32 @__raw_writel(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
