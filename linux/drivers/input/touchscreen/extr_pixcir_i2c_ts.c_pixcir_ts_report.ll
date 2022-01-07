; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/touchscreen/extr_pixcir_i2c_ts.c_pixcir_ts_report.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/touchscreen/extr_pixcir_i2c_ts.c_pixcir_ts_report.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pixcir_i2c_ts_data = type { i32, %struct.pixcir_i2c_chip_data*, %struct.TYPE_3__* }
%struct.pixcir_i2c_chip_data = type { i64 }
%struct.TYPE_3__ = type { %struct.device }
%struct.device = type { i32 }
%struct.pixcir_report_data = type { i32, %struct.TYPE_4__*, i32* }
%struct.TYPE_4__ = type { i32, i32 }

@PIXCIR_MAX_SLOTS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"no free slot for id 0x%x\0A\00", align 1
@MT_TOOL_FINGER = common dso_local global i32 0, align 4
@ABS_MT_POSITION_X = common dso_local global i32 0, align 4
@ABS_MT_POSITION_Y = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [25 x i8] c"%d: slot %d, x %d, y %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pixcir_i2c_ts_data*, %struct.pixcir_report_data*)* @pixcir_ts_report to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pixcir_ts_report(%struct.pixcir_i2c_ts_data* %0, %struct.pixcir_report_data* %1) #0 {
  %3 = alloca %struct.pixcir_i2c_ts_data*, align 8
  %4 = alloca %struct.pixcir_report_data*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.device*, align 8
  %11 = alloca %struct.pixcir_i2c_chip_data*, align 8
  store %struct.pixcir_i2c_ts_data* %0, %struct.pixcir_i2c_ts_data** %3, align 8
  store %struct.pixcir_report_data* %1, %struct.pixcir_report_data** %4, align 8
  %12 = load i32, i32* @PIXCIR_MAX_SLOTS, align 4
  %13 = zext i32 %12 to i64
  %14 = call i8* @llvm.stacksave()
  store i8* %14, i8** %5, align 8
  %15 = alloca i32, i64 %13, align 16
  store i64 %13, i64* %6, align 8
  %16 = load %struct.pixcir_i2c_ts_data*, %struct.pixcir_i2c_ts_data** %3, align 8
  %17 = getelementptr inbounds %struct.pixcir_i2c_ts_data, %struct.pixcir_i2c_ts_data* %16, i32 0, i32 2
  %18 = load %struct.TYPE_3__*, %struct.TYPE_3__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 0
  store %struct.device* %19, %struct.device** %10, align 8
  %20 = load %struct.pixcir_i2c_ts_data*, %struct.pixcir_i2c_ts_data** %3, align 8
  %21 = getelementptr inbounds %struct.pixcir_i2c_ts_data, %struct.pixcir_i2c_ts_data* %20, i32 0, i32 1
  %22 = load %struct.pixcir_i2c_chip_data*, %struct.pixcir_i2c_chip_data** %21, align 8
  store %struct.pixcir_i2c_chip_data* %22, %struct.pixcir_i2c_chip_data** %11, align 8
  %23 = load %struct.pixcir_report_data*, %struct.pixcir_report_data** %4, align 8
  %24 = getelementptr inbounds %struct.pixcir_report_data, %struct.pixcir_report_data* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  store i32 %25, i32* %7, align 4
  %26 = load i32, i32* %7, align 4
  %27 = load i32, i32* @PIXCIR_MAX_SLOTS, align 4
  %28 = icmp sgt i32 %26, %27
  br i1 %28, label %29, label %31

29:                                               ; preds = %2
  %30 = load i32, i32* @PIXCIR_MAX_SLOTS, align 4
  store i32 %30, i32* %7, align 4
  br label %31

31:                                               ; preds = %29, %2
  %32 = load %struct.pixcir_i2c_ts_data*, %struct.pixcir_i2c_ts_data** %3, align 8
  %33 = getelementptr inbounds %struct.pixcir_i2c_ts_data, %struct.pixcir_i2c_ts_data* %32, i32 0, i32 1
  %34 = load %struct.pixcir_i2c_chip_data*, %struct.pixcir_i2c_chip_data** %33, align 8
  %35 = getelementptr inbounds %struct.pixcir_i2c_chip_data, %struct.pixcir_i2c_chip_data* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %47, label %38

