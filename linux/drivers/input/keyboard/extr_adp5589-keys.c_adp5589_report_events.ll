; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/keyboard/extr_adp5589-keys.c_adp5589_report_events.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/keyboard/extr_adp5589-keys.c_adp5589_report_events.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.adp5589_kpad = type { i32*, i32, %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32, i32 }

@ADP5589_5_FIFO_1 = common dso_local global i64 0, align 8
@KEY_EV_MASK = common dso_local global i32 0, align 4
@KEY_EV_PRESSED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.adp5589_kpad*, i32)* @adp5589_report_events to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @adp5589_report_events(%struct.adp5589_kpad* %0, i32 %1) #0 {
  %3 = alloca %struct.adp5589_kpad*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.adp5589_kpad* %0, %struct.adp5589_kpad** %3, align 8
  store i32 %1, i32* %4, align 4
  store i32 0, i32* %5, align 4
  br label %8

8:                                                ; preds = %61, %2
  %9 = load i32, i32* %5, align 4
  %10 = load i32, i32* %4, align 4
  %11 = icmp slt i32 %9, %10
  br i1 %11, label %12, label %64

12:                                               ; preds = %8
  %13 = load %struct.adp5589_kpad*, %struct.adp5589_kpad** %3, align 8
  %14 = getelementptr inbounds %struct.adp5589_kpad, %struct.adp5589_kpad* %13, i32 0, i32 3
  %15 = load i32, i32* %14, align 8
  %16 = load i64, i64* @ADP5589_5_FIFO_1, align 8
  %17 = load i32, i32* %5, align 4
  %18 = sext i32 %17 to i64
  %19 = add nsw i64 %16, %18
  %20 = call i32 @adp5589_read(i32 %15, i64 %19)
  store i32 %20, i32* %6, align 4
  %21 = load i32, i32* %6, align 4
  %22 = load i32, i32* @KEY_EV_MASK, align 4
  %23 = and i32 %21, %22
  store i32 %23, i32* %7, align 4
  %24 = load i32, i32* %7, align 4
  %25 = load %struct.adp5589_kpad*, %struct.adp5589_kpad** %3, align 8
  %26 = getelementptr inbounds %struct.adp5589_kpad, %struct.adp5589_kpad* %25, i32 0, i32 2
  %27 = load %struct.TYPE_2__*, %struct.TYPE_2__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = icmp sge i32 %24, %29
  br i1 %30, label %31, label %44

31:                                               ; preds = %12
  %32 = load i32, i32* %7, align 4
  %33 = load %struct.adp5589_kpad*, %struct.adp5589_kpad** %3, align 8
  %34 = getelementptr inbounds %struct.adp5589_kpad, %struct.adp5589_kpad* %33, i32 0, i32 2
  %35 = load %struct.TYPE_2__*, %struct.TYPE_2__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = icmp sle i32 %32, %37
  br i1 %38, label %39, label %44

39:                                               ; preds = %31
  %40 = load %struct.adp5589_kpad*, %struct.adp5589_kpad** %3, align 8
  %41 = load i32, i32* %6, align 4
  %42 = load i32, i32* %7, align 4
  %43 = call i32 @adp5589_report_switches(%struct.adp5589_kpad* %40, i32 %41, i32 %42)
  br label %60

44:                                               ; preds = %31, %12
  %45 = load %struct.adp5589_kpad*, %struct.adp5589_kpad** %3, align 8
  %46 = getelementptr inbounds %struct.adp5589_kpad, %struct.adp5589_kpad* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 8
  %48 = load %struct.adp5589_kpad*, %struct.adp5589_kpad** %3, align 8
  %49 = getelementptr inbounds %struct.adp5589_kpad, %struct.adp5589_kpad* %48, i32 0, i32 0
  %50 = load i32*, i32** %49, align 8
  %51 = load i32, i32* %7, align 4
  %52 = sub nsw i32 %51, 1
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds i32, i32* %50, i64 %53
  %55 = load i32, i32* %54, align 4
  %56 = load i32, i32* %6, align 4
  %57 = load i32, i32* @KEY_EV_PRESSED, align 4
  %58 = and i32 %56, %57
  %59 = call i32 @input_report_key(i32 %47, i32 %55, i32 %58)
  br label %60

60:                                               ; preds = %44, %39
  br label %61

61:                                               ; preds = %60
  %62 = load i32, i32* %5, align 4
  %63 = add nsw i32 %62, 1
  store i32 %63, i32* %5, align 4
  br label %8

64:                                               ; preds = %8
  ret void
}

declare dso_local i32 @adp5589_read(i32, i64) #1

declare dso_local i32 @adp5589_report_switches(%struct.adp5589_kpad*, i32, i32) #1

declare dso_local i32 @input_report_key(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
