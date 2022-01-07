; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/touchscreen/extr_raspberrypi-ts.c_rpi_ts_dma_cleanup.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/touchscreen/extr_raspberrypi-ts.c_rpi_ts_dma_cleanup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rpi_ts = type { i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.device }
%struct.device = type { i32 }

@PAGE_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @rpi_ts_dma_cleanup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rpi_ts_dma_cleanup(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.rpi_ts*, align 8
  %4 = alloca %struct.device*, align 8
  store i8* %0, i8** %2, align 8
  %5 = load i8*, i8** %2, align 8
  %6 = bitcast i8* %5 to %struct.rpi_ts*
  store %struct.rpi_ts* %6, %struct.rpi_ts** %3, align 8
  %7 = load %struct.rpi_ts*, %struct.rpi_ts** %3, align 8
  %8 = getelementptr inbounds %struct.rpi_ts, %struct.rpi_ts* %7, i32 0, i32 2
  %9 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  store %struct.device* %10, %struct.device** %4, align 8
  %11 = load %struct.device*, %struct.device** %4, align 8
  %12 = load i32, i32* @PAGE_SIZE, align 4
  %13 = load %struct.rpi_ts*, %struct.rpi_ts** %3, align 8
  %14 = getelementptr inbounds %struct.rpi_ts, %struct.rpi_ts* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  %16 = load %struct.rpi_ts*, %struct.rpi_ts** %3, align 8
  %17 = getelementptr inbounds %struct.rpi_ts, %struct.rpi_ts* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = call i32 @dma_free_coherent(%struct.device* %11, i32 %12, i32 %15, i32 %18)
  ret void
}

declare dso_local i32 @dma_free_coherent(%struct.device*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
