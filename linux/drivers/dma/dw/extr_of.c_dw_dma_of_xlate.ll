; ModuleID = '/home/carl/AnghaBench/linux/drivers/dma/dw/extr_of.c_dw_dma_of_xlate.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/dma/dw/extr_of.c_dw_dma_of_xlate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dma_chan = type { i32 }
%struct.of_phandle_args = type { i32, i64* }
%struct.of_dma = type { %struct.dw_dma* }
%struct.dw_dma = type { %struct.TYPE_4__*, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i64 }
%struct.TYPE_3__ = type { i32 }
%struct.dw_dma_slave = type { i64, i64, i64, i64, i32 }

@DW_DMA_MAX_NR_REQUESTS = common dso_local global i64 0, align 8
@DMA_SLAVE = common dso_local global i32 0, align 4
@dw_dma_filter = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.dma_chan* (%struct.of_phandle_args*, %struct.of_dma*)* @dw_dma_of_xlate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.dma_chan* @dw_dma_of_xlate(%struct.of_phandle_args* %0, %struct.of_dma* %1) #0 {
  %3 = alloca %struct.dma_chan*, align 8
  %4 = alloca %struct.of_phandle_args*, align 8
  %5 = alloca %struct.of_dma*, align 8
  %6 = alloca %struct.dw_dma*, align 8
  %7 = alloca %struct.dw_dma_slave, align 8
  %8 = alloca i32, align 4
  store %struct.of_phandle_args* %0, %struct.of_phandle_args** %4, align 8
  store %struct.of_dma* %1, %struct.of_dma** %5, align 8
  %9 = load %struct.of_dma*, %struct.of_dma** %5, align 8
  %10 = getelementptr inbounds %struct.of_dma, %struct.of_dma* %9, i32 0, i32 0
  %11 = load %struct.dw_dma*, %struct.dw_dma** %10, align 8
  store %struct.dw_dma* %11, %struct.dw_dma** %6, align 8
  %12 = bitcast %struct.dw_dma_slave* %7 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %12, i8 0, i64 40, i1 false)
  %13 = getelementptr inbounds %struct.dw_dma_slave, %struct.dw_dma_slave* %7, i32 0, i32 4
  %14 = load %struct.dw_dma*, %struct.dw_dma** %6, align 8
  %15 = getelementptr inbounds %struct.dw_dma, %struct.dw_dma* %14, i32 0, i32 1
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  store i32 %17, i32* %13, align 8
  %18 = load %struct.of_phandle_args*, %struct.of_phandle_args** %4, align 8
  %19 = getelementptr inbounds %struct.of_phandle_args, %struct.of_phandle_args* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = icmp ne i32 %20, 3
  br i1 %21, label %22, label %23

22:                                               ; preds = %2
  store %struct.dma_chan* null, %struct.dma_chan** %3, align 8
  br label %90

23:                                               ; preds = %2
  %24 = load %struct.of_phandle_args*, %struct.of_phandle_args** %4, align 8
  %25 = getelementptr inbounds %struct.of_phandle_args, %struct.of_phandle_args* %24, i32 0, i32 1
  %26 = load i64*, i64** %25, align 8
  %27 = getelementptr inbounds i64, i64* %26, i64 0
  %28 = load i64, i64* %27, align 8
  %29 = getelementptr inbounds %struct.dw_dma_slave, %struct.dw_dma_slave* %7, i32 0, i32 0
  store i64 %28, i64* %29, align 8
  %30 = load %struct.of_phandle_args*, %struct.of_phandle_args** %4, align 8
  %31 = getelementptr inbounds %struct.of_phandle_args, %struct.of_phandle_args* %30, i32 0, i32 1
  %32 = load i64*, i64** %31, align 8
  %33 = getelementptr inbounds i64, i64* %32, i64 0
  %34 = load i64, i64* %33, align 8
  %35 = getelementptr inbounds %struct.dw_dma_slave, %struct.dw_dma_slave* %7, i32 0, i32 1
  store i64 %34, i64* %35, align 8
  %36 = load %struct.of_phandle_args*, %struct.of_phandle_args** %4, align 8
  %37 = getelementptr inbounds %struct.of_phandle_args, %struct.of_phandle_args* %36, i32 0, i32 1
  %38 = load i64*, i64** %37, align 8
  %39 = getelementptr inbounds i64, i64* %38, i64 1
  %40 = load i64, i64* %39, align 8
  %41 = getelementptr inbounds %struct.dw_dma_slave, %struct.dw_dma_slave* %7, i32 0, i32 2
  store i64 %40, i64* %41, align 8
  %42 = load %struct.of_phandle_args*, %struct.of_phandle_args** %4, align 8
  %43 = getelementptr inbounds %struct.of_phandle_args, %struct.of_phandle_args* %42, i32 0, i32 1
  %44 = load i64*, i64** %43, align 8
  %45 = getelementptr inbounds i64, i64* %44, i64 2
  %46 = load i64, i64* %45, align 8
  %47 = getelementptr inbounds %struct.dw_dma_slave, %struct.dw_dma_slave* %7, i32 0, i32 3
  store i64 %46, i64* %47, align 8
  %48 = getelementptr inbounds %struct.dw_dma_slave, %struct.dw_dma_slave* %7, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = load i64, i64* @DW_DMA_MAX_NR_REQUESTS, align 8
  %51 = icmp sge i64 %49, %50
  br i1 %51, label %75, label %52

