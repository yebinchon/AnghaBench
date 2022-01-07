; ModuleID = '/home/carl/AnghaBench/linux/drivers/hid/extr_wacom_wac.c_wacom_wac_finger_slot.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hid/extr_wacom_wac.c_wacom_wac_finger_slot.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wacom_wac = type { %struct.hid_data, %struct.TYPE_4__*, %struct.TYPE_3__ }
%struct.hid_data = type { i64, i64, i32, i32, i64, i64, i32, i64 }
%struct.TYPE_4__ = type { i32, i32, i64 }
%struct.TYPE_3__ = type { i32 }
%struct.input_dev = type { i32 }

@MT_TOOL_FINGER = common dso_local global i32 0, align 4
@BTN_TOUCH = common dso_local global i32 0, align 4
@ABS_MT_POSITION_X = common dso_local global i32 0, align 4
@ABS_X = common dso_local global i32 0, align 4
@ABS_MT_POSITION_Y = common dso_local global i32 0, align 4
@ABS_Y = common dso_local global i32 0, align 4
@ABS_MT_TOUCH_MAJOR = common dso_local global i32 0, align 4
@ABS_MT_TOUCH_MINOR = common dso_local global i32 0, align 4
@ABS_MT_ORIENTATION = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.wacom_wac*, %struct.input_dev*)* @wacom_wac_finger_slot to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @wacom_wac_finger_slot(%struct.wacom_wac* %0, %struct.input_dev* %1) #0 {
  %3 = alloca %struct.wacom_wac*, align 8
  %4 = alloca %struct.input_dev*, align 8
  %5 = alloca %struct.hid_data*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.wacom_wac* %0, %struct.wacom_wac** %3, align 8
  store %struct.input_dev* %1, %struct.input_dev** %4, align 8
  %9 = load %struct.wacom_wac*, %struct.wacom_wac** %3, align 8
  %10 = getelementptr inbounds %struct.wacom_wac, %struct.wacom_wac* %9, i32 0, i32 0
  store %struct.hid_data* %10, %struct.hid_data** %5, align 8
  %11 = load %struct.wacom_wac*, %struct.wacom_wac** %3, align 8
  %12 = getelementptr inbounds %struct.wacom_wac, %struct.wacom_wac* %11, i32 0, i32 2
  %13 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = icmp sgt i32 %14, 1
  %16 = zext i1 %15 to i32
  store i32 %16, i32* %6, align 4
  %17 = load %struct.hid_data*, %struct.hid_data** %5, align 8
  %18 = getelementptr inbounds %struct.hid_data, %struct.hid_data* %17, i32 0, i32 7
  %19 = load i64, i64* %18, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %25

21:                                               ; preds = %2
  %22 = load %struct.wacom_wac*, %struct.wacom_wac** %3, align 8
  %23 = call i64 @report_touch_events(%struct.wacom_wac* %22)
  %24 = icmp ne i64 %23, 0
  br label %25

25:                                               ; preds = %21, %2
  %26 = phi i1 [ false, %2 ], [ %24, %21 ]
  %27 = zext i1 %26 to i32
  store i32 %27, i32* %7, align 4
  %28 = load %struct.wacom_wac*, %struct.wacom_wac** %3, align 8
  %29 = getelementptr inbounds %struct.wacom_wac, %struct.wacom_wac* %28, i32 0, i32 1
  %30 = load %struct.TYPE_4__*, %struct.TYPE_4__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 2
  %32 = load i64, i64* %31, align 8
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %50

34:                                               ; preds = %25
  %35 = load %struct.wacom_wac*, %struct.wacom_wac** %3, align 8
  %36 = getelementptr inbounds %struct.wacom_wac, %struct.wacom_wac* %35, i32 0, i32 1
  %37 = load %struct.TYPE_4__*, %struct.TYPE_4__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %50, label %41

41:                                               ; preds = %34
  %42 = load %struct.wacom_wac*, %struct.wacom_wac** %3, align 8
  %43 = getelementptr inbounds %struct.wacom_wac, %struct.wacom_wac* %42, i32 0, i32 1
  %44 = load %struct.TYPE_4__*, %struct.TYPE_4__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %49, label %48

48:                                               ; preds = %41
  br label %166

49:                                               ; preds = %41
  store i32 0, i32* %7, align 4
  br label %50

