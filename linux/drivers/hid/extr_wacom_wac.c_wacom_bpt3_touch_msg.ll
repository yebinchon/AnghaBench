; ModuleID = '/home/carl/AnghaBench/linux/drivers/hid/extr_wacom_wac.c_wacom_bpt3_touch_msg.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hid/extr_wacom_wac.c_wacom_bpt3_touch_msg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wacom_wac = type { %struct.input_dev*, %struct.wacom_features }
%struct.input_dev = type { i32 }
%struct.wacom_features = type { i64 }

@MT_TOOL_FINGER = common dso_local global i32 0, align 4
@INTUOSPS = common dso_local global i64 0, align 8
@INTUOSHT2 = common dso_local global i64 0, align 8
@ABS_MT_POSITION_X = common dso_local global i32 0, align 4
@ABS_MT_POSITION_Y = common dso_local global i32 0, align 4
@WACOM_CONTACT_AREA_SCALE = common dso_local global i32 0, align 4
@ABS_MT_TOUCH_MAJOR = common dso_local global i32 0, align 4
@ABS_MT_TOUCH_MINOR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.wacom_wac*, i8*)* @wacom_bpt3_touch_msg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @wacom_bpt3_touch_msg(%struct.wacom_wac* %0, i8* %1) #0 {
  %3 = alloca %struct.wacom_wac*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.wacom_features*, align 8
  %6 = alloca %struct.input_dev*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.wacom_wac* %0, %struct.wacom_wac** %3, align 8
  store i8* %1, i8** %4, align 8
  %16 = load %struct.wacom_wac*, %struct.wacom_wac** %3, align 8
  %17 = getelementptr inbounds %struct.wacom_wac, %struct.wacom_wac* %16, i32 0, i32 1
  store %struct.wacom_features* %17, %struct.wacom_features** %5, align 8
  %18 = load %struct.wacom_wac*, %struct.wacom_wac** %3, align 8
  %19 = getelementptr inbounds %struct.wacom_wac, %struct.wacom_wac* %18, i32 0, i32 0
  %20 = load %struct.input_dev*, %struct.input_dev** %19, align 8
  store %struct.input_dev* %20, %struct.input_dev** %6, align 8
  %21 = load i8*, i8** %4, align 8
  %22 = getelementptr inbounds i8, i8* %21, i64 1
  %23 = load i8, i8* %22, align 1
  %24 = zext i8 %23 to i32
  %25 = and i32 %24, 128
  store i32 %25, i32* %7, align 4
  %26 = load %struct.input_dev*, %struct.input_dev** %6, align 8
  %27 = load i8*, i8** %4, align 8
  %28 = getelementptr inbounds i8, i8* %27, i64 0
  %29 = load i8, i8* %28, align 1
  %30 = call i32 @input_mt_get_slot_by_key(%struct.input_dev* %26, i8 zeroext %29)
  store i32 %30, i32* %8, align 4
  %31 = load i32, i32* %8, align 4
  %32 = icmp slt i32 %31, 0
  br i1 %32, label %33, label %34

33:                                               ; preds = %2
  br label %136

34:                                               ; preds = %2
  %35 = load i32, i32* %7, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %41

37:                                               ; preds = %34
  %38 = load %struct.wacom_wac*, %struct.wacom_wac** %3, align 8
  %39 = call i64 @report_touch_events(%struct.wacom_wac* %38)
  %40 = icmp ne i64 %39, 0
  br label %41

41:                                               ; preds = %37, %34
  %42 = phi i1 [ false, %34 ], [ %40, %37 ]
  %43 = zext i1 %42 to i32
  store i32 %43, i32* %7, align 4
  %44 = load %struct.input_dev*, %struct.input_dev** %6, align 8
  %45 = load i32, i32* %8, align 4
  %46 = call i32 @input_mt_slot(%struct.input_dev* %44, i32 %45)
  %47 = load %struct.input_dev*, %struct.input_dev** %6, align 8
  %48 = load i32, i32* @MT_TOOL_FINGER, align 4
  %49 = load i32, i32* %7, align 4
  %50 = call i32 @input_mt_report_slot_state(%struct.input_dev* %47, i32 %48, i32 %49)
  %51 = load i32, i32* %7, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %136

53:                                               ; preds = %41
  %54 = load i8*, i8** %4, align 8
  %55 = getelementptr inbounds i8, i8* %54, i64 2
  %56 = load i8, i8* %55, align 1
  %57 = zext i8 %56 to i32
  %58 = shl i32 %57, 4
  %59 = load i8*, i8** %4, align 8
  %60 = getelementptr inbounds i8, i8* %59, i64 4
  %61 = load i8, i8* %60, align 1
  %62 = zext i8 %61 to i32
  %63 = ashr i32 %62, 4
  %64 = or i32 %58, %63
  store i32 %64, i32* %9, align 4
  %65 = load i8*, i8** %4, align 8
  %66 = getelementptr inbounds i8, i8* %65, i64 3
  %67 = load i8, i8* %66, align 1
  %68 = zext i8 %67 to i32
  %69 = shl i32 %68, 4
  %70 = load i8*, i8** %4, align 8
  %71 = getelementptr inbounds i8, i8* %70, i64 4
  %72 = load i8, i8* %71, align 1
  %73 = zext i8 %72 to i32
  %74 = and i32 %73, 15
  %75 = or i32 %69, %74
  store i32 %75, i32* %10, align 4
  %76 = load %struct.wacom_features*, %struct.wacom_features** %5, align 8
  %77 = getelementptr inbounds %struct.wacom_features, %struct.wacom_features* %76, i32 0, i32 0
  %78 = load i64, i64* %77, align 8
  %79 = load i64, i64* @INTUOSPS, align 8
  %80 = icmp sge i64 %78, %79
  br i1 %80, label %81, label %98

