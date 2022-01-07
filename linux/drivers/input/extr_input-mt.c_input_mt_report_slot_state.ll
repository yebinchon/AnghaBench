; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/extr_input-mt.c_input_mt_report_slot_state.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/extr_input-mt.c_input_mt_report_slot_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.input_dev = type { %struct.input_mt* }
%struct.input_mt = type { i64, i32, %struct.input_mt_slot* }
%struct.input_mt_slot = type { i32 }

@EV_ABS = common dso_local global i32 0, align 4
@ABS_MT_TRACKING_ID = common dso_local global i32 0, align 4
@ABS_MT_TOOL_TYPE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @input_mt_report_slot_state(%struct.input_dev* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.input_dev*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.input_mt*, align 8
  %9 = alloca %struct.input_mt_slot*, align 8
  %10 = alloca i32, align 4
  store %struct.input_dev* %0, %struct.input_dev** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %11 = load %struct.input_dev*, %struct.input_dev** %5, align 8
  %12 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %11, i32 0, i32 0
  %13 = load %struct.input_mt*, %struct.input_mt** %12, align 8
  store %struct.input_mt* %13, %struct.input_mt** %8, align 8
  %14 = load %struct.input_mt*, %struct.input_mt** %8, align 8
  %15 = icmp ne %struct.input_mt* %14, null
  br i1 %15, label %17, label %16

16:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %57

17:                                               ; preds = %3
  %18 = load %struct.input_mt*, %struct.input_mt** %8, align 8
  %19 = getelementptr inbounds %struct.input_mt, %struct.input_mt* %18, i32 0, i32 2
  %20 = load %struct.input_mt_slot*, %struct.input_mt_slot** %19, align 8
  %21 = load %struct.input_mt*, %struct.input_mt** %8, align 8
  %22 = getelementptr inbounds %struct.input_mt, %struct.input_mt* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = getelementptr inbounds %struct.input_mt_slot, %struct.input_mt_slot* %20, i64 %23
  store %struct.input_mt_slot* %24, %struct.input_mt_slot** %9, align 8
  %25 = load %struct.input_mt*, %struct.input_mt** %8, align 8
  %26 = getelementptr inbounds %struct.input_mt, %struct.input_mt* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 8
  %28 = load %struct.input_mt_slot*, %struct.input_mt_slot** %9, align 8
  %29 = getelementptr inbounds %struct.input_mt_slot, %struct.input_mt_slot* %28, i32 0, i32 0
  store i32 %27, i32* %29, align 4
  %30 = load i32, i32* %7, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %37, label %32

32:                                               ; preds = %17
  %33 = load %struct.input_dev*, %struct.input_dev** %5, align 8
  %34 = load i32, i32* @EV_ABS, align 4
  %35 = load i32, i32* @ABS_MT_TRACKING_ID, align 4
  %36 = call i32 @input_event(%struct.input_dev* %33, i32 %34, i32 %35, i32 -1)
  store i32 0, i32* %4, align 4
  br label %57

37:                                               ; preds = %17
  %38 = load %struct.input_mt_slot*, %struct.input_mt_slot** %9, align 8
  %39 = load i32, i32* @ABS_MT_TRACKING_ID, align 4
  %40 = call i32 @input_mt_get_value(%struct.input_mt_slot* %38, i32 %39)
  store i32 %40, i32* %10, align 4
  %41 = load i32, i32* %10, align 4
  %42 = icmp slt i32 %41, 0
  br i1 %42, label %43, label %46

43:                                               ; preds = %37
  %44 = load %struct.input_mt*, %struct.input_mt** %8, align 8
  %45 = call i32 @input_mt_new_trkid(%struct.input_mt* %44)
  store i32 %45, i32* %10, align 4
  br label %46

46:                                               ; preds = %43, %37
  %47 = load %struct.input_dev*, %struct.input_dev** %5, align 8
  %48 = load i32, i32* @EV_ABS, align 4
  %49 = load i32, i32* @ABS_MT_TRACKING_ID, align 4
  %50 = load i32, i32* %10, align 4
  %51 = call i32 @input_event(%struct.input_dev* %47, i32 %48, i32 %49, i32 %50)
  %52 = load %struct.input_dev*, %struct.input_dev** %5, align 8
  %53 = load i32, i32* @EV_ABS, align 4
  %54 = load i32, i32* @ABS_MT_TOOL_TYPE, align 4
  %55 = load i32, i32* %6, align 4
  %56 = call i32 @input_event(%struct.input_dev* %52, i32 %53, i32 %54, i32 %55)
  store i32 1, i32* %4, align 4
  br label %57

57:                                               ; preds = %46, %32, %16
  %58 = load i32, i32* %4, align 4
  ret i32 %58
}

declare dso_local i32 @input_event(%struct.input_dev*, i32, i32, i32) #1

declare dso_local i32 @input_mt_get_value(%struct.input_mt_slot*, i32) #1

declare dso_local i32 @input_mt_new_trkid(%struct.input_mt*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
