; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/keyboard/extr_stmpe-keypad.c_stmpe_keypad_irq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/keyboard/extr_stmpe-keypad.c_stmpe_keypad_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stmpe_keypad = type { i32*, %struct.stmpe_keypad_variant*, %struct.input_dev* }
%struct.stmpe_keypad_variant = type { i32 }
%struct.input_dev = type { i32 }

@MAX_NUM_DATA = common dso_local global i32 0, align 4
@IRQ_NONE = common dso_local global i32 0, align 4
@STMPE_KPC_DATA_ROW = common dso_local global i32 0, align 4
@STMPE_KPC_DATA_COL = common dso_local global i32 0, align 4
@STMPE_KEYPAD_ROW_SHIFT = common dso_local global i32 0, align 4
@STMPE_KPC_DATA_UP = common dso_local global i32 0, align 4
@STMPE_KPC_DATA_NOKEY_MASK = common dso_local global i32 0, align 4
@EV_MSC = common dso_local global i32 0, align 4
@MSC_SCAN = common dso_local global i32 0, align 4
@IRQ_HANDLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @stmpe_keypad_irq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @stmpe_keypad_irq(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca %struct.stmpe_keypad*, align 8
  %7 = alloca %struct.input_dev*, align 8
  %8 = alloca %struct.stmpe_keypad_variant*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i8* %1, i8** %5, align 8
  %19 = load i8*, i8** %5, align 8
  %20 = bitcast i8* %19 to %struct.stmpe_keypad*
  store %struct.stmpe_keypad* %20, %struct.stmpe_keypad** %6, align 8
  %21 = load %struct.stmpe_keypad*, %struct.stmpe_keypad** %6, align 8
  %22 = getelementptr inbounds %struct.stmpe_keypad, %struct.stmpe_keypad* %21, i32 0, i32 2
  %23 = load %struct.input_dev*, %struct.input_dev** %22, align 8
  store %struct.input_dev* %23, %struct.input_dev** %7, align 8
  %24 = load %struct.stmpe_keypad*, %struct.stmpe_keypad** %6, align 8
  %25 = getelementptr inbounds %struct.stmpe_keypad, %struct.stmpe_keypad* %24, i32 0, i32 1
  %26 = load %struct.stmpe_keypad_variant*, %struct.stmpe_keypad_variant** %25, align 8
  store %struct.stmpe_keypad_variant* %26, %struct.stmpe_keypad_variant** %8, align 8
  %27 = load i32, i32* @MAX_NUM_DATA, align 4
  %28 = zext i32 %27 to i64
  %29 = call i8* @llvm.stacksave()
  store i8* %29, i8** %9, align 8
  %30 = alloca i32, i64 %28, align 16
  store i64 %28, i64* %10, align 8
  %31 = load %struct.stmpe_keypad*, %struct.stmpe_keypad** %6, align 8
  %32 = call i32 @stmpe_keypad_read_data(%struct.stmpe_keypad* %31, i32* %30)
  store i32 %32, i32* %11, align 4
  %33 = load i32, i32* %11, align 4
  %34 = icmp slt i32 %33, 0
  br i1 %34, label %35, label %37

35:                                               ; preds = %2
  %36 = load i32, i32* @IRQ_NONE, align 4
  store i32 %36, i32* %3, align 4
  store i32 1, i32* %13, align 4
  br label %95

37:                                               ; preds = %2
  store i32 0, i32* %12, align 4
  br label %38

38:                                               ; preds = %90, %37
  %39 = load i32, i32* %12, align 4
  %40 = load %struct.stmpe_keypad_variant*, %struct.stmpe_keypad_variant** %8, align 8
  %41 = getelementptr inbounds %struct.stmpe_keypad_variant, %struct.stmpe_keypad_variant* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = icmp slt i32 %39, %42
  br i1 %43, label %44, label %93

44:                                               ; preds = %38
  %45 = load i32, i32* %12, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds i32, i32* %30, i64 %46
  %48 = load i32, i32* %47, align 4
  store i32 %48, i32* %14, align 4
  %49 = load i32, i32* %14, align 4
  %50 = load i32, i32* @STMPE_KPC_DATA_ROW, align 4
  %51 = and i32 %49, %50
  %52 = ashr i32 %51, 3
  store i32 %52, i32* %15, align 4
  %53 = load i32, i32* %14, align 4
  %54 = load i32, i32* @STMPE_KPC_DATA_COL, align 4
  %55 = and i32 %53, %54
  store i32 %55, i32* %16, align 4
  %56 = load i32, i32* %15, align 4
  %57 = load i32, i32* %16, align 4
  %58 = load i32, i32* @STMPE_KEYPAD_ROW_SHIFT, align 4
  %59 = call i32 @MATRIX_SCAN_CODE(i32 %56, i32 %57, i32 %58)
  store i32 %59, i32* %17, align 4
  %60 = load i32, i32* %14, align 4
  %61 = load i32, i32* @STMPE_KPC_DATA_UP, align 4
  %62 = and i32 %60, %61
  store i32 %62, i32* %18, align 4
  %63 = load i32, i32* %14, align 4
  %64 = load i32, i32* @STMPE_KPC_DATA_NOKEY_MASK, align 4
  %65 = and i32 %63, %64
  %66 = load i32, i32* @STMPE_KPC_DATA_NOKEY_MASK, align 4
  %67 = icmp eq i32 %65, %66
  br i1 %67, label %68, label %69

68:                                               ; preds = %44
  br label %90

69:                                               ; preds = %44
  %70 = load %struct.input_dev*, %struct.input_dev** %7, align 8
  %71 = load i32, i32* @EV_MSC, align 4
  %72 = load i32, i32* @MSC_SCAN, align 4
  %73 = load i32, i32* %17, align 4
  %74 = call i32 @input_event(%struct.input_dev* %70, i32 %71, i32 %72, i32 %73)
  %75 = load %struct.input_dev*, %struct.input_dev** %7, align 8
  %76 = load %struct.stmpe_keypad*, %struct.stmpe_keypad** %6, align 8
  %77 = getelementptr inbounds %struct.stmpe_keypad, %struct.stmpe_keypad* %76, i32 0, i32 0
  %78 = load i32*, i32** %77, align 8
  %79 = load i32, i32* %17, align 4
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds i32, i32* %78, i64 %80
  %82 = load i32, i32* %81, align 4
  %83 = load i32, i32* %18, align 4
  %84 = icmp ne i32 %83, 0
  %85 = xor i1 %84, true
  %86 = zext i1 %85 to i32
  %87 = call i32 @input_report_key(%struct.input_dev* %75, i32 %82, i32 %86)
  %88 = load %struct.input_dev*, %struct.input_dev** %7, align 8
  %89 = call i32 @input_sync(%struct.input_dev* %88)
  br label %90

90:                                               ; preds = %69, %68
  %91 = load i32, i32* %12, align 4
  %92 = add nsw i32 %91, 1
  store i32 %92, i32* %12, align 4
  br label %38

93:                                               ; preds = %38
  %94 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %94, i32* %3, align 4
  store i32 1, i32* %13, align 4
  br label %95

95:                                               ; preds = %93, %35
  %96 = load i8*, i8** %9, align 8
  call void @llvm.stackrestore(i8* %96)
  %97 = load i32, i32* %3, align 4
  ret i32 %97
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @stmpe_keypad_read_data(%struct.stmpe_keypad*, i32*) #2

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
