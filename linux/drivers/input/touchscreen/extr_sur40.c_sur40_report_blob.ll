; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/touchscreen/extr_sur40.c_sur40_report_blob.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/touchscreen/extr_sur40.c_sur40_report_blob.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sur40_blob = type { i64, i32, i32, i32, i32, i32, i32, i32 }
%struct.input_dev = type { i32 }

@SUR40_TOUCH = common dso_local global i64 0, align 8
@MAX_CONTACTS = common dso_local global i32 0, align 4
@MT_TOOL_FINGER = common dso_local global i32 0, align 4
@ABS_MT_POSITION_X = common dso_local global i32 0, align 4
@ABS_MT_POSITION_Y = common dso_local global i32 0, align 4
@ABS_MT_TOOL_X = common dso_local global i32 0, align 4
@ABS_MT_TOOL_Y = common dso_local global i32 0, align 4
@ABS_MT_ORIENTATION = common dso_local global i32 0, align 4
@ABS_MT_TOUCH_MAJOR = common dso_local global i32 0, align 4
@ABS_MT_TOUCH_MINOR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sur40_blob*, %struct.input_dev*)* @sur40_report_blob to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sur40_report_blob(%struct.sur40_blob* %0, %struct.input_dev* %1) #0 {
  %3 = alloca %struct.sur40_blob*, align 8
  %4 = alloca %struct.input_dev*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.sur40_blob* %0, %struct.sur40_blob** %3, align 8
  store %struct.input_dev* %1, %struct.input_dev** %4, align 8
  %15 = load %struct.sur40_blob*, %struct.sur40_blob** %3, align 8
  %16 = getelementptr inbounds %struct.sur40_blob, %struct.sur40_blob* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* @SUR40_TOUCH, align 8
  %19 = icmp ne i64 %17, %18
  br i1 %19, label %20, label %21

20:                                               ; preds = %2
  br label %103

21:                                               ; preds = %2
  %22 = load %struct.input_dev*, %struct.input_dev** %4, align 8
  %23 = load %struct.sur40_blob*, %struct.sur40_blob** %3, align 8
  %24 = getelementptr inbounds %struct.sur40_blob, %struct.sur40_blob* %23, i32 0, i32 7
  %25 = load i32, i32* %24, align 8
  %26 = call i32 @input_mt_get_slot_by_key(%struct.input_dev* %22, i32 %25)
  store i32 %26, i32* %14, align 4
  %27 = load i32, i32* %14, align 4
  %28 = icmp slt i32 %27, 0
  br i1 %28, label %33, label %29

29:                                               ; preds = %21
  %30 = load i32, i32* %14, align 4
  %31 = load i32, i32* @MAX_CONTACTS, align 4
  %32 = icmp sge i32 %30, %31
  br i1 %32, label %33, label %34

33:                                               ; preds = %29, %21
  br label %103

