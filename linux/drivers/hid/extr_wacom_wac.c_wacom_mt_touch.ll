; ModuleID = '/home/carl/AnghaBench/linux/drivers/hid/extr_wacom_wac.c_wacom_mt_touch.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hid/extr_wacom_wac.c_wacom_mt_touch.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wacom_wac = type { i8*, i32, %struct.TYPE_4__*, %struct.TYPE_3__, %struct.input_dev* }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i64 }
%struct.input_dev = type { i32 }

@MTTPC = common dso_local global i64 0, align 8
@MTTPC_B = common dso_local global i64 0, align 8
@WACOM_BYTES_PER_MT_PACKET = common dso_local global i32 0, align 4
@MT_TOOL_FINGER = common dso_local global i32 0, align 4
@ABS_MT_POSITION_X = common dso_local global i32 0, align 4
@ABS_MT_POSITION_Y = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.wacom_wac*)* @wacom_mt_touch to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wacom_mt_touch(%struct.wacom_wac* %0) #0 {
  %2 = alloca %struct.wacom_wac*, align 8
  %3 = alloca %struct.input_dev*, align 8
  %4 = alloca i8*, align 8
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
  store %struct.wacom_wac* %0, %struct.wacom_wac** %2, align 8
  %15 = load %struct.wacom_wac*, %struct.wacom_wac** %2, align 8
  %16 = getelementptr inbounds %struct.wacom_wac, %struct.wacom_wac* %15, i32 0, i32 4
  %17 = load %struct.input_dev*, %struct.input_dev** %16, align 8
  store %struct.input_dev* %17, %struct.input_dev** %3, align 8
  %18 = load %struct.wacom_wac*, %struct.wacom_wac** %2, align 8
  %19 = getelementptr inbounds %struct.wacom_wac, %struct.wacom_wac* %18, i32 0, i32 0
  %20 = load i8*, i8** %19, align 8
  store i8* %20, i8** %4, align 8
  %21 = load i8*, i8** %4, align 8
  %22 = getelementptr inbounds i8, i8* %21, i64 2
  %23 = load i8, i8* %22, align 1
  %24 = zext i8 %23 to i32
  store i32 %24, i32* %6, align 4
  store i32 0, i32* %7, align 4
  store i32 0, i32* %8, align 4
  %25 = load %struct.wacom_wac*, %struct.wacom_wac** %2, align 8
  %26 = getelementptr inbounds %struct.wacom_wac, %struct.wacom_wac* %25, i32 0, i32 3
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = load i64, i64* @MTTPC, align 8
  %30 = icmp eq i64 %28, %29
  br i1 %30, label %38, label %31

31:                                               ; preds = %1
  %32 = load %struct.wacom_wac*, %struct.wacom_wac** %2, align 8
  %33 = getelementptr inbounds %struct.wacom_wac, %struct.wacom_wac* %32, i32 0, i32 3
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = load i64, i64* @MTTPC_B, align 8
  %37 = icmp eq i64 %35, %36
  br i1 %37, label %38, label %39

38:                                               ; preds = %31, %1
  store i32 -4, i32* %8, align 4
  br label %39

39:                                               ; preds = %38, %31
  %40 = load i32, i32* %6, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %46

42:                                               ; preds = %39
  %43 = load i32, i32* %6, align 4
  %44 = load %struct.wacom_wac*, %struct.wacom_wac** %2, align 8
  %45 = getelementptr inbounds %struct.wacom_wac, %struct.wacom_wac* %44, i32 0, i32 1
  store i32 %43, i32* %45, align 8
  br label %46

46:                                               ; preds = %42, %39
  %47 = load %struct.wacom_wac*, %struct.wacom_wac** %2, align 8
  %48 = getelementptr inbounds %struct.wacom_wac, %struct.wacom_wac* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 8
  %50 = call i32 @min(i32 5, i32 %49)
  store i32 %50, i32* %7, align 4
  store i32 0, i32* %5, align 4
  br label %51

51:                                               ; preds = %125, %46
  %52 = load i32, i32* %5, align 4
  %53 = load i32, i32* %7, align 4
  %54 = icmp slt i32 %52, %53
  br i1 %54, label %55, label %128

55:                                               ; preds = %51
  %56 = load i32, i32* @WACOM_BYTES_PER_MT_PACKET, align 4
  %57 = load i32, i32* %8, align 4
  %58 = add nsw i32 %56, %57
  %59 = load i32, i32* %5, align 4
  %60 = mul nsw i32 %58, %59
  %61 = add nsw i32 %60, 3
  store i32 %61, i32* %9, align 4
  %62 = load i8*, i8** %4, align 8
  %63 = load i32, i32* %9, align 4
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds i8, i8* %62, i64 %64
  %66 = load i8, i8* %65, align 1
  %67 = zext i8 %66 to i32
  %68 = and i32 %67, 1
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %74

70:                                               ; preds = %55
  %71 = load %struct.wacom_wac*, %struct.wacom_wac** %2, align 8
  %72 = call i64 @report_touch_events(%struct.wacom_wac* %71)
  %73 = icmp ne i64 %72, 0
  br label %74

74:                                               ; preds = %70, %55
  %75 = phi i1 [ false, %55 ], [ %73, %70 ]
  %76 = zext i1 %75 to i32
  store i32 %76, i32* %10, align 4
  %77 = load i8*, i8** %4, align 8
  %78 = load i32, i32* %9, align 4
  %79 = add nsw i32 %78, 1
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds i8, i8* %77, i64 %80
  %82 = call i32 @get_unaligned_le16(i8* %81)
  store i32 %82, i32* %11, align 4
  %83 = load %struct.input_dev*, %struct.input_dev** %3, align 8
  %84 = load i32, i32* %11, align 4
  %85 = call i32 @input_mt_get_slot_by_key(%struct.input_dev* %83, i32 %84)
  store i32 %85, i32* %12, align 4
  %86 = load i32, i32* %12, align 4
  %87 = icmp slt i32 %86, 0
  br i1 %87, label %88, label %89

