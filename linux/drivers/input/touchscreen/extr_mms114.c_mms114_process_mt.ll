; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/touchscreen/extr_mms114.c_mms114_process_mt.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/touchscreen/extr_mms114.c_mms114_process_mt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mms114_data = type { i32, %struct.input_dev*, %struct.i2c_client* }
%struct.input_dev = type { i32 }
%struct.i2c_client = type { i32 }
%struct.mms114_touch = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@MMS114_MAX_TOUCH = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"Wrong touch id (%d)\0A\00", align 1
@MMS114_TYPE_TOUCHSCREEN = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [23 x i8] c"Wrong touch type (%d)\0A\00", align 1
@.str.2 = private unnamed_addr constant [70 x i8] c"id: %d, type: %d, pressed: %d, x: %d, y: %d, width: %d, strength: %d\0A\00", align 1
@MT_TOOL_FINGER = common dso_local global i32 0, align 4
@ABS_MT_TOUCH_MAJOR = common dso_local global i32 0, align 4
@ABS_MT_PRESSURE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mms114_data*, %struct.mms114_touch*)* @mms114_process_mt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mms114_process_mt(%struct.mms114_data* %0, %struct.mms114_touch* %1) #0 {
  %3 = alloca %struct.mms114_data*, align 8
  %4 = alloca %struct.mms114_touch*, align 8
  %5 = alloca %struct.i2c_client*, align 8
  %6 = alloca %struct.input_dev*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.mms114_data* %0, %struct.mms114_data** %3, align 8
  store %struct.mms114_touch* %1, %struct.mms114_touch** %4, align 8
  %10 = load %struct.mms114_data*, %struct.mms114_data** %3, align 8
  %11 = getelementptr inbounds %struct.mms114_data, %struct.mms114_data* %10, i32 0, i32 2
  %12 = load %struct.i2c_client*, %struct.i2c_client** %11, align 8
  store %struct.i2c_client* %12, %struct.i2c_client** %5, align 8
  %13 = load %struct.mms114_data*, %struct.mms114_data** %3, align 8
  %14 = getelementptr inbounds %struct.mms114_data, %struct.mms114_data* %13, i32 0, i32 1
  %15 = load %struct.input_dev*, %struct.input_dev** %14, align 8
  store %struct.input_dev* %15, %struct.input_dev** %6, align 8
  %16 = load %struct.mms114_touch*, %struct.mms114_touch** %4, align 8
  %17 = getelementptr inbounds %struct.mms114_touch, %struct.mms114_touch* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = load i32, i32* @MMS114_MAX_TOUCH, align 4
  %20 = icmp sgt i32 %18, %19
  br i1 %20, label %21, label %28

21:                                               ; preds = %2
  %22 = load %struct.i2c_client*, %struct.i2c_client** %5, align 8
  %23 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %22, i32 0, i32 0
  %24 = load %struct.mms114_touch*, %struct.mms114_touch** %4, align 8
  %25 = getelementptr inbounds %struct.mms114_touch, %struct.mms114_touch* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @dev_err(i32* %23, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 %26)
  br label %112

28:                                               ; preds = %2
  %29 = load %struct.mms114_touch*, %struct.mms114_touch** %4, align 8
  %30 = getelementptr inbounds %struct.mms114_touch, %struct.mms114_touch* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = load i32, i32* @MMS114_TYPE_TOUCHSCREEN, align 4
  %33 = icmp ne i32 %31, %32
  br i1 %33, label %34, label %41

34:                                               ; preds = %28
  %35 = load %struct.i2c_client*, %struct.i2c_client** %5, align 8
  %36 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %35, i32 0, i32 0
  %37 = load %struct.mms114_touch*, %struct.mms114_touch** %4, align 8
  %38 = getelementptr inbounds %struct.mms114_touch, %struct.mms114_touch* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @dev_err(i32* %36, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i32 %39)
  br label %112

