; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/keyboard/extr_pxa27x_keypad.c_report_rotary_event.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/keyboard/extr_pxa27x_keypad.c_report_rotary_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pxa27x_keypad = type { i32*, i8*, %struct.input_dev* }
%struct.input_dev = type { i32 }

@MAX_MATRIX_KEY_NUM = common dso_local global i32 0, align 4
@EV_MSC = common dso_local global i32 0, align 4
@MSC_SCAN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pxa27x_keypad*, i32, i32)* @report_rotary_event to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @report_rotary_event(%struct.pxa27x_keypad* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.pxa27x_keypad*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.input_dev*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8, align 1
  store %struct.pxa27x_keypad* %0, %struct.pxa27x_keypad** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %10 = load %struct.pxa27x_keypad*, %struct.pxa27x_keypad** %4, align 8
  %11 = getelementptr inbounds %struct.pxa27x_keypad, %struct.pxa27x_keypad* %10, i32 0, i32 2
  %12 = load %struct.input_dev*, %struct.input_dev** %11, align 8
  store %struct.input_dev* %12, %struct.input_dev** %7, align 8
  %13 = load i32, i32* %6, align 4
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %16

15:                                               ; preds = %3
  br label %75

16:                                               ; preds = %3
  %17 = load %struct.pxa27x_keypad*, %struct.pxa27x_keypad** %4, align 8
  %18 = getelementptr inbounds %struct.pxa27x_keypad, %struct.pxa27x_keypad* %17, i32 0, i32 0
  %19 = load i32*, i32** %18, align 8
  %20 = load i32, i32* %5, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds i32, i32* %19, i64 %21
  %23 = load i32, i32* %22, align 4
  %24 = icmp eq i32 %23, -1
  br i1 %24, label %25, label %62

25:                                               ; preds = %16
  %26 = load i32, i32* @MAX_MATRIX_KEY_NUM, align 4
  %27 = load i32, i32* %5, align 4
  %28 = mul nsw i32 2, %27
  %29 = add nsw i32 %26, %28
  %30 = load i32, i32* %6, align 4
  %31 = icmp sgt i32 %30, 0
  %32 = zext i1 %31 to i64
  %33 = select i1 %31, i32 0, i32 1
  %34 = add nsw i32 %29, %33
  store i32 %34, i32* %8, align 4
  %35 = load %struct.pxa27x_keypad*, %struct.pxa27x_keypad** %4, align 8
  %36 = getelementptr inbounds %struct.pxa27x_keypad, %struct.pxa27x_keypad* %35, i32 0, i32 1
  %37 = load i8*, i8** %36, align 8
  %38 = load i32, i32* %8, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds i8, i8* %37, i64 %39
  %41 = load i8, i8* %40, align 1
  store i8 %41, i8* %9, align 1
  %42 = load %struct.input_dev*, %struct.input_dev** %7, align 8
  %43 = load i32, i32* @EV_MSC, align 4
  %44 = load i32, i32* @MSC_SCAN, align 4
  %45 = load i32, i32* %8, align 4
  %46 = call i32 @input_event(%struct.input_dev* %42, i32 %43, i32 %44, i32 %45)
  %47 = load %struct.input_dev*, %struct.input_dev** %7, align 8
  %48 = load i8, i8* %9, align 1
  %49 = call i32 @input_report_key(%struct.input_dev* %47, i8 zeroext %48, i32 1)
  %50 = load %struct.input_dev*, %struct.input_dev** %7, align 8
  %51 = call i32 @input_sync(%struct.input_dev* %50)
  %52 = load %struct.input_dev*, %struct.input_dev** %7, align 8
  %53 = load i32, i32* @EV_MSC, align 4
  %54 = load i32, i32* @MSC_SCAN, align 4
  %55 = load i32, i32* %8, align 4
  %56 = call i32 @input_event(%struct.input_dev* %52, i32 %53, i32 %54, i32 %55)
  %57 = load %struct.input_dev*, %struct.input_dev** %7, align 8
  %58 = load i8, i8* %9, align 1
  %59 = call i32 @input_report_key(%struct.input_dev* %57, i8 zeroext %58, i32 0)
  %60 = load %struct.input_dev*, %struct.input_dev** %7, align 8
  %61 = call i32 @input_sync(%struct.input_dev* %60)
  br label %75

62:                                               ; preds = %16
  %63 = load %struct.input_dev*, %struct.input_dev** %7, align 8
  %64 = load %struct.pxa27x_keypad*, %struct.pxa27x_keypad** %4, align 8
  %65 = getelementptr inbounds %struct.pxa27x_keypad, %struct.pxa27x_keypad* %64, i32 0, i32 0
  %66 = load i32*, i32** %65, align 8
  %67 = load i32, i32* %5, align 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds i32, i32* %66, i64 %68
  %70 = load i32, i32* %69, align 4
  %71 = load i32, i32* %6, align 4
  %72 = call i32 @input_report_rel(%struct.input_dev* %63, i32 %70, i32 %71)
  %73 = load %struct.input_dev*, %struct.input_dev** %7, align 8
  %74 = call i32 @input_sync(%struct.input_dev* %73)
  br label %75

75:                                               ; preds = %15, %62, %25
  ret void
}

declare dso_local i32 @input_event(%struct.input_dev*, i32, i32, i32) #1

declare dso_local i32 @input_report_key(%struct.input_dev*, i8 zeroext, i32) #1

declare dso_local i32 @input_sync(%struct.input_dev*) #1

declare dso_local i32 @input_report_rel(%struct.input_dev*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
