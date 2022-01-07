; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/keyboard/extr_samsung-keypad.c_samsung_keypad_irq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/keyboard/extr_samsung-keypad.c_samsung_keypad_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.samsung_keypad = type { %struct.TYPE_2__*, i32, i32, i64 }
%struct.TYPE_2__ = type { i32 }

@SAMSUNG_MAX_COLS = common dso_local global i32 0, align 4
@SAMSUNG_KEYIFSTSCLR = common dso_local global i64 0, align 8
@IRQ_HANDLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @samsung_keypad_irq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @samsung_keypad_irq(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.samsung_keypad*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i8* %1, i8** %4, align 8
  %10 = load i8*, i8** %4, align 8
  %11 = bitcast i8* %10 to %struct.samsung_keypad*
  store %struct.samsung_keypad* %11, %struct.samsung_keypad** %5, align 8
  %12 = load i32, i32* @SAMSUNG_MAX_COLS, align 4
  %13 = zext i32 %12 to i64
  %14 = call i8* @llvm.stacksave()
  store i8* %14, i8** %6, align 8
  %15 = alloca i32, i64 %13, align 16
  store i64 %13, i64* %7, align 8
  %16 = load %struct.samsung_keypad*, %struct.samsung_keypad** %5, align 8
  %17 = getelementptr inbounds %struct.samsung_keypad, %struct.samsung_keypad* %16, i32 0, i32 0
  %18 = load %struct.TYPE_2__*, %struct.TYPE_2__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  %20 = call i32 @pm_runtime_get_sync(i32* %19)
  br label %21

21:                                               ; preds = %59, %2
  %22 = load %struct.samsung_keypad*, %struct.samsung_keypad** %5, align 8
  %23 = getelementptr inbounds %struct.samsung_keypad, %struct.samsung_keypad* %22, i32 0, i32 3
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* @SAMSUNG_KEYIFSTSCLR, align 8
  %26 = add nsw i64 %24, %25
  %27 = call i32 @readl(i64 %26)
  store i32 %27, i32* %8, align 4
  %28 = load %struct.samsung_keypad*, %struct.samsung_keypad** %5, align 8
  %29 = getelementptr inbounds %struct.samsung_keypad, %struct.samsung_keypad* %28, i32 0, i32 3
  %30 = load i64, i64* %29, align 8
  %31 = load i64, i64* @SAMSUNG_KEYIFSTSCLR, align 8
  %32 = add nsw i64 %30, %31
  %33 = call i32 @writel(i32 -1, i64 %32)
  %34 = load %struct.samsung_keypad*, %struct.samsung_keypad** %5, align 8
  %35 = call i32 @samsung_keypad_scan(%struct.samsung_keypad* %34, i32* %15)
  %36 = load %struct.samsung_keypad*, %struct.samsung_keypad** %5, align 8
  %37 = call i32 @samsung_keypad_report(%struct.samsung_keypad* %36, i32* %15)
  store i32 %37, i32* %9, align 4
  %38 = load i32, i32* %9, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %49

40:                                               ; preds = %21
  %41 = load %struct.samsung_keypad*, %struct.samsung_keypad** %5, align 8
  %42 = getelementptr inbounds %struct.samsung_keypad, %struct.samsung_keypad* %41, i32 0, i32 2
  %43 = load i32, i32* %42, align 4
  %44 = load %struct.samsung_keypad*, %struct.samsung_keypad** %5, align 8
  %45 = getelementptr inbounds %struct.samsung_keypad, %struct.samsung_keypad* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 8
  %47 = call i32 @msecs_to_jiffies(i32 50)
  %48 = call i32 @wait_event_timeout(i32 %43, i32 %46, i32 %47)
  br label %49

49:                                               ; preds = %40, %21
  br label %50

50:                                               ; preds = %49
  %51 = load i32, i32* %9, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %59

53:                                               ; preds = %50
  %54 = load %struct.samsung_keypad*, %struct.samsung_keypad** %5, align 8
  %55 = getelementptr inbounds %struct.samsung_keypad, %struct.samsung_keypad* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 8
  %57 = icmp ne i32 %56, 0
  %58 = xor i1 %57, true
  br label %59

59:                                               ; preds = %53, %50
  %60 = phi i1 [ false, %50 ], [ %58, %53 ]
  br i1 %60, label %21, label %61

61:                                               ; preds = %59
  %62 = load %struct.samsung_keypad*, %struct.samsung_keypad** %5, align 8
  %63 = getelementptr inbounds %struct.samsung_keypad, %struct.samsung_keypad* %62, i32 0, i32 0
  %64 = load %struct.TYPE_2__*, %struct.TYPE_2__** %63, align 8
  %65 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %64, i32 0, i32 0
  %66 = call i32 @pm_runtime_put(i32* %65)
  %67 = load i32, i32* @IRQ_HANDLED, align 4
  %68 = load i8*, i8** %6, align 8
  call void @llvm.stackrestore(i8* %68)
  ret i32 %67
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @pm_runtime_get_sync(i32*) #2

declare dso_local i32 @readl(i64) #2

declare dso_local i32 @writel(i32, i64) #2

declare dso_local i32 @samsung_keypad_scan(%struct.samsung_keypad*, i32*) #2

declare dso_local i32 @samsung_keypad_report(%struct.samsung_keypad*, i32*) #2

declare dso_local i32 @wait_event_timeout(i32, i32, i32) #2

declare dso_local i32 @msecs_to_jiffies(i32) #2

declare dso_local i32 @pm_runtime_put(i32*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
