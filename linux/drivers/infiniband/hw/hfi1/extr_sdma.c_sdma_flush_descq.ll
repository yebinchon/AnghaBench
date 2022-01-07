; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/hfi1/extr_sdma.c_sdma_flush_descq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/hfi1/extr_sdma.c_sdma_flush_descq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sdma_engine = type { i32, i32, i32, i32, i32** }
%struct.sdma_txreq = type { i32 }

@SDMA_TXREQ_S_ABORTED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sdma_engine*)* @sdma_flush_descq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sdma_flush_descq(%struct.sdma_engine* %0) #0 {
  %2 = alloca %struct.sdma_engine*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.sdma_txreq*, align 8
  store %struct.sdma_engine* %0, %struct.sdma_engine** %2, align 8
  store i32 0, i32* %5, align 4
  %7 = load %struct.sdma_engine*, %struct.sdma_engine** %2, align 8
  %8 = call %struct.sdma_txreq* @get_txhead(%struct.sdma_engine* %7)
  store %struct.sdma_txreq* %8, %struct.sdma_txreq** %6, align 8
  %9 = load %struct.sdma_engine*, %struct.sdma_engine** %2, align 8
  %10 = getelementptr inbounds %struct.sdma_engine, %struct.sdma_engine* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = load %struct.sdma_engine*, %struct.sdma_engine** %2, align 8
  %13 = getelementptr inbounds %struct.sdma_engine, %struct.sdma_engine* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 4
  %15 = and i32 %11, %14
  store i32 %15, i32* %3, align 4
  %16 = load %struct.sdma_engine*, %struct.sdma_engine** %2, align 8
  %17 = getelementptr inbounds %struct.sdma_engine, %struct.sdma_engine* %16, i32 0, i32 2
  %18 = load i32, i32* %17, align 8
  %19 = load %struct.sdma_engine*, %struct.sdma_engine** %2, align 8
  %20 = getelementptr inbounds %struct.sdma_engine, %struct.sdma_engine* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = and i32 %18, %21
  store i32 %22, i32* %4, align 4
  br label %23

23:                                               ; preds = %69, %1
  %24 = load i32, i32* %3, align 4
  %25 = load i32, i32* %4, align 4
  %26 = icmp ne i32 %24, %25
  br i1 %26, label %27, label %72

27:                                               ; preds = %23
  %28 = load %struct.sdma_engine*, %struct.sdma_engine** %2, align 8
  %29 = getelementptr inbounds %struct.sdma_engine, %struct.sdma_engine* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = add nsw i32 %30, 1
  store i32 %31, i32* %29, align 8
  %32 = load %struct.sdma_engine*, %struct.sdma_engine** %2, align 8
  %33 = getelementptr inbounds %struct.sdma_engine, %struct.sdma_engine* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = and i32 %31, %34
  store i32 %35, i32* %3, align 4
  %36 = load %struct.sdma_txreq*, %struct.sdma_txreq** %6, align 8
  %37 = icmp ne %struct.sdma_txreq* %36, null
  br i1 %37, label %38, label %69

38:                                               ; preds = %27
  %39 = load %struct.sdma_txreq*, %struct.sdma_txreq** %6, align 8
  %40 = getelementptr inbounds %struct.sdma_txreq, %struct.sdma_txreq* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = load i32, i32* %3, align 4
  %43 = icmp eq i32 %41, %42
  br i1 %43, label %44, label %69

44:                                               ; preds = %38
  %45 = load %struct.sdma_engine*, %struct.sdma_engine** %2, align 8
  %46 = getelementptr inbounds %struct.sdma_engine, %struct.sdma_engine* %45, i32 0, i32 4
  %47 = load i32**, i32*** %46, align 8
  %48 = load %struct.sdma_engine*, %struct.sdma_engine** %2, align 8
  %49 = getelementptr inbounds %struct.sdma_engine, %struct.sdma_engine* %48, i32 0, i32 3
  %50 = load i32, i32* %49, align 4
  %51 = add nsw i32 %50, 1
  store i32 %51, i32* %49, align 4
  %52 = load %struct.sdma_engine*, %struct.sdma_engine** %2, align 8
  %53 = getelementptr inbounds %struct.sdma_engine, %struct.sdma_engine* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 4
  %55 = and i32 %50, %54
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds i32*, i32** %47, i64 %56
  store i32* null, i32** %57, align 8
  %58 = load %struct.sdma_engine*, %struct.sdma_engine** %2, align 8
  %59 = load %struct.sdma_txreq*, %struct.sdma_txreq** %6, align 8
  %60 = load i32, i32* @SDMA_TXREQ_S_ABORTED, align 4
  %61 = call i32 @complete_tx(%struct.sdma_engine* %58, %struct.sdma_txreq* %59, i32 %60)
  %62 = load %struct.sdma_engine*, %struct.sdma_engine** %2, align 8
  %63 = load i32, i32* %3, align 4
  %64 = load i32, i32* %4, align 4
  %65 = load %struct.sdma_txreq*, %struct.sdma_txreq** %6, align 8
  %66 = call i32 @trace_hfi1_sdma_progress(%struct.sdma_engine* %62, i32 %63, i32 %64, %struct.sdma_txreq* %65)
  %67 = load %struct.sdma_engine*, %struct.sdma_engine** %2, align 8
  %68 = call %struct.sdma_txreq* @get_txhead(%struct.sdma_engine* %67)
  store %struct.sdma_txreq* %68, %struct.sdma_txreq** %6, align 8
  br label %69

69:                                               ; preds = %44, %38, %27
  %70 = load i32, i32* %5, align 4
  %71 = add nsw i32 %70, 1
  store i32 %71, i32* %5, align 4
  br label %23

72:                                               ; preds = %23
  %73 = load i32, i32* %5, align 4
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %80

75:                                               ; preds = %72
  %76 = load %struct.sdma_engine*, %struct.sdma_engine** %2, align 8
  %77 = load %struct.sdma_engine*, %struct.sdma_engine** %2, align 8
  %78 = call i32 @sdma_descq_freecnt(%struct.sdma_engine* %77)
  %79 = call i32 @sdma_desc_avail(%struct.sdma_engine* %76, i32 %78)
  br label %80

80:                                               ; preds = %75, %72
  ret void
}

declare dso_local %struct.sdma_txreq* @get_txhead(%struct.sdma_engine*) #1

declare dso_local i32 @complete_tx(%struct.sdma_engine*, %struct.sdma_txreq*, i32) #1

declare dso_local i32 @trace_hfi1_sdma_progress(%struct.sdma_engine*, i32, i32, %struct.sdma_txreq*) #1

declare dso_local i32 @sdma_desc_avail(%struct.sdma_engine*, i32) #1

declare dso_local i32 @sdma_descq_freecnt(%struct.sdma_engine*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
