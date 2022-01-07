; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/touchscreen/extr_goodix.c_goodix_ts_report_touch_8b.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/touchscreen/extr_goodix.c_goodix_ts_report_touch_8b.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.goodix_ts_data = type { i32, i32 }

@MT_TOOL_FINGER = common dso_local global i32 0, align 4
@ABS_MT_TOUCH_MAJOR = common dso_local global i32 0, align 4
@ABS_MT_WIDTH_MAJOR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.goodix_ts_data*, i32*)* @goodix_ts_report_touch_8b to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @goodix_ts_report_touch_8b(%struct.goodix_ts_data* %0, i32* %1) #0 {
  %3 = alloca %struct.goodix_ts_data*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.goodix_ts_data* %0, %struct.goodix_ts_data** %3, align 8
  store i32* %1, i32** %4, align 8
  %9 = load i32*, i32** %4, align 8
  %10 = getelementptr inbounds i32, i32* %9, i64 0
  %11 = load i32, i32* %10, align 4
  %12 = and i32 %11, 15
  store i32 %12, i32* %5, align 4
  %13 = load i32*, i32** %4, align 8
  %14 = getelementptr inbounds i32, i32* %13, i64 1
  %15 = call i32 @get_unaligned_le16(i32* %14)
  store i32 %15, i32* %6, align 4
  %16 = load i32*, i32** %4, align 8
  %17 = getelementptr inbounds i32, i32* %16, i64 3
  %18 = call i32 @get_unaligned_le16(i32* %17)
  store i32 %18, i32* %7, align 4
  %19 = load i32*, i32** %4, align 8
  %20 = getelementptr inbounds i32, i32* %19, i64 5
  %21 = call i32 @get_unaligned_le16(i32* %20)
  store i32 %21, i32* %8, align 4
  %22 = load %struct.goodix_ts_data*, %struct.goodix_ts_data** %3, align 8
  %23 = getelementptr inbounds %struct.goodix_ts_data, %struct.goodix_ts_data* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = load i32, i32* %5, align 4
  %26 = call i32 @input_mt_slot(i32 %24, i32 %25)
  %27 = load %struct.goodix_ts_data*, %struct.goodix_ts_data** %3, align 8
  %28 = getelementptr inbounds %struct.goodix_ts_data, %struct.goodix_ts_data* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = load i32, i32* @MT_TOOL_FINGER, align 4
  %31 = call i32 @input_mt_report_slot_state(i32 %29, i32 %30, i32 1)
  %32 = load %struct.goodix_ts_data*, %struct.goodix_ts_data** %3, align 8
  %33 = getelementptr inbounds %struct.goodix_ts_data, %struct.goodix_ts_data* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.goodix_ts_data*, %struct.goodix_ts_data** %3, align 8
  %36 = getelementptr inbounds %struct.goodix_ts_data, %struct.goodix_ts_data* %35, i32 0, i32 1
  %37 = load i32, i32* %6, align 4
  %38 = load i32, i32* %7, align 4
  %39 = call i32 @touchscreen_report_pos(i32 %34, i32* %36, i32 %37, i32 %38, i32 1)
  %40 = load %struct.goodix_ts_data*, %struct.goodix_ts_data** %3, align 8
  %41 = getelementptr inbounds %struct.goodix_ts_data, %struct.goodix_ts_data* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = load i32, i32* @ABS_MT_TOUCH_MAJOR, align 4
  %44 = load i32, i32* %8, align 4
  %45 = call i32 @input_report_abs(i32 %42, i32 %43, i32 %44)
  %46 = load %struct.goodix_ts_data*, %struct.goodix_ts_data** %3, align 8
  %47 = getelementptr inbounds %struct.goodix_ts_data, %struct.goodix_ts_data* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = load i32, i32* @ABS_MT_WIDTH_MAJOR, align 4
  %50 = load i32, i32* %8, align 4
  %51 = call i32 @input_report_abs(i32 %48, i32 %49, i32 %50)
  ret void
}

declare dso_local i32 @get_unaligned_le16(i32*) #1

declare dso_local i32 @input_mt_slot(i32, i32) #1

declare dso_local i32 @input_mt_report_slot_state(i32, i32, i32) #1

declare dso_local i32 @touchscreen_report_pos(i32, i32*, i32, i32, i32) #1

declare dso_local i32 @input_report_abs(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