50:                                               ; preds = %49, %34, %25
  %51 = load %struct.wacom_wac*, %struct.wacom_wac** %3, align 8
  %52 = getelementptr inbounds %struct.wacom_wac, %struct.wacom_wac* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.hid_data, %struct.hid_data* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = add nsw i64 %54, 1
  store i64 %55, i64* %53, align 8
  %56 = load %struct.wacom_wac*, %struct.wacom_wac** %3, align 8
  %57 = getelementptr inbounds %struct.wacom_wac, %struct.wacom_wac* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.hid_data, %struct.hid_data* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = load %struct.wacom_wac*, %struct.wacom_wac** %3, align 8
  %61 = getelementptr inbounds %struct.wacom_wac, %struct.wacom_wac* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.hid_data, %struct.hid_data* %61, i32 0, i32 1
  %63 = load i64, i64* %62, align 8
  %64 = icmp sgt i64 %59, %63
  br i1 %64, label %65, label %66

65:                                               ; preds = %50
  br label %166

66:                                               ; preds = %50
  %67 = load i32, i32* %6, align 4
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %82

69:                                               ; preds = %66
  %70 = load %struct.input_dev*, %struct.input_dev** %4, align 8
  %71 = load %struct.hid_data*, %struct.hid_data** %5, align 8
  %72 = getelementptr inbounds %struct.hid_data, %struct.hid_data* %71, i32 0, i32 6
  %73 = load i32, i32* %72, align 8
  %74 = call i32 @input_mt_get_slot_by_key(%struct.input_dev* %70, i32 %73)
  store i32 %74, i32* %8, align 4
  %75 = load %struct.input_dev*, %struct.input_dev** %4, align 8
  %76 = load i32, i32* %8, align 4
  %77 = call i32 @input_mt_slot(%struct.input_dev* %75, i32 %76)
  %78 = load %struct.input_dev*, %struct.input_dev** %4, align 8
  %79 = load i32, i32* @MT_TOOL_FINGER, align 4
  %80 = load i32, i32* %7, align 4
  %81 = call i32 @input_mt_report_slot_state(%struct.input_dev* %78, i32 %79, i32 %80)
  br label %87

82:                                               ; preds = %66
  %83 = load %struct.input_dev*, %struct.input_dev** %4, align 8
  %84 = load i32, i32* @BTN_TOUCH, align 4
  %85 = load i32, i32* %7, align 4
  %86 = call i32 @input_report_key(%struct.input_dev* %83, i32 %84, i32 %85)
  br label %87

87:                                               ; preds = %82, %69
  %88 = load i32, i32* %7, align 4
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %90, label %166

90:                                               ; preds = %87
  %91 = load %struct.input_dev*, %struct.input_dev** %4, align 8
  %92 = load i32, i32* %6, align 4
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %94, label %96

94:                                               ; preds = %90
  %95 = load i32, i32* @ABS_MT_POSITION_X, align 4
  br label %98

96:                                               ; preds = %90
  %97 = load i32, i32* @ABS_X, align 4
  br label %98

98:                                               ; preds = %96, %94
  %99 = phi i32 [ %95, %94 ], [ %97, %96 ]
  %100 = load %struct.hid_data*, %struct.hid_data** %5, align 8
  %101 = getelementptr inbounds %struct.hid_data, %struct.hid_data* %100, i32 0, i32 2
  %102 = load i32, i32* %101, align 8
  %103 = call i32 @input_report_abs(%struct.input_dev* %91, i32 %99, i32 %102)
  %104 = load %struct.input_dev*, %struct.input_dev** %4, align 8
  %105 = load i32, i32* %6, align 4
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %107, label %109

107:                                              ; preds = %98
  %108 = load i32, i32* @ABS_MT_POSITION_Y, align 4
  br label %111

109:                                              ; preds = %98
  %110 = load i32, i32* @ABS_Y, align 4
  br label %111

111:                                              ; preds = %109, %107
  %112 = phi i32 [ %108, %107 ], [ %110, %109 ]
  %113 = load %struct.hid_data*, %struct.hid_data** %5, align 8
  %114 = getelementptr inbounds %struct.hid_data, %struct.hid_data* %113, i32 0, i32 3
  %115 = load i32, i32* %114, align 4
  %116 = call i32 @input_report_abs(%struct.input_dev* %104, i32 %112, i32 %115)
  %117 = load i32, i32* @ABS_MT_TOUCH_MAJOR, align 4
  %118 = load %struct.input_dev*, %struct.input_dev** %4, align 8
  %119 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %118, i32 0, i32 0
  %120 = load i32, i32* %119, align 4
  %121 = call i64 @test_bit(i32 %117, i32 %120)
  %122 = icmp ne i64 %121, 0
  br i1 %122, label %123, label %165

