; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/mouse/extr_bcm5974.c_report_finger_data.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/mouse/extr_bcm5974.c_report_finger_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.input_dev = type { i32 }
%struct.input_mt_pos = type { i32, i32 }
%struct.tp_finger = type { i32, i32, i32, i32, i32 }

@MT_TOOL_FINGER = common dso_local global i32 0, align 4
@ABS_MT_TOUCH_MAJOR = common dso_local global i32 0, align 4
@ABS_MT_TOUCH_MINOR = common dso_local global i32 0, align 4
@ABS_MT_WIDTH_MAJOR = common dso_local global i32 0, align 4
@ABS_MT_WIDTH_MINOR = common dso_local global i32 0, align 4
@ABS_MT_ORIENTATION = common dso_local global i32 0, align 4
@MAX_FINGER_ORIENTATION = common dso_local global i32 0, align 4
@ABS_MT_POSITION_X = common dso_local global i32 0, align 4
@ABS_MT_POSITION_Y = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.input_dev*, i32, %struct.input_mt_pos*, %struct.tp_finger*)* @report_finger_data to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @report_finger_data(%struct.input_dev* %0, i32 %1, %struct.input_mt_pos* %2, %struct.tp_finger* %3) #0 {
  %5 = alloca %struct.input_dev*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.input_mt_pos*, align 8
  %8 = alloca %struct.tp_finger*, align 8
  store %struct.input_dev* %0, %struct.input_dev** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.input_mt_pos* %2, %struct.input_mt_pos** %7, align 8
  store %struct.tp_finger* %3, %struct.tp_finger** %8, align 8
  %9 = load %struct.input_dev*, %struct.input_dev** %5, align 8
  %10 = load i32, i32* %6, align 4
  %11 = call i32 @input_mt_slot(%struct.input_dev* %9, i32 %10)
  %12 = load %struct.input_dev*, %struct.input_dev** %5, align 8
  %13 = load i32, i32* @MT_TOOL_FINGER, align 4
  %14 = call i32 @input_mt_report_slot_state(%struct.input_dev* %12, i32 %13, i32 1)
  %15 = load %struct.input_dev*, %struct.input_dev** %5, align 8
  %16 = load i32, i32* @ABS_MT_TOUCH_MAJOR, align 4
  %17 = load %struct.tp_finger*, %struct.tp_finger** %8, align 8
  %18 = getelementptr inbounds %struct.tp_finger, %struct.tp_finger* %17, i32 0, i32 4
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @raw2int(i32 %19)
  %21 = shl i32 %20, 1
  %22 = call i32 @input_report_abs(%struct.input_dev* %15, i32 %16, i32 %21)
  %23 = load %struct.input_dev*, %struct.input_dev** %5, align 8
  %24 = load i32, i32* @ABS_MT_TOUCH_MINOR, align 4
  %25 = load %struct.tp_finger*, %struct.tp_finger** %8, align 8
  %26 = getelementptr inbounds %struct.tp_finger, %struct.tp_finger* %25, i32 0, i32 3
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @raw2int(i32 %27)
  %29 = shl i32 %28, 1
  %30 = call i32 @input_report_abs(%struct.input_dev* %23, i32 %24, i32 %29)
  %31 = load %struct.input_dev*, %struct.input_dev** %5, align 8
  %32 = load i32, i32* @ABS_MT_WIDTH_MAJOR, align 4
  %33 = load %struct.tp_finger*, %struct.tp_finger** %8, align 8
  %34 = getelementptr inbounds %struct.tp_finger, %struct.tp_finger* %33, i32 0, i32 2
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @raw2int(i32 %35)
  %37 = shl i32 %36, 1
  %38 = call i32 @input_report_abs(%struct.input_dev* %31, i32 %32, i32 %37)
  %39 = load %struct.input_dev*, %struct.input_dev** %5, align 8
  %40 = load i32, i32* @ABS_MT_WIDTH_MINOR, align 4
  %41 = load %struct.tp_finger*, %struct.tp_finger** %8, align 8
  %42 = getelementptr inbounds %struct.tp_finger, %struct.tp_finger* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @raw2int(i32 %43)
  %45 = shl i32 %44, 1
  %46 = call i32 @input_report_abs(%struct.input_dev* %39, i32 %40, i32 %45)
  %47 = load %struct.input_dev*, %struct.input_dev** %5, align 8
  %48 = load i32, i32* @ABS_MT_ORIENTATION, align 4
  %49 = load i32, i32* @MAX_FINGER_ORIENTATION, align 4
  %50 = load %struct.tp_finger*, %struct.tp_finger** %8, align 8
  %51 = getelementptr inbounds %struct.tp_finger, %struct.tp_finger* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = call i32 @raw2int(i32 %52)
  %54 = sub nsw i32 %49, %53
  %55 = call i32 @input_report_abs(%struct.input_dev* %47, i32 %48, i32 %54)
  %56 = load %struct.input_dev*, %struct.input_dev** %5, align 8
  %57 = load i32, i32* @ABS_MT_POSITION_X, align 4
  %58 = load %struct.input_mt_pos*, %struct.input_mt_pos** %7, align 8
  %59 = getelementptr inbounds %struct.input_mt_pos, %struct.input_mt_pos* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = call i32 @input_report_abs(%struct.input_dev* %56, i32 %57, i32 %60)
  %62 = load %struct.input_dev*, %struct.input_dev** %5, align 8
  %63 = load i32, i32* @ABS_MT_POSITION_Y, align 4
  %64 = load %struct.input_mt_pos*, %struct.input_mt_pos** %7, align 8
  %65 = getelementptr inbounds %struct.input_mt_pos, %struct.input_mt_pos* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 4
  %67 = call i32 @input_report_abs(%struct.input_dev* %62, i32 %63, i32 %66)
  ret void
}

declare dso_local i32 @input_mt_slot(%struct.input_dev*, i32) #1

declare dso_local i32 @input_mt_report_slot_state(%struct.input_dev*, i32, i32) #1

declare dso_local i32 @input_report_abs(%struct.input_dev*, i32, i32) #1

declare dso_local i32 @raw2int(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