38:                                               ; preds = %31
  %39 = load %struct.pixcir_i2c_ts_data*, %struct.pixcir_i2c_ts_data** %3, align 8
  %40 = getelementptr inbounds %struct.pixcir_i2c_ts_data, %struct.pixcir_i2c_ts_data* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = load %struct.pixcir_report_data*, %struct.pixcir_report_data** %4, align 8
  %43 = getelementptr inbounds %struct.pixcir_report_data, %struct.pixcir_report_data* %42, i32 0, i32 1
  %44 = load %struct.TYPE_4__*, %struct.TYPE_4__** %43, align 8
  %45 = load i32, i32* %7, align 4
  %46 = call i32 @input_mt_assign_slots(i32 %41, i32* %15, %struct.TYPE_4__* %44, i32 %45, i32 0)
  br label %47

47:                                               ; preds = %38, %31
  store i32 0, i32* %8, align 4
  br label %48

48:                                               ; preds = %144, %47
  %49 = load i32, i32* %8, align 4
  %50 = load i32, i32* %7, align 4
  %51 = icmp slt i32 %49, %50
  br i1 %51, label %52, label %147

52:                                               ; preds = %48
  %53 = load %struct.pixcir_i2c_chip_data*, %struct.pixcir_i2c_chip_data** %11, align 8
  %54 = getelementptr inbounds %struct.pixcir_i2c_chip_data, %struct.pixcir_i2c_chip_data* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %82

57:                                               ; preds = %52
  %58 = load %struct.pixcir_i2c_ts_data*, %struct.pixcir_i2c_ts_data** %3, align 8
  %59 = getelementptr inbounds %struct.pixcir_i2c_ts_data, %struct.pixcir_i2c_ts_data* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = load %struct.pixcir_report_data*, %struct.pixcir_report_data** %4, align 8
  %62 = getelementptr inbounds %struct.pixcir_report_data, %struct.pixcir_report_data* %61, i32 0, i32 2
  %63 = load i32*, i32** %62, align 8
  %64 = load i32, i32* %8, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds i32, i32* %63, i64 %65
  %67 = load i32, i32* %66, align 4
  %68 = call i32 @input_mt_get_slot_by_key(i32 %60, i32 %67)
  store i32 %68, i32* %9, align 4
  %69 = load i32, i32* %9, align 4
  %70 = icmp slt i32 %69, 0
  br i1 %70, label %71, label %81

71:                                               ; preds = %57
  %72 = load %struct.device*, %struct.device** %10, align 8
  %73 = load %struct.pixcir_report_data*, %struct.pixcir_report_data** %4, align 8
  %74 = getelementptr inbounds %struct.pixcir_report_data, %struct.pixcir_report_data* %73, i32 0, i32 2
  %75 = load i32*, i32** %74, align 8
  %76 = load i32, i32* %8, align 4
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds i32, i32* %75, i64 %77
  %79 = load i32, i32* %78, align 4
  %80 = call i32 (%struct.device*, i8*, i32, ...) @dev_dbg(%struct.device* %72, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i32 %79)
  br label %144

81:                                               ; preds = %57
  br label %87

82:                                               ; preds = %52
  %83 = load i32, i32* %8, align 4
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds i32, i32* %15, i64 %84
  %86 = load i32, i32* %85, align 4
  store i32 %86, i32* %9, align 4
  br label %87

