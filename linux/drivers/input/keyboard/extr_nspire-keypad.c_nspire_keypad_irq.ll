; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/keyboard/extr_nspire-keypad.c_nspire_keypad_irq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/keyboard/extr_nspire-keypad.c_nspire_keypad_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nspire_keypad = type { i32, i32*, i64, i32, i64, %struct.input_dev* }
%struct.input_dev = type { i16* }

@KEYPAD_INT = common dso_local global i64 0, align 8
@IRQ_NONE = common dso_local global i32 0, align 4
@KEYPAD_DATA = common dso_local global i64 0, align 8
@KEYPAD_BITMASK_ROWS = common dso_local global i32 0, align 4
@KEYPAD_BITMASK_COLS = common dso_local global i32 0, align 4
@EV_MSC = common dso_local global i32 0, align 4
@MSC_SCAN = common dso_local global i32 0, align 4
@IRQ_HANDLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @nspire_keypad_irq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nspire_keypad_irq(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca %struct.nspire_keypad*, align 8
  %7 = alloca %struct.input_dev*, align 8
  %8 = alloca i16*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca [8 x i32], align 16
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i8* %1, i8** %5, align 8
  %16 = load i8*, i8** %5, align 8
  %17 = bitcast i8* %16 to %struct.nspire_keypad*
  store %struct.nspire_keypad* %17, %struct.nspire_keypad** %6, align 8
  %18 = load %struct.nspire_keypad*, %struct.nspire_keypad** %6, align 8
  %19 = getelementptr inbounds %struct.nspire_keypad, %struct.nspire_keypad* %18, i32 0, i32 5
  %20 = load %struct.input_dev*, %struct.input_dev** %19, align 8
  store %struct.input_dev* %20, %struct.input_dev** %7, align 8
  %21 = load %struct.input_dev*, %struct.input_dev** %7, align 8
  %22 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %21, i32 0, i32 0
  %23 = load i16*, i16** %22, align 8
  store i16* %23, i16** %8, align 8
  %24 = load %struct.nspire_keypad*, %struct.nspire_keypad** %6, align 8
  %25 = getelementptr inbounds %struct.nspire_keypad, %struct.nspire_keypad* %24, i32 0, i32 2
  %26 = load i64, i64* %25, align 8
  %27 = load i64, i64* @KEYPAD_INT, align 8
  %28 = add nsw i64 %26, %27
  %29 = call i32 @readl(i64 %28)
  %30 = load %struct.nspire_keypad*, %struct.nspire_keypad** %6, align 8
  %31 = getelementptr inbounds %struct.nspire_keypad, %struct.nspire_keypad* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = and i32 %29, %32
  store i32 %33, i32* %12, align 4
  %34 = load i32, i32* %12, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %38, label %36

36:                                               ; preds = %2
  %37 = load i32, i32* @IRQ_NONE, align 4
  store i32 %37, i32* %3, align 4
  br label %134

38:                                               ; preds = %2
  %39 = getelementptr inbounds [8 x i32], [8 x i32]* %13, i64 0, i64 0
  %40 = load %struct.nspire_keypad*, %struct.nspire_keypad** %6, align 8
  %41 = getelementptr inbounds %struct.nspire_keypad, %struct.nspire_keypad* %40, i32 0, i32 2
  %42 = load i64, i64* %41, align 8
  %43 = load i64, i64* @KEYPAD_DATA, align 8
  %44 = add nsw i64 %42, %43
  %45 = call i32 @memcpy_fromio(i32* %39, i64 %44, i32 32)
  store i32 0, i32* %10, align 4
  br label %46

46:                                               ; preds = %121, %38
  %47 = load i32, i32* %10, align 4
  %48 = load i32, i32* @KEYPAD_BITMASK_ROWS, align 4
  %49 = icmp slt i32 %47, %48
  br i1 %49, label %50, label %124

50:                                               ; preds = %46
  %51 = load i32, i32* %10, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds [8 x i32], [8 x i32]* %13, i64 0, i64 %52
  %54 = load i32, i32* %53, align 4
  store i32 %54, i32* %14, align 4
  %55 = load %struct.nspire_keypad*, %struct.nspire_keypad** %6, align 8
  %56 = getelementptr inbounds %struct.nspire_keypad, %struct.nspire_keypad* %55, i32 0, i32 4
  %57 = load i64, i64* %56, align 8
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %62

59:                                               ; preds = %50
  %60 = load i32, i32* %14, align 4
  %61 = xor i32 %60, -1
  store i32 %61, i32* %14, align 4
  br label %62

62:                                               ; preds = %59, %50
  %63 = load i32, i32* %14, align 4
  %64 = load %struct.nspire_keypad*, %struct.nspire_keypad** %6, align 8
  %65 = getelementptr inbounds %struct.nspire_keypad, %struct.nspire_keypad* %64, i32 0, i32 1
  %66 = load i32*, i32** %65, align 8
  %67 = load i32, i32* %10, align 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds i32, i32* %66, i64 %68
  %70 = load i32, i32* %69, align 4
  %71 = xor i32 %63, %70
  store i32 %71, i32* %15, align 4
  %72 = load i32, i32* %15, align 4
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %75, label %74

74:                                               ; preds = %62
  br label %121

75:                                               ; preds = %62
  %76 = load i32, i32* %14, align 4
  %77 = load %struct.nspire_keypad*, %struct.nspire_keypad** %6, align 8
  %78 = getelementptr inbounds %struct.nspire_keypad, %struct.nspire_keypad* %77, i32 0, i32 1
  %79 = load i32*, i32** %78, align 8
  %80 = load i32, i32* %10, align 4
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds i32, i32* %79, i64 %81
  store i32 %76, i32* %82, align 4
  store i32 0, i32* %11, align 4
  br label %83

83:                                               ; preds = %117, %75
  %84 = load i32, i32* %11, align 4
  %85 = load i32, i32* @KEYPAD_BITMASK_COLS, align 4
  %86 = icmp slt i32 %84, %85
  br i1 %86, label %87, label %120

87:                                               ; preds = %83
  %88 = load i32, i32* %15, align 4
  %89 = load i32, i32* %11, align 4
  %90 = shl i32 1, %89
  %91 = and i32 %88, %90
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %94, label %93

93:                                               ; preds = %87
  br label %117

94:                                               ; preds = %87
  %95 = load i32, i32* %10, align 4
  %96 = load i32, i32* %11, align 4
  %97 = load %struct.nspire_keypad*, %struct.nspire_keypad** %6, align 8
  %98 = getelementptr inbounds %struct.nspire_keypad, %struct.nspire_keypad* %97, i32 0, i32 3
  %99 = load i32, i32* %98, align 8
  %100 = call i32 @MATRIX_SCAN_CODE(i32 %95, i32 %96, i32 %99)
  store i32 %100, i32* %9, align 4
  %101 = load %struct.input_dev*, %struct.input_dev** %7, align 8
  %102 = load i32, i32* @EV_MSC, align 4
  %103 = load i32, i32* @MSC_SCAN, align 4
  %104 = load i32, i32* %9, align 4
  %105 = call i32 @input_event(%struct.input_dev* %101, i32 %102, i32 %103, i32 %104)
  %106 = load %struct.input_dev*, %struct.input_dev** %7, align 8
  %107 = load i16*, i16** %8, align 8
  %108 = load i32, i32* %9, align 4
  %109 = zext i32 %108 to i64
  %110 = getelementptr inbounds i16, i16* %107, i64 %109
  %111 = load i16, i16* %110, align 2
  %112 = load i32, i32* %14, align 4
  %113 = load i32, i32* %11, align 4
  %114 = shl i32 1, %113
  %115 = and i32 %112, %114
  %116 = call i32 @input_report_key(%struct.input_dev* %106, i16 zeroext %111, i32 %115)
  br label %117

117:                                              ; preds = %94, %93
  %118 = load i32, i32* %11, align 4
  %119 = add nsw i32 %118, 1
  store i32 %119, i32* %11, align 4
  br label %83

120:                                              ; preds = %83
  br label %121

121:                                              ; preds = %120, %74
  %122 = load i32, i32* %10, align 4
  %123 = add nsw i32 %122, 1
  store i32 %123, i32* %10, align 4
  br label %46

124:                                              ; preds = %46
  %125 = load %struct.input_dev*, %struct.input_dev** %7, align 8
  %126 = call i32 @input_sync(%struct.input_dev* %125)
  %127 = load %struct.nspire_keypad*, %struct.nspire_keypad** %6, align 8
  %128 = getelementptr inbounds %struct.nspire_keypad, %struct.nspire_keypad* %127, i32 0, i32 2
  %129 = load i64, i64* %128, align 8
  %130 = load i64, i64* @KEYPAD_INT, align 8
  %131 = add nsw i64 %129, %130
  %132 = call i32 @writel(i32 3, i64 %131)
  %133 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %133, i32* %3, align 4
  br label %134

134:                                              ; preds = %124, %36
  %135 = load i32, i32* %3, align 4
  ret i32 %135
}

declare dso_local i32 @readl(i64) #1

declare dso_local i32 @memcpy_fromio(i32*, i64, i32) #1

declare dso_local i32 @MATRIX_SCAN_CODE(i32, i32, i32) #1

declare dso_local i32 @input_event(%struct.input_dev*, i32, i32, i32) #1

declare dso_local i32 @input_report_key(%struct.input_dev*, i16 zeroext, i32) #1

declare dso_local i32 @input_sync(%struct.input_dev*) #1

declare dso_local i32 @writel(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