123:                                              ; preds = %111
  %124 = load %struct.input_dev*, %struct.input_dev** %4, align 8
  %125 = load i32, i32* @ABS_MT_TOUCH_MAJOR, align 4
  %126 = load %struct.hid_data*, %struct.hid_data** %5, align 8
  %127 = getelementptr inbounds %struct.hid_data, %struct.hid_data* %126, i32 0, i32 4
  %128 = load i64, i64* %127, align 8
  %129 = load %struct.hid_data*, %struct.hid_data** %5, align 8
  %130 = getelementptr inbounds %struct.hid_data, %struct.hid_data* %129, i32 0, i32 5
  %131 = load i64, i64* %130, align 8
  %132 = call i32 @max(i64 %128, i64 %131)
  %133 = call i32 @input_report_abs(%struct.input_dev* %124, i32 %125, i32 %132)
  %134 = load %struct.input_dev*, %struct.input_dev** %4, align 8
  %135 = load i32, i32* @ABS_MT_TOUCH_MINOR, align 4
  %136 = load %struct.hid_data*, %struct.hid_data** %5, align 8
  %137 = getelementptr inbounds %struct.hid_data, %struct.hid_data* %136, i32 0, i32 4
  %138 = load i64, i64* %137, align 8
  %139 = load %struct.hid_data*, %struct.hid_data** %5, align 8
  %140 = getelementptr inbounds %struct.hid_data, %struct.hid_data* %139, i32 0, i32 5
  %141 = load i64, i64* %140, align 8
  %142 = call i32 @min(i64 %138, i64 %141)
  %143 = call i32 @input_report_abs(%struct.input_dev* %134, i32 %135, i32 %142)
  %144 = load %struct.hid_data*, %struct.hid_data** %5, align 8
  %145 = getelementptr inbounds %struct.hid_data, %struct.hid_data* %144, i32 0, i32 4
  %146 = load i64, i64* %145, align 8
  %147 = load %struct.hid_data*, %struct.hid_data** %5, align 8
  %148 = getelementptr inbounds %struct.hid_data, %struct.hid_data* %147, i32 0, i32 5
  %149 = load i64, i64* %148, align 8
  %150 = icmp ne i64 %146, %149
  br i1 %150, label %151, label %164

151:                                              ; preds = %123
  %152 = load %struct.input_dev*, %struct.input_dev** %4, align 8
  %153 = load i32, i32* @ABS_MT_ORIENTATION, align 4
  %154 = load %struct.hid_data*, %struct.hid_data** %5, align 8
  %155 = getelementptr inbounds %struct.hid_data, %struct.hid_data* %154, i32 0, i32 4
  %156 = load i64, i64* %155, align 8
  %157 = load %struct.hid_data*, %struct.hid_data** %5, align 8
  %158 = getelementptr inbounds %struct.hid_data, %struct.hid_data* %157, i32 0, i32 5
  %159 = load i64, i64* %158, align 8
  %160 = icmp sle i64 %156, %159
  %161 = zext i1 %160 to i64
  %162 = select i1 %160, i32 0, i32 1
  %163 = call i32 @input_report_abs(%struct.input_dev* %152, i32 %153, i32 %162)
  br label %164

164:                                              ; preds = %151, %123
  br label %165

165:                                              ; preds = %164, %111
  br label %166

166:                                              ; preds = %48, %65, %165, %87
  ret void
}

declare dso_local i64 @report_touch_events(%struct.wacom_wac*) #1

declare dso_local i32 @input_mt_get_slot_by_key(%struct.input_dev*, i32) #1

declare dso_local i32 @input_mt_slot(%struct.input_dev*, i32) #1

declare dso_local i32 @input_mt_report_slot_state(%struct.input_dev*, i32, i32) #1

declare dso_local i32 @input_report_key(%struct.input_dev*, i32, i32) #1

declare dso_local i32 @input_report_abs(%struct.input_dev*, i32, i32) #1

declare dso_local i64 @test_bit(i32, i32) #1

declare dso_local i32 @max(i64, i64) #1

declare dso_local i32 @min(i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
