; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/marvell/extr_tdma.c_mv_cesa_tdma_chain.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/marvell/extr_tdma.c_mv_cesa_tdma_chain.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mv_cesa_engine = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.mv_cesa_tdma_desc*, %struct.TYPE_5__* }
%struct.mv_cesa_tdma_desc = type { i32, i32, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32, i32 }
%struct.mv_cesa_req = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__*, %struct.mv_cesa_tdma_desc* }

@CESA_TDMA_BREAK_CHAIN = common dso_local global i32 0, align 4
@CESA_TDMA_SET_STATE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mv_cesa_tdma_chain(%struct.mv_cesa_engine* %0, %struct.mv_cesa_req* %1) #0 {
  %3 = alloca %struct.mv_cesa_engine*, align 8
  %4 = alloca %struct.mv_cesa_req*, align 8
  %5 = alloca %struct.mv_cesa_tdma_desc*, align 8
  store %struct.mv_cesa_engine* %0, %struct.mv_cesa_engine** %3, align 8
  store %struct.mv_cesa_req* %1, %struct.mv_cesa_req** %4, align 8
  %6 = load %struct.mv_cesa_engine*, %struct.mv_cesa_engine** %3, align 8
  %7 = getelementptr inbounds %struct.mv_cesa_engine, %struct.mv_cesa_engine* %6, i32 0, i32 0
  %8 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %7, i32 0, i32 1
  %9 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %10 = icmp eq %struct.TYPE_5__* %9, null
  br i1 %10, label %11, label %32

11:                                               ; preds = %2
  %12 = load %struct.mv_cesa_engine*, %struct.mv_cesa_engine** %3, align 8
  %13 = getelementptr inbounds %struct.mv_cesa_engine, %struct.mv_cesa_engine* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 0
  %15 = load %struct.mv_cesa_tdma_desc*, %struct.mv_cesa_tdma_desc** %14, align 8
  %16 = icmp eq %struct.mv_cesa_tdma_desc* %15, null
  br i1 %16, label %17, label %32

17:                                               ; preds = %11
  %18 = load %struct.mv_cesa_req*, %struct.mv_cesa_req** %4, align 8
  %19 = getelementptr inbounds %struct.mv_cesa_req, %struct.mv_cesa_req* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %19, i32 0, i32 0
  %21 = load %struct.TYPE_5__*, %struct.TYPE_5__** %20, align 8
  %22 = load %struct.mv_cesa_engine*, %struct.mv_cesa_engine** %3, align 8
  %23 = getelementptr inbounds %struct.mv_cesa_engine, %struct.mv_cesa_engine* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 1
  store %struct.TYPE_5__* %21, %struct.TYPE_5__** %24, align 8
  %25 = load %struct.mv_cesa_req*, %struct.mv_cesa_req** %4, align 8
  %26 = getelementptr inbounds %struct.mv_cesa_req, %struct.mv_cesa_req* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %26, i32 0, i32 1
  %28 = load %struct.mv_cesa_tdma_desc*, %struct.mv_cesa_tdma_desc** %27, align 8
  %29 = load %struct.mv_cesa_engine*, %struct.mv_cesa_engine** %3, align 8
  %30 = getelementptr inbounds %struct.mv_cesa_engine, %struct.mv_cesa_engine* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 0
  store %struct.mv_cesa_tdma_desc* %28, %struct.mv_cesa_tdma_desc** %31, align 8
  br label %76

32:                                               ; preds = %11, %2
  %33 = load %struct.mv_cesa_engine*, %struct.mv_cesa_engine** %3, align 8
  %34 = getelementptr inbounds %struct.mv_cesa_engine, %struct.mv_cesa_engine* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 0
  %36 = load %struct.mv_cesa_tdma_desc*, %struct.mv_cesa_tdma_desc** %35, align 8
  store %struct.mv_cesa_tdma_desc* %36, %struct.mv_cesa_tdma_desc** %5, align 8
  %37 = load %struct.mv_cesa_req*, %struct.mv_cesa_req** %4, align 8
  %38 = getelementptr inbounds %struct.mv_cesa_req, %struct.mv_cesa_req* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %38, i32 0, i32 0
  %40 = load %struct.TYPE_5__*, %struct.TYPE_5__** %39, align 8
  %41 = load %struct.mv_cesa_tdma_desc*, %struct.mv_cesa_tdma_desc** %5, align 8
  %42 = getelementptr inbounds %struct.mv_cesa_tdma_desc, %struct.mv_cesa_tdma_desc* %41, i32 0, i32 2
  store %struct.TYPE_5__* %40, %struct.TYPE_5__** %42, align 8
  %43 = load %struct.mv_cesa_req*, %struct.mv_cesa_req** %4, align 8
  %44 = getelementptr inbounds %struct.mv_cesa_req, %struct.mv_cesa_req* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %44, i32 0, i32 1
  %46 = load %struct.mv_cesa_tdma_desc*, %struct.mv_cesa_tdma_desc** %45, align 8
  %47 = load %struct.mv_cesa_engine*, %struct.mv_cesa_engine** %3, align 8
  %48 = getelementptr inbounds %struct.mv_cesa_engine, %struct.mv_cesa_engine* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %48, i32 0, i32 0
  store %struct.mv_cesa_tdma_desc* %46, %struct.mv_cesa_tdma_desc** %49, align 8
  %50 = load %struct.mv_cesa_tdma_desc*, %struct.mv_cesa_tdma_desc** %5, align 8
  %51 = getelementptr inbounds %struct.mv_cesa_tdma_desc, %struct.mv_cesa_tdma_desc* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = load i32, i32* @CESA_TDMA_BREAK_CHAIN, align 4
  %54 = and i32 %52, %53
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %75, label %56

56:                                               ; preds = %32
  %57 = load %struct.mv_cesa_req*, %struct.mv_cesa_req** %4, align 8
  %58 = getelementptr inbounds %struct.mv_cesa_req, %struct.mv_cesa_req* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %58, i32 0, i32 0
  %60 = load %struct.TYPE_5__*, %struct.TYPE_5__** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = load i32, i32* @CESA_TDMA_SET_STATE, align 4
  %64 = and i32 %62, %63
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %75, label %66

66:                                               ; preds = %56
  %67 = load %struct.mv_cesa_req*, %struct.mv_cesa_req** %4, align 8
  %68 = getelementptr inbounds %struct.mv_cesa_req, %struct.mv_cesa_req* %67, i32 0, i32 0
  %69 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %68, i32 0, i32 0
  %70 = load %struct.TYPE_5__*, %struct.TYPE_5__** %69, align 8
  %71 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 4
  %73 = load %struct.mv_cesa_tdma_desc*, %struct.mv_cesa_tdma_desc** %5, align 8
  %74 = getelementptr inbounds %struct.mv_cesa_tdma_desc, %struct.mv_cesa_tdma_desc* %73, i32 0, i32 1
  store i32 %72, i32* %74, align 4
  br label %75

75:                                               ; preds = %66, %56, %32
  br label %76

76:                                               ; preds = %75, %17
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
