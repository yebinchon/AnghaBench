; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/touchscreen/extr_surface3_spi.c_surface3_spi_process_pen.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/touchscreen/extr_surface3_spi.c_surface3_spi_process_pen.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.surface3_ts_data = type { i32 }
%struct.surface3_ts_data_pen = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.surface3_ts_data*, i32*)* @surface3_spi_process_pen to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @surface3_spi_process_pen(%struct.surface3_ts_data* %0, i32* %1) #0 {
  %3 = alloca %struct.surface3_ts_data*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.surface3_ts_data_pen*, align 8
  store %struct.surface3_ts_data* %0, %struct.surface3_ts_data** %3, align 8
  store i32* %1, i32** %4, align 8
  %6 = load i32*, i32** %4, align 8
  %7 = getelementptr inbounds i32, i32* %6, i64 15
  %8 = bitcast i32* %7 to %struct.surface3_ts_data_pen*
  store %struct.surface3_ts_data_pen* %8, %struct.surface3_ts_data_pen** %5, align 8
  %9 = load %struct.surface3_ts_data*, %struct.surface3_ts_data** %3, align 8
  %10 = load %struct.surface3_ts_data_pen*, %struct.surface3_ts_data_pen** %5, align 8
  %11 = call i32 @surface3_spi_report_pen(%struct.surface3_ts_data* %9, %struct.surface3_ts_data_pen* %10)
  %12 = load %struct.surface3_ts_data*, %struct.surface3_ts_data** %3, align 8
  %13 = getelementptr inbounds %struct.surface3_ts_data, %struct.surface3_ts_data* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = call i32 @input_sync(i32 %14)
  ret void
}

declare dso_local i32 @surface3_spi_report_pen(%struct.surface3_ts_data*, %struct.surface3_ts_data_pen*) #1

declare dso_local i32 @input_sync(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
