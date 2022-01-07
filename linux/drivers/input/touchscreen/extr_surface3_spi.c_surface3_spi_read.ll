; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/touchscreen/extr_surface3_spi.c_surface3_spi_read.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/touchscreen/extr_surface3_spi.c_surface3_spi_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.surface3_ts_data = type { i32, %struct.spi_device* }
%struct.spi_device = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.surface3_ts_data*)* @surface3_spi_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @surface3_spi_read(%struct.surface3_ts_data* %0) #0 {
  %2 = alloca %struct.surface3_ts_data*, align 8
  %3 = alloca %struct.spi_device*, align 8
  store %struct.surface3_ts_data* %0, %struct.surface3_ts_data** %2, align 8
  %4 = load %struct.surface3_ts_data*, %struct.surface3_ts_data** %2, align 8
  %5 = getelementptr inbounds %struct.surface3_ts_data, %struct.surface3_ts_data* %4, i32 0, i32 1
  %6 = load %struct.spi_device*, %struct.spi_device** %5, align 8
  store %struct.spi_device* %6, %struct.spi_device** %3, align 8
  %7 = load %struct.surface3_ts_data*, %struct.surface3_ts_data** %2, align 8
  %8 = getelementptr inbounds %struct.surface3_ts_data, %struct.surface3_ts_data* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 8
  %10 = call i32 @memset(i32 %9, i32 0, i32 4)
  %11 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %12 = load %struct.surface3_ts_data*, %struct.surface3_ts_data** %2, align 8
  %13 = getelementptr inbounds %struct.surface3_ts_data, %struct.surface3_ts_data* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = call i32 @spi_read(%struct.spi_device* %11, i32 %14, i32 4)
  ret i32 %15
}

declare dso_local i32 @memset(i32, i32, i32) #1

declare dso_local i32 @spi_read(%struct.spi_device*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
