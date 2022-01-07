; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/keyboard/extr_spear-keyboard.c_spear_kbd_open.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/keyboard/extr_spear-keyboard.c_spear_kbd_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.input_dev = type { i32 }
%struct.spear_kbd = type { i32, i64, i32, i32 }

@KEY_RESERVED = common dso_local global i32 0, align 4
@MODE_CTL_PCLK_FREQ_MSK = common dso_local global i32 0, align 4
@MODE_CTL_PCLK_FREQ_SHIFT = common dso_local global i32 0, align 4
@MODE_CTL_SCAN_RATE_80 = common dso_local global i32 0, align 4
@MODE_CTL_KEYBOARD = common dso_local global i32 0, align 4
@MODE_CTL_KEYNUM_SHIFT = common dso_local global i32 0, align 4
@MODE_CTL_REG = common dso_local global i64 0, align 8
@STATUS_REG = common dso_local global i64 0, align 8
@MODE_CTL_START_SCAN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.input_dev*)* @spear_kbd_open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @spear_kbd_open(%struct.input_dev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.input_dev*, align 8
  %4 = alloca %struct.spear_kbd*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.input_dev* %0, %struct.input_dev** %3, align 8
  %7 = load %struct.input_dev*, %struct.input_dev** %3, align 8
  %8 = call %struct.spear_kbd* @input_get_drvdata(%struct.input_dev* %7)
  store %struct.spear_kbd* %8, %struct.spear_kbd** %4, align 8
  %9 = load i32, i32* @KEY_RESERVED, align 4
  %10 = load %struct.spear_kbd*, %struct.spear_kbd** %4, align 8
  %11 = getelementptr inbounds %struct.spear_kbd, %struct.spear_kbd* %10, i32 0, i32 3
  store i32 %9, i32* %11, align 4
  %12 = load %struct.spear_kbd*, %struct.spear_kbd** %4, align 8
  %13 = getelementptr inbounds %struct.spear_kbd, %struct.spear_kbd* %12, i32 0, i32 2
  %14 = load i32, i32* %13, align 8
  %15 = call i32 @clk_enable(i32 %14)
  store i32 %15, i32* %5, align 4
  %16 = load i32, i32* %5, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %1
  %19 = load i32, i32* %5, align 4
  store i32 %19, i32* %2, align 4
  br label %72

20:                                               ; preds = %1
  %21 = load %struct.spear_kbd*, %struct.spear_kbd** %4, align 8
  %22 = getelementptr inbounds %struct.spear_kbd, %struct.spear_kbd* %21, i32 0, i32 2
  %23 = load i32, i32* %22, align 8
  %24 = call i32 @clk_get_rate(i32 %23)
  %25 = sdiv i32 %24, 1000000
  %26 = sub nsw i32 %25, 1
  store i32 %26, i32* %6, align 4
  %27 = load i32, i32* %6, align 4
  %28 = load i32, i32* @MODE_CTL_PCLK_FREQ_MSK, align 4
  %29 = and i32 %27, %28
  %30 = load i32, i32* @MODE_CTL_PCLK_FREQ_SHIFT, align 4
  %31 = shl i32 %29, %30
  store i32 %31, i32* %6, align 4
  %32 = load i32, i32* @MODE_CTL_SCAN_RATE_80, align 4
  %33 = load i32, i32* @MODE_CTL_KEYBOARD, align 4
  %34 = or i32 %32, %33
  %35 = load i32, i32* %6, align 4
  %36 = or i32 %34, %35
  %37 = load %struct.spear_kbd*, %struct.spear_kbd** %4, align 8
  %38 = getelementptr inbounds %struct.spear_kbd, %struct.spear_kbd* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = load i32, i32* @MODE_CTL_KEYNUM_SHIFT, align 4
  %41 = shl i32 %39, %40
  %42 = or i32 %36, %41
  store i32 %42, i32* %6, align 4
  %43 = load i32, i32* %6, align 4
  %44 = load %struct.spear_kbd*, %struct.spear_kbd** %4, align 8
  %45 = getelementptr inbounds %struct.spear_kbd, %struct.spear_kbd* %44, i32 0, i32 1
  %46 = load i64, i64* %45, align 8
  %47 = load i64, i64* @MODE_CTL_REG, align 8
  %48 = add nsw i64 %46, %47
  %49 = call i32 @writel_relaxed(i32 %43, i64 %48)
  %50 = load %struct.spear_kbd*, %struct.spear_kbd** %4, align 8
  %51 = getelementptr inbounds %struct.spear_kbd, %struct.spear_kbd* %50, i32 0, i32 1
  %52 = load i64, i64* %51, align 8
  %53 = load i64, i64* @STATUS_REG, align 8
  %54 = add nsw i64 %52, %53
  %55 = call i32 @writel_relaxed(i32 1, i64 %54)
  %56 = load %struct.spear_kbd*, %struct.spear_kbd** %4, align 8
  %57 = getelementptr inbounds %struct.spear_kbd, %struct.spear_kbd* %56, i32 0, i32 1
  %58 = load i64, i64* %57, align 8
  %59 = load i64, i64* @MODE_CTL_REG, align 8
  %60 = add nsw i64 %58, %59
  %61 = call i32 @readl_relaxed(i64 %60)
  store i32 %61, i32* %6, align 4
  %62 = load i32, i32* @MODE_CTL_START_SCAN, align 4
  %63 = load i32, i32* %6, align 4
  %64 = or i32 %63, %62
  store i32 %64, i32* %6, align 4
  %65 = load i32, i32* %6, align 4
  %66 = load %struct.spear_kbd*, %struct.spear_kbd** %4, align 8
  %67 = getelementptr inbounds %struct.spear_kbd, %struct.spear_kbd* %66, i32 0, i32 1
  %68 = load i64, i64* %67, align 8
  %69 = load i64, i64* @MODE_CTL_REG, align 8
  %70 = add nsw i64 %68, %69
  %71 = call i32 @writel_relaxed(i32 %65, i64 %70)
  store i32 0, i32* %2, align 4
  br label %72

72:                                               ; preds = %20, %18
  %73 = load i32, i32* %2, align 4
  ret i32 %73
}

declare dso_local %struct.spear_kbd* @input_get_drvdata(%struct.input_dev*) #1

declare dso_local i32 @clk_enable(i32) #1

declare dso_local i32 @clk_get_rate(i32) #1

declare dso_local i32 @writel_relaxed(i32, i64) #1

declare dso_local i32 @readl_relaxed(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
