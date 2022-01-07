; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/touchscreen/extr_raydium_i2c_ts.c_raydium_mt_event.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/touchscreen/extr_raydium_i2c_ts.c_raydium_mt_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.raydium_data = type { i32, i32, i32*, i32 }

@RM_CONTACT_STATE_POS = common dso_local global i64 0, align 8
@MT_TOOL_FINGER = common dso_local global i32 0, align 4
@ABS_MT_POSITION_X = common dso_local global i32 0, align 4
@RM_CONTACT_X_POS = common dso_local global i64 0, align 8
@ABS_MT_POSITION_Y = common dso_local global i32 0, align 4
@RM_CONTACT_Y_POS = common dso_local global i64 0, align 8
@ABS_MT_PRESSURE = common dso_local global i32 0, align 4
@RM_CONTACT_PRESSURE_POS = common dso_local global i64 0, align 8
@RM_CONTACT_WIDTH_X_POS = common dso_local global i64 0, align 8
@RM_CONTACT_WIDTH_Y_POS = common dso_local global i64 0, align 8
@ABS_MT_TOUCH_MAJOR = common dso_local global i32 0, align 4
@ABS_MT_TOUCH_MINOR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.raydium_data*)* @raydium_mt_event to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @raydium_mt_event(%struct.raydium_data* %0) #0 {
  %2 = alloca %struct.raydium_data*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.raydium_data* %0, %struct.raydium_data** %2, align 8
  store i32 0, i32* %3, align 4
  br label %8

8:                                                ; preds = %99, %1
  %9 = load i32, i32* %3, align 4
  %10 = load %struct.raydium_data*, %struct.raydium_data** %2, align 8
  %11 = getelementptr inbounds %struct.raydium_data, %struct.raydium_data* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = load %struct.raydium_data*, %struct.raydium_data** %2, align 8
  %14 = getelementptr inbounds %struct.raydium_data, %struct.raydium_data* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  %16 = sdiv i32 %12, %15
  %17 = icmp slt i32 %9, %16
  br i1 %17, label %18, label %102

18:                                               ; preds = %8
  %19 = load %struct.raydium_data*, %struct.raydium_data** %2, align 8
  %20 = getelementptr inbounds %struct.raydium_data, %struct.raydium_data* %19, i32 0, i32 2
  %21 = load i32*, i32** %20, align 8
  %22 = load %struct.raydium_data*, %struct.raydium_data** %2, align 8
  %23 = getelementptr inbounds %struct.raydium_data, %struct.raydium_data* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = load i32, i32* %3, align 4
  %26 = mul nsw i32 %24, %25
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds i32, i32* %21, i64 %27
  store i32* %28, i32** %4, align 8
  %29 = load i32*, i32** %4, align 8
  %30 = load i64, i64* @RM_CONTACT_STATE_POS, align 8
  %31 = getelementptr inbounds i32, i32* %29, i64 %30
  %32 = load i32, i32* %31, align 4
  store i32 %32, i32* %5, align 4
  %33 = load %struct.raydium_data*, %struct.raydium_data** %2, align 8
  %34 = getelementptr inbounds %struct.raydium_data, %struct.raydium_data* %33, i32 0, i32 3
  %35 = load i32, i32* %34, align 8
  %36 = load i32, i32* %3, align 4
  %37 = call i32 @input_mt_slot(i32 %35, i32 %36)
  %38 = load %struct.raydium_data*, %struct.raydium_data** %2, align 8
  %39 = getelementptr inbounds %struct.raydium_data, %struct.raydium_data* %38, i32 0, i32 3
  %40 = load i32, i32* %39, align 8
  %41 = load i32, i32* @MT_TOOL_FINGER, align 4
  %42 = load i32, i32* %5, align 4
  %43 = call i32 @input_mt_report_slot_state(i32 %40, i32 %41, i32 %42)
  %44 = load i32, i32* %5, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %47, label %46

46:                                               ; preds = %18
  br label %99

