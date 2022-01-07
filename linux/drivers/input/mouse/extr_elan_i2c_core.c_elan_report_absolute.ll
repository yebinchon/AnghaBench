; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/mouse/extr_elan_i2c_core.c_elan_report_absolute.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/mouse/extr_elan_i2c_core.c_elan_report_absolute.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.elan_tp_data = type { %struct.input_dev* }
%struct.input_dev = type { i32 }

@ETP_FINGER_DATA_OFFSET = common dso_local global i64 0, align 8
@ETP_TOUCH_INFO_OFFSET = common dso_local global i64 0, align 8
@ETP_HOVER_INFO_OFFSET = common dso_local global i64 0, align 8
@ETP_MAX_FINGERS = common dso_local global i32 0, align 4
@ETP_FINGER_DATA_LEN = common dso_local global i32 0, align 4
@BTN_LEFT = common dso_local global i32 0, align 4
@BTN_MIDDLE = common dso_local global i32 0, align 4
@BTN_RIGHT = common dso_local global i32 0, align 4
@ABS_DISTANCE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.elan_tp_data*, i32*)* @elan_report_absolute to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @elan_report_absolute(%struct.elan_tp_data* %0, i32* %1) #0 {
  %3 = alloca %struct.elan_tp_data*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.input_dev*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.elan_tp_data* %0, %struct.elan_tp_data** %3, align 8
  store i32* %1, i32** %4, align 8
  %12 = load %struct.elan_tp_data*, %struct.elan_tp_data** %3, align 8
  %13 = getelementptr inbounds %struct.elan_tp_data, %struct.elan_tp_data* %12, i32 0, i32 0
  %14 = load %struct.input_dev*, %struct.input_dev** %13, align 8
  store %struct.input_dev* %14, %struct.input_dev** %5, align 8
  %15 = load i32*, i32** %4, align 8
  %16 = load i64, i64* @ETP_FINGER_DATA_OFFSET, align 8
  %17 = getelementptr inbounds i32, i32* %15, i64 %16
  store i32* %17, i32** %6, align 8
  %18 = load i32*, i32** %4, align 8
  %19 = load i64, i64* @ETP_TOUCH_INFO_OFFSET, align 8
  %20 = getelementptr inbounds i32, i32* %18, i64 %19
  %21 = load i32, i32* %20, align 4
  store i32 %21, i32* %8, align 4
  %22 = load i32*, i32** %4, align 8
  %23 = load i64, i64* @ETP_HOVER_INFO_OFFSET, align 8
  %24 = getelementptr inbounds i32, i32* %22, i64 %23
  %25 = load i32, i32* %24, align 4
  store i32 %25, i32* %9, align 4
  %26 = load i32, i32* %9, align 4
  %27 = and i32 %26, 64
  store i32 %27, i32* %11, align 4
  store i32 0, i32* %7, align 4
  br label %28

28:                                               ; preds = %51, %2
  %29 = load i32, i32* %7, align 4
  %30 = load i32, i32* @ETP_MAX_FINGERS, align 4
  %31 = icmp slt i32 %29, %30
  br i1 %31, label %32, label %54

32:                                               ; preds = %28
  %33 = load i32, i32* %8, align 4
  %34 = load i32, i32* %7, align 4
  %35 = add nsw i32 3, %34
  %36 = shl i32 1, %35
  %37 = and i32 %33, %36
  store i32 %37, i32* %10, align 4
  %38 = load %struct.elan_tp_data*, %struct.elan_tp_data** %3, align 8
  %39 = load i32, i32* %7, align 4
  %40 = load i32, i32* %10, align 4
  %41 = load i32*, i32** %6, align 8
  %42 = call i32 @elan_report_contact(%struct.elan_tp_data* %38, i32 %39, i32 %40, i32* %41)
  %43 = load i32, i32* %10, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %50

45:                                               ; preds = %32
  %46 = load i32, i32* @ETP_FINGER_DATA_LEN, align 4
  %47 = load i32*, i32** %6, align 8
  %48 = sext i32 %46 to i64
  %49 = getelementptr inbounds i32, i32* %47, i64 %48
  store i32* %49, i32** %6, align 8
  br label %50

50:                                               ; preds = %45, %32
  br label %51

51:                                               ; preds = %50
  %52 = load i32, i32* %7, align 4
  %53 = add nsw i32 %52, 1
  store i32 %53, i32* %7, align 4
  br label %28

54:                                               ; preds = %28
  %55 = load %struct.input_dev*, %struct.input_dev** %5, align 8
  %56 = load i32, i32* @BTN_LEFT, align 4
  %57 = load i32, i32* %8, align 4
  %58 = call i32 @BIT(i32 0)
  %59 = and i32 %57, %58
  %60 = call i32 @input_report_key(%struct.input_dev* %55, i32 %56, i32 %59)
  %61 = load %struct.input_dev*, %struct.input_dev** %5, align 8
  %62 = load i32, i32* @BTN_MIDDLE, align 4
  %63 = load i32, i32* %8, align 4
  %64 = call i32 @BIT(i32 2)
  %65 = and i32 %63, %64
  %66 = call i32 @input_report_key(%struct.input_dev* %61, i32 %62, i32 %65)
  %67 = load %struct.input_dev*, %struct.input_dev** %5, align 8
  %68 = load i32, i32* @BTN_RIGHT, align 4
  %69 = load i32, i32* %8, align 4
  %70 = call i32 @BIT(i32 1)
  %71 = and i32 %69, %70
  %72 = call i32 @input_report_key(%struct.input_dev* %67, i32 %68, i32 %71)
  %73 = load %struct.input_dev*, %struct.input_dev** %5, align 8
  %74 = load i32, i32* @ABS_DISTANCE, align 4
  %75 = load i32, i32* %11, align 4
  %76 = icmp ne i32 %75, 0
  %77 = zext i1 %76 to i32
  %78 = call i32 @input_report_abs(%struct.input_dev* %73, i32 %74, i32 %77)
  %79 = load %struct.input_dev*, %struct.input_dev** %5, align 8
  %80 = call i32 @input_mt_report_pointer_emulation(%struct.input_dev* %79, i32 1)
  %81 = load %struct.input_dev*, %struct.input_dev** %5, align 8
  %82 = call i32 @input_sync(%struct.input_dev* %81)
  ret void
}

declare dso_local i32 @elan_report_contact(%struct.elan_tp_data*, i32, i32, i32*) #1

declare dso_local i32 @input_report_key(%struct.input_dev*, i32, i32) #1

declare dso_local i32 @BIT(i32) #1

declare dso_local i32 @input_report_abs(%struct.input_dev*, i32, i32) #1

declare dso_local i32 @input_mt_report_pointer_emulation(%struct.input_dev*, i32) #1

declare dso_local i32 @input_sync(%struct.input_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