41:                                               ; preds = %28
  %42 = load %struct.mms114_touch*, %struct.mms114_touch** %4, align 8
  %43 = getelementptr inbounds %struct.mms114_touch, %struct.mms114_touch* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = sub nsw i32 %44, 1
  store i32 %45, i32* %7, align 4
  %46 = load %struct.mms114_touch*, %struct.mms114_touch** %4, align 8
  %47 = getelementptr inbounds %struct.mms114_touch, %struct.mms114_touch* %46, i32 0, i32 2
  %48 = load i32, i32* %47, align 4
  %49 = load %struct.mms114_touch*, %struct.mms114_touch** %4, align 8
  %50 = getelementptr inbounds %struct.mms114_touch, %struct.mms114_touch* %49, i32 0, i32 3
  %51 = load i32, i32* %50, align 4
  %52 = shl i32 %51, 8
  %53 = or i32 %48, %52
  store i32 %53, i32* %8, align 4
  %54 = load %struct.mms114_touch*, %struct.mms114_touch** %4, align 8
  %55 = getelementptr inbounds %struct.mms114_touch, %struct.mms114_touch* %54, i32 0, i32 4
  %56 = load i32, i32* %55, align 4
  %57 = load %struct.mms114_touch*, %struct.mms114_touch** %4, align 8
  %58 = getelementptr inbounds %struct.mms114_touch, %struct.mms114_touch* %57, i32 0, i32 5
  %59 = load i32, i32* %58, align 4
  %60 = shl i32 %59, 8
  %61 = or i32 %56, %60
  store i32 %61, i32* %9, align 4
  %62 = load %struct.i2c_client*, %struct.i2c_client** %5, align 8
  %63 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %62, i32 0, i32 0
  %64 = load i32, i32* %7, align 4
  %65 = load %struct.mms114_touch*, %struct.mms114_touch** %4, align 8
  %66 = getelementptr inbounds %struct.mms114_touch, %struct.mms114_touch* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 4
  %68 = load %struct.mms114_touch*, %struct.mms114_touch** %4, align 8
  %69 = getelementptr inbounds %struct.mms114_touch, %struct.mms114_touch* %68, i32 0, i32 8
  %70 = load i32, i32* %69, align 4
  %71 = load i32, i32* %8, align 4
  %72 = load i32, i32* %9, align 4
  %73 = load %struct.mms114_touch*, %struct.mms114_touch** %4, align 8
  %74 = getelementptr inbounds %struct.mms114_touch, %struct.mms114_touch* %73, i32 0, i32 7
  %75 = load i32, i32* %74, align 4
  %76 = load %struct.mms114_touch*, %struct.mms114_touch** %4, align 8
  %77 = getelementptr inbounds %struct.mms114_touch, %struct.mms114_touch* %76, i32 0, i32 6
  %78 = load i32, i32* %77, align 4
  %79 = call i32 @dev_dbg(i32* %63, i8* getelementptr inbounds ([70 x i8], [70 x i8]* @.str.2, i64 0, i64 0), i32 %64, i32 %67, i32 %70, i32 %71, i32 %72, i32 %75, i32 %78)
  %80 = load %struct.input_dev*, %struct.input_dev** %6, align 8
  %81 = load i32, i32* %7, align 4
  %82 = call i32 @input_mt_slot(%struct.input_dev* %80, i32 %81)
  %83 = load %struct.input_dev*, %struct.input_dev** %6, align 8
  %84 = load i32, i32* @MT_TOOL_FINGER, align 4
  %85 = load %struct.mms114_touch*, %struct.mms114_touch** %4, align 8
  %86 = getelementptr inbounds %struct.mms114_touch, %struct.mms114_touch* %85, i32 0, i32 8
  %87 = load i32, i32* %86, align 4
  %88 = call i32 @input_mt_report_slot_state(%struct.input_dev* %83, i32 %84, i32 %87)
  %89 = load %struct.mms114_touch*, %struct.mms114_touch** %4, align 8
  %90 = getelementptr inbounds %struct.mms114_touch, %struct.mms114_touch* %89, i32 0, i32 8
  %91 = load i32, i32* %90, align 4
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %93, label %112

93:                                               ; preds = %41
  %94 = load %struct.input_dev*, %struct.input_dev** %6, align 8
  %95 = load %struct.mms114_data*, %struct.mms114_data** %3, align 8
  %96 = getelementptr inbounds %struct.mms114_data, %struct.mms114_data* %95, i32 0, i32 0
  %97 = load i32, i32* %8, align 4
  %98 = load i32, i32* %9, align 4
  %99 = call i32 @touchscreen_report_pos(%struct.input_dev* %94, i32* %96, i32 %97, i32 %98, i32 1)
  %100 = load %struct.input_dev*, %struct.input_dev** %6, align 8
  %101 = load i32, i32* @ABS_MT_TOUCH_MAJOR, align 4
  %102 = load %struct.mms114_touch*, %struct.mms114_touch** %4, align 8
  %103 = getelementptr inbounds %struct.mms114_touch, %struct.mms114_touch* %102, i32 0, i32 7
  %104 = load i32, i32* %103, align 4
  %105 = call i32 @input_report_abs(%struct.input_dev* %100, i32 %101, i32 %104)
  %106 = load %struct.input_dev*, %struct.input_dev** %6, align 8
  %107 = load i32, i32* @ABS_MT_PRESSURE, align 4
  %108 = load %struct.mms114_touch*, %struct.mms114_touch** %4, align 8
  %109 = getelementptr inbounds %struct.mms114_touch, %struct.mms114_touch* %108, i32 0, i32 6
  %110 = load i32, i32* %109, align 4
  %111 = call i32 @input_report_abs(%struct.input_dev* %106, i32 %107, i32 %110)
  br label %112

112:                                              ; preds = %21, %34, %93, %41
  ret void
}

declare dso_local i32 @dev_err(i32*, i8*, i32) #1

declare dso_local i32 @dev_dbg(i32*, i8*, i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @input_mt_slot(%struct.input_dev*, i32) #1

declare dso_local i32 @input_mt_report_slot_state(%struct.input_dev*, i32, i32) #1

declare dso_local i32 @touchscreen_report_pos(%struct.input_dev*, i32*, i32, i32, i32) #1

declare dso_local i32 @input_report_abs(%struct.input_dev*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
