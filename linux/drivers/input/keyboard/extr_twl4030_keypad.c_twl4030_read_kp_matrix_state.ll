; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/keyboard/extr_twl4030_keypad.c_twl4030_read_kp_matrix_state.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/keyboard/extr_twl4030_keypad.c_twl4030_read_kp_matrix_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.twl4030_keypad = type { i32 }

@TWL4030_MAX_ROWS = common dso_local global i32 0, align 4
@KEYP_FULL_CODE_7_0 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.twl4030_keypad*, i32*)* @twl4030_read_kp_matrix_state to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @twl4030_read_kp_matrix_state(%struct.twl4030_keypad* %0, i32* %1) #0 {
  %3 = alloca %struct.twl4030_keypad*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.twl4030_keypad* %0, %struct.twl4030_keypad** %3, align 8
  store i32* %1, i32** %4, align 8
  %9 = load i32, i32* @TWL4030_MAX_ROWS, align 4
  %10 = zext i32 %9 to i64
  %11 = call i8* @llvm.stacksave()
  store i8* %11, i8** %5, align 8
  %12 = alloca i32, i64 %10, align 16
  store i64 %10, i64* %6, align 8
  %13 = load %struct.twl4030_keypad*, %struct.twl4030_keypad** %3, align 8
  %14 = load i32, i32* @KEYP_FULL_CODE_7_0, align 4
  %15 = load %struct.twl4030_keypad*, %struct.twl4030_keypad** %3, align 8
  %16 = getelementptr inbounds %struct.twl4030_keypad, %struct.twl4030_keypad* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @twl4030_kpread(%struct.twl4030_keypad* %13, i32* %12, i32 %14, i32 %17)
  store i32 %18, i32* %8, align 4
  %19 = load i32, i32* %8, align 4
  %20 = icmp sge i32 %19, 0
  br i1 %20, label %21, label %43

21:                                               ; preds = %2
  store i32 0, i32* %7, align 4
  br label %22

22:                                               ; preds = %39, %21
  %23 = load i32, i32* %7, align 4
  %24 = load %struct.twl4030_keypad*, %struct.twl4030_keypad** %3, align 8
  %25 = getelementptr inbounds %struct.twl4030_keypad, %struct.twl4030_keypad* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = icmp slt i32 %23, %26
  br i1 %27, label %28, label %42

28:                                               ; preds = %22
  %29 = load %struct.twl4030_keypad*, %struct.twl4030_keypad** %3, align 8
  %30 = load i32, i32* %7, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds i32, i32* %12, i64 %31
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @twl4030_col_xlate(%struct.twl4030_keypad* %29, i32 %33)
  %35 = load i32*, i32** %4, align 8
  %36 = load i32, i32* %7, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds i32, i32* %35, i64 %37
  store i32 %34, i32* %38, align 4
  br label %39

39:                                               ; preds = %28
  %40 = load i32, i32* %7, align 4
  %41 = add nsw i32 %40, 1
  store i32 %41, i32* %7, align 4
  br label %22

42:                                               ; preds = %22
  br label %43

43:                                               ; preds = %42, %2
  %44 = load i32, i32* %8, align 4
  %45 = load i8*, i8** %5, align 8
  call void @llvm.stackrestore(i8* %45)
  ret i32 %44
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @twl4030_kpread(%struct.twl4030_keypad*, i32*, i32, i32) #2

declare dso_local i32 @twl4030_col_xlate(%struct.twl4030_keypad*, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