34:                                               ; preds = %29
  %35 = load %struct.sur40_blob*, %struct.sur40_blob** %3, align 8
  %36 = getelementptr inbounds %struct.sur40_blob, %struct.sur40_blob* %35, i32 0, i32 6
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @le16_to_cpu(i32 %37)
  store i32 %38, i32* %8, align 4
  %39 = load %struct.sur40_blob*, %struct.sur40_blob** %3, align 8
  %40 = getelementptr inbounds %struct.sur40_blob, %struct.sur40_blob* %39, i32 0, i32 5
  %41 = load i32, i32* %40, align 8
  %42 = call i32 @le16_to_cpu(i32 %41)
  store i32 %42, i32* %9, align 4
  %43 = load %struct.sur40_blob*, %struct.sur40_blob** %3, align 8
  %44 = getelementptr inbounds %struct.sur40_blob, %struct.sur40_blob* %43, i32 0, i32 4
  %45 = load i32, i32* %44, align 4
  %46 = call i32 @le16_to_cpu(i32 %45)
  store i32 %46, i32* %10, align 4
  %47 = load %struct.sur40_blob*, %struct.sur40_blob** %3, align 8
  %48 = getelementptr inbounds %struct.sur40_blob, %struct.sur40_blob* %47, i32 0, i32 3
  %49 = load i32, i32* %48, align 8
  %50 = call i32 @le16_to_cpu(i32 %49)
  store i32 %50, i32* %11, align 4
  %51 = load %struct.sur40_blob*, %struct.sur40_blob** %3, align 8
  %52 = getelementptr inbounds %struct.sur40_blob, %struct.sur40_blob* %51, i32 0, i32 2
  %53 = load i32, i32* %52, align 4
  %54 = call i32 @le16_to_cpu(i32 %53)
  store i32 %54, i32* %12, align 4
  %55 = load %struct.sur40_blob*, %struct.sur40_blob** %3, align 8
  %56 = getelementptr inbounds %struct.sur40_blob, %struct.sur40_blob* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 8
  %58 = call i32 @le16_to_cpu(i32 %57)
  store i32 %58, i32* %13, align 4
  %59 = load %struct.input_dev*, %struct.input_dev** %4, align 8
  %60 = load i32, i32* %14, align 4
  %61 = call i32 @input_mt_slot(%struct.input_dev* %59, i32 %60)
  %62 = load %struct.input_dev*, %struct.input_dev** %4, align 8
  %63 = load i32, i32* @MT_TOOL_FINGER, align 4
  %64 = call i32 @input_mt_report_slot_state(%struct.input_dev* %62, i32 %63, i32 1)
  %65 = load i32, i32* %8, align 4
  %66 = load i32, i32* %9, align 4
  %67 = icmp sgt i32 %65, %66
  %68 = zext i1 %67 to i32
  store i32 %68, i32* %5, align 4
  %69 = load i32, i32* %8, align 4
  %70 = load i32, i32* %9, align 4
  %71 = call i32 @max(i32 %69, i32 %70)
  store i32 %71, i32* %6, align 4
  %72 = load i32, i32* %8, align 4
  %73 = load i32, i32* %9, align 4
  %74 = call i32 @min(i32 %72, i32 %73)
  store i32 %74, i32* %7, align 4
  %75 = load %struct.input_dev*, %struct.input_dev** %4, align 8
  %76 = load i32, i32* @ABS_MT_POSITION_X, align 4
  %77 = load i32, i32* %10, align 4
  %78 = call i32 @input_report_abs(%struct.input_dev* %75, i32 %76, i32 %77)
  %79 = load %struct.input_dev*, %struct.input_dev** %4, align 8
  %80 = load i32, i32* @ABS_MT_POSITION_Y, align 4
  %81 = load i32, i32* %11, align 4
  %82 = call i32 @input_report_abs(%struct.input_dev* %79, i32 %80, i32 %81)
  %83 = load %struct.input_dev*, %struct.input_dev** %4, align 8
  %84 = load i32, i32* @ABS_MT_TOOL_X, align 4
  %85 = load i32, i32* %12, align 4
  %86 = call i32 @input_report_abs(%struct.input_dev* %83, i32 %84, i32 %85)
  %87 = load %struct.input_dev*, %struct.input_dev** %4, align 8
  %88 = load i32, i32* @ABS_MT_TOOL_Y, align 4
  %89 = load i32, i32* %13, align 4
  %90 = call i32 @input_report_abs(%struct.input_dev* %87, i32 %88, i32 %89)
  %91 = load %struct.input_dev*, %struct.input_dev** %4, align 8
  %92 = load i32, i32* @ABS_MT_ORIENTATION, align 4
  %93 = load i32, i32* %5, align 4
  %94 = call i32 @input_report_abs(%struct.input_dev* %91, i32 %92, i32 %93)
  %95 = load %struct.input_dev*, %struct.input_dev** %4, align 8
  %96 = load i32, i32* @ABS_MT_TOUCH_MAJOR, align 4
  %97 = load i32, i32* %6, align 4
  %98 = call i32 @input_report_abs(%struct.input_dev* %95, i32 %96, i32 %97)
  %99 = load %struct.input_dev*, %struct.input_dev** %4, align 8
  %100 = load i32, i32* @ABS_MT_TOUCH_MINOR, align 4
  %101 = load i32, i32* %7, align 4
  %102 = call i32 @input_report_abs(%struct.input_dev* %99, i32 %100, i32 %101)
  br label %103

103:                                              ; preds = %34, %33, %20
  ret void
}

declare dso_local i32 @input_mt_get_slot_by_key(%struct.input_dev*, i32) #1

declare dso_local i32 @le16_to_cpu(i32) #1

declare dso_local i32 @input_mt_slot(%struct.input_dev*, i32) #1

declare dso_local i32 @input_mt_report_slot_state(%struct.input_dev*, i32, i32) #1

declare dso_local i32 @max(i32, i32) #1

declare dso_local i32 @min(i32, i32) #1

declare dso_local i32 @input_report_abs(%struct.input_dev*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
