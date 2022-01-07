; ModuleID = '/home/carl/AnghaBench/linux/drivers/dma/extr_sun6i-dma.c_sun6i_dma_dump_lli.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/dma/extr_sun6i-dma.c_sun6i_dma_dump_lli.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sun6i_vchan = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.sun6i_dma_lli = type { i32, i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [98 x i8] c"\0A\09desc:   p - %pa v - 0x%p\0A\09\09c - 0x%08x s - 0x%08x d - 0x%08x\0A\09\09l - 0x%08x p - 0x%08x n - 0x%08x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sun6i_vchan*, %struct.sun6i_dma_lli*)* @sun6i_dma_dump_lli to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sun6i_dma_dump_lli(%struct.sun6i_vchan* %0, %struct.sun6i_dma_lli* %1) #0 {
  %3 = alloca %struct.sun6i_vchan*, align 8
  %4 = alloca %struct.sun6i_dma_lli*, align 8
  %5 = alloca i32, align 4
  store %struct.sun6i_vchan* %0, %struct.sun6i_vchan** %3, align 8
  store %struct.sun6i_dma_lli* %1, %struct.sun6i_dma_lli** %4, align 8
  %6 = load %struct.sun6i_dma_lli*, %struct.sun6i_dma_lli** %4, align 8
  %7 = call i32 @virt_to_phys(%struct.sun6i_dma_lli* %6)
  store i32 %7, i32* %5, align 4
  %8 = load %struct.sun6i_vchan*, %struct.sun6i_vchan** %3, align 8
  %9 = getelementptr inbounds %struct.sun6i_vchan, %struct.sun6i_vchan* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  %11 = call i32 @chan2dev(i32* %10)
  %12 = load %struct.sun6i_dma_lli*, %struct.sun6i_dma_lli** %4, align 8
  %13 = load %struct.sun6i_dma_lli*, %struct.sun6i_dma_lli** %4, align 8
  %14 = getelementptr inbounds %struct.sun6i_dma_lli, %struct.sun6i_dma_lli* %13, i32 0, i32 5
  %15 = load i32, i32* %14, align 4
  %16 = load %struct.sun6i_dma_lli*, %struct.sun6i_dma_lli** %4, align 8
  %17 = getelementptr inbounds %struct.sun6i_dma_lli, %struct.sun6i_dma_lli* %16, i32 0, i32 4
  %18 = load i32, i32* %17, align 4
  %19 = load %struct.sun6i_dma_lli*, %struct.sun6i_dma_lli** %4, align 8
  %20 = getelementptr inbounds %struct.sun6i_dma_lli, %struct.sun6i_dma_lli* %19, i32 0, i32 3
  %21 = load i32, i32* %20, align 4
  %22 = load %struct.sun6i_dma_lli*, %struct.sun6i_dma_lli** %4, align 8
  %23 = getelementptr inbounds %struct.sun6i_dma_lli, %struct.sun6i_dma_lli* %22, i32 0, i32 2
  %24 = load i32, i32* %23, align 4
  %25 = load %struct.sun6i_dma_lli*, %struct.sun6i_dma_lli** %4, align 8
  %26 = getelementptr inbounds %struct.sun6i_dma_lli, %struct.sun6i_dma_lli* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.sun6i_dma_lli*, %struct.sun6i_dma_lli** %4, align 8
  %29 = getelementptr inbounds %struct.sun6i_dma_lli, %struct.sun6i_dma_lli* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @dev_dbg(i32 %11, i8* getelementptr inbounds ([98 x i8], [98 x i8]* @.str, i64 0, i64 0), i32* %5, %struct.sun6i_dma_lli* %12, i32 %15, i32 %18, i32 %21, i32 %24, i32 %27, i32 %30)
  ret void
}

declare dso_local i32 @virt_to_phys(%struct.sun6i_dma_lli*) #1

declare dso_local i32 @dev_dbg(i32, i8*, i32*, %struct.sun6i_dma_lli*, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @chan2dev(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
