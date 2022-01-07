; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/keyboard/extr_tc3589x-keypad.c_tc3589x_keypad_irq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/keyboard/extr_tc3589x-keypad.c_tc3589x_keypad_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tc_keypad = type { i32, i32*, %struct.tc3589x* }
%struct.tc3589x = type { i32 }

@TC35893_DATA_REGS = common dso_local global i32 0, align 4
@TC3589x_EVTCODE_FIFO = common dso_local global i32 0, align 4
@TC35893_KEYCODE_FIFO_EMPTY = common dso_local global i32 0, align 4
@TC35893_KEYCODE_FIFO_CLEAR = common dso_local global i32 0, align 4
@KP_EVCODE_COL_MASK = common dso_local global i32 0, align 4
@KP_EVCODE_ROW_MASK = common dso_local global i32 0, align 4
@KP_ROW_SHIFT = common dso_local global i32 0, align 4
@TC35893_KEYPAD_ROW_SHIFT = common dso_local global i32 0, align 4
@KP_RELEASE_EVT_MASK = common dso_local global i32 0, align 4
@EV_MSC = common dso_local global i32 0, align 4
@MSC_SCAN = common dso_local global i32 0, align 4
@TC3589x_KBDIC = common dso_local global i32 0, align 4
@TC3589x_EVT_INT_CLR = common dso_local global i32 0, align 4
@TC3589x_KBD_INT_CLR = common dso_local global i32 0, align 4
@TC3589x_KBDMSK = common dso_local global i32 0, align 4
@TC3589x_EVT_LOSS_INT = common dso_local global i32 0, align 4
@TC3589x_EVT_INT = common dso_local global i32 0, align 4
@IRQ_HANDLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @tc3589x_keypad_irq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tc3589x_keypad_irq(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.tc_keypad*, align 8
  %6 = alloca %struct.tc3589x*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i8* %1, i8** %4, align 8
  %13 = load i8*, i8** %4, align 8
  %14 = bitcast i8* %13 to %struct.tc_keypad*
  store %struct.tc_keypad* %14, %struct.tc_keypad** %5, align 8
  %15 = load %struct.tc_keypad*, %struct.tc_keypad** %5, align 8
  %16 = getelementptr inbounds %struct.tc_keypad, %struct.tc_keypad* %15, i32 0, i32 2
  %17 = load %struct.tc3589x*, %struct.tc3589x** %16, align 8
  store %struct.tc3589x* %17, %struct.tc3589x** %6, align 8
  store i32 0, i32* %7, align 4
  br label %18

18:                                               ; preds = %77, %2
  %19 = load i32, i32* %7, align 4
  %20 = load i32, i32* @TC35893_DATA_REGS, align 4
  %21 = mul nsw i32 %20, 2
  %22 = icmp slt i32 %19, %21
  br i1 %22, label %23, label %80

23:                                               ; preds = %18
  %24 = load %struct.tc3589x*, %struct.tc3589x** %6, align 8
  %25 = load i32, i32* @TC3589x_EVTCODE_FIFO, align 4
  %26 = call i32 @tc3589x_reg_read(%struct.tc3589x* %24, i32 %25)
  store i32 %26, i32* %10, align 4
  %27 = load i32, i32* %10, align 4
  %28 = load i32, i32* @TC35893_KEYCODE_FIFO_EMPTY, align 4
  %29 = icmp eq i32 %27, %28
  br i1 %29, label %34, label %30

30:                                               ; preds = %23
  %31 = load i32, i32* %10, align 4
  %32 = load i32, i32* @TC35893_KEYCODE_FIFO_CLEAR, align 4
  %33 = icmp eq i32 %31, %32
  br i1 %33, label %34, label %35

34:                                               ; preds = %30, %23
  br label %77

35:                                               ; preds = %30
  %36 = load i32, i32* %10, align 4
  %37 = load i32, i32* @KP_EVCODE_COL_MASK, align 4
  %38 = and i32 %36, %37
  store i32 %38, i32* %9, align 4
  %39 = load i32, i32* %10, align 4
  %40 = load i32, i32* @KP_EVCODE_ROW_MASK, align 4
  %41 = and i32 %39, %40
  %42 = load i32, i32* @KP_ROW_SHIFT, align 4
  %43 = ashr i32 %41, %42
  store i32 %43, i32* %8, align 4
  %44 = load i32, i32* %8, align 4
  %45 = load i32, i32* %9, align 4
  %46 = load i32, i32* @TC35893_KEYPAD_ROW_SHIFT, align 4
  %47 = call i32 @MATRIX_SCAN_CODE(i32 %44, i32 %45, i32 %46)
  store i32 %47, i32* %12, align 4
  %48 = load i32, i32* %10, align 4
  %49 = load i32, i32* @KP_RELEASE_EVT_MASK, align 4
  %50 = and i32 %48, %49
  store i32 %50, i32* %11, align 4
  %51 = load %struct.tc_keypad*, %struct.tc_keypad** %5, align 8
  %52 = getelementptr inbounds %struct.tc_keypad, %struct.tc_keypad* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = load i32, i32* @EV_MSC, align 4
  %55 = load i32, i32* @MSC_SCAN, align 4
  %56 = load i32, i32* %12, align 4
  %57 = call i32 @input_event(i32 %53, i32 %54, i32 %55, i32 %56)
  %58 = load %struct.tc_keypad*, %struct.tc_keypad** %5, align 8
  %59 = getelementptr inbounds %struct.tc_keypad, %struct.tc_keypad* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = load %struct.tc_keypad*, %struct.tc_keypad** %5, align 8
  %62 = getelementptr inbounds %struct.tc_keypad, %struct.tc_keypad* %61, i32 0, i32 1
  %63 = load i32*, i32** %62, align 8
  %64 = load i32, i32* %12, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds i32, i32* %63, i64 %65
  %67 = load i32, i32* %66, align 4
  %68 = load i32, i32* %11, align 4
  %69 = icmp ne i32 %68, 0
  %70 = xor i1 %69, true
  %71 = zext i1 %70 to i32
  %72 = call i32 @input_report_key(i32 %60, i32 %67, i32 %71)
  %73 = load %struct.tc_keypad*, %struct.tc_keypad** %5, align 8
  %74 = getelementptr inbounds %struct.tc_keypad, %struct.tc_keypad* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 8
  %76 = call i32 @input_sync(i32 %75)
  br label %77

77:                                               ; preds = %35, %34
  %78 = load i32, i32* %7, align 4
  %79 = add nsw i32 %78, 1
  store i32 %79, i32* %7, align 4
  br label %18

80:                                               ; preds = %18
  %81 = load %struct.tc3589x*, %struct.tc3589x** %6, align 8
  %82 = load i32, i32* @TC3589x_KBDIC, align 4
  %83 = load i32, i32* @TC3589x_EVT_INT_CLR, align 4
  %84 = load i32, i32* @TC3589x_KBD_INT_CLR, align 4
  %85 = or i32 %83, %84
  %86 = call i32 @tc3589x_set_bits(%struct.tc3589x* %81, i32 %82, i32 0, i32 %85)
  %87 = load %struct.tc3589x*, %struct.tc3589x** %6, align 8
  %88 = load i32, i32* @TC3589x_KBDMSK, align 4
  %89 = load i32, i32* @TC3589x_EVT_LOSS_INT, align 4
  %90 = load i32, i32* @TC3589x_EVT_INT, align 4
  %91 = or i32 %89, %90
  %92 = call i32 @tc3589x_set_bits(%struct.tc3589x* %87, i32 %88, i32 0, i32 %91)
  %93 = load i32, i32* @IRQ_HANDLED, align 4
  ret i32 %93
}

declare dso_local i32 @tc3589x_reg_read(%struct.tc3589x*, i32) #1

declare dso_local i32 @MATRIX_SCAN_CODE(i32, i32, i32) #1

declare dso_local i32 @input_event(i32, i32, i32, i32) #1

declare dso_local i32 @input_report_key(i32, i32, i32) #1

declare dso_local i32 @input_sync(i32) #1

declare dso_local i32 @tc3589x_set_bits(%struct.tc3589x*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
