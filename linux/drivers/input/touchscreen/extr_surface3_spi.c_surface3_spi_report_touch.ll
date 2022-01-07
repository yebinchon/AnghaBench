; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/touchscreen/extr_surface3_spi.c_surface3_spi_report_touch.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/touchscreen/extr_surface3_spi.c_surface3_spi_report_touch.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.surface3_ts_data = type { i32 }
%struct.surface3_ts_data_finger = type { i32, i32, i32, i32, i32, i32 }

@MT_TOOL_FINGER = common dso_local global i32 0, align 4
@ABS_MT_POSITION_X = common dso_local global i32 0, align 4
@ABS_MT_POSITION_Y = common dso_local global i32 0, align 4
@ABS_MT_WIDTH_MAJOR = common dso_local global i32 0, align 4
@ABS_MT_WIDTH_MINOR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.surface3_ts_data*, %struct.surface3_ts_data_finger*)* @surface3_spi_report_touch to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @surface3_spi_report_touch(%struct.surface3_ts_data* %0, %struct.surface3_ts_data_finger* %1) #0 {
  %3 = alloca %struct.surface3_ts_data*, align 8
  %4 = alloca %struct.surface3_ts_data_finger*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.surface3_ts_data* %0, %struct.surface3_ts_data** %3, align 8
  store %struct.surface3_ts_data_finger* %1, %struct.surface3_ts_data_finger** %4, align 8
  %7 = load %struct.surface3_ts_data_finger*, %struct.surface3_ts_data_finger** %4, align 8
  %8 = getelementptr inbounds %struct.surface3_ts_data_finger, %struct.surface3_ts_data_finger* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = and i32 %9, 1
  store i32 %10, i32* %5, align 4
  %11 = load %struct.surface3_ts_data*, %struct.surface3_ts_data** %3, align 8
  %12 = getelementptr inbounds %struct.surface3_ts_data, %struct.surface3_ts_data* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = load %struct.surface3_ts_data_finger*, %struct.surface3_ts_data_finger** %4, align 8
  %15 = getelementptr inbounds %struct.surface3_ts_data_finger, %struct.surface3_ts_data_finger* %14, i32 0, i32 5
  %16 = call i32 @get_unaligned_le16(i32* %15)
  %17 = call i32 @input_mt_get_slot_by_key(i32 %13, i32 %16)
  store i32 %17, i32* %6, align 4
  %18 = load i32, i32* %6, align 4
  %19 = icmp slt i32 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %2
  br label %68

21:                                               ; preds = %2
  %22 = load %struct.surface3_ts_data*, %struct.surface3_ts_data** %3, align 8
  %23 = getelementptr inbounds %struct.surface3_ts_data, %struct.surface3_ts_data* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = load i32, i32* %6, align 4
  %26 = call i32 @input_mt_slot(i32 %24, i32 %25)
  %27 = load %struct.surface3_ts_data*, %struct.surface3_ts_data** %3, align 8
  %28 = getelementptr inbounds %struct.surface3_ts_data, %struct.surface3_ts_data* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = load i32, i32* @MT_TOOL_FINGER, align 4
  %31 = load i32, i32* %5, align 4
  %32 = call i32 @input_mt_report_slot_state(i32 %29, i32 %30, i32 %31)
  %33 = load i32, i32* %5, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %68

35:                                               ; preds = %21
  %36 = load %struct.surface3_ts_data*, %struct.surface3_ts_data** %3, align 8
  %37 = getelementptr inbounds %struct.surface3_ts_data, %struct.surface3_ts_data* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = load i32, i32* @ABS_MT_POSITION_X, align 4
  %40 = load %struct.surface3_ts_data_finger*, %struct.surface3_ts_data_finger** %4, align 8
  %41 = getelementptr inbounds %struct.surface3_ts_data_finger, %struct.surface3_ts_data_finger* %40, i32 0, i32 4
  %42 = call i32 @get_unaligned_le16(i32* %41)
  %43 = call i32 @input_report_abs(i32 %38, i32 %39, i32 %42)
  %44 = load %struct.surface3_ts_data*, %struct.surface3_ts_data** %3, align 8
  %45 = getelementptr inbounds %struct.surface3_ts_data, %struct.surface3_ts_data* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = load i32, i32* @ABS_MT_POSITION_Y, align 4
  %48 = load %struct.surface3_ts_data_finger*, %struct.surface3_ts_data_finger** %4, align 8
  %49 = getelementptr inbounds %struct.surface3_ts_data_finger, %struct.surface3_ts_data_finger* %48, i32 0, i32 3
  %50 = call i32 @get_unaligned_le16(i32* %49)
  %51 = call i32 @input_report_abs(i32 %46, i32 %47, i32 %50)
  %52 = load %struct.surface3_ts_data*, %struct.surface3_ts_data** %3, align 8
  %53 = getelementptr inbounds %struct.surface3_ts_data, %struct.surface3_ts_data* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = load i32, i32* @ABS_MT_WIDTH_MAJOR, align 4
  %56 = load %struct.surface3_ts_data_finger*, %struct.surface3_ts_data_finger** %4, align 8
  %57 = getelementptr inbounds %struct.surface3_ts_data_finger, %struct.surface3_ts_data_finger* %56, i32 0, i32 2
  %58 = call i32 @get_unaligned_le16(i32* %57)
  %59 = call i32 @input_report_abs(i32 %54, i32 %55, i32 %58)
  %60 = load %struct.surface3_ts_data*, %struct.surface3_ts_data** %3, align 8
  %61 = getelementptr inbounds %struct.surface3_ts_data, %struct.surface3_ts_data* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = load i32, i32* @ABS_MT_WIDTH_MINOR, align 4
  %64 = load %struct.surface3_ts_data_finger*, %struct.surface3_ts_data_finger** %4, align 8
  %65 = getelementptr inbounds %struct.surface3_ts_data_finger, %struct.surface3_ts_data_finger* %64, i32 0, i32 1
  %66 = call i32 @get_unaligned_le16(i32* %65)
  %67 = call i32 @input_report_abs(i32 %62, i32 %63, i32 %66)
  br label %68

68:                                               ; preds = %20, %35, %21
  ret void
}

declare dso_local i32 @input_mt_get_slot_by_key(i32, i32) #1

declare dso_local i32 @get_unaligned_le16(i32*) #1

declare dso_local i32 @input_mt_slot(i32, i32) #1

declare dso_local i32 @input_mt_report_slot_state(i32, i32, i32) #1

declare dso_local i32 @input_report_abs(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
