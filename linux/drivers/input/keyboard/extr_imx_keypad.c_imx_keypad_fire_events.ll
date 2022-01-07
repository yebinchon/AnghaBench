; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/keyboard/extr_imx_keypad.c_imx_keypad_fire_events.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/keyboard/extr_imx_keypad.c_imx_keypad_fire_events.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.imx_keypad = type { i32, i16*, i32, i32*, %struct.input_dev* }
%struct.input_dev = type { i32 }

@MAX_MATRIX_KEY_COLS = common dso_local global i32 0, align 4
@MAX_MATRIX_KEY_ROWS = common dso_local global i32 0, align 4
@MATRIX_ROW_SHIFT = common dso_local global i32 0, align 4
@EV_MSC = common dso_local global i32 0, align 4
@MSC_SCAN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"Event code: %d, val: %d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.imx_keypad*, i16*)* @imx_keypad_fire_events to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @imx_keypad_fire_events(%struct.imx_keypad* %0, i16* %1) #0 {
  %3 = alloca %struct.imx_keypad*, align 8
  %4 = alloca i16*, align 8
  %5 = alloca %struct.input_dev*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i16, align 2
  %9 = alloca i32, align 4
  store %struct.imx_keypad* %0, %struct.imx_keypad** %3, align 8
  store i16* %1, i16** %4, align 8
  %10 = load %struct.imx_keypad*, %struct.imx_keypad** %3, align 8
  %11 = getelementptr inbounds %struct.imx_keypad, %struct.imx_keypad* %10, i32 0, i32 4
  %12 = load %struct.input_dev*, %struct.input_dev** %11, align 8
  store %struct.input_dev* %12, %struct.input_dev** %5, align 8
  store i32 0, i32* %7, align 4
  br label %13

13:                                               ; preds = %122, %2
  %14 = load i32, i32* %7, align 4
  %15 = load i32, i32* @MAX_MATRIX_KEY_COLS, align 4
  %16 = icmp slt i32 %14, %15
  br i1 %16, label %17, label %125

17:                                               ; preds = %13
  %18 = load %struct.imx_keypad*, %struct.imx_keypad** %3, align 8
  %19 = getelementptr inbounds %struct.imx_keypad, %struct.imx_keypad* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = load i32, i32* %7, align 4
  %22 = shl i32 1, %21
  %23 = and i32 %20, %22
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %17
  br label %122

26:                                               ; preds = %17
  %27 = load %struct.imx_keypad*, %struct.imx_keypad** %3, align 8
  %28 = getelementptr inbounds %struct.imx_keypad, %struct.imx_keypad* %27, i32 0, i32 1
  %29 = load i16*, i16** %28, align 8
  %30 = load i32, i32* %7, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds i16, i16* %29, i64 %31
  %33 = load i16, i16* %32, align 2
  %34 = zext i16 %33 to i32
  %35 = load i16*, i16** %4, align 8
  %36 = load i32, i32* %7, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds i16, i16* %35, i64 %37
  %39 = load i16, i16* %38, align 2
  %40 = zext i16 %39 to i32
  %41 = xor i32 %34, %40
  %42 = trunc i32 %41 to i16
  store i16 %42, i16* %8, align 2
  %43 = load i16, i16* %8, align 2
  %44 = zext i16 %43 to i32
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %46, label %47

46:                                               ; preds = %26
  br label %122

47:                                               ; preds = %26
  store i32 0, i32* %6, align 4
  br label %48

48:                                               ; preds = %118, %47
  %49 = load i32, i32* %6, align 4
  %50 = load i32, i32* @MAX_MATRIX_KEY_ROWS, align 4
  %51 = icmp slt i32 %49, %50
  br i1 %51, label %52, label %121

52:                                               ; preds = %48
  %53 = load %struct.imx_keypad*, %struct.imx_keypad** %3, align 8
  %54 = getelementptr inbounds %struct.imx_keypad, %struct.imx_keypad* %53, i32 0, i32 2
  %55 = load i32, i32* %54, align 8
  %56 = load i32, i32* %6, align 4
  %57 = shl i32 1, %56
  %58 = and i32 %55, %57
  %59 = icmp eq i32 %58, 0
  br i1 %59, label %60, label %61

60:                                               ; preds = %52
  br label %118

