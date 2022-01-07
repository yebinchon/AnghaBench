; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/mouse/extr_cyapa_gen5.c_cyapa_pip_report_slot_data.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/mouse/extr_cyapa_gen5.c_cyapa_pip_report_slot_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cyapa = type { i32, i32, i64, i64, %struct.input_dev* }
%struct.input_dev = type { i32 }
%struct.cyapa_pip_touch_record = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@RECORD_EVENT_LIFTOFF = common dso_local global i64 0, align 8
@MT_TOOL_FINGER = common dso_local global i32 0, align 4
@ABS_MT_POSITION_X = common dso_local global i32 0, align 4
@ABS_MT_POSITION_Y = common dso_local global i32 0, align 4
@ABS_DISTANCE = common dso_local global i32 0, align 4
@ABS_MT_PRESSURE = common dso_local global i32 0, align 4
@ABS_MT_TOUCH_MAJOR = common dso_local global i32 0, align 4
@ABS_MT_TOUCH_MINOR = common dso_local global i32 0, align 4
@ABS_MT_WIDTH_MAJOR = common dso_local global i32 0, align 4
@ABS_MT_WIDTH_MINOR = common dso_local global i32 0, align 4
@ABS_MT_ORIENTATION = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.cyapa*, %struct.cyapa_pip_touch_record*)* @cyapa_pip_report_slot_data to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cyapa_pip_report_slot_data(%struct.cyapa* %0, %struct.cyapa_pip_touch_record* %1) #0 {
  %3 = alloca %struct.cyapa*, align 8
  %4 = alloca %struct.cyapa_pip_touch_record*, align 8
  %5 = alloca %struct.input_dev*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.cyapa* %0, %struct.cyapa** %3, align 8
  store %struct.cyapa_pip_touch_record* %1, %struct.cyapa_pip_touch_record** %4, align 8
  %10 = load %struct.cyapa*, %struct.cyapa** %3, align 8
  %11 = getelementptr inbounds %struct.cyapa, %struct.cyapa* %10, i32 0, i32 4
  %12 = load %struct.input_dev*, %struct.input_dev** %11, align 8
  store %struct.input_dev* %12, %struct.input_dev** %5, align 8
  %13 = load %struct.cyapa_pip_touch_record*, %struct.cyapa_pip_touch_record** %4, align 8
  %14 = getelementptr inbounds %struct.cyapa_pip_touch_record, %struct.cyapa_pip_touch_record* %13, i32 0, i32 10
  %15 = load i32, i32* %14, align 4
  %16 = call i64 @PIP_GET_EVENT_ID(i32 %15)
  store i64 %16, i64* %6, align 8
  %17 = load %struct.cyapa_pip_touch_record*, %struct.cyapa_pip_touch_record** %4, align 8
  %18 = getelementptr inbounds %struct.cyapa_pip_touch_record, %struct.cyapa_pip_touch_record* %17, i32 0, i32 10
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @PIP_GET_TOUCH_ID(i32 %19)
  store i32 %20, i32* %7, align 4
  %21 = load i64, i64* %6, align 8
  %22 = load i64, i64* @RECORD_EVENT_LIFTOFF, align 8
  %23 = icmp eq i64 %21, %22
  br i1 %23, label %24, label %25

24:                                               ; preds = %2
  br label %117

25:                                               ; preds = %2
  %26 = load %struct.input_dev*, %struct.input_dev** %5, align 8
  %27 = load i32, i32* %7, align 4
  %28 = call i32 @input_mt_slot(%struct.input_dev* %26, i32 %27)
  %29 = load %struct.input_dev*, %struct.input_dev** %5, align 8
  %30 = load i32, i32* @MT_TOOL_FINGER, align 4
  %31 = call i32 @input_mt_report_slot_state(%struct.input_dev* %29, i32 %30, i32 1)
  %32 = load %struct.cyapa_pip_touch_record*, %struct.cyapa_pip_touch_record** %4, align 8
  %33 = getelementptr inbounds %struct.cyapa_pip_touch_record, %struct.cyapa_pip_touch_record* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = shl i32 %34, 8
  %36 = load %struct.cyapa_pip_touch_record*, %struct.cyapa_pip_touch_record** %4, align 8
  %37 = getelementptr inbounds %struct.cyapa_pip_touch_record, %struct.cyapa_pip_touch_record* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = or i32 %35, %38
  store i32 %39, i32* %8, align 4
  %40 = load %struct.cyapa*, %struct.cyapa** %3, align 8
  %41 = getelementptr inbounds %struct.cyapa, %struct.cyapa* %40, i32 0, i32 3
  %42 = load i64, i64* %41, align 8
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %50

44:                                               ; preds = %25
  %45 = load %struct.cyapa*, %struct.cyapa** %3, align 8
  %46 = getelementptr inbounds %struct.cyapa, %struct.cyapa* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = load i32, i32* %8, align 4
  %49 = sub nsw i32 %47, %48
  store i32 %49, i32* %8, align 4
  br label %50

50:                                               ; preds = %44, %25
  %51 = load %struct.cyapa_pip_touch_record*, %struct.cyapa_pip_touch_record** %4, align 8
  %52 = getelementptr inbounds %struct.cyapa_pip_touch_record, %struct.cyapa_pip_touch_record* %51, i32 0, i32 2
  %53 = load i32, i32* %52, align 4
  %54 = shl i32 %53, 8
  %55 = load %struct.cyapa_pip_touch_record*, %struct.cyapa_pip_touch_record** %4, align 8
  %56 = getelementptr inbounds %struct.cyapa_pip_touch_record, %struct.cyapa_pip_touch_record* %55, i32 0, i32 3
  %57 = load i32, i32* %56, align 4
  %58 = or i32 %54, %57
  store i32 %58, i32* %9, align 4
  %59 = load %struct.cyapa*, %struct.cyapa** %3, align 8
  %60 = getelementptr inbounds %struct.cyapa, %struct.cyapa* %59, i32 0, i32 2
  %61 = load i64, i64* %60, align 8
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %69

