; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/touchscreen/extr_hideep.c_hideep_report_slot.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/touchscreen/extr_hideep.c_hideep_report_slot.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.input_dev = type { i32 }
%struct.hideep_event = type { i32, i32, i32, i32, i32, i32, i32 }

@HIDEEP_MT_RELEASED = common dso_local global i32 0, align 4
@ABS_MT_POSITION_X = common dso_local global i32 0, align 4
@ABS_MT_POSITION_Y = common dso_local global i32 0, align 4
@ABS_MT_PRESSURE = common dso_local global i32 0, align 4
@ABS_MT_TOUCH_MAJOR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.input_dev*, %struct.hideep_event*)* @hideep_report_slot to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hideep_report_slot(%struct.input_dev* %0, %struct.hideep_event* %1) #0 {
  %3 = alloca %struct.input_dev*, align 8
  %4 = alloca %struct.hideep_event*, align 8
  store %struct.input_dev* %0, %struct.input_dev** %3, align 8
  store %struct.hideep_event* %1, %struct.hideep_event** %4, align 8
  %5 = load %struct.input_dev*, %struct.input_dev** %3, align 8
  %6 = load %struct.hideep_event*, %struct.hideep_event** %4, align 8
  %7 = getelementptr inbounds %struct.hideep_event, %struct.hideep_event* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = and i32 %8, 15
  %10 = call i32 @input_mt_slot(%struct.input_dev* %5, i32 %9)
  %11 = load %struct.input_dev*, %struct.input_dev** %3, align 8
  %12 = load %struct.hideep_event*, %struct.hideep_event** %4, align 8
  %13 = getelementptr inbounds %struct.hideep_event, %struct.hideep_event* %12, i32 0, i32 6
  %14 = load i32, i32* %13, align 4
  %15 = call i32 @__GET_MT_TOOL_TYPE(i32 %14)
  %16 = load %struct.hideep_event*, %struct.hideep_event** %4, align 8
  %17 = getelementptr inbounds %struct.hideep_event, %struct.hideep_event* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = load i32, i32* @HIDEEP_MT_RELEASED, align 4
  %20 = and i32 %18, %19
  %21 = icmp ne i32 %20, 0
  %22 = xor i1 %21, true
  %23 = zext i1 %22 to i32
  %24 = call i32 @input_mt_report_slot_state(%struct.input_dev* %11, i32 %15, i32 %23)
  %25 = load %struct.hideep_event*, %struct.hideep_event** %4, align 8
  %26 = getelementptr inbounds %struct.hideep_event, %struct.hideep_event* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = load i32, i32* @HIDEEP_MT_RELEASED, align 4
  %29 = and i32 %27, %28
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %56, label %31

31:                                               ; preds = %2
  %32 = load %struct.input_dev*, %struct.input_dev** %3, align 8
  %33 = load i32, i32* @ABS_MT_POSITION_X, align 4
  %34 = load %struct.hideep_event*, %struct.hideep_event** %4, align 8
  %35 = getelementptr inbounds %struct.hideep_event, %struct.hideep_event* %34, i32 0, i32 5
  %36 = call i32 @le16_to_cpup(i32* %35)
  %37 = call i32 @input_report_abs(%struct.input_dev* %32, i32 %33, i32 %36)
  %38 = load %struct.input_dev*, %struct.input_dev** %3, align 8
  %39 = load i32, i32* @ABS_MT_POSITION_Y, align 4
  %40 = load %struct.hideep_event*, %struct.hideep_event** %4, align 8
  %41 = getelementptr inbounds %struct.hideep_event, %struct.hideep_event* %40, i32 0, i32 4
  %42 = call i32 @le16_to_cpup(i32* %41)
  %43 = call i32 @input_report_abs(%struct.input_dev* %38, i32 %39, i32 %42)
  %44 = load %struct.input_dev*, %struct.input_dev** %3, align 8
  %45 = load i32, i32* @ABS_MT_PRESSURE, align 4
  %46 = load %struct.hideep_event*, %struct.hideep_event** %4, align 8
  %47 = getelementptr inbounds %struct.hideep_event, %struct.hideep_event* %46, i32 0, i32 3
  %48 = call i32 @le16_to_cpup(i32* %47)
  %49 = call i32 @input_report_abs(%struct.input_dev* %44, i32 %45, i32 %48)
  %50 = load %struct.input_dev*, %struct.input_dev** %3, align 8
  %51 = load i32, i32* @ABS_MT_TOUCH_MAJOR, align 4
  %52 = load %struct.hideep_event*, %struct.hideep_event** %4, align 8
  %53 = getelementptr inbounds %struct.hideep_event, %struct.hideep_event* %52, i32 0, i32 2
  %54 = load i32, i32* %53, align 4
  %55 = call i32 @input_report_abs(%struct.input_dev* %50, i32 %51, i32 %54)
  br label %56

56:                                               ; preds = %31, %2
  ret void
}

declare dso_local i32 @input_mt_slot(%struct.input_dev*, i32) #1

declare dso_local i32 @input_mt_report_slot_state(%struct.input_dev*, i32, i32) #1

declare dso_local i32 @__GET_MT_TOOL_TYPE(i32) #1

declare dso_local i32 @input_report_abs(%struct.input_dev*, i32, i32) #1

declare dso_local i32 @le16_to_cpup(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
