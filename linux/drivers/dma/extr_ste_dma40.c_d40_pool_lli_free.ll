; ModuleID = '/home/carl/AnghaBench/linux/drivers/dma/extr_ste_dma40.c_d40_pool_lli_free.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/dma/extr_ste_dma40.c_d40_pool_lli_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.d40_chan = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32 }
%struct.d40_desc = type { %struct.TYPE_7__, %struct.TYPE_6__, %struct.TYPE_8__ }
%struct.TYPE_7__ = type { i32*, i32* }
%struct.TYPE_6__ = type { i32*, i32* }
%struct.TYPE_8__ = type { i64, i32*, i64 }

@DMA_TO_DEVICE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.d40_chan*, %struct.d40_desc*)* @d40_pool_lli_free to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @d40_pool_lli_free(%struct.d40_chan* %0, %struct.d40_desc* %1) #0 {
  %3 = alloca %struct.d40_chan*, align 8
  %4 = alloca %struct.d40_desc*, align 8
  store %struct.d40_chan* %0, %struct.d40_chan** %3, align 8
  store %struct.d40_desc* %1, %struct.d40_desc** %4, align 8
  %5 = load %struct.d40_desc*, %struct.d40_desc** %4, align 8
  %6 = getelementptr inbounds %struct.d40_desc, %struct.d40_desc* %5, i32 0, i32 2
  %7 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %6, i32 0, i32 2
  %8 = load i64, i64* %7, align 8
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %26

10:                                               ; preds = %2
  %11 = load %struct.d40_chan*, %struct.d40_chan** %3, align 8
  %12 = getelementptr inbounds %struct.d40_chan, %struct.d40_chan* %11, i32 0, i32 0
  %13 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = load %struct.d40_desc*, %struct.d40_desc** %4, align 8
  %17 = getelementptr inbounds %struct.d40_desc, %struct.d40_desc* %16, i32 0, i32 2
  %18 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %17, i32 0, i32 2
  %19 = load i64, i64* %18, align 8
  %20 = load %struct.d40_desc*, %struct.d40_desc** %4, align 8
  %21 = getelementptr inbounds %struct.d40_desc, %struct.d40_desc* %20, i32 0, i32 2
  %22 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load i32, i32* @DMA_TO_DEVICE, align 4
  %25 = call i32 @dma_unmap_single(i32 %15, i64 %19, i64 %23, i32 %24)
  br label %26

26:                                               ; preds = %10, %2
  %27 = load %struct.d40_desc*, %struct.d40_desc** %4, align 8
  %28 = getelementptr inbounds %struct.d40_desc, %struct.d40_desc* %27, i32 0, i32 2
  %29 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %28, i32 0, i32 1
  %30 = load i32*, i32** %29, align 8
  %31 = call i32 @kfree(i32* %30)
  %32 = load %struct.d40_desc*, %struct.d40_desc** %4, align 8
  %33 = getelementptr inbounds %struct.d40_desc, %struct.d40_desc* %32, i32 0, i32 2
  %34 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %33, i32 0, i32 1
  store i32* null, i32** %34, align 8
  %35 = load %struct.d40_desc*, %struct.d40_desc** %4, align 8
  %36 = getelementptr inbounds %struct.d40_desc, %struct.d40_desc* %35, i32 0, i32 2
  %37 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %36, i32 0, i32 0
  store i64 0, i64* %37, align 8
  %38 = load %struct.d40_desc*, %struct.d40_desc** %4, align 8
  %39 = getelementptr inbounds %struct.d40_desc, %struct.d40_desc* %38, i32 0, i32 1
  %40 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %39, i32 0, i32 1
  store i32* null, i32** %40, align 8
  %41 = load %struct.d40_desc*, %struct.d40_desc** %4, align 8
  %42 = getelementptr inbounds %struct.d40_desc, %struct.d40_desc* %41, i32 0, i32 1
  %43 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %42, i32 0, i32 0
  store i32* null, i32** %43, align 8
  %44 = load %struct.d40_desc*, %struct.d40_desc** %4, align 8
  %45 = getelementptr inbounds %struct.d40_desc, %struct.d40_desc* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %45, i32 0, i32 1
  store i32* null, i32** %46, align 8
  %47 = load %struct.d40_desc*, %struct.d40_desc** %4, align 8
  %48 = getelementptr inbounds %struct.d40_desc, %struct.d40_desc* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %48, i32 0, i32 0
  store i32* null, i32** %49, align 8
  ret void
}

declare dso_local i32 @dma_unmap_single(i32, i64, i64, i32) #1

declare dso_local i32 @kfree(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
