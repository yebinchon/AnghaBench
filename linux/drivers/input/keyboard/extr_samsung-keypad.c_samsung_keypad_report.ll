; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/keyboard/extr_samsung-keypad.c_samsung_keypad_report.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/keyboard/extr_samsung-keypad.c_samsung_keypad_report.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.samsung_keypad = type { i32, i32*, i32, %struct.input_dev*, i32*, i32 }
%struct.input_dev = type { i32 }

@.str = private unnamed_addr constant [26 x i8] c"key %s, row: %d, col: %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"pressed\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"released\00", align 1
@EV_MSC = common dso_local global i32 0, align 4
@MSC_SCAN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.samsung_keypad*, i32*)* @samsung_keypad_report to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @samsung_keypad_report(%struct.samsung_keypad* %0, i32* %1) #0 {
  %3 = alloca %struct.samsung_keypad*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.input_dev*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.samsung_keypad* %0, %struct.samsung_keypad** %3, align 8
  store i32* %1, i32** %4, align 8
  %12 = load %struct.samsung_keypad*, %struct.samsung_keypad** %3, align 8
  %13 = getelementptr inbounds %struct.samsung_keypad, %struct.samsung_keypad* %12, i32 0, i32 3
  %14 = load %struct.input_dev*, %struct.input_dev** %13, align 8
  store %struct.input_dev* %14, %struct.input_dev** %5, align 8
  store i32 0, i32* %8, align 4
  store i32 0, i32* %10, align 4
  br label %15

15:                                               ; preds = %108, %2
  %16 = load i32, i32* %10, align 4
  %17 = load %struct.samsung_keypad*, %struct.samsung_keypad** %3, align 8
  %18 = getelementptr inbounds %struct.samsung_keypad, %struct.samsung_keypad* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = icmp ult i32 %16, %19
  br i1 %20, label %21, label %111

21:                                               ; preds = %15
  %22 = load i32*, i32** %4, align 8
  %23 = load i32, i32* %10, align 4
  %24 = zext i32 %23 to i64
  %25 = getelementptr inbounds i32, i32* %22, i64 %24
  %26 = load i32, i32* %25, align 4
  %27 = load %struct.samsung_keypad*, %struct.samsung_keypad** %3, align 8
  %28 = getelementptr inbounds %struct.samsung_keypad, %struct.samsung_keypad* %27, i32 0, i32 1
  %29 = load i32*, i32** %28, align 8
  %30 = load i32, i32* %10, align 4
  %31 = zext i32 %30 to i64
  %32 = getelementptr inbounds i32, i32* %29, i64 %31
  %33 = load i32, i32* %32, align 4
  %34 = xor i32 %26, %33
  store i32 %34, i32* %6, align 4
  %35 = load i32*, i32** %4, align 8
  %36 = load i32, i32* %10, align 4
  %37 = zext i32 %36 to i64
  %38 = getelementptr inbounds i32, i32* %35, i64 %37
  %39 = load i32, i32* %38, align 4
  %40 = load i32, i32* %8, align 4
  %41 = or i32 %40, %39
  store i32 %41, i32* %8, align 4
  %42 = load i32, i32* %6, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %45, label %44

44:                                               ; preds = %21
  br label %108

45:                                               ; preds = %21
  store i32 0, i32* %11, align 4
  br label %46

46:                                               ; preds = %100, %45
  %47 = load i32, i32* %11, align 4
  %48 = load %struct.samsung_keypad*, %struct.samsung_keypad** %3, align 8
  %49 = getelementptr inbounds %struct.samsung_keypad, %struct.samsung_keypad* %48, i32 0, i32 2
  %50 = load i32, i32* %49, align 8
  %51 = icmp ult i32 %47, %50
  br i1 %51, label %52, label %103

52:                                               ; preds = %46
  %53 = load i32, i32* %6, align 4
  %54 = load i32, i32* %11, align 4
  %55 = shl i32 1, %54
  %56 = and i32 %53, %55
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %59, label %58

58:                                               ; preds = %52
  br label %100

