; ModuleID = '/home/carl/AnghaBench/linux/drivers/dma/dw-edma/extr_dw-edma-core.c_dw_edma_alloc_chunk.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/dma/dw-edma/extr_dw-edma-core.c_dw_edma_alloc_chunk.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dw_edma_chunk = type { i32, i32*, i32, %struct.TYPE_5__, %struct.dw_edma_chan* }
%struct.TYPE_5__ = type { i64, i64 }
%struct.dw_edma_chan = type { i64, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.dw_edma* }
%struct.dw_edma = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i64, i64 }
%struct.dw_edma_desc = type { i32, %struct.dw_edma_chunk*, %struct.dw_edma_chan* }

@GFP_NOWAIT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.dw_edma_chunk* (%struct.dw_edma_desc*)* @dw_edma_alloc_chunk to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.dw_edma_chunk* @dw_edma_alloc_chunk(%struct.dw_edma_desc* %0) #0 {
  %2 = alloca %struct.dw_edma_chunk*, align 8
  %3 = alloca %struct.dw_edma_desc*, align 8
  %4 = alloca %struct.dw_edma_chan*, align 8
  %5 = alloca %struct.dw_edma*, align 8
  %6 = alloca %struct.dw_edma_chunk*, align 8
  store %struct.dw_edma_desc* %0, %struct.dw_edma_desc** %3, align 8
  %7 = load %struct.dw_edma_desc*, %struct.dw_edma_desc** %3, align 8
  %8 = getelementptr inbounds %struct.dw_edma_desc, %struct.dw_edma_desc* %7, i32 0, i32 2
  %9 = load %struct.dw_edma_chan*, %struct.dw_edma_chan** %8, align 8
  store %struct.dw_edma_chan* %9, %struct.dw_edma_chan** %4, align 8
  %10 = load %struct.dw_edma_chan*, %struct.dw_edma_chan** %4, align 8
  %11 = getelementptr inbounds %struct.dw_edma_chan, %struct.dw_edma_chan* %10, i32 0, i32 1
  %12 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 0
  %14 = load %struct.dw_edma*, %struct.dw_edma** %13, align 8
  store %struct.dw_edma* %14, %struct.dw_edma** %5, align 8
  %15 = load i32, i32* @GFP_NOWAIT, align 4
  %16 = call %struct.dw_edma_chunk* @kzalloc(i32 48, i32 %15)
  store %struct.dw_edma_chunk* %16, %struct.dw_edma_chunk** %6, align 8
  %17 = load %struct.dw_edma_chunk*, %struct.dw_edma_chunk** %6, align 8
  %18 = icmp ne %struct.dw_edma_chunk* %17, null
  %19 = xor i1 %18, true
  %20 = zext i1 %19 to i32
  %21 = call i64 @unlikely(i32 %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %1
  store %struct.dw_edma_chunk* null, %struct.dw_edma_chunk** %2, align 8
  br label %95

24:                                               ; preds = %1
  %25 = load %struct.dw_edma_chunk*, %struct.dw_edma_chunk** %6, align 8
  %26 = getelementptr inbounds %struct.dw_edma_chunk, %struct.dw_edma_chunk* %25, i32 0, i32 2
  %27 = call i32 @INIT_LIST_HEAD(i32* %26)
  %28 = load %struct.dw_edma_chan*, %struct.dw_edma_chan** %4, align 8
  %29 = load %struct.dw_edma_chunk*, %struct.dw_edma_chunk** %6, align 8
  %30 = getelementptr inbounds %struct.dw_edma_chunk, %struct.dw_edma_chunk* %29, i32 0, i32 4
  store %struct.dw_edma_chan* %28, %struct.dw_edma_chan** %30, align 8
  %31 = load %struct.dw_edma_desc*, %struct.dw_edma_desc** %3, align 8
  %32 = getelementptr inbounds %struct.dw_edma_desc, %struct.dw_edma_desc* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = srem i32 %33, 2
  %35 = icmp ne i32 %34, 0
  %36 = xor i1 %35, true
  %37 = zext i1 %36 to i32
  %38 = load %struct.dw_edma_chunk*, %struct.dw_edma_chunk** %6, align 8
  %39 = getelementptr inbounds %struct.dw_edma_chunk, %struct.dw_edma_chunk* %38, i32 0, i32 0
  store i32 %37, i32* %39, align 8
  %40 = load %struct.dw_edma*, %struct.dw_edma** %5, align 8
  %41 = getelementptr inbounds %struct.dw_edma, %struct.dw_edma* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %41, i32 0, i32 1
  %43 = load i64, i64* %42, align 8
  %44 = load %struct.dw_edma_chan*, %struct.dw_edma_chan** %4, align 8
  %45 = getelementptr inbounds %struct.dw_edma_chan, %struct.dw_edma_chan* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = add nsw i64 %43, %46
  %48 = load %struct.dw_edma_chunk*, %struct.dw_edma_chunk** %6, align 8
  %49 = getelementptr inbounds %struct.dw_edma_chunk, %struct.dw_edma_chunk* %48, i32 0, i32 3
  %50 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %49, i32 0, i32 1
  store i64 %47, i64* %50, align 8
  %51 = load %struct.dw_edma*, %struct.dw_edma** %5, align 8
  %52 = getelementptr inbounds %struct.dw_edma, %struct.dw_edma* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = load %struct.dw_edma_chan*, %struct.dw_edma_chan** %4, align 8
  %56 = getelementptr inbounds %struct.dw_edma_chan, %struct.dw_edma_chan* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = add nsw i64 %54, %57
  %59 = load %struct.dw_edma_chunk*, %struct.dw_edma_chunk** %6, align 8
  %60 = getelementptr inbounds %struct.dw_edma_chunk, %struct.dw_edma_chunk* %59, i32 0, i32 3
  %61 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %60, i32 0, i32 0
  store i64 %58, i64* %61, align 8
  %62 = load %struct.dw_edma_desc*, %struct.dw_edma_desc** %3, align 8
  %63 = getelementptr inbounds %struct.dw_edma_desc, %struct.dw_edma_desc* %62, i32 0, i32 1
  %64 = load %struct.dw_edma_chunk*, %struct.dw_edma_chunk** %63, align 8
  %65 = icmp ne %struct.dw_edma_chunk* %64, null
  br i1 %65, label %66, label %85

66:                                               ; preds = %24
  %67 = load %struct.dw_edma_desc*, %struct.dw_edma_desc** %3, align 8
  %68 = getelementptr inbounds %struct.dw_edma_desc, %struct.dw_edma_desc* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 8
  %70 = add nsw i32 %69, 1
  store i32 %70, i32* %68, align 8
  %71 = load %struct.dw_edma_chunk*, %struct.dw_edma_chunk** %6, align 8
  %72 = getelementptr inbounds %struct.dw_edma_chunk, %struct.dw_edma_chunk* %71, i32 0, i32 2
  %73 = load %struct.dw_edma_desc*, %struct.dw_edma_desc** %3, align 8
  %74 = getelementptr inbounds %struct.dw_edma_desc, %struct.dw_edma_desc* %73, i32 0, i32 1
  %75 = load %struct.dw_edma_chunk*, %struct.dw_edma_chunk** %74, align 8
  %76 = getelementptr inbounds %struct.dw_edma_chunk, %struct.dw_edma_chunk* %75, i32 0, i32 2
  %77 = call i32 @list_add_tail(i32* %72, i32* %76)
  %78 = load %struct.dw_edma_chunk*, %struct.dw_edma_chunk** %6, align 8
  %79 = call i32 @dw_edma_alloc_burst(%struct.dw_edma_chunk* %78)
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %84, label %81

81:                                               ; preds = %66
  %82 = load %struct.dw_edma_chunk*, %struct.dw_edma_chunk** %6, align 8
  %83 = call i32 @kfree(%struct.dw_edma_chunk* %82)
  store %struct.dw_edma_chunk* null, %struct.dw_edma_chunk** %2, align 8
  br label %95

84:                                               ; preds = %66
  br label %93

85:                                               ; preds = %24
  %86 = load %struct.dw_edma_chunk*, %struct.dw_edma_chunk** %6, align 8
  %87 = getelementptr inbounds %struct.dw_edma_chunk, %struct.dw_edma_chunk* %86, i32 0, i32 1
  store i32* null, i32** %87, align 8
  %88 = load %struct.dw_edma_desc*, %struct.dw_edma_desc** %3, align 8
  %89 = getelementptr inbounds %struct.dw_edma_desc, %struct.dw_edma_desc* %88, i32 0, i32 0
  store i32 0, i32* %89, align 8
  %90 = load %struct.dw_edma_chunk*, %struct.dw_edma_chunk** %6, align 8
  %91 = load %struct.dw_edma_desc*, %struct.dw_edma_desc** %3, align 8
  %92 = getelementptr inbounds %struct.dw_edma_desc, %struct.dw_edma_desc* %91, i32 0, i32 1
  store %struct.dw_edma_chunk* %90, %struct.dw_edma_chunk** %92, align 8
  br label %93

93:                                               ; preds = %85, %84
  %94 = load %struct.dw_edma_chunk*, %struct.dw_edma_chunk** %6, align 8
  store %struct.dw_edma_chunk* %94, %struct.dw_edma_chunk** %2, align 8
  br label %95

95:                                               ; preds = %93, %81, %23
  %96 = load %struct.dw_edma_chunk*, %struct.dw_edma_chunk** %2, align 8
  ret %struct.dw_edma_chunk* %96
}

declare dso_local %struct.dw_edma_chunk* @kzalloc(i32, i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i32 @dw_edma_alloc_burst(%struct.dw_edma_chunk*) #1

declare dso_local i32 @kfree(%struct.dw_edma_chunk*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
