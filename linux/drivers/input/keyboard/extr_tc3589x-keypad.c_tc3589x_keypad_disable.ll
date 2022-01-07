; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/keyboard/extr_tc3589x-keypad.c_tc3589x_keypad_disable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/keyboard/extr_tc3589x-keypad.c_tc3589x_keypad_disable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tc_keypad = type { i32, %struct.tc3589x* }
%struct.tc3589x = type { i32 }

@TC3589x_KBDIC = common dso_local global i32 0, align 4
@TC3589x_EVT_INT_CLR = common dso_local global i32 0, align 4
@TC3589x_KBD_INT_CLR = common dso_local global i32 0, align 4
@TC3589x_KBDMSK = common dso_local global i32 0, align 4
@TC3589x_EVT_LOSS_INT = common dso_local global i32 0, align 4
@TC3589x_EVT_INT = common dso_local global i32 0, align 4
@TC3589x_CLKEN = common dso_local global i32 0, align 4
@TC3589x_RSTCTRL = common dso_local global i32 0, align 4
@TC3589x_KBDRST = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tc_keypad*)* @tc3589x_keypad_disable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tc3589x_keypad_disable(%struct.tc_keypad* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.tc_keypad*, align 8
  %4 = alloca %struct.tc3589x*, align 8
  %5 = alloca i32, align 4
  store %struct.tc_keypad* %0, %struct.tc_keypad** %3, align 8
  %6 = load %struct.tc_keypad*, %struct.tc_keypad** %3, align 8
  %7 = getelementptr inbounds %struct.tc_keypad, %struct.tc_keypad* %6, i32 0, i32 1
  %8 = load %struct.tc3589x*, %struct.tc3589x** %7, align 8
  store %struct.tc3589x* %8, %struct.tc3589x** %4, align 8
  %9 = load %struct.tc3589x*, %struct.tc3589x** %4, align 8
  %10 = load i32, i32* @TC3589x_KBDIC, align 4
  %11 = load i32, i32* @TC3589x_EVT_INT_CLR, align 4
  %12 = load i32, i32* @TC3589x_KBD_INT_CLR, align 4
  %13 = or i32 %11, %12
  %14 = call i32 @tc3589x_set_bits(%struct.tc3589x* %9, i32 %10, i32 0, i32 %13)
  store i32 %14, i32* %5, align 4
  %15 = load i32, i32* %5, align 4
  %16 = icmp slt i32 %15, 0
  br i1 %16, label %17, label %19

17:                                               ; preds = %1
  %18 = load i32, i32* %5, align 4
  store i32 %18, i32* %2, align 4
  br label %47

19:                                               ; preds = %1
  %20 = load %struct.tc3589x*, %struct.tc3589x** %4, align 8
  %21 = load i32, i32* @TC3589x_KBDMSK, align 4
  %22 = load i32, i32* @TC3589x_EVT_LOSS_INT, align 4
  %23 = load i32, i32* @TC3589x_EVT_INT, align 4
  %24 = or i32 %22, %23
  %25 = xor i32 %24, -1
  %26 = call i32 @tc3589x_set_bits(%struct.tc3589x* %20, i32 %21, i32 %25, i32 0)
  store i32 %26, i32* %5, align 4
  %27 = load i32, i32* %5, align 4
  %28 = icmp slt i32 %27, 0
  br i1 %28, label %29, label %31

29:                                               ; preds = %19
  %30 = load i32, i32* %5, align 4
  store i32 %30, i32* %2, align 4
  br label %47

31:                                               ; preds = %19
  %32 = load %struct.tc3589x*, %struct.tc3589x** %4, align 8
  %33 = load i32, i32* @TC3589x_CLKEN, align 4
  %34 = call i32 @tc3589x_set_bits(%struct.tc3589x* %32, i32 %33, i32 1, i32 0)
  store i32 %34, i32* %5, align 4
  %35 = load i32, i32* %5, align 4
  %36 = icmp slt i32 %35, 0
  br i1 %36, label %37, label %39

37:                                               ; preds = %31
  %38 = load i32, i32* %5, align 4
  store i32 %38, i32* %2, align 4
  br label %47

39:                                               ; preds = %31
  %40 = load %struct.tc3589x*, %struct.tc3589x** %4, align 8
  %41 = load i32, i32* @TC3589x_RSTCTRL, align 4
  %42 = load i32, i32* @TC3589x_KBDRST, align 4
  %43 = call i32 @tc3589x_set_bits(%struct.tc3589x* %40, i32 %41, i32 %42, i32 1)
  store i32 %43, i32* %5, align 4
  %44 = load %struct.tc_keypad*, %struct.tc_keypad** %3, align 8
  %45 = getelementptr inbounds %struct.tc_keypad, %struct.tc_keypad* %44, i32 0, i32 0
  store i32 1, i32* %45, align 8
  %46 = load i32, i32* %5, align 4
  store i32 %46, i32* %2, align 4
  br label %47

47:                                               ; preds = %39, %37, %29, %17
  %48 = load i32, i32* %2, align 4
  ret i32 %48
}

declare dso_local i32 @tc3589x_set_bits(%struct.tc3589x*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