63:                                               ; preds = %50
  %64 = load %struct.cyapa*, %struct.cyapa** %3, align 8
  %65 = getelementptr inbounds %struct.cyapa, %struct.cyapa* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 4
  %67 = load i32, i32* %9, align 4
  %68 = sub nsw i32 %66, %67
  store i32 %68, i32* %9, align 4
  br label %69

69:                                               ; preds = %63, %50
  %70 = load %struct.input_dev*, %struct.input_dev** %5, align 8
  %71 = load i32, i32* @ABS_MT_POSITION_X, align 4
  %72 = load i32, i32* %8, align 4
  %73 = call i32 @input_report_abs(%struct.input_dev* %70, i32 %71, i32 %72)
  %74 = load %struct.input_dev*, %struct.input_dev** %5, align 8
  %75 = load i32, i32* @ABS_MT_POSITION_Y, align 4
  %76 = load i32, i32* %9, align 4
  %77 = call i32 @input_report_abs(%struct.input_dev* %74, i32 %75, i32 %76)
  %78 = load %struct.input_dev*, %struct.input_dev** %5, align 8
  %79 = load i32, i32* @ABS_DISTANCE, align 4
  %80 = call i32 @input_report_abs(%struct.input_dev* %78, i32 %79, i32 0)
  %81 = load %struct.input_dev*, %struct.input_dev** %5, align 8
  %82 = load i32, i32* @ABS_MT_PRESSURE, align 4
  %83 = load %struct.cyapa_pip_touch_record*, %struct.cyapa_pip_touch_record** %4, align 8
  %84 = getelementptr inbounds %struct.cyapa_pip_touch_record, %struct.cyapa_pip_touch_record* %83, i32 0, i32 4
  %85 = load i32, i32* %84, align 4
  %86 = call i32 @input_report_abs(%struct.input_dev* %81, i32 %82, i32 %85)
  %87 = load %struct.input_dev*, %struct.input_dev** %5, align 8
  %88 = load i32, i32* @ABS_MT_TOUCH_MAJOR, align 4
  %89 = load %struct.cyapa_pip_touch_record*, %struct.cyapa_pip_touch_record** %4, align 8
  %90 = getelementptr inbounds %struct.cyapa_pip_touch_record, %struct.cyapa_pip_touch_record* %89, i32 0, i32 5
  %91 = load i32, i32* %90, align 4
  %92 = call i32 @input_report_abs(%struct.input_dev* %87, i32 %88, i32 %91)
  %93 = load %struct.input_dev*, %struct.input_dev** %5, align 8
  %94 = load i32, i32* @ABS_MT_TOUCH_MINOR, align 4
  %95 = load %struct.cyapa_pip_touch_record*, %struct.cyapa_pip_touch_record** %4, align 8
  %96 = getelementptr inbounds %struct.cyapa_pip_touch_record, %struct.cyapa_pip_touch_record* %95, i32 0, i32 6
  %97 = load i32, i32* %96, align 4
  %98 = call i32 @input_report_abs(%struct.input_dev* %93, i32 %94, i32 %97)
  %99 = load %struct.input_dev*, %struct.input_dev** %5, align 8
  %100 = load i32, i32* @ABS_MT_WIDTH_MAJOR, align 4
  %101 = load %struct.cyapa_pip_touch_record*, %struct.cyapa_pip_touch_record** %4, align 8
  %102 = getelementptr inbounds %struct.cyapa_pip_touch_record, %struct.cyapa_pip_touch_record* %101, i32 0, i32 7
  %103 = load i32, i32* %102, align 4
  %104 = call i32 @input_report_abs(%struct.input_dev* %99, i32 %100, i32 %103)
  %105 = load %struct.input_dev*, %struct.input_dev** %5, align 8
  %106 = load i32, i32* @ABS_MT_WIDTH_MINOR, align 4
  %107 = load %struct.cyapa_pip_touch_record*, %struct.cyapa_pip_touch_record** %4, align 8
  %108 = getelementptr inbounds %struct.cyapa_pip_touch_record, %struct.cyapa_pip_touch_record* %107, i32 0, i32 8
  %109 = load i32, i32* %108, align 4
  %110 = call i32 @input_report_abs(%struct.input_dev* %105, i32 %106, i32 %109)
  %111 = load %struct.input_dev*, %struct.input_dev** %5, align 8
  %112 = load i32, i32* @ABS_MT_ORIENTATION, align 4
  %113 = load %struct.cyapa_pip_touch_record*, %struct.cyapa_pip_touch_record** %4, align 8
  %114 = getelementptr inbounds %struct.cyapa_pip_touch_record, %struct.cyapa_pip_touch_record* %113, i32 0, i32 9
  %115 = load i32, i32* %114, align 4
  %116 = call i32 @input_report_abs(%struct.input_dev* %111, i32 %112, i32 %115)
  br label %117

117:                                              ; preds = %69, %24
  ret void
}

declare dso_local i64 @PIP_GET_EVENT_ID(i32) #1

declare dso_local i32 @PIP_GET_TOUCH_ID(i32) #1

declare dso_local i32 @input_mt_slot(%struct.input_dev*, i32) #1

declare dso_local i32 @input_mt_report_slot_state(%struct.input_dev*, i32, i32) #1

declare dso_local i32 @input_report_abs(%struct.input_dev*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
