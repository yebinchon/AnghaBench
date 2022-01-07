; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/keyboard/extr_twl4030_keypad.c_twl4030_kp_scan.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/keyboard/extr_twl4030_keypad.c_twl4030_kp_scan.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.twl4030_keypad = type { i32, i32*, i32, i32*, i32, %struct.input_dev* }
%struct.input_dev = type { i32 }

@TWL4030_MAX_ROWS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [16 x i8] c"key [%d:%d] %s\0A\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"press\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"release\00", align 1
@TWL4030_ROW_SHIFT = common dso_local global i32 0, align 4
@EV_MSC = common dso_local global i32 0, align 4
@MSC_SCAN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.twl4030_keypad*, i32)* @twl4030_kp_scan to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @twl4030_kp_scan(%struct.twl4030_keypad* %0, i32 %1) #0 {
  %3 = alloca %struct.twl4030_keypad*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.input_dev*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.twl4030_keypad* %0, %struct.twl4030_keypad** %3, align 8
  store i32 %1, i32* %4, align 4
  %14 = load %struct.twl4030_keypad*, %struct.twl4030_keypad** %3, align 8
  %15 = getelementptr inbounds %struct.twl4030_keypad, %struct.twl4030_keypad* %14, i32 0, i32 5
  %16 = load %struct.input_dev*, %struct.input_dev** %15, align 8
  store %struct.input_dev* %16, %struct.input_dev** %5, align 8
  %17 = load i32, i32* @TWL4030_MAX_ROWS, align 4
  %18 = zext i32 %17 to i64
  %19 = call i8* @llvm.stacksave()
  store i8* %19, i8** %6, align 8
  %20 = alloca i32, i64 %18, align 16
  store i64 %18, i64* %7, align 8
  %21 = load i32, i32* %4, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %27

23:                                               ; preds = %2
  %24 = mul nuw i64 4, %18
  %25 = trunc i64 %24 to i32
  %26 = call i32 @memset(i32* %20, i32 0, i32 %25)
  br label %39

27:                                               ; preds = %2
  %28 = load %struct.twl4030_keypad*, %struct.twl4030_keypad** %3, align 8
  %29 = call i32 @twl4030_read_kp_matrix_state(%struct.twl4030_keypad* %28, i32* %20)
  store i32 %29, i32* %10, align 4
  %30 = load i32, i32* %10, align 4
  %31 = icmp slt i32 %30, 0
  br i1 %31, label %32, label %33

32:                                               ; preds = %27
  store i32 1, i32* %11, align 4
  br label %139

33:                                               ; preds = %27
  %34 = load %struct.twl4030_keypad*, %struct.twl4030_keypad** %3, align 8
  %35 = call i64 @twl4030_is_in_ghost_state(%struct.twl4030_keypad* %34, i32* %20)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %38

37:                                               ; preds = %33
  store i32 1, i32* %11, align 4
  br label %139

38:                                               ; preds = %33
  br label %39

39:                                               ; preds = %38, %23
  store i32 0, i32* %9, align 4
  br label %40

40:                                               ; preds = %133, %39
  %41 = load i32, i32* %9, align 4
  %42 = load %struct.twl4030_keypad*, %struct.twl4030_keypad** %3, align 8
  %43 = getelementptr inbounds %struct.twl4030_keypad, %struct.twl4030_keypad* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = icmp slt i32 %41, %44
  br i1 %45, label %46, label %136

46:                                               ; preds = %40
  %47 = load i32, i32* %9, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds i32, i32* %20, i64 %48
  %50 = load i32, i32* %49, align 4
  %51 = load %struct.twl4030_keypad*, %struct.twl4030_keypad** %3, align 8
  %52 = getelementptr inbounds %struct.twl4030_keypad, %struct.twl4030_keypad* %51, i32 0, i32 1
  %53 = load i32*, i32** %52, align 8
  %54 = load i32, i32* %9, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds i32, i32* %53, i64 %55
  %57 = load i32, i32* %56, align 4
  %58 = xor i32 %50, %57
  store i32 %58, i32* %12, align 4
  %59 = load i32, i32* %12, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %62, label %61

61:                                               ; preds = %46
  br label %133

62:                                               ; preds = %46
  store i32 0, i32* %8, align 4
  br label %63

63:                                               ; preds = %119, %62
  %64 = load i32, i32* %8, align 4
  %65 = load %struct.twl4030_keypad*, %struct.twl4030_keypad** %3, align 8
  %66 = getelementptr inbounds %struct.twl4030_keypad, %struct.twl4030_keypad* %65, i32 0, i32 2
  %67 = load i32, i32* %66, align 8
  %68 = add nsw i32 %67, 1
  %69 = icmp slt i32 %64, %68
  br i1 %69, label %70, label %122

70:                                               ; preds = %63
  %71 = load i32, i32* %12, align 4
  %72 = load i32, i32* %8, align 4
  %73 = shl i32 1, %72
  %74 = and i32 %71, %73
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %77, label %76

76:                                               ; preds = %70
  br label %119