61:                                               ; preds = %52
  %62 = load i16, i16* %8, align 2
  %63 = zext i16 %62 to i32
  %64 = load i32, i32* %6, align 4
  %65 = shl i32 1, %64
  %66 = and i32 %63, %65
  %67 = icmp eq i32 %66, 0
  br i1 %67, label %68, label %69

68:                                               ; preds = %61
  br label %118

69:                                               ; preds = %61
  %70 = load i32, i32* %6, align 4
  %71 = load i32, i32* %7, align 4
  %72 = load i32, i32* @MATRIX_ROW_SHIFT, align 4
  %73 = call i32 @MATRIX_SCAN_CODE(i32 %70, i32 %71, i32 %72)
  store i32 %73, i32* %9, align 4
  %74 = load %struct.input_dev*, %struct.input_dev** %5, align 8
  %75 = load i32, i32* @EV_MSC, align 4
  %76 = load i32, i32* @MSC_SCAN, align 4
  %77 = load i32, i32* %9, align 4
  %78 = call i32 @input_event(%struct.input_dev* %74, i32 %75, i32 %76, i32 %77)
  %79 = load %struct.input_dev*, %struct.input_dev** %5, align 8
  %80 = load %struct.imx_keypad*, %struct.imx_keypad** %3, align 8
  %81 = getelementptr inbounds %struct.imx_keypad, %struct.imx_keypad* %80, i32 0, i32 3
  %82 = load i32*, i32** %81, align 8
  %83 = load i32, i32* %9, align 4
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds i32, i32* %82, i64 %84
  %86 = load i32, i32* %85, align 4
  %87 = load i16*, i16** %4, align 8
  %88 = load i32, i32* %7, align 4
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds i16, i16* %87, i64 %89
  %91 = load i16, i16* %90, align 2
  %92 = zext i16 %91 to i32
  %93 = load i32, i32* %6, align 4
  %94 = shl i32 1, %93
  %95 = and i32 %92, %94
  %96 = trunc i32 %95 to i16
  %97 = call i32 @input_report_key(%struct.input_dev* %79, i32 %86, i16 zeroext %96)
  %98 = load %struct.input_dev*, %struct.input_dev** %5, align 8
  %99 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %98, i32 0, i32 0
  %100 = load %struct.imx_keypad*, %struct.imx_keypad** %3, align 8
  %101 = getelementptr inbounds %struct.imx_keypad, %struct.imx_keypad* %100, i32 0, i32 3
  %102 = load i32*, i32** %101, align 8
  %103 = load i32, i32* %9, align 4
  %104 = sext i32 %103 to i64
  %105 = getelementptr inbounds i32, i32* %102, i64 %104
  %106 = load i32, i32* %105, align 4
  %107 = load i16*, i16** %4, align 8
  %108 = load i32, i32* %7, align 4
  %109 = sext i32 %108 to i64
  %110 = getelementptr inbounds i16, i16* %107, i64 %109
  %111 = load i16, i16* %110, align 2
  %112 = zext i16 %111 to i32
  %113 = load i32, i32* %6, align 4
  %114 = shl i32 1, %113
  %115 = and i32 %112, %114
  %116 = trunc i32 %115 to i16
  %117 = call i32 @dev_dbg(i32* %99, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 %106, i16 zeroext %116)
  br label %118

118:                                              ; preds = %69, %68, %60
  %119 = load i32, i32* %6, align 4
  %120 = add nsw i32 %119, 1
  store i32 %120, i32* %6, align 4
  br label %48

121:                                              ; preds = %48
  br label %122

122:                                              ; preds = %121, %46, %25
  %123 = load i32, i32* %7, align 4
  %124 = add nsw i32 %123, 1
  store i32 %124, i32* %7, align 4
  br label %13

125:                                              ; preds = %13
  %126 = load %struct.input_dev*, %struct.input_dev** %5, align 8
  %127 = call i32 @input_sync(%struct.input_dev* %126)
  ret void
}

declare dso_local i32 @MATRIX_SCAN_CODE(i32, i32, i32) #1

declare dso_local i32 @input_event(%struct.input_dev*, i32, i32, i32) #1

declare dso_local i32 @input_report_key(%struct.input_dev*, i32, i16 zeroext) #1

declare dso_local i32 @dev_dbg(i32*, i8*, i32, i16 zeroext) #1

declare dso_local i32 @input_sync(%struct.input_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