81:                                               ; preds = %53
  %82 = load %struct.wacom_features*, %struct.wacom_features** %5, align 8
  %83 = getelementptr inbounds %struct.wacom_features, %struct.wacom_features* %82, i32 0, i32 0
  %84 = load i64, i64* %83, align 8
  %85 = load i64, i64* @INTUOSHT2, align 8
  %86 = icmp sle i64 %84, %85
  br i1 %86, label %87, label %98

87:                                               ; preds = %81
  %88 = load i8*, i8** %4, align 8
  %89 = getelementptr inbounds i8, i8* %88, i64 5
  %90 = load i8, i8* %89, align 1
  %91 = zext i8 %90 to i32
  %92 = mul nsw i32 %91, 100
  store i32 %92, i32* %11, align 4
  %93 = load i8*, i8** %4, align 8
  %94 = getelementptr inbounds i8, i8* %93, i64 6
  %95 = load i8, i8* %94, align 1
  %96 = zext i8 %95 to i32
  %97 = mul nsw i32 %96, 100
  store i32 %97, i32* %12, align 4
  br label %119

98:                                               ; preds = %81, %53
  %99 = load i8*, i8** %4, align 8
  %100 = getelementptr inbounds i8, i8* %99, i64 5
  %101 = load i8, i8* %100, align 1
  %102 = zext i8 %101 to i32
  store i32 %102, i32* %13, align 4
  %103 = load %struct.input_dev*, %struct.input_dev** %6, align 8
  %104 = load i32, i32* @ABS_MT_POSITION_X, align 4
  %105 = call i32 @input_abs_get_res(%struct.input_dev* %103, i32 %104)
  store i32 %105, i32* %14, align 4
  %106 = load %struct.input_dev*, %struct.input_dev** %6, align 8
  %107 = load i32, i32* @ABS_MT_POSITION_Y, align 4
  %108 = call i32 @input_abs_get_res(%struct.input_dev* %106, i32 %107)
  store i32 %108, i32* %15, align 4
  %109 = load i32, i32* %13, align 4
  %110 = load i32, i32* @WACOM_CONTACT_AREA_SCALE, align 4
  %111 = mul nsw i32 %109, %110
  %112 = call i32 @int_sqrt(i32 %111)
  %113 = mul nsw i32 2, %112
  store i32 %113, i32* %11, align 4
  %114 = load i32, i32* %11, align 4
  %115 = load i32, i32* %15, align 4
  %116 = mul nsw i32 %114, %115
  %117 = load i32, i32* %14, align 4
  %118 = sdiv i32 %116, %117
  store i32 %118, i32* %12, align 4
  br label %119

119:                                              ; preds = %98, %87
  %120 = load %struct.input_dev*, %struct.input_dev** %6, align 8
  %121 = load i32, i32* @ABS_MT_POSITION_X, align 4
  %122 = load i32, i32* %9, align 4
  %123 = call i32 @input_report_abs(%struct.input_dev* %120, i32 %121, i32 %122)
  %124 = load %struct.input_dev*, %struct.input_dev** %6, align 8
  %125 = load i32, i32* @ABS_MT_POSITION_Y, align 4
  %126 = load i32, i32* %10, align 4
  %127 = call i32 @input_report_abs(%struct.input_dev* %124, i32 %125, i32 %126)
  %128 = load %struct.input_dev*, %struct.input_dev** %6, align 8
  %129 = load i32, i32* @ABS_MT_TOUCH_MAJOR, align 4
  %130 = load i32, i32* %11, align 4
  %131 = call i32 @input_report_abs(%struct.input_dev* %128, i32 %129, i32 %130)
  %132 = load %struct.input_dev*, %struct.input_dev** %6, align 8
  %133 = load i32, i32* @ABS_MT_TOUCH_MINOR, align 4
  %134 = load i32, i32* %12, align 4
  %135 = call i32 @input_report_abs(%struct.input_dev* %132, i32 %133, i32 %134)
  br label %136

136:                                              ; preds = %33, %119, %41
  ret void
}

declare dso_local i32 @input_mt_get_slot_by_key(%struct.input_dev*, i8 zeroext) #1

declare dso_local i64 @report_touch_events(%struct.wacom_wac*) #1

declare dso_local i32 @input_mt_slot(%struct.input_dev*, i32) #1

declare dso_local i32 @input_mt_report_slot_state(%struct.input_dev*, i32, i32) #1

declare dso_local i32 @input_abs_get_res(%struct.input_dev*, i32) #1

declare dso_local i32 @int_sqrt(i32) #1

declare dso_local i32 @input_report_abs(%struct.input_dev*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
