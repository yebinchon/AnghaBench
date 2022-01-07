; ModuleID = '/home/carl/AnghaBench/linux/drivers/hid/extr_hid-asus.c_asus_report_tool_width.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hid/extr_hid-asus.c_asus_report_tool_width.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.asus_drvdata = type { %struct.TYPE_4__*, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { %struct.input_mt* }
%struct.input_mt = type { i32, i32, %struct.input_mt_slot* }
%struct.input_mt_slot = type { i32 }
%struct.TYPE_3__ = type { i32 }

@ABS_MT_TRACKING_ID = common dso_local global i32 0, align 4
@TRKID_SGN = common dso_local global i32 0, align 4
@ABS_TOOL_WIDTH = common dso_local global i32 0, align 4
@ABS_MT_TOUCH_MAJOR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.asus_drvdata*)* @asus_report_tool_width to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @asus_report_tool_width(%struct.asus_drvdata* %0) #0 {
  %2 = alloca %struct.asus_drvdata*, align 8
  %3 = alloca %struct.input_mt*, align 8
  %4 = alloca %struct.input_mt_slot*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.input_mt_slot*, align 8
  %9 = alloca i32, align 4
  store %struct.asus_drvdata* %0, %struct.asus_drvdata** %2, align 8
  %10 = load %struct.asus_drvdata*, %struct.asus_drvdata** %2, align 8
  %11 = getelementptr inbounds %struct.asus_drvdata, %struct.asus_drvdata* %10, i32 0, i32 0
  %12 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 0
  %14 = load %struct.input_mt*, %struct.input_mt** %13, align 8
  store %struct.input_mt* %14, %struct.input_mt** %3, align 8
  %15 = load %struct.asus_drvdata*, %struct.asus_drvdata** %2, align 8
  %16 = getelementptr inbounds %struct.asus_drvdata, %struct.asus_drvdata* %15, i32 0, i32 1
  %17 = load %struct.TYPE_3__*, %struct.TYPE_3__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = icmp slt i32 %19, 5
  br i1 %20, label %21, label %22

21:                                               ; preds = %1
  br label %73

22:                                               ; preds = %1
  store %struct.input_mt_slot* null, %struct.input_mt_slot** %4, align 8
  %23 = load %struct.input_mt*, %struct.input_mt** %3, align 8
  %24 = getelementptr inbounds %struct.input_mt, %struct.input_mt* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  store i32 %25, i32* %5, align 4
  store i32 0, i32* %6, align 4
  store i32 0, i32* %7, align 4
  br label %26

26:                                               ; preds = %58, %22
  %27 = load i32, i32* %7, align 4
  %28 = load %struct.input_mt*, %struct.input_mt** %3, align 8
  %29 = getelementptr inbounds %struct.input_mt, %struct.input_mt* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = icmp slt i32 %27, %30
  br i1 %31, label %32, label %61

32:                                               ; preds = %26
  %33 = load %struct.input_mt*, %struct.input_mt** %3, align 8
  %34 = getelementptr inbounds %struct.input_mt, %struct.input_mt* %33, i32 0, i32 2
  %35 = load %struct.input_mt_slot*, %struct.input_mt_slot** %34, align 8
  %36 = load i32, i32* %7, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds %struct.input_mt_slot, %struct.input_mt_slot* %35, i64 %37
  store %struct.input_mt_slot* %38, %struct.input_mt_slot** %8, align 8
  %39 = load %struct.input_mt_slot*, %struct.input_mt_slot** %8, align 8
  %40 = load i32, i32* @ABS_MT_TRACKING_ID, align 4
  %41 = call i32 @input_mt_get_value(%struct.input_mt_slot* %39, i32 %40)
  store i32 %41, i32* %9, align 4
  %42 = load i32, i32* %9, align 4
  %43 = icmp slt i32 %42, 0
  br i1 %43, label %44, label %45

44:                                               ; preds = %32
  br label %58

45:                                               ; preds = %32
  %46 = load i32, i32* %9, align 4
  %47 = load i32, i32* %5, align 4
  %48 = sub nsw i32 %46, %47
  %49 = load i32, i32* @TRKID_SGN, align 4
  %50 = and i32 %48, %49
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %55

52:                                               ; preds = %45
  %53 = load %struct.input_mt_slot*, %struct.input_mt_slot** %8, align 8
  store %struct.input_mt_slot* %53, %struct.input_mt_slot** %4, align 8
  %54 = load i32, i32* %9, align 4
  store i32 %54, i32* %5, align 4
  br label %55

55:                                               ; preds = %52, %45
  %56 = load i32, i32* %6, align 4
  %57 = add nsw i32 %56, 1
  store i32 %57, i32* %6, align 4
  br label %58

58:                                               ; preds = %55, %44
  %59 = load i32, i32* %7, align 4
  %60 = add nsw i32 %59, 1
  store i32 %60, i32* %7, align 4
  br label %26

61:                                               ; preds = %26
  %62 = load %struct.input_mt_slot*, %struct.input_mt_slot** %4, align 8
  %63 = icmp ne %struct.input_mt_slot* %62, null
  br i1 %63, label %64, label %73

64:                                               ; preds = %61
  %65 = load %struct.asus_drvdata*, %struct.asus_drvdata** %2, align 8
  %66 = getelementptr inbounds %struct.asus_drvdata, %struct.asus_drvdata* %65, i32 0, i32 0
  %67 = load %struct.TYPE_4__*, %struct.TYPE_4__** %66, align 8
  %68 = load i32, i32* @ABS_TOOL_WIDTH, align 4
  %69 = load %struct.input_mt_slot*, %struct.input_mt_slot** %4, align 8
  %70 = load i32, i32* @ABS_MT_TOUCH_MAJOR, align 4
  %71 = call i32 @input_mt_get_value(%struct.input_mt_slot* %69, i32 %70)
  %72 = call i32 @input_report_abs(%struct.TYPE_4__* %67, i32 %68, i32 %71)
  br label %73

73:                                               ; preds = %21, %64, %61
  ret void
}

declare dso_local i32 @input_mt_get_value(%struct.input_mt_slot*, i32) #1

declare dso_local i32 @input_report_abs(%struct.TYPE_4__*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
