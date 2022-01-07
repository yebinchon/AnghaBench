; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/hfi1/extr_sdma.c_sdma_make_progress.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/hfi1/extr_sdma.c_sdma_make_progress.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sdma_engine = type { i32, i32, i32, i32, i32, i32, i32** }
%struct.sdma_txreq = type { i32 }

@SDMA_TXREQ_S_OK = common dso_local global i32 0, align 4
@HEAD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sdma_engine*, i32)* @sdma_make_progress to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sdma_make_progress(%struct.sdma_engine* %0, i32 %1) #0 {
  %3 = alloca %struct.sdma_engine*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.sdma_txreq*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.sdma_engine* %0, %struct.sdma_engine** %3, align 8
  store i32 %1, i32* %4, align 4
  store %struct.sdma_txreq* null, %struct.sdma_txreq** %5, align 8
  store i32 0, i32* %6, align 4
  store i32 0, i32* %9, align 4
  %11 = load %struct.sdma_engine*, %struct.sdma_engine** %3, align 8
  %12 = call i32 @sdma_gethead(%struct.sdma_engine* %11)
  store i32 %12, i32* %7, align 4
  br label %13

13:                                               ; preds = %99, %2
  %14 = load %struct.sdma_engine*, %struct.sdma_engine** %3, align 8
  %15 = call %struct.sdma_txreq* @get_txhead(%struct.sdma_engine* %14)
  store %struct.sdma_txreq* %15, %struct.sdma_txreq** %5, align 8
  %16 = load %struct.sdma_engine*, %struct.sdma_engine** %3, align 8
  %17 = getelementptr inbounds %struct.sdma_engine, %struct.sdma_engine* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = load %struct.sdma_engine*, %struct.sdma_engine** %3, align 8
  %20 = getelementptr inbounds %struct.sdma_engine, %struct.sdma_engine* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = and i32 %18, %21
  store i32 %22, i32* %8, align 4
  %23 = load %struct.sdma_engine*, %struct.sdma_engine** %3, align 8
  %24 = load i32, i32* %7, align 4
  %25 = load i32, i32* %8, align 4
  %26 = load %struct.sdma_txreq*, %struct.sdma_txreq** %5, align 8
  %27 = call i32 @trace_hfi1_sdma_progress(%struct.sdma_engine* %23, i32 %24, i32 %25, %struct.sdma_txreq* %26)
  br label %28

28:                                               ; preds = %69, %13
  %29 = load i32, i32* %8, align 4
  %30 = load i32, i32* %7, align 4
  %31 = icmp ne i32 %29, %30
  br i1 %31, label %32, label %77

32:                                               ; preds = %28
  %33 = load %struct.sdma_engine*, %struct.sdma_engine** %3, align 8
  %34 = getelementptr inbounds %struct.sdma_engine, %struct.sdma_engine* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = add nsw i32 %35, 1
  store i32 %36, i32* %34, align 8
  %37 = load %struct.sdma_engine*, %struct.sdma_engine** %3, align 8
  %38 = getelementptr inbounds %struct.sdma_engine, %struct.sdma_engine* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = and i32 %36, %39
  store i32 %40, i32* %8, align 4
  %41 = load %struct.sdma_txreq*, %struct.sdma_txreq** %5, align 8
  %42 = icmp ne %struct.sdma_txreq* %41, null
  br i1 %42, label %43, label %69

43:                                               ; preds = %32
  %44 = load %struct.sdma_txreq*, %struct.sdma_txreq** %5, align 8
  %45 = getelementptr inbounds %struct.sdma_txreq, %struct.sdma_txreq* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = load i32, i32* %8, align 4
  %48 = icmp eq i32 %46, %47
  br i1 %48, label %49, label %69

49:                                               ; preds = %43
  %50 = load %struct.sdma_engine*, %struct.sdma_engine** %3, align 8
  %51 = getelementptr inbounds %struct.sdma_engine, %struct.sdma_engine* %50, i32 0, i32 6
  %52 = load i32**, i32*** %51, align 8
  %53 = load %struct.sdma_engine*, %struct.sdma_engine** %3, align 8
  %54 = getelementptr inbounds %struct.sdma_engine, %struct.sdma_engine* %53, i32 0, i32 5
  %55 = load i32, i32* %54, align 4
  %56 = add nsw i32 %55, 1
  store i32 %56, i32* %54, align 4
  %57 = load %struct.sdma_engine*, %struct.sdma_engine** %3, align 8
  %58 = getelementptr inbounds %struct.sdma_engine, %struct.sdma_engine* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 4
  %60 = and i32 %55, %59
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds i32*, i32** %52, i64 %61
  store i32* null, i32** %62, align 8
  %63 = load %struct.sdma_engine*, %struct.sdma_engine** %3, align 8
  %64 = load %struct.sdma_txreq*, %struct.sdma_txreq** %5, align 8
  %65 = load i32, i32* @SDMA_TXREQ_S_OK, align 4
  %66 = call i32 @complete_tx(%struct.sdma_engine* %63, %struct.sdma_txreq* %64, i32 %65)
  %67 = load %struct.sdma_engine*, %struct.sdma_engine** %3, align 8
  %68 = call %struct.sdma_txreq* @get_txhead(%struct.sdma_engine* %67)
  store %struct.sdma_txreq* %68, %struct.sdma_txreq** %5, align 8
  br label %69

