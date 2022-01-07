; ModuleID = '/home/carl/AnghaBench/linux/drivers/hid/extr_wacom_wac.c_wacom_tpc_mt_touch.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hid/extr_wacom_wac.c_wacom_tpc_mt_touch.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wacom_wac = type { i8*, %struct.TYPE_2__*, %struct.input_dev* }
%struct.TYPE_2__ = type { i32 }
%struct.input_dev = type { i32 }

@MT_TOOL_FINGER = common dso_local global i32 0, align 4
@ABS_MT_POSITION_X = common dso_local global i32 0, align 4
@ABS_MT_POSITION_Y = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.wacom_wac*)* @wacom_tpc_mt_touch to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wacom_tpc_mt_touch(%struct.wacom_wac* %0) #0 {
  %2 = alloca %struct.wacom_wac*, align 8
  %3 = alloca %struct.input_dev*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.wacom_wac* %0, %struct.wacom_wac** %2, align 8
  %10 = load %struct.wacom_wac*, %struct.wacom_wac** %2, align 8
  %11 = getelementptr inbounds %struct.wacom_wac, %struct.wacom_wac* %10, i32 0, i32 2
  %12 = load %struct.input_dev*, %struct.input_dev** %11, align 8
  store %struct.input_dev* %12, %struct.input_dev** %3, align 8
  %13 = load %struct.wacom_wac*, %struct.wacom_wac** %2, align 8
  %14 = getelementptr inbounds %struct.wacom_wac, %struct.wacom_wac* %13, i32 0, i32 0
  %15 = load i8*, i8** %14, align 8
  store i8* %15, i8** %4, align 8
  store i32 0, i32* %5, align 4
  br label %16

16:                                               ; preds = %73, %1
  %17 = load i32, i32* %5, align 4
  %18 = icmp slt i32 %17, 2
  br i1 %18, label %19, label %76

19:                                               ; preds = %16
  %20 = load i8*, i8** %4, align 8
  %21 = getelementptr inbounds i8, i8* %20, i64 1
  %22 = load i8, i8* %21, align 1
  %23 = zext i8 %22 to i32
  %24 = load i32, i32* %5, align 4
  %25 = shl i32 1, %24
  %26 = and i32 %23, %25
  store i32 %26, i32* %6, align 4
  %27 = load i32, i32* %6, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %33

29:                                               ; preds = %19
  %30 = load %struct.wacom_wac*, %struct.wacom_wac** %2, align 8
  %31 = call i64 @report_touch_events(%struct.wacom_wac* %30)
  %32 = icmp ne i64 %31, 0
  br label %33

33:                                               ; preds = %29, %19
  %34 = phi i1 [ false, %19 ], [ %32, %29 ]
  %35 = zext i1 %34 to i32
  store i32 %35, i32* %7, align 4
  %36 = load %struct.input_dev*, %struct.input_dev** %3, align 8
  %37 = load i32, i32* %5, align 4
  %38 = call i32 @input_mt_slot(%struct.input_dev* %36, i32 %37)
  %39 = load %struct.input_dev*, %struct.input_dev** %3, align 8
  %40 = load i32, i32* @MT_TOOL_FINGER, align 4
  %41 = load i32, i32* %7, align 4
  %42 = call i32 @input_mt_report_slot_state(%struct.input_dev* %39, i32 %40, i32 %41)
  %43 = load i32, i32* %7, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %72

45:                                               ; preds = %33
  %46 = load i8*, i8** %4, align 8
  %47 = load i32, i32* %5, align 4
  %48 = mul nsw i32 %47, 2
  %49 = add nsw i32 %48, 2
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds i8, i8* %46, i64 %50
  %52 = bitcast i8* %51 to i32*
  %53 = call i32 @le16_to_cpup(i32* %52)
  %54 = and i32 %53, 32767
  store i32 %54, i32* %8, align 4
  %55 = load i8*, i8** %4, align 8
  %56 = load i32, i32* %5, align 4
  %57 = mul nsw i32 %56, 2
  %58 = add nsw i32 %57, 6
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds i8, i8* %55, i64 %59
  %61 = bitcast i8* %60 to i32*
  %62 = call i32 @le16_to_cpup(i32* %61)
  %63 = and i32 %62, 32767
  store i32 %63, i32* %9, align 4
  %64 = load %struct.input_dev*, %struct.input_dev** %3, align 8
  %65 = load i32, i32* @ABS_MT_POSITION_X, align 4
  %66 = load i32, i32* %8, align 4
  %67 = call i32 @input_report_abs(%struct.input_dev* %64, i32 %65, i32 %66)
  %68 = load %struct.input_dev*, %struct.input_dev** %3, align 8
  %69 = load i32, i32* @ABS_MT_POSITION_Y, align 4
  %70 = load i32, i32* %9, align 4
  %71 = call i32 @input_report_abs(%struct.input_dev* %68, i32 %69, i32 %70)
  br label %72

72:                                               ; preds = %45, %33
  br label %73

73:                                               ; preds = %72
  %74 = load i32, i32* %5, align 4
  %75 = add nsw i32 %74, 1
  store i32 %75, i32* %5, align 4
  br label %16

76:                                               ; preds = %16
  %77 = load %struct.input_dev*, %struct.input_dev** %3, align 8
  %78 = call i32 @input_mt_sync_frame(%struct.input_dev* %77)
  %79 = load %struct.wacom_wac*, %struct.wacom_wac** %2, align 8
  %80 = call i32 @wacom_wac_finger_count_touches(%struct.wacom_wac* %79)
  %81 = load %struct.wacom_wac*, %struct.wacom_wac** %2, align 8
  %82 = getelementptr inbounds %struct.wacom_wac, %struct.wacom_wac* %81, i32 0, i32 1
  %83 = load %struct.TYPE_2__*, %struct.TYPE_2__** %82, align 8
  %84 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %83, i32 0, i32 0
  store i32 %80, i32* %84, align 4
  ret i32 1
}

declare dso_local i64 @report_touch_events(%struct.wacom_wac*) #1

declare dso_local i32 @input_mt_slot(%struct.input_dev*, i32) #1

declare dso_local i32 @input_mt_report_slot_state(%struct.input_dev*, i32, i32) #1

declare dso_local i32 @le16_to_cpup(i32*) #1

declare dso_local i32 @input_report_abs(%struct.input_dev*, i32, i32) #1

declare dso_local i32 @input_mt_sync_frame(%struct.input_dev*) #1

declare dso_local i32 @wacom_wac_finger_count_touches(%struct.wacom_wac*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