88:                                               ; preds = %74
  br label %125

89:                                               ; preds = %74
  %90 = load %struct.input_dev*, %struct.input_dev** %3, align 8
  %91 = load i32, i32* %12, align 4
  %92 = call i32 @input_mt_slot(%struct.input_dev* %90, i32 %91)
  %93 = load %struct.input_dev*, %struct.input_dev** %3, align 8
  %94 = load i32, i32* @MT_TOOL_FINGER, align 4
  %95 = load i32, i32* %10, align 4
  %96 = call i32 @input_mt_report_slot_state(%struct.input_dev* %93, i32 %94, i32 %95)
  %97 = load i32, i32* %10, align 4
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %99, label %124

99:                                               ; preds = %89
  %100 = load i8*, i8** %4, align 8
  %101 = load i32, i32* %9, align 4
  %102 = load i32, i32* %8, align 4
  %103 = add nsw i32 %101, %102
  %104 = add nsw i32 %103, 7
  %105 = sext i32 %104 to i64
  %106 = getelementptr inbounds i8, i8* %100, i64 %105
  %107 = call i32 @get_unaligned_le16(i8* %106)
  store i32 %107, i32* %13, align 4
  %108 = load i8*, i8** %4, align 8
  %109 = load i32, i32* %9, align 4
  %110 = load i32, i32* %8, align 4
  %111 = add nsw i32 %109, %110
  %112 = add nsw i32 %111, 9
  %113 = sext i32 %112 to i64
  %114 = getelementptr inbounds i8, i8* %108, i64 %113
  %115 = call i32 @get_unaligned_le16(i8* %114)
  store i32 %115, i32* %14, align 4
  %116 = load %struct.input_dev*, %struct.input_dev** %3, align 8
  %117 = load i32, i32* @ABS_MT_POSITION_X, align 4
  %118 = load i32, i32* %13, align 4
  %119 = call i32 @input_report_abs(%struct.input_dev* %116, i32 %117, i32 %118)
  %120 = load %struct.input_dev*, %struct.input_dev** %3, align 8
  %121 = load i32, i32* @ABS_MT_POSITION_Y, align 4
  %122 = load i32, i32* %14, align 4
  %123 = call i32 @input_report_abs(%struct.input_dev* %120, i32 %121, i32 %122)
  br label %124

124:                                              ; preds = %99, %89
  br label %125

125:                                              ; preds = %124, %88
  %126 = load i32, i32* %5, align 4
  %127 = add nsw i32 %126, 1
  store i32 %127, i32* %5, align 4
  br label %51

128:                                              ; preds = %51
  %129 = load %struct.input_dev*, %struct.input_dev** %3, align 8
  %130 = call i32 @input_mt_sync_frame(%struct.input_dev* %129)
  %131 = load i32, i32* %7, align 4
  %132 = load %struct.wacom_wac*, %struct.wacom_wac** %2, align 8
  %133 = getelementptr inbounds %struct.wacom_wac, %struct.wacom_wac* %132, i32 0, i32 1
  %134 = load i32, i32* %133, align 8
  %135 = sub nsw i32 %134, %131
  store i32 %135, i32* %133, align 8
  %136 = load %struct.wacom_wac*, %struct.wacom_wac** %2, align 8
  %137 = getelementptr inbounds %struct.wacom_wac, %struct.wacom_wac* %136, i32 0, i32 1
  %138 = load i32, i32* %137, align 8
  %139 = icmp sle i32 %138, 0
  br i1 %139, label %140, label %149

140:                                              ; preds = %128
  %141 = load %struct.wacom_wac*, %struct.wacom_wac** %2, align 8
  %142 = getelementptr inbounds %struct.wacom_wac, %struct.wacom_wac* %141, i32 0, i32 1
  store i32 0, i32* %142, align 8
  %143 = load %struct.wacom_wac*, %struct.wacom_wac** %2, align 8
  %144 = call i32 @wacom_wac_finger_count_touches(%struct.wacom_wac* %143)
  %145 = load %struct.wacom_wac*, %struct.wacom_wac** %2, align 8
  %146 = getelementptr inbounds %struct.wacom_wac, %struct.wacom_wac* %145, i32 0, i32 2
  %147 = load %struct.TYPE_4__*, %struct.TYPE_4__** %146, align 8
  %148 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %147, i32 0, i32 0
  store i32 %144, i32* %148, align 4
  br label %149

149:                                              ; preds = %140, %128
  ret i32 1
}

declare dso_local i32 @min(i32, i32) #1

declare dso_local i64 @report_touch_events(%struct.wacom_wac*) #1

declare dso_local i32 @get_unaligned_le16(i8*) #1

declare dso_local i32 @input_mt_get_slot_by_key(%struct.input_dev*, i32) #1

declare dso_local i32 @input_mt_slot(%struct.input_dev*, i32) #1

declare dso_local i32 @input_mt_report_slot_state(%struct.input_dev*, i32, i32) #1

declare dso_local i32 @input_report_abs(%struct.input_dev*, i32, i32) #1

declare dso_local i32 @input_mt_sync_frame(%struct.input_dev*) #1

declare dso_local i32 @wacom_wac_finger_count_touches(%struct.wacom_wac*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
