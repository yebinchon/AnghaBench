; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/keyboard/extr_tc3589x-keypad.c_tc3589x_keypad_enable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/keyboard/extr_tc3589x-keypad.c_tc3589x_keypad_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tc_keypad = type { i32, %struct.tc3589x* }
%struct.tc3589x = type { i32 }

@TC3589x_RSTCTRL = common dso_local global i32 0, align 4
@TC3589x_KBDRST = common dso_local global i32 0, align 4
@TC3589x_KBDMFS = common dso_local global i32 0, align 4
@TC3589x_KBDMFS_EN = common dso_local global i32 0, align 4
@TC3589x_CLKEN = common dso_local global i32 0, align 4
@KPD_CLK_EN = common dso_local global i32 0, align 4
@TC3589x_RSTINTCLR = common dso_local global i32 0, align 4
@TC3589x_KBDMSK = common dso_local global i32 0, align 4
@TC3589x_EVT_LOSS_INT = common dso_local global i32 0, align 4
@TC3589x_EVT_INT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tc_keypad*)* @tc3589x_keypad_enable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tc3589x_keypad_enable(%struct.tc_keypad* %0) #0 {
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
  %10 = load i32, i32* @TC3589x_RSTCTRL, align 4
  %11 = load i32, i32* @TC3589x_KBDRST, align 4
  %12 = call i32 @tc3589x_set_bits(%struct.tc3589x* %9, i32 %10, i32 %11, i32 0)
  store i32 %12, i32* %5, align 4
  %13 = load i32, i32* %5, align 4
  %14 = icmp slt i32 %13, 0
  br i1 %14, label %15, label %17

15:                                               ; preds = %1
  %16 = load i32, i32* %5, align 4
  store i32 %16, i32* %2, align 4
  br label %58

17:                                               ; preds = %1
  %18 = load %struct.tc3589x*, %struct.tc3589x** %4, align 8
  %19 = load i32, i32* @TC3589x_KBDMFS, align 4
  %20 = load i32, i32* @TC3589x_KBDMFS_EN, align 4
  %21 = call i32 @tc3589x_set_bits(%struct.tc3589x* %18, i32 %19, i32 0, i32 %20)
  store i32 %21, i32* %5, align 4
  %22 = load i32, i32* %5, align 4
  %23 = icmp slt i32 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %17
  %25 = load i32, i32* %5, align 4
  store i32 %25, i32* %2, align 4
  br label %58

26:                                               ; preds = %17
  %27 = load %struct.tc3589x*, %struct.tc3589x** %4, align 8
  %28 = load i32, i32* @TC3589x_CLKEN, align 4
  %29 = load i32, i32* @KPD_CLK_EN, align 4
  %30 = call i32 @tc3589x_set_bits(%struct.tc3589x* %27, i32 %28, i32 0, i32 %29)
  store i32 %30, i32* %5, align 4
  %31 = load i32, i32* %5, align 4
  %32 = icmp slt i32 %31, 0
  br i1 %32, label %33, label %35

33:                                               ; preds = %26
  %34 = load i32, i32* %5, align 4
  store i32 %34, i32* %2, align 4
  br label %58

35:                                               ; preds = %26
  %36 = load %struct.tc3589x*, %struct.tc3589x** %4, align 8
  %37 = load i32, i32* @TC3589x_RSTINTCLR, align 4
  %38 = call i32 @tc3589x_set_bits(%struct.tc3589x* %36, i32 %37, i32 0, i32 1)
  store i32 %38, i32* %5, align 4
  %39 = load i32, i32* %5, align 4
  %40 = icmp slt i32 %39, 0
  br i1 %40, label %41, label %43

41:                                               ; preds = %35
  %42 = load i32, i32* %5, align 4
  store i32 %42, i32* %2, align 4
  br label %58

43:                                               ; preds = %35
  %44 = load %struct.tc3589x*, %struct.tc3589x** %4, align 8
  %45 = load i32, i32* @TC3589x_KBDMSK, align 4
  %46 = load i32, i32* @TC3589x_EVT_LOSS_INT, align 4
  %47 = load i32, i32* @TC3589x_EVT_INT, align 4
  %48 = or i32 %46, %47
  %49 = call i32 @tc3589x_set_bits(%struct.tc3589x* %44, i32 %45, i32 0, i32 %48)
  store i32 %49, i32* %5, align 4
  %50 = load i32, i32* %5, align 4
  %51 = icmp slt i32 %50, 0
  br i1 %51, label %52, label %54

52:                                               ; preds = %43
  %53 = load i32, i32* %5, align 4
  store i32 %53, i32* %2, align 4
  br label %58

54:                                               ; preds = %43
  %55 = load %struct.tc_keypad*, %struct.tc_keypad** %3, align 8
  %56 = getelementptr inbounds %struct.tc_keypad, %struct.tc_keypad* %55, i32 0, i32 0
  store i32 0, i32* %56, align 8
  %57 = load i32, i32* %5, align 4
  store i32 %57, i32* %2, align 4
  br label %58

58:                                               ; preds = %54, %52, %41, %33, %24, %15
  %59 = load i32, i32* %2, align 4
  ret i32 %59
}

declare dso_local i32 @tc3589x_set_bits(%struct.tc3589x*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
