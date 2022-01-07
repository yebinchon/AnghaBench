; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/host1x/hw/extr_..dev.h_host1x_hw_cdma_timeout_cpu_incr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/host1x/hw/extr_..dev.h_host1x_hw_cdma_timeout_cpu_incr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.host1x = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (%struct.host1x_cdma*, i32, i32, i32, i32)* }
%struct.host1x_cdma = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.host1x*, %struct.host1x_cdma*, i32, i32, i32, i32)* @host1x_hw_cdma_timeout_cpu_incr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @host1x_hw_cdma_timeout_cpu_incr(%struct.host1x* %0, %struct.host1x_cdma* %1, i32 %2, i32 %3, i32 %4, i32 %5) #0 {
  %7 = alloca %struct.host1x*, align 8
  %8 = alloca %struct.host1x_cdma*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.host1x* %0, %struct.host1x** %7, align 8
  store %struct.host1x_cdma* %1, %struct.host1x_cdma** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  store i32 %5, i32* %12, align 4
  %13 = load %struct.host1x*, %struct.host1x** %7, align 8
  %14 = getelementptr inbounds %struct.host1x, %struct.host1x* %13, i32 0, i32 0
  %15 = load %struct.TYPE_2__*, %struct.TYPE_2__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = load i32 (%struct.host1x_cdma*, i32, i32, i32, i32)*, i32 (%struct.host1x_cdma*, i32, i32, i32, i32)** %16, align 8
  %18 = load %struct.host1x_cdma*, %struct.host1x_cdma** %8, align 8
  %19 = load i32, i32* %9, align 4
  %20 = load i32, i32* %10, align 4
  %21 = load i32, i32* %11, align 4
  %22 = load i32, i32* %12, align 4
  %23 = call i32 %17(%struct.host1x_cdma* %18, i32 %19, i32 %20, i32 %21, i32 %22)
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
