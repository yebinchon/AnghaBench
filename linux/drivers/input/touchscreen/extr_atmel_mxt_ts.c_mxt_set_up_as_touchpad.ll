; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/touchscreen/extr_atmel_mxt_ts.c_mxt_set_up_as_touchpad.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/touchscreen/extr_atmel_mxt_ts.c_mxt_set_up_as_touchpad.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.input_dev = type { i8*, i32 }
%struct.mxt_data = type { i32, i64* }

@.str = private unnamed_addr constant [24 x i8] c"Atmel maXTouch Touchpad\00", align 1
@INPUT_PROP_BUTTONPAD = common dso_local global i32 0, align 4
@ABS_X = common dso_local global i32 0, align 4
@MXT_PIXELS_PER_MM = common dso_local global i32 0, align 4
@ABS_Y = common dso_local global i32 0, align 4
@ABS_MT_POSITION_X = common dso_local global i32 0, align 4
@ABS_MT_POSITION_Y = common dso_local global i32 0, align 4
@KEY_RESERVED = common dso_local global i64 0, align 8
@EV_KEY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.input_dev*, %struct.mxt_data*)* @mxt_set_up_as_touchpad to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mxt_set_up_as_touchpad(%struct.input_dev* %0, %struct.mxt_data* %1) #0 {
  %3 = alloca %struct.input_dev*, align 8
  %4 = alloca %struct.mxt_data*, align 8
  %5 = alloca i32, align 4
  store %struct.input_dev* %0, %struct.input_dev** %3, align 8
  store %struct.mxt_data* %1, %struct.mxt_data** %4, align 8
  %6 = load %struct.input_dev*, %struct.input_dev** %3, align 8
  %7 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %6, i32 0, i32 0
  store i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i8** %7, align 8
  %8 = load i32, i32* @INPUT_PROP_BUTTONPAD, align 4
  %9 = load %struct.input_dev*, %struct.input_dev** %3, align 8
  %10 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %9, i32 0, i32 1
  %11 = load i32, i32* %10, align 8
  %12 = call i32 @__set_bit(i32 %8, i32 %11)
  %13 = load %struct.input_dev*, %struct.input_dev** %3, align 8
  %14 = load i32, i32* @ABS_X, align 4
  %15 = load i32, i32* @MXT_PIXELS_PER_MM, align 4
  %16 = call i32 @input_abs_set_res(%struct.input_dev* %13, i32 %14, i32 %15)
  %17 = load %struct.input_dev*, %struct.input_dev** %3, align 8
  %18 = load i32, i32* @ABS_Y, align 4
  %19 = load i32, i32* @MXT_PIXELS_PER_MM, align 4
  %20 = call i32 @input_abs_set_res(%struct.input_dev* %17, i32 %18, i32 %19)
  %21 = load %struct.input_dev*, %struct.input_dev** %3, align 8
  %22 = load i32, i32* @ABS_MT_POSITION_X, align 4
  %23 = load i32, i32* @MXT_PIXELS_PER_MM, align 4
  %24 = call i32 @input_abs_set_res(%struct.input_dev* %21, i32 %22, i32 %23)
  %25 = load %struct.input_dev*, %struct.input_dev** %3, align 8
  %26 = load i32, i32* @ABS_MT_POSITION_Y, align 4
  %27 = load i32, i32* @MXT_PIXELS_PER_MM, align 4
  %28 = call i32 @input_abs_set_res(%struct.input_dev* %25, i32 %26, i32 %27)
  store i32 0, i32* %5, align 4
  br label %29

29:                                               ; preds = %57, %2
  %30 = load i32, i32* %5, align 4
  %31 = load %struct.mxt_data*, %struct.mxt_data** %4, align 8
  %32 = getelementptr inbounds %struct.mxt_data, %struct.mxt_data* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = icmp slt i32 %30, %33
  br i1 %34, label %35, label %60

35:                                               ; preds = %29
  %36 = load %struct.mxt_data*, %struct.mxt_data** %4, align 8
  %37 = getelementptr inbounds %struct.mxt_data, %struct.mxt_data* %36, i32 0, i32 1
  %38 = load i64*, i64** %37, align 8
  %39 = load i32, i32* %5, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds i64, i64* %38, i64 %40
  %42 = load i64, i64* %41, align 8
  %43 = load i64, i64* @KEY_RESERVED, align 8
  %44 = icmp ne i64 %42, %43
  br i1 %44, label %45, label %56

45:                                               ; preds = %35
  %46 = load %struct.input_dev*, %struct.input_dev** %3, align 8
  %47 = load i32, i32* @EV_KEY, align 4
  %48 = load %struct.mxt_data*, %struct.mxt_data** %4, align 8
  %49 = getelementptr inbounds %struct.mxt_data, %struct.mxt_data* %48, i32 0, i32 1
  %50 = load i64*, i64** %49, align 8
  %51 = load i32, i32* %5, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds i64, i64* %50, i64 %52
  %54 = load i64, i64* %53, align 8
  %55 = call i32 @input_set_capability(%struct.input_dev* %46, i32 %47, i64 %54)
  br label %56

56:                                               ; preds = %45, %35
  br label %57

57:                                               ; preds = %56
  %58 = load i32, i32* %5, align 4
  %59 = add nsw i32 %58, 1
  store i32 %59, i32* %5, align 4
  br label %29

60:                                               ; preds = %29
  ret void
}

declare dso_local i32 @__set_bit(i32, i32) #1

declare dso_local i32 @input_abs_set_res(%struct.input_dev*, i32, i32) #1

declare dso_local i32 @input_set_capability(%struct.input_dev*, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
