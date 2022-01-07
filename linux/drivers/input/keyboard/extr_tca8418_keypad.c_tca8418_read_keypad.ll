; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/keyboard/extr_tca8418_keypad.c_tca8418_read_keypad.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/keyboard/extr_tca8418_keypad.c_tca8418_read_keypad.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tca8418_keypad = type { i32, %struct.TYPE_2__*, %struct.input_dev* }
%struct.TYPE_2__ = type { i32 }
%struct.input_dev = type { i16* }

@REG_KEY_EVENT_A = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"unable to read REG_KEY_EVENT_A\0A\00", align 1
@KEY_EVENT_VALUE = common dso_local global i32 0, align 4
@KEY_EVENT_CODE = common dso_local global i32 0, align 4
@TCA8418_MAX_COLS = common dso_local global i32 0, align 4
@EV_MSC = common dso_local global i32 0, align 4
@MSC_SCAN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.tca8418_keypad*)* @tca8418_read_keypad to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tca8418_read_keypad(%struct.tca8418_keypad* %0) #0 {
  %2 = alloca %struct.tca8418_keypad*, align 8
  %3 = alloca %struct.input_dev*, align 8
  %4 = alloca i16*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.tca8418_keypad* %0, %struct.tca8418_keypad** %2, align 8
  %11 = load %struct.tca8418_keypad*, %struct.tca8418_keypad** %2, align 8
  %12 = getelementptr inbounds %struct.tca8418_keypad, %struct.tca8418_keypad* %11, i32 0, i32 2
  %13 = load %struct.input_dev*, %struct.input_dev** %12, align 8
  store %struct.input_dev* %13, %struct.input_dev** %3, align 8
  %14 = load %struct.input_dev*, %struct.input_dev** %3, align 8
  %15 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %14, i32 0, i32 0
  %16 = load i16*, i16** %15, align 8
  store i16* %16, i16** %4, align 8
  br label %17

17:                                               ; preds = %84, %1
  %18 = load %struct.tca8418_keypad*, %struct.tca8418_keypad** %2, align 8
  %19 = load i32, i32* @REG_KEY_EVENT_A, align 4
  %20 = call i32 @tca8418_read_byte(%struct.tca8418_keypad* %18, i32 %19, i32* %8)
  store i32 %20, i32* %5, align 4
  %21 = load i32, i32* %5, align 4
  %22 = icmp slt i32 %21, 0
  br i1 %22, label %23, label %29

23:                                               ; preds = %17
  %24 = load %struct.tca8418_keypad*, %struct.tca8418_keypad** %2, align 8
  %25 = getelementptr inbounds %struct.tca8418_keypad, %struct.tca8418_keypad* %24, i32 0, i32 1
  %26 = load %struct.TYPE_2__*, %struct.TYPE_2__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 0
  %28 = call i32 @dev_err(i32* %27, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0))
  br label %85

29:                                               ; preds = %17
  %30 = load i32, i32* %8, align 4
  %31 = icmp sle i32 %30, 0
  br i1 %31, label %32, label %33

32:                                               ; preds = %29
  br label %85

33:                                               ; preds = %29
  %34 = load i32, i32* %8, align 4
  %35 = load i32, i32* @KEY_EVENT_VALUE, align 4
  %36 = and i32 %34, %35
  store i32 %36, i32* %9, align 4
  %37 = load i32, i32* %8, align 4
  %38 = load i32, i32* @KEY_EVENT_CODE, align 4
  %39 = and i32 %37, %38
  store i32 %39, i32* %10, align 4
  %40 = load i32, i32* %10, align 4
  %41 = load i32, i32* @TCA8418_MAX_COLS, align 4
  %42 = sdiv i32 %40, %41
  store i32 %42, i32* %7, align 4
  %43 = load i32, i32* %10, align 4
  %44 = load i32, i32* @TCA8418_MAX_COLS, align 4
  %45 = srem i32 %43, %44
  store i32 %45, i32* %6, align 4
  %46 = load i32, i32* %6, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %50

48:                                               ; preds = %33
  %49 = load i32, i32* %7, align 4
  br label %53

50:                                               ; preds = %33
  %51 = load i32, i32* %7, align 4
  %52 = sub nsw i32 %51, 1
  br label %53

53:                                               ; preds = %50, %48
  %54 = phi i32 [ %49, %48 ], [ %52, %50 ]
  store i32 %54, i32* %7, align 4
  %55 = load i32, i32* %6, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %60

57:                                               ; preds = %53
  %58 = load i32, i32* %6, align 4
  %59 = sub nsw i32 %58, 1
  br label %63

60:                                               ; preds = %53
  %61 = load i32, i32* @TCA8418_MAX_COLS, align 4
  %62 = sub nsw i32 %61, 1
  br label %63

63:                                               ; preds = %60, %57
  %64 = phi i32 [ %59, %57 ], [ %62, %60 ]
  store i32 %64, i32* %6, align 4
  %65 = load i32, i32* %7, align 4
  %66 = load i32, i32* %6, align 4
  %67 = load %struct.tca8418_keypad*, %struct.tca8418_keypad** %2, align 8
  %68 = getelementptr inbounds %struct.tca8418_keypad, %struct.tca8418_keypad* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 8
  %70 = call i32 @MATRIX_SCAN_CODE(i32 %65, i32 %66, i32 %69)
  store i32 %70, i32* %10, align 4
  %71 = load %struct.input_dev*, %struct.input_dev** %3, align 8
  %72 = load i32, i32* @EV_MSC, align 4
  %73 = load i32, i32* @MSC_SCAN, align 4
  %74 = load i32, i32* %10, align 4
  %75 = call i32 @input_event(%struct.input_dev* %71, i32 %72, i32 %73, i32 %74)
  %76 = load %struct.input_dev*, %struct.input_dev** %3, align 8
  %77 = load i16*, i16** %4, align 8
  %78 = load i32, i32* %10, align 4
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds i16, i16* %77, i64 %79
  %81 = load i16, i16* %80, align 2
  %82 = load i32, i32* %9, align 4
  %83 = call i32 @input_report_key(%struct.input_dev* %76, i16 zeroext %81, i32 %82)
  br label %84

84:                                               ; preds = %63
  br i1 true, label %17, label %85

85:                                               ; preds = %84, %32, %23
  %86 = load %struct.input_dev*, %struct.input_dev** %3, align 8
  %87 = call i32 @input_sync(%struct.input_dev* %86)
  ret void
}

declare dso_local i32 @tca8418_read_byte(%struct.tca8418_keypad*, i32, i32*) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

declare dso_local i32 @MATRIX_SCAN_CODE(i32, i32, i32) #1

declare dso_local i32 @input_event(%struct.input_dev*, i32, i32, i32) #1

declare dso_local i32 @input_report_key(%struct.input_dev*, i16 zeroext, i32) #1

declare dso_local i32 @input_sync(%struct.input_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
