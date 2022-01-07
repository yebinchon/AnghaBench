; ModuleID = '/home/carl/AnghaBench/linux/drivers/dma/extr_pl330.c_pl330_get_desc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/dma/extr_pl330.c_pl330_get_desc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dma_pl330_desc = type { %struct.TYPE_6__, %struct.TYPE_5__, i32, %struct.dma_pl330_chan* }
%struct.TYPE_6__ = type { i64 }
%struct.TYPE_5__ = type { i32* }
%struct.dma_pl330_chan = type { %struct.TYPE_7__, %struct.pl330_dmac* }
%struct.TYPE_7__ = type { i32, i32* }
%struct.pl330_dmac = type { i32, i32, i32 }

@lock = common dso_local global i32 0, align 4
@pool = common dso_local global i32 0, align 4
@GFP_ATOMIC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.dma_pl330_desc* (%struct.dma_pl330_chan*)* @pl330_get_desc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.dma_pl330_desc* @pl330_get_desc(%struct.dma_pl330_chan* %0) #0 {
  %2 = alloca %struct.dma_pl330_desc*, align 8
  %3 = alloca %struct.dma_pl330_chan*, align 8
  %4 = alloca %struct.pl330_dmac*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.dma_pl330_desc*, align 8
  store %struct.dma_pl330_chan* %0, %struct.dma_pl330_chan** %3, align 8
  %7 = load %struct.dma_pl330_chan*, %struct.dma_pl330_chan** %3, align 8
  %8 = getelementptr inbounds %struct.dma_pl330_chan, %struct.dma_pl330_chan* %7, i32 0, i32 1
  %9 = load %struct.pl330_dmac*, %struct.pl330_dmac** %8, align 8
  store %struct.pl330_dmac* %9, %struct.pl330_dmac** %4, align 8
  %10 = load %struct.dma_pl330_chan*, %struct.dma_pl330_chan** %3, align 8
  %11 = getelementptr inbounds %struct.dma_pl330_chan, %struct.dma_pl330_chan* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %11, i32 0, i32 1
  %13 = load i32*, i32** %12, align 8
  store i32* %13, i32** %5, align 8
  %14 = load %struct.pl330_dmac*, %struct.pl330_dmac** %4, align 8
  %15 = getelementptr inbounds %struct.pl330_dmac, %struct.pl330_dmac* %14, i32 0, i32 2
  %16 = load %struct.pl330_dmac*, %struct.pl330_dmac** %4, align 8
  %17 = getelementptr inbounds %struct.pl330_dmac, %struct.pl330_dmac* %16, i32 0, i32 1
  %18 = call %struct.dma_pl330_desc* @pluck_desc(i32* %15, i32* %17)
  store %struct.dma_pl330_desc* %18, %struct.dma_pl330_desc** %6, align 8
  %19 = load %struct.dma_pl330_desc*, %struct.dma_pl330_desc** %6, align 8
  %20 = icmp ne %struct.dma_pl330_desc* %19, null
  br i1 %20, label %42, label %21

21:                                               ; preds = %1
  %22 = load i32, i32* @lock, align 4
  %23 = call i32 @DEFINE_SPINLOCK(i32 %22)
  %24 = load i32, i32* @pool, align 4
  %25 = call i32 @LIST_HEAD(i32 %24)
  %26 = load i32, i32* @GFP_ATOMIC, align 4
  %27 = call i32 @add_desc(i32* @pool, i32* @lock, i32 %26, i32 1)
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %30, label %29

29:                                               ; preds = %21
  store %struct.dma_pl330_desc* null, %struct.dma_pl330_desc** %2, align 8
  br label %77

30:                                               ; preds = %21
  %31 = call %struct.dma_pl330_desc* @pluck_desc(i32* @pool, i32* @lock)
  store %struct.dma_pl330_desc* %31, %struct.dma_pl330_desc** %6, align 8
  %32 = load %struct.dma_pl330_desc*, %struct.dma_pl330_desc** %6, align 8
  %33 = icmp ne %struct.dma_pl330_desc* %32, null
  br i1 %33, label %34, label %38

34:                                               ; preds = %30
  %35 = call i32 @list_empty(i32* @pool)
  %36 = icmp ne i32 %35, 0
  %37 = xor i1 %36, true
  br label %38

38:                                               ; preds = %34, %30
  %39 = phi i1 [ true, %30 ], [ %37, %34 ]
  %40 = zext i1 %39 to i32
  %41 = call i32 @WARN_ON(i32 %40)
  br label %42