59:                                               ; preds = %52
  %60 = load i32*, i32** %4, align 8
  %61 = load i32, i32* %10, align 4
  %62 = zext i32 %61 to i64
  %63 = getelementptr inbounds i32, i32* %60, i64 %62
  %64 = load i32, i32* %63, align 4
  %65 = load i32, i32* %11, align 4
  %66 = shl i32 1, %65
  %67 = and i32 %64, %66
  store i32 %67, i32* %7, align 4
  %68 = load %struct.samsung_keypad*, %struct.samsung_keypad** %3, align 8
  %69 = getelementptr inbounds %struct.samsung_keypad, %struct.samsung_keypad* %68, i32 0, i32 3
  %70 = load %struct.input_dev*, %struct.input_dev** %69, align 8
  %71 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %70, i32 0, i32 0
  %72 = load i32, i32* %7, align 4
  %73 = icmp ne i32 %72, 0
  %74 = zext i1 %73 to i64
  %75 = select i1 %73, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0)
  %76 = load i32, i32* %11, align 4
  %77 = load i32, i32* %10, align 4
  %78 = call i32 @dev_dbg(i32* %71, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i8* %75, i32 %76, i32 %77)
  %79 = load i32, i32* %11, align 4
  %80 = load i32, i32* %10, align 4
  %81 = load %struct.samsung_keypad*, %struct.samsung_keypad** %3, align 8
  %82 = getelementptr inbounds %struct.samsung_keypad, %struct.samsung_keypad* %81, i32 0, i32 5
  %83 = load i32, i32* %82, align 8
  %84 = call i32 @MATRIX_SCAN_CODE(i32 %79, i32 %80, i32 %83)
  store i32 %84, i32* %9, align 4
  %85 = load %struct.input_dev*, %struct.input_dev** %5, align 8
  %86 = load i32, i32* @EV_MSC, align 4
  %87 = load i32, i32* @MSC_SCAN, align 4
  %88 = load i32, i32* %9, align 4
  %89 = call i32 @input_event(%struct.input_dev* %85, i32 %86, i32 %87, i32 %88)
  %90 = load %struct.input_dev*, %struct.input_dev** %5, align 8
  %91 = load %struct.samsung_keypad*, %struct.samsung_keypad** %3, align 8
  %92 = getelementptr inbounds %struct.samsung_keypad, %struct.samsung_keypad* %91, i32 0, i32 4
  %93 = load i32*, i32** %92, align 8
  %94 = load i32, i32* %9, align 4
  %95 = zext i32 %94 to i64
  %96 = getelementptr inbounds i32, i32* %93, i64 %95
  %97 = load i32, i32* %96, align 4
  %98 = load i32, i32* %7, align 4
  %99 = call i32 @input_report_key(%struct.input_dev* %90, i32 %97, i32 %98)
  br label %100

100:                                              ; preds = %59, %58
  %101 = load i32, i32* %11, align 4
  %102 = add i32 %101, 1
  store i32 %102, i32* %11, align 4
  br label %46

103:                                              ; preds = %46
  %104 = load %struct.samsung_keypad*, %struct.samsung_keypad** %3, align 8
  %105 = getelementptr inbounds %struct.samsung_keypad, %struct.samsung_keypad* %104, i32 0, i32 3
  %106 = load %struct.input_dev*, %struct.input_dev** %105, align 8
  %107 = call i32 @input_sync(%struct.input_dev* %106)
  br label %108

108:                                              ; preds = %103, %44
  %109 = load i32, i32* %10, align 4
  %110 = add i32 %109, 1
  store i32 %110, i32* %10, align 4
  br label %15

111:                                              ; preds = %15
  %112 = load %struct.samsung_keypad*, %struct.samsung_keypad** %3, align 8
  %113 = getelementptr inbounds %struct.samsung_keypad, %struct.samsung_keypad* %112, i32 0, i32 1
  %114 = load i32*, i32** %113, align 8
  %115 = load i32*, i32** %4, align 8
  %116 = call i32 @memcpy(i32* %114, i32* %115, i32 8)
  %117 = load i32, i32* %8, align 4
  ret i32 %117
}

declare dso_local i32 @dev_dbg(i32*, i8*, i8*, i32, i32) #1

declare dso_local i32 @MATRIX_SCAN_CODE(i32, i32, i32) #1

declare dso_local i32 @input_event(%struct.input_dev*, i32, i32, i32) #1

declare dso_local i32 @input_report_key(%struct.input_dev*, i32, i32) #1

declare dso_local i32 @input_sync(%struct.input_dev*) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
