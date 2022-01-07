; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/keyboard/extr_adp5588-keys.c_adp5588_report_events.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/keyboard/extr_adp5588-keys.c_adp5588_report_events.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.adp5588_kpad = type { i32, i32*, i32, %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32, i32 }

@Key_EVENTA = common dso_local global i64 0, align 8
@KEY_EV_MASK = common dso_local global i32 0, align 4
@GPI_PIN_BASE = common dso_local global i32 0, align 4
@GPI_PIN_END = common dso_local global i32 0, align 4
@KEY_EV_PRESSED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.adp5588_kpad*, i32)* @adp5588_report_events to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @adp5588_report_events(%struct.adp5588_kpad* %0, i32 %1) #0 {
  %3 = alloca %struct.adp5588_kpad*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.adp5588_kpad* %0, %struct.adp5588_kpad** %3, align 8
  store i32 %1, i32* %4, align 4
  store i32 0, i32* %5, align 4
  br label %9

9:                                                ; preds = %88, %2
  %10 = load i32, i32* %5, align 4
  %11 = load i32, i32* %4, align 4
  %12 = icmp slt i32 %10, %11
  br i1 %12, label %13, label %91

13:                                               ; preds = %9
  %14 = load %struct.adp5588_kpad*, %struct.adp5588_kpad** %3, align 8
  %15 = getelementptr inbounds %struct.adp5588_kpad, %struct.adp5588_kpad* %14, i32 0, i32 4
  %16 = load i32, i32* %15, align 8
  %17 = load i64, i64* @Key_EVENTA, align 8
  %18 = load i32, i32* %5, align 4
  %19 = sext i32 %18 to i64
  %20 = add nsw i64 %17, %19
  %21 = call i32 @adp5588_read(i32 %16, i64 %20)
  store i32 %21, i32* %7, align 4
  %22 = load i32, i32* %7, align 4
  %23 = load i32, i32* @KEY_EV_MASK, align 4
  %24 = and i32 %22, %23
  store i32 %24, i32* %8, align 4
  %25 = load i32, i32* %8, align 4
  %26 = load i32, i32* @GPI_PIN_BASE, align 4
  %27 = icmp sge i32 %25, %26
  br i1 %27, label %28, label %71

28:                                               ; preds = %13
  %29 = load i32, i32* %8, align 4
  %30 = load i32, i32* @GPI_PIN_END, align 4
  %31 = icmp sle i32 %29, %30
  br i1 %31, label %32, label %71

32:                                               ; preds = %28
  store i32 0, i32* %6, align 4
  br label %33

33:                                               ; preds = %67, %32
  %34 = load i32, i32* %6, align 4
  %35 = load %struct.adp5588_kpad*, %struct.adp5588_kpad** %3, align 8
  %36 = getelementptr inbounds %struct.adp5588_kpad, %struct.adp5588_kpad* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = icmp slt i32 %34, %37
  br i1 %38, label %39, label %70

39:                                               ; preds = %33
  %40 = load i32, i32* %8, align 4
  %41 = load %struct.adp5588_kpad*, %struct.adp5588_kpad** %3, align 8
  %42 = getelementptr inbounds %struct.adp5588_kpad, %struct.adp5588_kpad* %41, i32 0, i32 3
  %43 = load %struct.TYPE_2__*, %struct.TYPE_2__** %42, align 8
  %44 = load i32, i32* %6, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i64 %45
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = icmp eq i32 %40, %48
  br i1 %49, label %50, label %66

50:                                               ; preds = %39
  %51 = load %struct.adp5588_kpad*, %struct.adp5588_kpad** %3, align 8
  %52 = getelementptr inbounds %struct.adp5588_kpad, %struct.adp5588_kpad* %51, i32 0, i32 2
  %53 = load i32, i32* %52, align 8
  %54 = load %struct.adp5588_kpad*, %struct.adp5588_kpad** %3, align 8
  %55 = getelementptr inbounds %struct.adp5588_kpad, %struct.adp5588_kpad* %54, i32 0, i32 3
  %56 = load %struct.TYPE_2__*, %struct.TYPE_2__** %55, align 8
  %57 = load i32, i32* %6, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %56, i64 %58
  %60 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 4
  %62 = load i32, i32* %7, align 4
  %63 = load i32, i32* @KEY_EV_PRESSED, align 4
  %64 = and i32 %62, %63
  %65 = call i32 @input_report_switch(i32 %53, i32 %61, i32 %64)
  br label %70

66:                                               ; preds = %39
  br label %67

67:                                               ; preds = %66
  %68 = load i32, i32* %6, align 4
  %69 = add nsw i32 %68, 1
  store i32 %69, i32* %6, align 4
  br label %33

70:                                               ; preds = %50, %33
  br label %87

71:                                               ; preds = %28, %13
  %72 = load %struct.adp5588_kpad*, %struct.adp5588_kpad** %3, align 8
  %73 = getelementptr inbounds %struct.adp5588_kpad, %struct.adp5588_kpad* %72, i32 0, i32 2
  %74 = load i32, i32* %73, align 8
  %75 = load %struct.adp5588_kpad*, %struct.adp5588_kpad** %3, align 8
  %76 = getelementptr inbounds %struct.adp5588_kpad, %struct.adp5588_kpad* %75, i32 0, i32 1
  %77 = load i32*, i32** %76, align 8
  %78 = load i32, i32* %8, align 4
  %79 = sub nsw i32 %78, 1
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds i32, i32* %77, i64 %80
  %82 = load i32, i32* %81, align 4
  %83 = load i32, i32* %7, align 4
  %84 = load i32, i32* @KEY_EV_PRESSED, align 4
  %85 = and i32 %83, %84
  %86 = call i32 @input_report_key(i32 %74, i32 %82, i32 %85)
  br label %87

87:                                               ; preds = %71, %70
  br label %88

88:                                               ; preds = %87
  %89 = load i32, i32* %5, align 4
  %90 = add nsw i32 %89, 1
  store i32 %90, i32* %5, align 4
  br label %9

91:                                               ; preds = %9
  ret void
}

declare dso_local i32 @adp5588_read(i32, i64) #1

declare dso_local i32 @input_report_switch(i32, i32, i32) #1

declare dso_local i32 @input_report_key(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
