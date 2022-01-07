; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/keyboard/extr_nspire-keypad.c_nspire_keypad_chip_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/keyboard/extr_nspire-keypad.c_nspire_keypad_chip_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nspire_keypad = type { i64, i64, i32, i64, i32 }

@KEYPAD_SCAN_MODE = common dso_local global i64 0, align 8
@KEYPAD_BITMASK_ROWS = common dso_local global i32 0, align 4
@KEYPAD_BITMASK_COLS = common dso_local global i32 0, align 4
@KEYPAD_CNTL = common dso_local global i64 0, align 8
@KEYPAD_INTMSK = common dso_local global i64 0, align 8
@KEYPAD_UNKNOWN_INT = common dso_local global i64 0, align 8
@KEYPAD_UNKNOWN_INT_STS = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nspire_keypad*)* @nspire_keypad_chip_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nspire_keypad_chip_init(%struct.nspire_keypad* %0) #0 {
  %2 = alloca %struct.nspire_keypad*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  store %struct.nspire_keypad* %0, %struct.nspire_keypad** %2, align 8
  store i64 0, i64* %3, align 8
  %7 = load %struct.nspire_keypad*, %struct.nspire_keypad** %2, align 8
  %8 = getelementptr inbounds %struct.nspire_keypad, %struct.nspire_keypad* %7, i32 0, i32 4
  %9 = load i32, i32* %8, align 8
  %10 = call i32 @clk_get_rate(i32 %9)
  %11 = sdiv i32 %10, 1000000
  %12 = sext i32 %11 to i64
  store i64 %12, i64* %4, align 8
  %13 = load i64, i64* %4, align 8
  %14 = icmp eq i64 %13, 0
  br i1 %14, label %15, label %16

15:                                               ; preds = %1
  store i64 1, i64* %4, align 8
  br label %16

16:                                               ; preds = %15, %1
  %17 = load i64, i64* %4, align 8
  %18 = load %struct.nspire_keypad*, %struct.nspire_keypad** %2, align 8
  %19 = getelementptr inbounds %struct.nspire_keypad, %struct.nspire_keypad* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = mul i64 %17, %20
  store i64 %21, i64* %5, align 8
  %22 = load i64, i64* %5, align 8
  %23 = icmp uge i64 %22, 65536
  %24 = zext i1 %23 to i32
  %25 = call i32 @WARN_ON(i32 %24)
  %26 = load i64, i64* %5, align 8
  %27 = and i64 %26, 65535
  store i64 %27, i64* %5, align 8
  %28 = load i64, i64* %4, align 8
  %29 = load %struct.nspire_keypad*, %struct.nspire_keypad** %2, align 8
  %30 = getelementptr inbounds %struct.nspire_keypad, %struct.nspire_keypad* %29, i32 0, i32 1
  %31 = load i64, i64* %30, align 8
  %32 = mul i64 %28, %31
  store i64 %32, i64* %6, align 8
  %33 = load i64, i64* %6, align 8
  %34 = icmp uge i64 %33, 16384
  %35 = zext i1 %34 to i32
  %36 = call i32 @WARN_ON(i32 %35)
  %37 = load i64, i64* %6, align 8
  %38 = and i64 %37, 16383
  store i64 %38, i64* %6, align 8
  %39 = load i64, i64* %3, align 8
  %40 = or i64 %39, 3
  store i64 %40, i64* %3, align 8
  %41 = load i64, i64* %6, align 8
  %42 = shl i64 %41, 2
  %43 = load i64, i64* %3, align 8
  %44 = or i64 %43, %42
  store i64 %44, i64* %3, align 8
  %45 = load i64, i64* %5, align 8
  %46 = shl i64 %45, 16
  %47 = load i64, i64* %3, align 8
  %48 = or i64 %47, %46
  store i64 %48, i64* %3, align 8
  %49 = load i64, i64* %3, align 8
  %50 = load %struct.nspire_keypad*, %struct.nspire_keypad** %2, align 8
  %51 = getelementptr inbounds %struct.nspire_keypad, %struct.nspire_keypad* %50, i32 0, i32 3
  %52 = load i64, i64* %51, align 8
  %53 = load i64, i64* @KEYPAD_SCAN_MODE, align 8
  %54 = add nsw i64 %52, %53
  %55 = call i32 @writel(i64 %49, i64 %54)
  %56 = load i32, i32* @KEYPAD_BITMASK_ROWS, align 4
  %57 = and i32 %56, 255
  %58 = load i32, i32* @KEYPAD_BITMASK_COLS, align 4
  %59 = and i32 %58, 255
  %60 = shl i32 %59, 8
  %61 = or i32 %57, %60
  %62 = sext i32 %61 to i64
  store i64 %62, i64* %3, align 8
  %63 = load i64, i64* %3, align 8
  %64 = load %struct.nspire_keypad*, %struct.nspire_keypad** %2, align 8
  %65 = getelementptr inbounds %struct.nspire_keypad, %struct.nspire_keypad* %64, i32 0, i32 3
  %66 = load i64, i64* %65, align 8
  %67 = load i64, i64* @KEYPAD_CNTL, align 8
  %68 = add nsw i64 %66, %67
  %69 = call i32 @writel(i64 %63, i64 %68)
  %70 = load %struct.nspire_keypad*, %struct.nspire_keypad** %2, align 8
  %71 = getelementptr inbounds %struct.nspire_keypad, %struct.nspire_keypad* %70, i32 0, i32 2
  store i32 2, i32* %71, align 8
  %72 = load %struct.nspire_keypad*, %struct.nspire_keypad** %2, align 8
  %73 = getelementptr inbounds %struct.nspire_keypad, %struct.nspire_keypad* %72, i32 0, i32 2
  %74 = load i32, i32* %73, align 8
  %75 = sext i32 %74 to i64
  %76 = load %struct.nspire_keypad*, %struct.nspire_keypad** %2, align 8
  %77 = getelementptr inbounds %struct.nspire_keypad, %struct.nspire_keypad* %76, i32 0, i32 3
  %78 = load i64, i64* %77, align 8
  %79 = load i64, i64* @KEYPAD_INTMSK, align 8
  %80 = add nsw i64 %78, %79
  %81 = call i32 @writel(i64 %75, i64 %80)
  %82 = load %struct.nspire_keypad*, %struct.nspire_keypad** %2, align 8
  %83 = getelementptr inbounds %struct.nspire_keypad, %struct.nspire_keypad* %82, i32 0, i32 3
  %84 = load i64, i64* %83, align 8
  %85 = load i64, i64* @KEYPAD_UNKNOWN_INT, align 8
  %86 = add nsw i64 %84, %85
  %87 = call i32 @writel(i64 0, i64 %86)
  %88 = load %struct.nspire_keypad*, %struct.nspire_keypad** %2, align 8
  %89 = getelementptr inbounds %struct.nspire_keypad, %struct.nspire_keypad* %88, i32 0, i32 3
  %90 = load i64, i64* %89, align 8
  %91 = load i64, i64* @KEYPAD_UNKNOWN_INT_STS, align 8
  %92 = add nsw i64 %90, %91
  %93 = call i32 @writel(i64 -1, i64 %92)
  ret i32 0
}

declare dso_local i32 @clk_get_rate(i32) #1

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @writel(i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
