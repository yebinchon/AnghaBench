; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/touchscreen/extr_sis_i2c.c_sis_ts_report_contact.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/touchscreen/extr_sis_i2c.c_sis_ts_report_contact.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sis_ts_data = type { %struct.TYPE_2__*, %struct.input_dev* }
%struct.TYPE_2__ = type { i32 }
%struct.input_dev = type { i32 }

@SIS_CONTACT_STATUS_OFFSET = common dso_local global i64 0, align 8
@SIS_STATUS_DOWN = common dso_local global i64 0, align 8
@SIS_STATUS_UP = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [32 x i8] c"Unexpected touch status: %#02x\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@SIS_CONTACT_ID_OFFSET = common dso_local global i64 0, align 8
@ENOENT = common dso_local global i32 0, align 4
@MT_TOOL_FINGER = common dso_local global i32 0, align 4
@SIS_ALL_IN_ONE_PACKAGE = common dso_local global i64 0, align 8
@SIS_CONTACT_WIDTH_OFFSET = common dso_local global i64 0, align 8
@SIS_CONTACT_HEIGHT_OFFSET = common dso_local global i64 0, align 8
@SIS_CONTACT_X_OFFSET = common dso_local global i64 0, align 8
@SIS_CONTACT_Y_OFFSET = common dso_local global i64 0, align 8
@ABS_MT_TOUCH_MAJOR = common dso_local global i32 0, align 4
@SIS_AREA_UNIT = common dso_local global i64 0, align 8
@ABS_MT_TOUCH_MINOR = common dso_local global i32 0, align 4
@ABS_MT_PRESSURE = common dso_local global i32 0, align 4
@ABS_MT_POSITION_X = common dso_local global i32 0, align 4
@ABS_MT_POSITION_Y = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sis_ts_data*, i64*, i64)* @sis_ts_report_contact to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sis_ts_report_contact(%struct.sis_ts_data* %0, i64* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.sis_ts_data*, align 8
  %6 = alloca i64*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.input_dev*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  store %struct.sis_ts_data* %0, %struct.sis_ts_data** %5, align 8
  store i64* %1, i64** %6, align 8
  store i64 %2, i64* %7, align 8
  %16 = load %struct.sis_ts_data*, %struct.sis_ts_data** %5, align 8
  %17 = getelementptr inbounds %struct.sis_ts_data, %struct.sis_ts_data* %16, i32 0, i32 1
  %18 = load %struct.input_dev*, %struct.input_dev** %17, align 8
  store %struct.input_dev* %18, %struct.input_dev** %8, align 8
  %19 = load i64*, i64** %6, align 8
  %20 = load i64, i64* @SIS_CONTACT_STATUS_OFFSET, align 8
  %21 = getelementptr inbounds i64, i64* %19, i64 %20
  %22 = load i64, i64* %21, align 8
  store i64 %22, i64* %10, align 8
  %23 = load i64, i64* %10, align 8
  %24 = load i64, i64* @SIS_STATUS_DOWN, align 8
  %25 = icmp ne i64 %23, %24
  br i1 %25, label %26, label %42

26:                                               ; preds = %3
  %27 = load i64, i64* %10, align 8
  %28 = load i64, i64* @SIS_STATUS_UP, align 8
  %29 = icmp ne i64 %27, %28
  br i1 %29, label %30, label %42

30:                                               ; preds = %26
  %31 = load %struct.sis_ts_data*, %struct.sis_ts_data** %5, align 8
  %32 = getelementptr inbounds %struct.sis_ts_data, %struct.sis_ts_data* %31, i32 0, i32 0
  %33 = load %struct.TYPE_2__*, %struct.TYPE_2__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 0
  %35 = load i64*, i64** %6, align 8
  %36 = load i64, i64* @SIS_CONTACT_STATUS_OFFSET, align 8
  %37 = getelementptr inbounds i64, i64* %35, i64 %36
  %38 = load i64, i64* %37, align 8
  %39 = call i32 @dev_err(i32* %34, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i64 %38)
  %40 = load i32, i32* @EINVAL, align 4
  %41 = sub nsw i32 0, %40
  store i32 %41, i32* %4, align 4
  br label %130

42:                                               ; preds = %26, %3
  %43 = load %struct.input_dev*, %struct.input_dev** %8, align 8
  %44 = load i64*, i64** %6, align 8
  %45 = load i64, i64* @SIS_CONTACT_ID_OFFSET, align 8
  %46 = getelementptr inbounds i64, i64* %44, i64 %45
  %47 = load i64, i64* %46, align 8
  %48 = call i32 @input_mt_get_slot_by_key(%struct.input_dev* %43, i64 %47)
  store i32 %48, i32* %9, align 4
  %49 = load i32, i32* %9, align 4
  %50 = icmp slt i32 %49, 0
  br i1 %50, label %51, label %54

51:                                               ; preds = %42
  %52 = load i32, i32* @ENOENT, align 4
  %53 = sub nsw i32 0, %52
  store i32 %53, i32* %4, align 4
  br label %130

54:                                               ; preds = %42
  %55 = load %struct.input_dev*, %struct.input_dev** %8, align 8
  %56 = load i32, i32* %9, align 4
  %57 = call i32 @input_mt_slot(%struct.input_dev* %55, i32 %56)
  %58 = load %struct.input_dev*, %struct.input_dev** %8, align 8
  %59 = load i32, i32* @MT_TOOL_FINGER, align 4
  %60 = load i64, i64* %10, align 8
  %61 = load i64, i64* @SIS_STATUS_DOWN, align 8
  %62 = icmp eq i64 %60, %61
  %63 = zext i1 %62 to i32
  %64 = call i32 @input_mt_report_slot_state(%struct.input_dev* %58, i32 %59, i32 %63)
  %65 = load i64, i64* %10, align 8
  %66 = load i64, i64* @SIS_STATUS_DOWN, align 8
  %67 = icmp eq i64 %65, %66
  br i1 %67, label %68, label %129

68:                                               ; preds = %54
  store i64 1, i64* %13, align 8
  store i64 1, i64* %12, align 8
  store i64 1, i64* %11, align 8
  %69 = load i64, i64* %7, align 8
  %70 = load i64, i64* @SIS_ALL_IN_ONE_PACKAGE, align 8
  %71 = icmp ne i64 %69, %70
  br i1 %71, label %72, label %96

72:                                               ; preds = %68
  %73 = load i64, i64* %7, align 8
  %74 = call i64 @SIS_PKT_HAS_AREA(i64 %73)
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %76, label %85

76:                                               ; preds = %72
  %77 = load i64*, i64** %6, align 8
  %78 = load i64, i64* @SIS_CONTACT_WIDTH_OFFSET, align 8
  %79 = getelementptr inbounds i64, i64* %77, i64 %78
  %80 = load i64, i64* %79, align 8
  store i64 %80, i64* %13, align 8
  %81 = load i64*, i64** %6, align 8
  %82 = load i64, i64* @SIS_CONTACT_HEIGHT_OFFSET, align 8
  %83 = getelementptr inbounds i64, i64* %81, i64 %82
  %84 = load i64, i64* %83, align 8
  store i64 %84, i64* %12, align 8
  br label %85

85:                                               ; preds = %76, %72
  %86 = load i64, i64* %7, align 8
  %87 = call i64 @SIS_PKT_HAS_PRESSURE(i64 %86)
  %88 = icmp ne i64 %87, 0
  br i1 %88, label %89, label %95

89:                                               ; preds = %85
  %90 = load i64*, i64** %6, align 8
  %91 = load i64, i64* %7, align 8
  %92 = call i64 @SIS_CONTACT_PRESSURE_OFFSET(i64 %91)
  %93 = getelementptr inbounds i64, i64* %90, i64 %92
  %94 = load i64, i64* %93, align 8
  store i64 %94, i64* %11, align 8
  br label %95

95:                                               ; preds = %89, %85
  br label %96

96:                                               ; preds = %95, %68
  %97 = load i64*, i64** %6, align 8
  %98 = load i64, i64* @SIS_CONTACT_X_OFFSET, align 8
  %99 = getelementptr inbounds i64, i64* %97, i64 %98
  %100 = call i64 @get_unaligned_le16(i64* %99)
  store i64 %100, i64* %14, align 8
  %101 = load i64*, i64** %6, align 8
  %102 = load i64, i64* @SIS_CONTACT_Y_OFFSET, align 8
  %103 = getelementptr inbounds i64, i64* %101, i64 %102
  %104 = call i64 @get_unaligned_le16(i64* %103)
  store i64 %104, i64* %15, align 8
  %105 = load %struct.input_dev*, %struct.input_dev** %8, align 8
  %106 = load i32, i32* @ABS_MT_TOUCH_MAJOR, align 4
  %107 = load i64, i64* %13, align 8
  %108 = load i64, i64* @SIS_AREA_UNIT, align 8
  %109 = mul nsw i64 %107, %108
  %110 = call i32 @input_report_abs(%struct.input_dev* %105, i32 %106, i64 %109)
  %111 = load %struct.input_dev*, %struct.input_dev** %8, align 8
  %112 = load i32, i32* @ABS_MT_TOUCH_MINOR, align 4
  %113 = load i64, i64* %12, align 8
  %114 = load i64, i64* @SIS_AREA_UNIT, align 8
  %115 = mul nsw i64 %113, %114
  %116 = call i32 @input_report_abs(%struct.input_dev* %111, i32 %112, i64 %115)
  %117 = load %struct.input_dev*, %struct.input_dev** %8, align 8
  %118 = load i32, i32* @ABS_MT_PRESSURE, align 4
  %119 = load i64, i64* %11, align 8
  %120 = call i32 @input_report_abs(%struct.input_dev* %117, i32 %118, i64 %119)
  %121 = load %struct.input_dev*, %struct.input_dev** %8, align 8
  %122 = load i32, i32* @ABS_MT_POSITION_X, align 4
  %123 = load i64, i64* %14, align 8
  %124 = call i32 @input_report_abs(%struct.input_dev* %121, i32 %122, i64 %123)
  %125 = load %struct.input_dev*, %struct.input_dev** %8, align 8
  %126 = load i32, i32* @ABS_MT_POSITION_Y, align 4
  %127 = load i64, i64* %15, align 8
  %128 = call i32 @input_report_abs(%struct.input_dev* %125, i32 %126, i64 %127)
  br label %129

129:                                              ; preds = %96, %54
  store i32 0, i32* %4, align 4
  br label %130

130:                                              ; preds = %129, %51, %30
  %131 = load i32, i32* %4, align 4
  ret i32 %131
}

declare dso_local i32 @dev_err(i32*, i8*, i64) #1

declare dso_local i32 @input_mt_get_slot_by_key(%struct.input_dev*, i64) #1

declare dso_local i32 @input_mt_slot(%struct.input_dev*, i32) #1

declare dso_local i32 @input_mt_report_slot_state(%struct.input_dev*, i32, i32) #1

declare dso_local i64 @SIS_PKT_HAS_AREA(i64) #1

declare dso_local i64 @SIS_PKT_HAS_PRESSURE(i64) #1

declare dso_local i64 @SIS_CONTACT_PRESSURE_OFFSET(i64) #1

declare dso_local i64 @get_unaligned_le16(i64*) #1

declare dso_local i32 @input_report_abs(%struct.input_dev*, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
