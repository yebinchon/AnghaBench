; ModuleID = '/home/carl/AnghaBench/linux/drivers/hid/extr_wacom_wac.c_wacom_bpt_touch.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hid/extr_wacom_wac.c_wacom_bpt_touch.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wacom_wac = type { i8*, %struct.TYPE_2__*, %struct.input_dev*, %struct.input_dev*, %struct.wacom_features }
%struct.TYPE_2__ = type { i32 }
%struct.input_dev = type { i32 }
%struct.wacom_features = type { i32 }

@MT_TOOL_FINGER = common dso_local global i32 0, align 4
@WACOM_QUIRK_BBTOUCH_LOWRES = common dso_local global i32 0, align 4
@ABS_MT_POSITION_X = common dso_local global i32 0, align 4
@ABS_MT_POSITION_Y = common dso_local global i32 0, align 4
@BTN_LEFT = common dso_local global i32 0, align 4
@BTN_FORWARD = common dso_local global i32 0, align 4
@BTN_BACK = common dso_local global i32 0, align 4
@BTN_RIGHT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.wacom_wac*)* @wacom_bpt_touch to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wacom_bpt_touch(%struct.wacom_wac* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.wacom_wac*, align 8
  %4 = alloca %struct.wacom_features*, align 8
  %5 = alloca %struct.input_dev*, align 8
  %6 = alloca %struct.input_dev*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.wacom_wac* %0, %struct.wacom_wac** %3, align 8
  %13 = load %struct.wacom_wac*, %struct.wacom_wac** %3, align 8
  %14 = getelementptr inbounds %struct.wacom_wac, %struct.wacom_wac* %13, i32 0, i32 4
  store %struct.wacom_features* %14, %struct.wacom_features** %4, align 8
  %15 = load %struct.wacom_wac*, %struct.wacom_wac** %3, align 8
  %16 = getelementptr inbounds %struct.wacom_wac, %struct.wacom_wac* %15, i32 0, i32 3
  %17 = load %struct.input_dev*, %struct.input_dev** %16, align 8
  store %struct.input_dev* %17, %struct.input_dev** %5, align 8
  %18 = load %struct.wacom_wac*, %struct.wacom_wac** %3, align 8
  %19 = getelementptr inbounds %struct.wacom_wac, %struct.wacom_wac* %18, i32 0, i32 2
  %20 = load %struct.input_dev*, %struct.input_dev** %19, align 8
  store %struct.input_dev* %20, %struct.input_dev** %6, align 8
  %21 = load %struct.wacom_wac*, %struct.wacom_wac** %3, align 8
  %22 = getelementptr inbounds %struct.wacom_wac, %struct.wacom_wac* %21, i32 0, i32 0
  %23 = load i8*, i8** %22, align 8
  store i8* %23, i8** %7, align 8
  %24 = load i8*, i8** %7, align 8
  %25 = getelementptr inbounds i8, i8* %24, i64 0
  %26 = load i8, i8* %25, align 1
  %27 = zext i8 %26 to i32
  %28 = icmp ne i32 %27, 2
  br i1 %28, label %29, label %30

29:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %162

30:                                               ; preds = %1
  store i32 0, i32* %8, align 4
  br label %31

31:                                               ; preds = %110, %30
  %32 = load i32, i32* %8, align 4
  %33 = icmp slt i32 %32, 2
  br i1 %33, label %34, label %113

34:                                               ; preds = %31
  %35 = load i8*, i8** %7, align 8
  %36 = getelementptr inbounds i8, i8* %35, i64 1
  %37 = load i8, i8* %36, align 1
  %38 = zext i8 %37 to i32
  %39 = and i32 %38, 128
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %44

41:                                               ; preds = %34
  %42 = load i32, i32* %8, align 4
  %43 = mul nsw i32 8, %42
  br label %47

44:                                               ; preds = %34
  %45 = load i32, i32* %8, align 4
  %46 = mul nsw i32 9, %45
  br label %47

47:                                               ; preds = %44, %41
  %48 = phi i32 [ %43, %41 ], [ %46, %44 ]
  store i32 %48, i32* %9, align 4
  %49 = load %struct.wacom_wac*, %struct.wacom_wac** %3, align 8
  %50 = call i64 @report_touch_events(%struct.wacom_wac* %49)
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %62

52:                                               ; preds = %47
  %53 = load i8*, i8** %7, align 8
  %54 = load i32, i32* %9, align 4
  %55 = add nsw i32 %54, 3
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds i8, i8* %53, i64 %56
  %58 = load i8, i8* %57, align 1
  %59 = zext i8 %58 to i32
  %60 = and i32 %59, 128
  %61 = icmp ne i32 %60, 0
  br label %62

62:                                               ; preds = %52, %47
  %63 = phi i1 [ false, %47 ], [ %61, %52 ]
  %64 = zext i1 %63 to i32
  store i32 %64, i32* %10, align 4
  %65 = load %struct.input_dev*, %struct.input_dev** %5, align 8
  %66 = load i32, i32* %8, align 4
  %67 = call i32 @input_mt_slot(%struct.input_dev* %65, i32 %66)
  %68 = load %struct.input_dev*, %struct.input_dev** %5, align 8
  %69 = load i32, i32* @MT_TOOL_FINGER, align 4
  %70 = load i32, i32* %10, align 4
  %71 = call i32 @input_mt_report_slot_state(%struct.input_dev* %68, i32 %69, i32 %70)
  %72 = load i32, i32* %10, align 4
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %109

74:                                               ; preds = %62
  %75 = load i8*, i8** %7, align 8
  %76 = load i32, i32* %9, align 4
  %77 = add nsw i32 %76, 3
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds i8, i8* %75, i64 %78
  %80 = call i32 @get_unaligned_be16(i8* %79)
  %81 = and i32 %80, 2047
  store i32 %81, i32* %11, align 4
  %82 = load i8*, i8** %7, align 8
  %83 = load i32, i32* %9, align 4
  %84 = add nsw i32 %83, 5
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds i8, i8* %82, i64 %85
  %87 = call i32 @get_unaligned_be16(i8* %86)
  %88 = and i32 %87, 2047
  store i32 %88, i32* %12, align 4
  %89 = load %struct.wacom_features*, %struct.wacom_features** %4, align 8
  %90 = getelementptr inbounds %struct.wacom_features, %struct.wacom_features* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 4
  %92 = load i32, i32* @WACOM_QUIRK_BBTOUCH_LOWRES, align 4
  %93 = and i32 %91, %92
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %95, label %100

95:                                               ; preds = %74
  %96 = load i32, i32* %11, align 4
  %97 = shl i32 %96, 5
  store i32 %97, i32* %11, align 4
  %98 = load i32, i32* %12, align 4
  %99 = shl i32 %98, 5
  store i32 %99, i32* %12, align 4
  br label %100

100:                                              ; preds = %95, %74
  %101 = load %struct.input_dev*, %struct.input_dev** %5, align 8
  %102 = load i32, i32* @ABS_MT_POSITION_X, align 4
  %103 = load i32, i32* %11, align 4
  %104 = call i32 @input_report_abs(%struct.input_dev* %101, i32 %102, i32 %103)
  %105 = load %struct.input_dev*, %struct.input_dev** %5, align 8
  %106 = load i32, i32* @ABS_MT_POSITION_Y, align 4
  %107 = load i32, i32* %12, align 4
  %108 = call i32 @input_report_abs(%struct.input_dev* %105, i32 %106, i32 %107)
  br label %109

109:                                              ; preds = %100, %62
  br label %110

110:                                              ; preds = %109
  %111 = load i32, i32* %8, align 4
  %112 = add nsw i32 %111, 1
  store i32 %112, i32* %8, align 4
  br label %31

113:                                              ; preds = %31
  %114 = load %struct.input_dev*, %struct.input_dev** %5, align 8
  %115 = call i32 @input_mt_sync_frame(%struct.input_dev* %114)
  %116 = load %struct.input_dev*, %struct.input_dev** %6, align 8
  %117 = load i32, i32* @BTN_LEFT, align 4
  %118 = load i8*, i8** %7, align 8
  %119 = getelementptr inbounds i8, i8* %118, i64 1
  %120 = load i8, i8* %119, align 1
  %121 = zext i8 %120 to i32
  %122 = and i32 %121, 8
  %123 = icmp ne i32 %122, 0
  %124 = zext i1 %123 to i32
  %125 = call i32 @input_report_key(%struct.input_dev* %116, i32 %117, i32 %124)
  %126 = load %struct.input_dev*, %struct.input_dev** %6, align 8
  %127 = load i32, i32* @BTN_FORWARD, align 4
  %128 = load i8*, i8** %7, align 8
  %129 = getelementptr inbounds i8, i8* %128, i64 1
  %130 = load i8, i8* %129, align 1
  %131 = zext i8 %130 to i32
  %132 = and i32 %131, 4
  %133 = icmp ne i32 %132, 0
  %134 = zext i1 %133 to i32
  %135 = call i32 @input_report_key(%struct.input_dev* %126, i32 %127, i32 %134)
  %136 = load %struct.input_dev*, %struct.input_dev** %6, align 8
  %137 = load i32, i32* @BTN_BACK, align 4
  %138 = load i8*, i8** %7, align 8
  %139 = getelementptr inbounds i8, i8* %138, i64 1
  %140 = load i8, i8* %139, align 1
  %141 = zext i8 %140 to i32
  %142 = and i32 %141, 2
  %143 = icmp ne i32 %142, 0
  %144 = zext i1 %143 to i32
  %145 = call i32 @input_report_key(%struct.input_dev* %136, i32 %137, i32 %144)
  %146 = load %struct.input_dev*, %struct.input_dev** %6, align 8
  %147 = load i32, i32* @BTN_RIGHT, align 4
  %148 = load i8*, i8** %7, align 8
  %149 = getelementptr inbounds i8, i8* %148, i64 1
  %150 = load i8, i8* %149, align 1
  %151 = zext i8 %150 to i32
  %152 = and i32 %151, 1
  %153 = icmp ne i32 %152, 0
  %154 = zext i1 %153 to i32
  %155 = call i32 @input_report_key(%struct.input_dev* %146, i32 %147, i32 %154)
  %156 = load %struct.wacom_wac*, %struct.wacom_wac** %3, align 8
  %157 = call i32 @wacom_wac_finger_count_touches(%struct.wacom_wac* %156)
  %158 = load %struct.wacom_wac*, %struct.wacom_wac** %3, align 8
  %159 = getelementptr inbounds %struct.wacom_wac, %struct.wacom_wac* %158, i32 0, i32 1
  %160 = load %struct.TYPE_2__*, %struct.TYPE_2__** %159, align 8
  %161 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %160, i32 0, i32 0
  store i32 %157, i32* %161, align 4
  store i32 1, i32* %2, align 4
  br label %162

162:                                              ; preds = %113, %29
  %163 = load i32, i32* %2, align 4
  ret i32 %163
}

declare dso_local i64 @report_touch_events(%struct.wacom_wac*) #1

declare dso_local i32 @input_mt_slot(%struct.input_dev*, i32) #1

declare dso_local i32 @input_mt_report_slot_state(%struct.input_dev*, i32, i32) #1

declare dso_local i32 @get_unaligned_be16(i8*) #1

declare dso_local i32 @input_report_abs(%struct.input_dev*, i32, i32) #1

declare dso_local i32 @input_mt_sync_frame(%struct.input_dev*) #1

declare dso_local i32 @input_report_key(%struct.input_dev*, i32, i32) #1

declare dso_local i32 @wacom_wac_finger_count_touches(%struct.wacom_wac*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