69:                                               ; preds = %49, %43, %32
  %70 = load %struct.sdma_engine*, %struct.sdma_engine** %3, align 8
  %71 = load i32, i32* %7, align 4
  %72 = load i32, i32* %8, align 4
  %73 = load %struct.sdma_txreq*, %struct.sdma_txreq** %5, align 8
  %74 = call i32 @trace_hfi1_sdma_progress(%struct.sdma_engine* %70, i32 %71, i32 %72, %struct.sdma_txreq* %73)
  %75 = load i32, i32* %6, align 4
  %76 = add nsw i32 %75, 1
  store i32 %76, i32* %6, align 4
  br label %28

77:                                               ; preds = %28
  %78 = load i32, i32* %4, align 4
  %79 = load %struct.sdma_engine*, %struct.sdma_engine** %3, align 8
  %80 = getelementptr inbounds %struct.sdma_engine, %struct.sdma_engine* %79, i32 0, i32 2
  %81 = load i32, i32* %80, align 8
  %82 = and i32 %78, %81
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %106

84:                                               ; preds = %77
  %85 = load i32, i32* %9, align 4
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %106, label %87

87:                                               ; preds = %84
  %88 = load %struct.sdma_engine*, %struct.sdma_engine** %3, align 8
  %89 = getelementptr inbounds %struct.sdma_engine, %struct.sdma_engine* %88, i32 0, i32 4
  %90 = load i32, i32* %89, align 8
  %91 = call i32 @READ_ONCE(i32 %90)
  %92 = load %struct.sdma_engine*, %struct.sdma_engine** %3, align 8
  %93 = getelementptr inbounds %struct.sdma_engine, %struct.sdma_engine* %92, i32 0, i32 1
  %94 = load i32, i32* %93, align 4
  %95 = and i32 %91, %94
  store i32 %95, i32* %10, align 4
  %96 = load i32, i32* %10, align 4
  %97 = load i32, i32* %7, align 4
  %98 = icmp ne i32 %96, %97
  br i1 %98, label %99, label %105

99:                                               ; preds = %87
  %100 = load %struct.sdma_engine*, %struct.sdma_engine** %3, align 8
  %101 = load i32, i32* @HEAD, align 4
  %102 = call i32 @SD(i32 %101)
  %103 = call i64 @read_sde_csr(%struct.sdma_engine* %100, i32 %102)
  %104 = trunc i64 %103 to i32
  store i32 %104, i32* %7, align 4
  store i32 1, i32* %9, align 4
  br label %13

105:                                              ; preds = %87
  br label %106

106:                                              ; preds = %105, %84, %77
  %107 = load i32, i32* %4, align 4
  %108 = load %struct.sdma_engine*, %struct.sdma_engine** %3, align 8
  %109 = getelementptr inbounds %struct.sdma_engine, %struct.sdma_engine* %108, i32 0, i32 3
  store i32 %107, i32* %109, align 4
  %110 = load i32, i32* %6, align 4
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %112, label %117

112:                                              ; preds = %106
  %113 = load %struct.sdma_engine*, %struct.sdma_engine** %3, align 8
  %114 = load %struct.sdma_engine*, %struct.sdma_engine** %3, align 8
  %115 = call i32 @sdma_descq_freecnt(%struct.sdma_engine* %114)
  %116 = call i32 @sdma_desc_avail(%struct.sdma_engine* %113, i32 %115)
  br label %117

117:                                              ; preds = %112, %106
  ret void
}

declare dso_local i32 @sdma_gethead(%struct.sdma_engine*) #1

declare dso_local %struct.sdma_txreq* @get_txhead(%struct.sdma_engine*) #1

declare dso_local i32 @trace_hfi1_sdma_progress(%struct.sdma_engine*, i32, i32, %struct.sdma_txreq*) #1

declare dso_local i32 @complete_tx(%struct.sdma_engine*, %struct.sdma_txreq*, i32) #1

declare dso_local i32 @READ_ONCE(i32) #1

declare dso_local i64 @read_sde_csr(%struct.sdma_engine*, i32) #1

declare dso_local i32 @SD(i32) #1

declare dso_local i32 @sdma_desc_avail(%struct.sdma_engine*, i32) #1

declare dso_local i32 @sdma_descq_freecnt(%struct.sdma_engine*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