52:                                               ; preds = %23
  %53 = getelementptr inbounds %struct.dw_dma_slave, %struct.dw_dma_slave* %7, i32 0, i32 1
  %54 = load i64, i64* %53, align 8
  %55 = load i64, i64* @DW_DMA_MAX_NR_REQUESTS, align 8
  %56 = icmp sge i64 %54, %55
  br i1 %56, label %75, label %57

57:                                               ; preds = %52
  %58 = getelementptr inbounds %struct.dw_dma_slave, %struct.dw_dma_slave* %7, i32 0, i32 2
  %59 = load i64, i64* %58, align 8
  %60 = load %struct.dw_dma*, %struct.dw_dma** %6, align 8
  %61 = getelementptr inbounds %struct.dw_dma, %struct.dw_dma* %60, i32 0, i32 0
  %62 = load %struct.TYPE_4__*, %struct.TYPE_4__** %61, align 8
  %63 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = icmp sge i64 %59, %64
  br i1 %65, label %75, label %66

66:                                               ; preds = %57
  %67 = getelementptr inbounds %struct.dw_dma_slave, %struct.dw_dma_slave* %7, i32 0, i32 3
  %68 = load i64, i64* %67, align 8
  %69 = load %struct.dw_dma*, %struct.dw_dma** %6, align 8
  %70 = getelementptr inbounds %struct.dw_dma, %struct.dw_dma* %69, i32 0, i32 0
  %71 = load %struct.TYPE_4__*, %struct.TYPE_4__** %70, align 8
  %72 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %71, i32 0, i32 0
  %73 = load i64, i64* %72, align 8
  %74 = icmp sge i64 %68, %73
  br label %75

75:                                               ; preds = %66, %57, %52, %23
  %76 = phi i1 [ true, %57 ], [ true, %52 ], [ true, %23 ], [ %74, %66 ]
  %77 = zext i1 %76 to i32
  %78 = call i64 @WARN_ON(i32 %77)
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %80, label %81

80:                                               ; preds = %75
  store %struct.dma_chan* null, %struct.dma_chan** %3, align 8
  br label %90

81:                                               ; preds = %75
  %82 = load i32, i32* %8, align 4
  %83 = call i32 @dma_cap_zero(i32 %82)
  %84 = load i32, i32* @DMA_SLAVE, align 4
  %85 = load i32, i32* %8, align 4
  %86 = call i32 @dma_cap_set(i32 %84, i32 %85)
  %87 = load i32, i32* %8, align 4
  %88 = load i32, i32* @dw_dma_filter, align 4
  %89 = call %struct.dma_chan* @dma_request_channel(i32 %87, i32 %88, %struct.dw_dma_slave* %7)
  store %struct.dma_chan* %89, %struct.dma_chan** %3, align 8
  br label %90

90:                                               ; preds = %81, %80, %22
  %91 = load %struct.dma_chan*, %struct.dma_chan** %3, align 8
  ret %struct.dma_chan* %91
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i64 @WARN_ON(i32) #2

declare dso_local i32 @dma_cap_zero(i32) #2

declare dso_local i32 @dma_cap_set(i32, i32) #2

declare dso_local %struct.dma_chan* @dma_request_channel(i32, i32, %struct.dw_dma_slave*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
