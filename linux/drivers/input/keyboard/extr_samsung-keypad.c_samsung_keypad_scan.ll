; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/keyboard/extr_samsung-keypad.c_samsung_keypad_scan.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/keyboard/extr_samsung-keypad.c_samsung_keypad_scan.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.samsung_keypad = type { i32, i64, i32, i64 }

@KEYPAD_TYPE_S5PV210 = common dso_local global i64 0, align 8
@S5PV210_KEYIFCOLEN_MASK = common dso_local global i32 0, align 4
@SAMSUNG_KEYIFCOL_MASK = common dso_local global i32 0, align 4
@SAMSUNG_KEYIFCOL = common dso_local global i64 0, align 8
@SAMSUNG_KEYIFROW = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.samsung_keypad*, i32*)* @samsung_keypad_scan to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @samsung_keypad_scan(%struct.samsung_keypad* %0, i32* %1) #0 {
  %3 = alloca %struct.samsung_keypad*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.samsung_keypad* %0, %struct.samsung_keypad** %3, align 8
  store i32* %1, i32** %4, align 8
  store i32 0, i32* %5, align 4
  br label %7

7:                                                ; preds = %61, %2
  %8 = load i32, i32* %5, align 4
  %9 = load %struct.samsung_keypad*, %struct.samsung_keypad** %3, align 8
  %10 = getelementptr inbounds %struct.samsung_keypad, %struct.samsung_keypad* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = icmp ult i32 %8, %11
  br i1 %12, label %13, label %64

13:                                               ; preds = %7
  %14 = load %struct.samsung_keypad*, %struct.samsung_keypad** %3, align 8
  %15 = getelementptr inbounds %struct.samsung_keypad, %struct.samsung_keypad* %14, i32 0, i32 1
  %16 = load i64, i64* %15, align 8
  %17 = load i64, i64* @KEYPAD_TYPE_S5PV210, align 8
  %18 = icmp eq i64 %16, %17
  br i1 %18, label %19, label %27

19:                                               ; preds = %13
  %20 = load i32, i32* @S5PV210_KEYIFCOLEN_MASK, align 4
  store i32 %20, i32* %6, align 4
  %21 = load i32, i32* %5, align 4
  %22 = shl i32 1, %21
  %23 = xor i32 %22, -1
  %24 = shl i32 %23, 8
  %25 = load i32, i32* %6, align 4
  %26 = and i32 %25, %24
  store i32 %26, i32* %6, align 4
  br label %34

27:                                               ; preds = %13
  %28 = load i32, i32* @SAMSUNG_KEYIFCOL_MASK, align 4
  store i32 %28, i32* %6, align 4
  %29 = load i32, i32* %5, align 4
  %30 = shl i32 1, %29
  %31 = xor i32 %30, -1
  %32 = load i32, i32* %6, align 4
  %33 = and i32 %32, %31
  store i32 %33, i32* %6, align 4
  br label %34

34:                                               ; preds = %27, %19
  %35 = load i32, i32* %6, align 4
  %36 = load %struct.samsung_keypad*, %struct.samsung_keypad** %3, align 8
  %37 = getelementptr inbounds %struct.samsung_keypad, %struct.samsung_keypad* %36, i32 0, i32 3
  %38 = load i64, i64* %37, align 8
  %39 = load i64, i64* @SAMSUNG_KEYIFCOL, align 8
  %40 = add nsw i64 %38, %39
  %41 = call i32 @writel(i32 %35, i64 %40)
  %42 = call i32 @mdelay(i32 1)
  %43 = load %struct.samsung_keypad*, %struct.samsung_keypad** %3, align 8
  %44 = getelementptr inbounds %struct.samsung_keypad, %struct.samsung_keypad* %43, i32 0, i32 3
  %45 = load i64, i64* %44, align 8
  %46 = load i64, i64* @SAMSUNG_KEYIFROW, align 8
  %47 = add nsw i64 %45, %46
  %48 = call i32 @readl(i64 %47)
  store i32 %48, i32* %6, align 4
  %49 = load i32, i32* %6, align 4
  %50 = xor i32 %49, -1
  %51 = load %struct.samsung_keypad*, %struct.samsung_keypad** %3, align 8
  %52 = getelementptr inbounds %struct.samsung_keypad, %struct.samsung_keypad* %51, i32 0, i32 2
  %53 = load i32, i32* %52, align 8
  %54 = shl i32 1, %53
  %55 = sub nsw i32 %54, 1
  %56 = and i32 %50, %55
  %57 = load i32*, i32** %4, align 8
  %58 = load i32, i32* %5, align 4
  %59 = zext i32 %58 to i64
  %60 = getelementptr inbounds i32, i32* %57, i64 %59
  store i32 %56, i32* %60, align 4
  br label %61

61:                                               ; preds = %34
  %62 = load i32, i32* %5, align 4
  %63 = add i32 %62, 1
  store i32 %63, i32* %5, align 4
  br label %7

64:                                               ; preds = %7
  %65 = load %struct.samsung_keypad*, %struct.samsung_keypad** %3, align 8
  %66 = getelementptr inbounds %struct.samsung_keypad, %struct.samsung_keypad* %65, i32 0, i32 3
  %67 = load i64, i64* %66, align 8
  %68 = load i64, i64* @SAMSUNG_KEYIFCOL, align 8
  %69 = add nsw i64 %67, %68
  %70 = call i32 @writel(i32 0, i64 %69)
  ret void
}

declare dso_local i32 @writel(i32, i64) #1

declare dso_local i32 @mdelay(i32) #1

declare dso_local i32 @readl(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
