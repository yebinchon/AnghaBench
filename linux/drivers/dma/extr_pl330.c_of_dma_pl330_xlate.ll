; ModuleID = '/home/carl/AnghaBench/linux/drivers/dma/extr_pl330.c_of_dma_pl330_xlate.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/dma/extr_pl330.c_of_dma_pl330_xlate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dma_chan = type { i32 }
%struct.of_phandle_args = type { i32, i32* }
%struct.of_dma = type { %struct.pl330_dmac* }
%struct.pl330_dmac = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.dma_chan* (%struct.of_phandle_args*, %struct.of_dma*)* @of_dma_pl330_xlate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.dma_chan* @of_dma_pl330_xlate(%struct.of_phandle_args* %0, %struct.of_dma* %1) #0 {
  %3 = alloca %struct.dma_chan*, align 8
  %4 = alloca %struct.of_phandle_args*, align 8
  %5 = alloca %struct.of_dma*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.pl330_dmac*, align 8
  %8 = alloca i32, align 4
  store %struct.of_phandle_args* %0, %struct.of_phandle_args** %4, align 8
  store %struct.of_dma* %1, %struct.of_dma** %5, align 8
  %9 = load %struct.of_phandle_args*, %struct.of_phandle_args** %4, align 8
  %10 = getelementptr inbounds %struct.of_phandle_args, %struct.of_phandle_args* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  store i32 %11, i32* %6, align 4
  %12 = load %struct.of_dma*, %struct.of_dma** %5, align 8
  %13 = getelementptr inbounds %struct.of_dma, %struct.of_dma* %12, i32 0, i32 0
  %14 = load %struct.pl330_dmac*, %struct.pl330_dmac** %13, align 8
  store %struct.pl330_dmac* %14, %struct.pl330_dmac** %7, align 8
  %15 = load %struct.pl330_dmac*, %struct.pl330_dmac** %7, align 8
  %16 = icmp ne %struct.pl330_dmac* %15, null
  br i1 %16, label %18, label %17

17:                                               ; preds = %2
  store %struct.dma_chan* null, %struct.dma_chan** %3, align 8
  br label %43

18:                                               ; preds = %2
  %19 = load i32, i32* %6, align 4
  %20 = icmp ne i32 %19, 1
  br i1 %20, label %21, label %22

21:                                               ; preds = %18
  store %struct.dma_chan* null, %struct.dma_chan** %3, align 8
  br label %43

22:                                               ; preds = %18
  %23 = load %struct.of_phandle_args*, %struct.of_phandle_args** %4, align 8
  %24 = getelementptr inbounds %struct.of_phandle_args, %struct.of_phandle_args* %23, i32 0, i32 1
  %25 = load i32*, i32** %24, align 8
  %26 = getelementptr inbounds i32, i32* %25, i64 0
  %27 = load i32, i32* %26, align 4
  store i32 %27, i32* %8, align 4
  %28 = load i32, i32* %8, align 4
  %29 = load %struct.pl330_dmac*, %struct.pl330_dmac** %7, align 8
  %30 = getelementptr inbounds %struct.pl330_dmac, %struct.pl330_dmac* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = icmp uge i32 %28, %31
  br i1 %32, label %33, label %34

33:                                               ; preds = %22
  store %struct.dma_chan* null, %struct.dma_chan** %3, align 8
  br label %43

34:                                               ; preds = %22
  %35 = load %struct.pl330_dmac*, %struct.pl330_dmac** %7, align 8
  %36 = getelementptr inbounds %struct.pl330_dmac, %struct.pl330_dmac* %35, i32 0, i32 1
  %37 = load %struct.TYPE_2__*, %struct.TYPE_2__** %36, align 8
  %38 = load i32, i32* %8, align 4
  %39 = zext i32 %38 to i64
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i64 %39
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 0
  %42 = call %struct.dma_chan* @dma_get_slave_channel(i32* %41)
  store %struct.dma_chan* %42, %struct.dma_chan** %3, align 8
  br label %43

43:                                               ; preds = %34, %33, %21, %17
  %44 = load %struct.dma_chan*, %struct.dma_chan** %3, align 8
  ret %struct.dma_chan* %44
}

declare dso_local %struct.dma_chan* @dma_get_slave_channel(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
