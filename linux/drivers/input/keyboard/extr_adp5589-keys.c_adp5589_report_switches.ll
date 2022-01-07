; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/keyboard/extr_adp5589-keys.c_adp5589_report_switches.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/keyboard/extr_adp5589-keys.c_adp5589_report_switches.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.adp5589_kpad = type { i32, %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32, i32 }

@KEY_EV_PRESSED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.adp5589_kpad*, i32, i32)* @adp5589_report_switches to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @adp5589_report_switches(%struct.adp5589_kpad* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.adp5589_kpad*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.adp5589_kpad* %0, %struct.adp5589_kpad** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  store i32 0, i32* %7, align 4
  br label %8

8:                                                ; preds = %42, %3
  %9 = load i32, i32* %7, align 4
  %10 = load %struct.adp5589_kpad*, %struct.adp5589_kpad** %4, align 8
  %11 = getelementptr inbounds %struct.adp5589_kpad, %struct.adp5589_kpad* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = icmp slt i32 %9, %12
  br i1 %13, label %14, label %45

14:                                               ; preds = %8
  %15 = load i32, i32* %6, align 4
  %16 = load %struct.adp5589_kpad*, %struct.adp5589_kpad** %4, align 8
  %17 = getelementptr inbounds %struct.adp5589_kpad, %struct.adp5589_kpad* %16, i32 0, i32 1
  %18 = load %struct.TYPE_2__*, %struct.TYPE_2__** %17, align 8
  %19 = load i32, i32* %7, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i64 %20
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = icmp eq i32 %15, %23
  br i1 %24, label %25, label %41

25:                                               ; preds = %14
  %26 = load %struct.adp5589_kpad*, %struct.adp5589_kpad** %4, align 8
  %27 = getelementptr inbounds %struct.adp5589_kpad, %struct.adp5589_kpad* %26, i32 0, i32 2
  %28 = load i32, i32* %27, align 8
  %29 = load %struct.adp5589_kpad*, %struct.adp5589_kpad** %4, align 8
  %30 = getelementptr inbounds %struct.adp5589_kpad, %struct.adp5589_kpad* %29, i32 0, i32 1
  %31 = load %struct.TYPE_2__*, %struct.TYPE_2__** %30, align 8
  %32 = load i32, i32* %7, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i64 %33
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = load i32, i32* %5, align 4
  %38 = load i32, i32* @KEY_EV_PRESSED, align 4
  %39 = and i32 %37, %38
  %40 = call i32 @input_report_switch(i32 %28, i32 %36, i32 %39)
  br label %45

41:                                               ; preds = %14
  br label %42

42:                                               ; preds = %41
  %43 = load i32, i32* %7, align 4
  %44 = add nsw i32 %43, 1
  store i32 %44, i32* %7, align 4
  br label %8

45:                                               ; preds = %25, %8
  ret void
}

declare dso_local i32 @input_report_switch(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
