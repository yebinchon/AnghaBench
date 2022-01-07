; ModuleID = '/home/carl/AnghaBench/linux/drivers/dma/sh/extr_rcar-dmac.c_rcar_dmac_realloc_hwdesc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/dma/sh/extr_rcar-dmac.c_rcar_dmac_realloc_hwdesc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rcar_dmac_chan = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }
%struct.rcar_dmac_desc = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i64, i32*, i32 }

@GFP_NOWAIT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rcar_dmac_chan*, %struct.rcar_dmac_desc*, i64)* @rcar_dmac_realloc_hwdesc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rcar_dmac_realloc_hwdesc(%struct.rcar_dmac_chan* %0, %struct.rcar_dmac_desc* %1, i64 %2) #0 {
  %4 = alloca %struct.rcar_dmac_chan*, align 8
  %5 = alloca %struct.rcar_dmac_desc*, align 8
  %6 = alloca i64, align 8
  store %struct.rcar_dmac_chan* %0, %struct.rcar_dmac_chan** %4, align 8
  store %struct.rcar_dmac_desc* %1, %struct.rcar_dmac_desc** %5, align 8
  store i64 %2, i64* %6, align 8
  %7 = load i64, i64* %6, align 8
  %8 = call i64 @PAGE_ALIGN(i64 %7)
  store i64 %8, i64* %6, align 8
  %9 = load %struct.rcar_dmac_desc*, %struct.rcar_dmac_desc** %5, align 8
  %10 = getelementptr inbounds %struct.rcar_dmac_desc, %struct.rcar_dmac_desc* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = load i64, i64* %6, align 8
  %14 = icmp eq i64 %12, %13
  br i1 %14, label %15, label %16

15:                                               ; preds = %3
  br label %79

16:                                               ; preds = %3
  %17 = load %struct.rcar_dmac_desc*, %struct.rcar_dmac_desc** %5, align 8
  %18 = getelementptr inbounds %struct.rcar_dmac_desc, %struct.rcar_dmac_desc* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %18, i32 0, i32 1
  %20 = load i32*, i32** %19, align 8
  %21 = icmp ne i32* %20, null
  br i1 %21, label %22, label %48

22:                                               ; preds = %16
  %23 = load %struct.rcar_dmac_chan*, %struct.rcar_dmac_chan** %4, align 8
  %24 = getelementptr inbounds %struct.rcar_dmac_chan, %struct.rcar_dmac_chan* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %24, i32 0, i32 0
  %26 = load %struct.TYPE_4__*, %struct.TYPE_4__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.rcar_dmac_desc*, %struct.rcar_dmac_desc** %5, align 8
  %30 = getelementptr inbounds %struct.rcar_dmac_desc, %struct.rcar_dmac_desc* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = load %struct.rcar_dmac_desc*, %struct.rcar_dmac_desc** %5, align 8
  %34 = getelementptr inbounds %struct.rcar_dmac_desc, %struct.rcar_dmac_desc* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %34, i32 0, i32 1
  %36 = load i32*, i32** %35, align 8
  %37 = load %struct.rcar_dmac_desc*, %struct.rcar_dmac_desc** %5, align 8
  %38 = getelementptr inbounds %struct.rcar_dmac_desc, %struct.rcar_dmac_desc* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %38, i32 0, i32 2
  %40 = load i32, i32* %39, align 8
  %41 = call i32 @dma_free_coherent(i32 %28, i64 %32, i32* %36, i32 %40)
  %42 = load %struct.rcar_dmac_desc*, %struct.rcar_dmac_desc** %5, align 8
  %43 = getelementptr inbounds %struct.rcar_dmac_desc, %struct.rcar_dmac_desc* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %43, i32 0, i32 1
  store i32* null, i32** %44, align 8
  %45 = load %struct.rcar_dmac_desc*, %struct.rcar_dmac_desc** %5, align 8
  %46 = getelementptr inbounds %struct.rcar_dmac_desc, %struct.rcar_dmac_desc* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %46, i32 0, i32 0
  store i64 0, i64* %47, align 8
  br label %48

48:                                               ; preds = %22, %16
  %49 = load i64, i64* %6, align 8
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %52, label %51

51:                                               ; preds = %48
  br label %79

52:                                               ; preds = %48
  %53 = load %struct.rcar_dmac_chan*, %struct.rcar_dmac_chan** %4, align 8
  %54 = getelementptr inbounds %struct.rcar_dmac_chan, %struct.rcar_dmac_chan* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %54, i32 0, i32 0
  %56 = load %struct.TYPE_4__*, %struct.TYPE_4__** %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = load i64, i64* %6, align 8
  %60 = load %struct.rcar_dmac_desc*, %struct.rcar_dmac_desc** %5, align 8
  %61 = getelementptr inbounds %struct.rcar_dmac_desc, %struct.rcar_dmac_desc* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %61, i32 0, i32 2
  %63 = load i32, i32* @GFP_NOWAIT, align 4
  %64 = call i32* @dma_alloc_coherent(i32 %58, i64 %59, i32* %62, i32 %63)
  %65 = load %struct.rcar_dmac_desc*, %struct.rcar_dmac_desc** %5, align 8
  %66 = getelementptr inbounds %struct.rcar_dmac_desc, %struct.rcar_dmac_desc* %65, i32 0, i32 0
  %67 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %66, i32 0, i32 1
  store i32* %64, i32** %67, align 8
  %68 = load %struct.rcar_dmac_desc*, %struct.rcar_dmac_desc** %5, align 8
  %69 = getelementptr inbounds %struct.rcar_dmac_desc, %struct.rcar_dmac_desc* %68, i32 0, i32 0
  %70 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %69, i32 0, i32 1
  %71 = load i32*, i32** %70, align 8
  %72 = icmp ne i32* %71, null
  br i1 %72, label %74, label %73

73:                                               ; preds = %52
  br label %79

74:                                               ; preds = %52
  %75 = load i64, i64* %6, align 8
  %76 = load %struct.rcar_dmac_desc*, %struct.rcar_dmac_desc** %5, align 8
  %77 = getelementptr inbounds %struct.rcar_dmac_desc, %struct.rcar_dmac_desc* %76, i32 0, i32 0
  %78 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %77, i32 0, i32 0
  store i64 %75, i64* %78, align 8
  br label %79

79:                                               ; preds = %74, %73, %51, %15
  ret void
}

declare dso_local i64 @PAGE_ALIGN(i64) #1

declare dso_local i32 @dma_free_coherent(i32, i64, i32*, i32) #1

declare dso_local i32* @dma_alloc_coherent(i32, i64, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