42:                                               ; preds = %38, %1
  %43 = load %struct.dma_pl330_chan*, %struct.dma_pl330_chan** %3, align 8
  %44 = load %struct.dma_pl330_desc*, %struct.dma_pl330_desc** %6, align 8
  %45 = getelementptr inbounds %struct.dma_pl330_desc, %struct.dma_pl330_desc* %44, i32 0, i32 3
  store %struct.dma_pl330_chan* %43, %struct.dma_pl330_chan** %45, align 8
  %46 = load %struct.dma_pl330_desc*, %struct.dma_pl330_desc** %6, align 8
  %47 = getelementptr inbounds %struct.dma_pl330_desc, %struct.dma_pl330_desc* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %47, i32 0, i32 0
  store i64 0, i64* %48, align 8
  %49 = load %struct.dma_pl330_desc*, %struct.dma_pl330_desc** %6, align 8
  %50 = getelementptr inbounds %struct.dma_pl330_desc, %struct.dma_pl330_desc* %49, i32 0, i32 0
  %51 = call i32 @async_tx_ack(%struct.TYPE_6__* %50)
  %52 = load i32*, i32** %5, align 8
  %53 = icmp ne i32* %52, null
  br i1 %53, label %54, label %59

54:                                               ; preds = %42
  %55 = load %struct.dma_pl330_chan*, %struct.dma_pl330_chan** %3, align 8
  %56 = getelementptr inbounds %struct.dma_pl330_chan, %struct.dma_pl330_chan* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  br label %60

59:                                               ; preds = %42
  br label %60

60:                                               ; preds = %59, %54
  %61 = phi i32 [ %58, %54 ], [ 0, %59 ]
  %62 = load %struct.dma_pl330_desc*, %struct.dma_pl330_desc** %6, align 8
  %63 = getelementptr inbounds %struct.dma_pl330_desc, %struct.dma_pl330_desc* %62, i32 0, i32 2
  store i32 %61, i32* %63, align 8
  %64 = load %struct.dma_pl330_chan*, %struct.dma_pl330_chan** %3, align 8
  %65 = getelementptr inbounds %struct.dma_pl330_chan, %struct.dma_pl330_chan* %64, i32 0, i32 1
  %66 = load %struct.pl330_dmac*, %struct.pl330_dmac** %65, align 8
  %67 = getelementptr inbounds %struct.pl330_dmac, %struct.pl330_dmac* %66, i32 0, i32 0
  %68 = load %struct.dma_pl330_desc*, %struct.dma_pl330_desc** %6, align 8
  %69 = getelementptr inbounds %struct.dma_pl330_desc, %struct.dma_pl330_desc* %68, i32 0, i32 1
  %70 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %69, i32 0, i32 0
  store i32* %67, i32** %70, align 8
  %71 = load %struct.dma_pl330_desc*, %struct.dma_pl330_desc** %6, align 8
  %72 = getelementptr inbounds %struct.dma_pl330_desc, %struct.dma_pl330_desc* %71, i32 0, i32 0
  %73 = load %struct.dma_pl330_chan*, %struct.dma_pl330_chan** %3, align 8
  %74 = getelementptr inbounds %struct.dma_pl330_chan, %struct.dma_pl330_chan* %73, i32 0, i32 0
  %75 = call i32 @dma_async_tx_descriptor_init(%struct.TYPE_6__* %72, %struct.TYPE_7__* %74)
  %76 = load %struct.dma_pl330_desc*, %struct.dma_pl330_desc** %6, align 8
  store %struct.dma_pl330_desc* %76, %struct.dma_pl330_desc** %2, align 8
  br label %77

77:                                               ; preds = %60, %29
  %78 = load %struct.dma_pl330_desc*, %struct.dma_pl330_desc** %2, align 8
  ret %struct.dma_pl330_desc* %78
}

declare dso_local %struct.dma_pl330_desc* @pluck_desc(i32*, i32*) #1

declare dso_local i32 @DEFINE_SPINLOCK(i32) #1

declare dso_local i32 @LIST_HEAD(i32) #1

declare dso_local i32 @add_desc(i32*, i32*, i32, i32) #1

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @list_empty(i32*) #1

declare dso_local i32 @async_tx_ack(%struct.TYPE_6__*) #1

declare dso_local i32 @dma_async_tx_descriptor_init(%struct.TYPE_6__*, %struct.TYPE_7__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