47:                                               ; preds = %18
  %48 = load %struct.raydium_data*, %struct.raydium_data** %2, align 8
  %49 = getelementptr inbounds %struct.raydium_data, %struct.raydium_data* %48, i32 0, i32 3
  %50 = load i32, i32* %49, align 8
  %51 = load i32, i32* @ABS_MT_POSITION_X, align 4
  %52 = load i32*, i32** %4, align 8
  %53 = load i64, i64* @RM_CONTACT_X_POS, align 8
  %54 = getelementptr inbounds i32, i32* %52, i64 %53
  %55 = call i32 @get_unaligned_le16(i32* %54)
  %56 = call i32 @input_report_abs(i32 %50, i32 %51, i32 %55)
  %57 = load %struct.raydium_data*, %struct.raydium_data** %2, align 8
  %58 = getelementptr inbounds %struct.raydium_data, %struct.raydium_data* %57, i32 0, i32 3
  %59 = load i32, i32* %58, align 8
  %60 = load i32, i32* @ABS_MT_POSITION_Y, align 4
  %61 = load i32*, i32** %4, align 8
  %62 = load i64, i64* @RM_CONTACT_Y_POS, align 8
  %63 = getelementptr inbounds i32, i32* %61, i64 %62
  %64 = call i32 @get_unaligned_le16(i32* %63)
  %65 = call i32 @input_report_abs(i32 %59, i32 %60, i32 %64)
  %66 = load %struct.raydium_data*, %struct.raydium_data** %2, align 8
  %67 = getelementptr inbounds %struct.raydium_data, %struct.raydium_data* %66, i32 0, i32 3
  %68 = load i32, i32* %67, align 8
  %69 = load i32, i32* @ABS_MT_PRESSURE, align 4
  %70 = load i32*, i32** %4, align 8
  %71 = load i64, i64* @RM_CONTACT_PRESSURE_POS, align 8
  %72 = getelementptr inbounds i32, i32* %70, i64 %71
  %73 = load i32, i32* %72, align 4
  %74 = call i32 @input_report_abs(i32 %68, i32 %69, i32 %73)
  %75 = load i32*, i32** %4, align 8
  %76 = load i64, i64* @RM_CONTACT_WIDTH_X_POS, align 8
  %77 = getelementptr inbounds i32, i32* %75, i64 %76
  %78 = load i32, i32* %77, align 4
  store i32 %78, i32* %6, align 4
  %79 = load i32*, i32** %4, align 8
  %80 = load i64, i64* @RM_CONTACT_WIDTH_Y_POS, align 8
  %81 = getelementptr inbounds i32, i32* %79, i64 %80
  %82 = load i32, i32* %81, align 4
  store i32 %82, i32* %7, align 4
  %83 = load %struct.raydium_data*, %struct.raydium_data** %2, align 8
  %84 = getelementptr inbounds %struct.raydium_data, %struct.raydium_data* %83, i32 0, i32 3
  %85 = load i32, i32* %84, align 8
  %86 = load i32, i32* @ABS_MT_TOUCH_MAJOR, align 4
  %87 = load i32, i32* %6, align 4
  %88 = load i32, i32* %7, align 4
  %89 = call i32 @max(i32 %87, i32 %88)
  %90 = call i32 @input_report_abs(i32 %85, i32 %86, i32 %89)
  %91 = load %struct.raydium_data*, %struct.raydium_data** %2, align 8
  %92 = getelementptr inbounds %struct.raydium_data, %struct.raydium_data* %91, i32 0, i32 3
  %93 = load i32, i32* %92, align 8
  %94 = load i32, i32* @ABS_MT_TOUCH_MINOR, align 4
  %95 = load i32, i32* %6, align 4
  %96 = load i32, i32* %7, align 4
  %97 = call i32 @min(i32 %95, i32 %96)
  %98 = call i32 @input_report_abs(i32 %93, i32 %94, i32 %97)
  br label %99

99:                                               ; preds = %47, %46
  %100 = load i32, i32* %3, align 4
  %101 = add nsw i32 %100, 1
  store i32 %101, i32* %3, align 4
  br label %8

102:                                              ; preds = %8
  %103 = load %struct.raydium_data*, %struct.raydium_data** %2, align 8
  %104 = getelementptr inbounds %struct.raydium_data, %struct.raydium_data* %103, i32 0, i32 3
  %105 = load i32, i32* %104, align 8
  %106 = call i32 @input_mt_sync_frame(i32 %105)
  %107 = load %struct.raydium_data*, %struct.raydium_data** %2, align 8
  %108 = getelementptr inbounds %struct.raydium_data, %struct.raydium_data* %107, i32 0, i32 3
  %109 = load i32, i32* %108, align 8
  %110 = call i32 @input_sync(i32 %109)
  ret void
}

declare dso_local i32 @input_mt_slot(i32, i32) #1

declare dso_local i32 @input_mt_report_slot_state(i32, i32, i32) #1

declare dso_local i32 @input_report_abs(i32, i32, i32) #1

declare dso_local i32 @get_unaligned_le16(i32*) #1

declare dso_local i32 @max(i32, i32) #1

declare dso_local i32 @min(i32, i32) #1

declare dso_local i32 @input_mt_sync_frame(i32) #1

declare dso_local i32 @input_sync(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
