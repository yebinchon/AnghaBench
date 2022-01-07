; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/keyboard/extr_stmpe-keypad.c_stmpe_keypad_chip_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/keyboard/extr_stmpe-keypad.c_stmpe_keypad_chip_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stmpe_keypad = type { i32, i32, i32, i32, %struct.stmpe*, %struct.stmpe_keypad_variant* }
%struct.stmpe = type { i32 }
%struct.stmpe_keypad_variant = type { i32 }

@STMPE_KEYPAD_MAX_DEBOUNCE = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@STMPE_KEYPAD_MAX_SCAN_COUNT = common dso_local global i32 0, align 4
@STMPE_BLOCK_KEYPAD = common dso_local global i32 0, align 4
@STMPE_KPC_COL = common dso_local global i32 0, align 4
@STMPE_KPC_ROW_LSB = common dso_local global i32 0, align 4
@STMPE_KPC_ROW_MSB = common dso_local global i32 0, align 4
@STMPE_KPC_ROW_MSB_ROWS = common dso_local global i32 0, align 4
@STMPE_KPC_CTRL_MSB = common dso_local global i32 0, align 4
@STMPE_KPC_CTRL_MSB_SCAN_COUNT = common dso_local global i32 0, align 4
@STMPE_KPC_CTRL_LSB = common dso_local global i32 0, align 4
@STMPE_KPC_CTRL_LSB_SCAN = common dso_local global i32 0, align 4
@STMPE_KPC_CTRL_LSB_DEBOUNCE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.stmpe_keypad*)* @stmpe_keypad_chip_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @stmpe_keypad_chip_init(%struct.stmpe_keypad* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.stmpe_keypad*, align 8
  %4 = alloca %struct.stmpe_keypad_variant*, align 8
  %5 = alloca %struct.stmpe*, align 8
  %6 = alloca i32, align 4
  store %struct.stmpe_keypad* %0, %struct.stmpe_keypad** %3, align 8
  %7 = load %struct.stmpe_keypad*, %struct.stmpe_keypad** %3, align 8
  %8 = getelementptr inbounds %struct.stmpe_keypad, %struct.stmpe_keypad* %7, i32 0, i32 5
  %9 = load %struct.stmpe_keypad_variant*, %struct.stmpe_keypad_variant** %8, align 8
  store %struct.stmpe_keypad_variant* %9, %struct.stmpe_keypad_variant** %4, align 8
  %10 = load %struct.stmpe_keypad*, %struct.stmpe_keypad** %3, align 8
  %11 = getelementptr inbounds %struct.stmpe_keypad, %struct.stmpe_keypad* %10, i32 0, i32 4
  %12 = load %struct.stmpe*, %struct.stmpe** %11, align 8
  store %struct.stmpe* %12, %struct.stmpe** %5, align 8
  %13 = load %struct.stmpe_keypad*, %struct.stmpe_keypad** %3, align 8
  %14 = getelementptr inbounds %struct.stmpe_keypad, %struct.stmpe_keypad* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = load i32, i32* @STMPE_KEYPAD_MAX_DEBOUNCE, align 4
  %17 = icmp sgt i32 %15, %16
  br i1 %17, label %18, label %21

18:                                               ; preds = %1
  %19 = load i32, i32* @EINVAL, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %2, align 4
  br label %112

21:                                               ; preds = %1
  %22 = load %struct.stmpe_keypad*, %struct.stmpe_keypad** %3, align 8
  %23 = getelementptr inbounds %struct.stmpe_keypad, %struct.stmpe_keypad* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = load i32, i32* @STMPE_KEYPAD_MAX_SCAN_COUNT, align 4
  %26 = icmp sgt i32 %24, %25
  br i1 %26, label %27, label %30

27:                                               ; preds = %21
  %28 = load i32, i32* @EINVAL, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %2, align 4
  br label %112

30:                                               ; preds = %21
  %31 = load %struct.stmpe*, %struct.stmpe** %5, align 8
  %32 = load i32, i32* @STMPE_BLOCK_KEYPAD, align 4
  %33 = call i32 @stmpe_enable(%struct.stmpe* %31, i32 %32)
  store i32 %33, i32* %6, align 4
  %34 = load i32, i32* %6, align 4
  %35 = icmp slt i32 %34, 0
  br i1 %35, label %36, label %38

36:                                               ; preds = %30
  %37 = load i32, i32* %6, align 4
  store i32 %37, i32* %2, align 4
  br label %112

38:                                               ; preds = %30
  %39 = load %struct.stmpe_keypad*, %struct.stmpe_keypad** %3, align 8
  %40 = call i32 @stmpe_keypad_altfunc_init(%struct.stmpe_keypad* %39)
  store i32 %40, i32* %6, align 4
  %41 = load i32, i32* %6, align 4
  %42 = icmp slt i32 %41, 0
  br i1 %42, label %43, label %45

43:                                               ; preds = %38
  %44 = load i32, i32* %6, align 4
  store i32 %44, i32* %2, align 4
  br label %112

45:                                               ; preds = %38
  %46 = load %struct.stmpe*, %struct.stmpe** %5, align 8
  %47 = load i32, i32* @STMPE_KPC_COL, align 4
  %48 = load %struct.stmpe_keypad*, %struct.stmpe_keypad** %3, align 8
  %49 = getelementptr inbounds %struct.stmpe_keypad, %struct.stmpe_keypad* %48, i32 0, i32 2
  %50 = load i32, i32* %49, align 8
  %51 = call i32 @stmpe_reg_write(%struct.stmpe* %46, i32 %47, i32 %50)
  store i32 %51, i32* %6, align 4
  %52 = load i32, i32* %6, align 4
  %53 = icmp slt i32 %52, 0
  br i1 %53, label %54, label %56

54:                                               ; preds = %45
  %55 = load i32, i32* %6, align 4
  store i32 %55, i32* %2, align 4
  br label %112

56:                                               ; preds = %45
  %57 = load %struct.stmpe*, %struct.stmpe** %5, align 8
  %58 = load i32, i32* @STMPE_KPC_ROW_LSB, align 4
  %59 = load %struct.stmpe_keypad*, %struct.stmpe_keypad** %3, align 8
  %60 = getelementptr inbounds %struct.stmpe_keypad, %struct.stmpe_keypad* %59, i32 0, i32 3
  %61 = load i32, i32* %60, align 4
  %62 = call i32 @stmpe_reg_write(%struct.stmpe* %57, i32 %58, i32 %61)
  store i32 %62, i32* %6, align 4
  %63 = load i32, i32* %6, align 4
  %64 = icmp slt i32 %63, 0
  br i1 %64, label %65, label %67

65:                                               ; preds = %56
  %66 = load i32, i32* %6, align 4
  store i32 %66, i32* %2, align 4
  br label %112

67:                                               ; preds = %56
  %68 = load %struct.stmpe_keypad_variant*, %struct.stmpe_keypad_variant** %4, align 8
  %69 = getelementptr inbounds %struct.stmpe_keypad_variant, %struct.stmpe_keypad_variant* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = icmp sgt i32 %70, 8
  br i1 %71, label %72, label %86

72:                                               ; preds = %67
  %73 = load %struct.stmpe*, %struct.stmpe** %5, align 8
  %74 = load i32, i32* @STMPE_KPC_ROW_MSB, align 4
  %75 = load i32, i32* @STMPE_KPC_ROW_MSB_ROWS, align 4
  %76 = load %struct.stmpe_keypad*, %struct.stmpe_keypad** %3, align 8
  %77 = getelementptr inbounds %struct.stmpe_keypad, %struct.stmpe_keypad* %76, i32 0, i32 3
  %78 = load i32, i32* %77, align 4
  %79 = ashr i32 %78, 8
  %80 = call i32 @stmpe_set_bits(%struct.stmpe* %73, i32 %74, i32 %75, i32 %79)
  store i32 %80, i32* %6, align 4
  %81 = load i32, i32* %6, align 4
  %82 = icmp slt i32 %81, 0
  br i1 %82, label %83, label %85

83:                                               ; preds = %72
  %84 = load i32, i32* %6, align 4
  store i32 %84, i32* %2, align 4
  br label %112

85:                                               ; preds = %72
  br label %86

86:                                               ; preds = %85, %67
  %87 = load %struct.stmpe*, %struct.stmpe** %5, align 8
  %88 = load i32, i32* @STMPE_KPC_CTRL_MSB, align 4
  %89 = load i32, i32* @STMPE_KPC_CTRL_MSB_SCAN_COUNT, align 4
  %90 = load %struct.stmpe_keypad*, %struct.stmpe_keypad** %3, align 8
  %91 = getelementptr inbounds %struct.stmpe_keypad, %struct.stmpe_keypad* %90, i32 0, i32 1
  %92 = load i32, i32* %91, align 4
  %93 = shl i32 %92, 4
  %94 = call i32 @stmpe_set_bits(%struct.stmpe* %87, i32 %88, i32 %89, i32 %93)
  store i32 %94, i32* %6, align 4
  %95 = load i32, i32* %6, align 4
  %96 = icmp slt i32 %95, 0
  br i1 %96, label %97, label %99

97:                                               ; preds = %86
  %98 = load i32, i32* %6, align 4
  store i32 %98, i32* %2, align 4
  br label %112

99:                                               ; preds = %86
  %100 = load %struct.stmpe*, %struct.stmpe** %5, align 8
  %101 = load i32, i32* @STMPE_KPC_CTRL_LSB, align 4
  %102 = load i32, i32* @STMPE_KPC_CTRL_LSB_SCAN, align 4
  %103 = load i32, i32* @STMPE_KPC_CTRL_LSB_DEBOUNCE, align 4
  %104 = or i32 %102, %103
  %105 = load i32, i32* @STMPE_KPC_CTRL_LSB_SCAN, align 4
  %106 = load %struct.stmpe_keypad*, %struct.stmpe_keypad** %3, align 8
  %107 = getelementptr inbounds %struct.stmpe_keypad, %struct.stmpe_keypad* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 8
  %109 = shl i32 %108, 1
  %110 = or i32 %105, %109
  %111 = call i32 @stmpe_set_bits(%struct.stmpe* %100, i32 %101, i32 %104, i32 %110)
  store i32 %111, i32* %2, align 4
  br label %112

112:                                              ; preds = %99, %97, %83, %65, %54, %43, %36, %27, %18
  %113 = load i32, i32* %2, align 4
  ret i32 %113
}

declare dso_local i32 @stmpe_enable(%struct.stmpe*, i32) #1

declare dso_local i32 @stmpe_keypad_altfunc_init(%struct.stmpe_keypad*) #1

declare dso_local i32 @stmpe_reg_write(%struct.stmpe*, i32, i32) #1

declare dso_local i32 @stmpe_set_bits(%struct.stmpe*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