77:                                               ; preds = %70
  %78 = load %struct.twl4030_keypad*, %struct.twl4030_keypad** %3, align 8
  %79 = getelementptr inbounds %struct.twl4030_keypad, %struct.twl4030_keypad* %78, i32 0, i32 4
  %80 = load i32, i32* %79, align 8
  %81 = load i32, i32* %9, align 4
  %82 = load i32, i32* %8, align 4
  %83 = load i32, i32* %9, align 4
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds i32, i32* %20, i64 %84
  %86 = load i32, i32* %85, align 4
  %87 = load i32, i32* %8, align 4
  %88 = shl i32 1, %87
  %89 = and i32 %86, %88
  %90 = icmp ne i32 %89, 0
  %91 = zext i1 %90 to i64
  %92 = select i1 %90, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0)
  %93 = call i32 @dev_dbg(i32 %80, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i32 %81, i32 %82, i8* %92)
  %94 = load i32, i32* %9, align 4
  %95 = load i32, i32* %8, align 4
  %96 = load i32, i32* @TWL4030_ROW_SHIFT, align 4
  %97 = call i32 @MATRIX_SCAN_CODE(i32 %94, i32 %95, i32 %96)
  store i32 %97, i32* %13, align 4
  %98 = load %struct.input_dev*, %struct.input_dev** %5, align 8
  %99 = load i32, i32* @EV_MSC, align 4
  %100 = load i32, i32* @MSC_SCAN, align 4
  %101 = load i32, i32* %13, align 4
  %102 = call i32 @input_event(%struct.input_dev* %98, i32 %99, i32 %100, i32 %101)
  %103 = load %struct.input_dev*, %struct.input_dev** %5, align 8
  %104 = load %struct.twl4030_keypad*, %struct.twl4030_keypad** %3, align 8
  %105 = getelementptr inbounds %struct.twl4030_keypad, %struct.twl4030_keypad* %104, i32 0, i32 3
  %106 = load i32*, i32** %105, align 8
  %107 = load i32, i32* %13, align 4
  %108 = sext i32 %107 to i64
  %109 = getelementptr inbounds i32, i32* %106, i64 %108
  %110 = load i32, i32* %109, align 4
  %111 = load i32, i32* %9, align 4
  %112 = sext i32 %111 to i64
  %113 = getelementptr inbounds i32, i32* %20, i64 %112
  %114 = load i32, i32* %113, align 4
  %115 = load i32, i32* %8, align 4
  %116 = shl i32 1, %115
  %117 = and i32 %114, %116
  %118 = call i32 @input_report_key(%struct.input_dev* %103, i32 %110, i32 %117)
  br label %119

119:                                              ; preds = %77, %76
  %120 = load i32, i32* %8, align 4
  %121 = add nsw i32 %120, 1
  store i32 %121, i32* %8, align 4
  br label %63

122:                                              ; preds = %63
  %123 = load i32, i32* %9, align 4
  %124 = sext i32 %123 to i64
  %125 = getelementptr inbounds i32, i32* %20, i64 %124
  %126 = load i32, i32* %125, align 4
  %127 = load %struct.twl4030_keypad*, %struct.twl4030_keypad** %3, align 8
  %128 = getelementptr inbounds %struct.twl4030_keypad, %struct.twl4030_keypad* %127, i32 0, i32 1
  %129 = load i32*, i32** %128, align 8
  %130 = load i32, i32* %9, align 4
  %131 = sext i32 %130 to i64
  %132 = getelementptr inbounds i32, i32* %129, i64 %131
  store i32 %126, i32* %132, align 4
  br label %133

133:                                              ; preds = %122, %61
  %134 = load i32, i32* %9, align 4
  %135 = add nsw i32 %134, 1
  store i32 %135, i32* %9, align 4
  br label %40

136:                                              ; preds = %40
  %137 = load %struct.input_dev*, %struct.input_dev** %5, align 8
  %138 = call i32 @input_sync(%struct.input_dev* %137)
  store i32 0, i32* %11, align 4
  br label %139

139:                                              ; preds = %136, %37, %32
  %140 = load i8*, i8** %6, align 8
  call void @llvm.stackrestore(i8* %140)
  %141 = load i32, i32* %11, align 4
  switch i32 %141, label %143 [
    i32 0, label %142
    i32 1, label %142
  ]

142:                                              ; preds = %139, %139
  ret void

143:                                              ; preds = %139
  unreachable
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @memset(i32*, i32, i32) #2

declare dso_local i32 @twl4030_read_kp_matrix_state(%struct.twl4030_keypad*, i32*) #2

declare dso_local i64 @twl4030_is_in_ghost_state(%struct.twl4030_keypad*, i32*) #2

declare dso_local i32 @dev_dbg(i32, i8*, i32, i32, i8*) #2

declare dso_local i32 @MATRIX_SCAN_CODE(i32, i32, i32) #2

declare dso_local i32 @input_event(%struct.input_dev*, i32, i32, i32) #2

declare dso_local i32 @input_report_key(%struct.input_dev*, i32, i32) #2

declare dso_local i32 @input_sync(%struct.input_dev*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
