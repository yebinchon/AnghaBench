; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/touchscreen/extr_surface3_spi.c_surface3_spi_process_touch.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/touchscreen/extr_surface3_spi.c_surface3_spi_process_touch.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.surface3_ts_data = type { i32 }
%struct.surface3_ts_data_finger = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.surface3_ts_data*, i32*)* @surface3_spi_process_touch to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @surface3_spi_process_touch(%struct.surface3_ts_data* %0, i32* %1) #0 {
  %3 = alloca %struct.surface3_ts_data*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.surface3_ts_data_finger*, align 8
  store %struct.surface3_ts_data* %0, %struct.surface3_ts_data** %3, align 8
  store i32* %1, i32** %4, align 8
  %8 = load i32*, i32** %4, align 8
  %9 = getelementptr inbounds i32, i32* %8, i64 15
  %10 = call i32 @get_unaligned_le16(i32* %9)
  store i32 %10, i32* %5, align 4
  store i32 0, i32* %6, align 4
  br label %11

11:                                               ; preds = %32, %2
  %12 = load i32, i32* %6, align 4
  %13 = icmp ult i32 %12, 13
  br i1 %13, label %14, label %35

14:                                               ; preds = %11
  %15 = load i32*, i32** %4, align 8
  %16 = load i32, i32* %6, align 4
  %17 = zext i32 %16 to i64
  %18 = mul i64 %17, 4
  %19 = add i64 17, %18
  %20 = getelementptr inbounds i32, i32* %15, i64 %19
  %21 = bitcast i32* %20 to %struct.surface3_ts_data_finger*
  store %struct.surface3_ts_data_finger* %21, %struct.surface3_ts_data_finger** %7, align 8
  %22 = load %struct.surface3_ts_data_finger*, %struct.surface3_ts_data_finger** %7, align 8
  %23 = getelementptr inbounds %struct.surface3_ts_data_finger, %struct.surface3_ts_data_finger* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = and i32 %24, 16
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %14
  br label %35

28:                                               ; preds = %14
  %29 = load %struct.surface3_ts_data*, %struct.surface3_ts_data** %3, align 8
  %30 = load %struct.surface3_ts_data_finger*, %struct.surface3_ts_data_finger** %7, align 8
  %31 = call i32 @surface3_spi_report_touch(%struct.surface3_ts_data* %29, %struct.surface3_ts_data_finger* %30)
  br label %32

32:                                               ; preds = %28
  %33 = load i32, i32* %6, align 4
  %34 = add i32 %33, 1
  store i32 %34, i32* %6, align 4
  br label %11

35:                                               ; preds = %27, %11
  %36 = load %struct.surface3_ts_data*, %struct.surface3_ts_data** %3, align 8
  %37 = getelementptr inbounds %struct.surface3_ts_data, %struct.surface3_ts_data* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @input_mt_sync_frame(i32 %38)
  %40 = load %struct.surface3_ts_data*, %struct.surface3_ts_data** %3, align 8
  %41 = getelementptr inbounds %struct.surface3_ts_data, %struct.surface3_ts_data* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @input_sync(i32 %42)
  ret void
}

declare dso_local i32 @get_unaligned_le16(i32*) #1

declare dso_local i32 @surface3_spi_report_touch(%struct.surface3_ts_data*, %struct.surface3_ts_data_finger*) #1

declare dso_local i32 @input_mt_sync_frame(i32) #1

declare dso_local i32 @input_sync(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