87:                                               ; preds = %82, %81
  %88 = load %struct.pixcir_i2c_ts_data*, %struct.pixcir_i2c_ts_data** %3, align 8
  %89 = getelementptr inbounds %struct.pixcir_i2c_ts_data, %struct.pixcir_i2c_ts_data* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 8
  %91 = load i32, i32* %9, align 4
  %92 = call i32 @input_mt_slot(i32 %90, i32 %91)
  %93 = load %struct.pixcir_i2c_ts_data*, %struct.pixcir_i2c_ts_data** %3, align 8
  %94 = getelementptr inbounds %struct.pixcir_i2c_ts_data, %struct.pixcir_i2c_ts_data* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 8
  %96 = load i32, i32* @MT_TOOL_FINGER, align 4
  %97 = call i32 @input_mt_report_slot_state(i32 %95, i32 %96, i32 1)
  %98 = load %struct.pixcir_i2c_ts_data*, %struct.pixcir_i2c_ts_data** %3, align 8
  %99 = getelementptr inbounds %struct.pixcir_i2c_ts_data, %struct.pixcir_i2c_ts_data* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 8
  %101 = load i32, i32* @ABS_MT_POSITION_X, align 4
  %102 = load %struct.pixcir_report_data*, %struct.pixcir_report_data** %4, align 8
  %103 = getelementptr inbounds %struct.pixcir_report_data, %struct.pixcir_report_data* %102, i32 0, i32 1
  %104 = load %struct.TYPE_4__*, %struct.TYPE_4__** %103, align 8
  %105 = load i32, i32* %8, align 4
  %106 = sext i32 %105 to i64
  %107 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %104, i64 %106
  %108 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %107, i32 0, i32 1
  %109 = load i32, i32* %108, align 4
  %110 = call i32 @input_report_abs(i32 %100, i32 %101, i32 %109)
  %111 = load %struct.pixcir_i2c_ts_data*, %struct.pixcir_i2c_ts_data** %3, align 8
  %112 = getelementptr inbounds %struct.pixcir_i2c_ts_data, %struct.pixcir_i2c_ts_data* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 8
  %114 = load i32, i32* @ABS_MT_POSITION_Y, align 4
  %115 = load %struct.pixcir_report_data*, %struct.pixcir_report_data** %4, align 8
  %116 = getelementptr inbounds %struct.pixcir_report_data, %struct.pixcir_report_data* %115, i32 0, i32 1
  %117 = load %struct.TYPE_4__*, %struct.TYPE_4__** %116, align 8
  %118 = load i32, i32* %8, align 4
  %119 = sext i32 %118 to i64
  %120 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %117, i64 %119
  %121 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %120, i32 0, i32 0
  %122 = load i32, i32* %121, align 4
  %123 = call i32 @input_report_abs(i32 %113, i32 %114, i32 %122)
  %124 = load %struct.device*, %struct.device** %10, align 8
  %125 = load i32, i32* %8, align 4
  %126 = load i32, i32* %9, align 4
  %127 = load %struct.pixcir_report_data*, %struct.pixcir_report_data** %4, align 8
  %128 = getelementptr inbounds %struct.pixcir_report_data, %struct.pixcir_report_data* %127, i32 0, i32 1
  %129 = load %struct.TYPE_4__*, %struct.TYPE_4__** %128, align 8
  %130 = load i32, i32* %8, align 4
  %131 = sext i32 %130 to i64
  %132 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %129, i64 %131
  %133 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %132, i32 0, i32 1
  %134 = load i32, i32* %133, align 4
  %135 = load %struct.pixcir_report_data*, %struct.pixcir_report_data** %4, align 8
  %136 = getelementptr inbounds %struct.pixcir_report_data, %struct.pixcir_report_data* %135, i32 0, i32 1
  %137 = load %struct.TYPE_4__*, %struct.TYPE_4__** %136, align 8
  %138 = load i32, i32* %8, align 4
  %139 = sext i32 %138 to i64
  %140 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %137, i64 %139
  %141 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %140, i32 0, i32 0
  %142 = load i32, i32* %141, align 4
  %143 = call i32 (%struct.device*, i8*, i32, ...) @dev_dbg(%struct.device* %124, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0), i32 %125, i32 %126, i32 %134, i32 %142)
  br label %144

144:                                              ; preds = %87, %71
  %145 = load i32, i32* %8, align 4
  %146 = add nsw i32 %145, 1
  store i32 %146, i32* %8, align 4
  br label %48

147:                                              ; preds = %48
  %148 = load %struct.pixcir_i2c_ts_data*, %struct.pixcir_i2c_ts_data** %3, align 8
  %149 = getelementptr inbounds %struct.pixcir_i2c_ts_data, %struct.pixcir_i2c_ts_data* %148, i32 0, i32 0
  %150 = load i32, i32* %149, align 8
  %151 = call i32 @input_mt_sync_frame(i32 %150)
  %152 = load %struct.pixcir_i2c_ts_data*, %struct.pixcir_i2c_ts_data** %3, align 8
  %153 = getelementptr inbounds %struct.pixcir_i2c_ts_data, %struct.pixcir_i2c_ts_data* %152, i32 0, i32 0
  %154 = load i32, i32* %153, align 8
  %155 = call i32 @input_sync(i32 %154)
  %156 = load i8*, i8** %5, align 8
  call void @llvm.stackrestore(i8* %156)
  ret void
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @input_mt_assign_slots(i32, i32*, %struct.TYPE_4__*, i32, i32) #2

declare dso_local i32 @input_mt_get_slot_by_key(i32, i32) #2

declare dso_local i32 @dev_dbg(%struct.device*, i8*, i32, ...) #2

declare dso_local i32 @input_mt_slot(i32, i32) #2

declare dso_local i32 @input_mt_report_slot_state(i32, i32, i32) #2

declare dso_local i32 @input_report_abs(i32, i32, i32) #2

declare dso_local i32 @input_mt_sync_frame(i32) #2

declare dso_local i32 @input_sync(i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
