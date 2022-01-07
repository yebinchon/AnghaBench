; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/marvell/extr_tdma.c_mv_cesa_dma_cleanup.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/marvell/extr_tdma.c_mv_cesa_dma_cleanup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32, i32 }
%struct.mv_cesa_req = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32*, %struct.mv_cesa_tdma_desc* }
%struct.mv_cesa_tdma_desc = type { i64, i32, %struct.mv_cesa_tdma_desc*, i32, %struct.mv_cesa_tdma_desc* }

@CESA_TDMA_TYPE_MSK = common dso_local global i64 0, align 8
@CESA_TDMA_OP = common dso_local global i64 0, align 8
@cesa_dev = common dso_local global %struct.TYPE_6__* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mv_cesa_dma_cleanup(%struct.mv_cesa_req* %0) #0 {
  %2 = alloca %struct.mv_cesa_req*, align 8
  %3 = alloca %struct.mv_cesa_tdma_desc*, align 8
  %4 = alloca %struct.mv_cesa_tdma_desc*, align 8
  %5 = alloca i64, align 8
  store %struct.mv_cesa_req* %0, %struct.mv_cesa_req** %2, align 8
  %6 = load %struct.mv_cesa_req*, %struct.mv_cesa_req** %2, align 8
  %7 = getelementptr inbounds %struct.mv_cesa_req, %struct.mv_cesa_req* %6, i32 0, i32 0
  %8 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %7, i32 0, i32 1
  %9 = load %struct.mv_cesa_tdma_desc*, %struct.mv_cesa_tdma_desc** %8, align 8
  store %struct.mv_cesa_tdma_desc* %9, %struct.mv_cesa_tdma_desc** %3, align 8
  br label %10

10:                                               ; preds = %37, %1
  %11 = load %struct.mv_cesa_tdma_desc*, %struct.mv_cesa_tdma_desc** %3, align 8
  %12 = icmp ne %struct.mv_cesa_tdma_desc* %11, null
  br i1 %12, label %13, label %51

13:                                               ; preds = %10
  %14 = load %struct.mv_cesa_tdma_desc*, %struct.mv_cesa_tdma_desc** %3, align 8
  store %struct.mv_cesa_tdma_desc* %14, %struct.mv_cesa_tdma_desc** %4, align 8
  %15 = load %struct.mv_cesa_tdma_desc*, %struct.mv_cesa_tdma_desc** %3, align 8
  %16 = getelementptr inbounds %struct.mv_cesa_tdma_desc, %struct.mv_cesa_tdma_desc* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* @CESA_TDMA_TYPE_MSK, align 8
  %19 = and i64 %17, %18
  store i64 %19, i64* %5, align 8
  %20 = load i64, i64* %5, align 8
  %21 = load i64, i64* @CESA_TDMA_OP, align 8
  %22 = icmp eq i64 %20, %21
  br i1 %22, label %23, label %37

23:                                               ; preds = %13
  %24 = load %struct.TYPE_6__*, %struct.TYPE_6__** @cesa_dev, align 8
  %25 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %24, i32 0, i32 0
  %26 = load %struct.TYPE_4__*, %struct.TYPE_4__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.mv_cesa_tdma_desc*, %struct.mv_cesa_tdma_desc** %3, align 8
  %30 = getelementptr inbounds %struct.mv_cesa_tdma_desc, %struct.mv_cesa_tdma_desc* %29, i32 0, i32 4
  %31 = load %struct.mv_cesa_tdma_desc*, %struct.mv_cesa_tdma_desc** %30, align 8
  %32 = load %struct.mv_cesa_tdma_desc*, %struct.mv_cesa_tdma_desc** %3, align 8
  %33 = getelementptr inbounds %struct.mv_cesa_tdma_desc, %struct.mv_cesa_tdma_desc* %32, i32 0, i32 3
  %34 = load i32, i32* %33, align 8
  %35 = call i32 @le32_to_cpu(i32 %34)
  %36 = call i32 @dma_pool_free(i32 %28, %struct.mv_cesa_tdma_desc* %31, i32 %35)
  br label %37

37:                                               ; preds = %23, %13
  %38 = load %struct.mv_cesa_tdma_desc*, %struct.mv_cesa_tdma_desc** %3, align 8
  %39 = getelementptr inbounds %struct.mv_cesa_tdma_desc, %struct.mv_cesa_tdma_desc* %38, i32 0, i32 2
  %40 = load %struct.mv_cesa_tdma_desc*, %struct.mv_cesa_tdma_desc** %39, align 8
  store %struct.mv_cesa_tdma_desc* %40, %struct.mv_cesa_tdma_desc** %3, align 8
  %41 = load %struct.TYPE_6__*, %struct.TYPE_6__** @cesa_dev, align 8
  %42 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %41, i32 0, i32 0
  %43 = load %struct.TYPE_4__*, %struct.TYPE_4__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = load %struct.mv_cesa_tdma_desc*, %struct.mv_cesa_tdma_desc** %4, align 8
  %47 = load %struct.mv_cesa_tdma_desc*, %struct.mv_cesa_tdma_desc** %4, align 8
  %48 = getelementptr inbounds %struct.mv_cesa_tdma_desc, %struct.mv_cesa_tdma_desc* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 8
  %50 = call i32 @dma_pool_free(i32 %45, %struct.mv_cesa_tdma_desc* %46, i32 %49)
  br label %10

51:                                               ; preds = %10
  %52 = load %struct.mv_cesa_req*, %struct.mv_cesa_req** %2, align 8
  %53 = getelementptr inbounds %struct.mv_cesa_req, %struct.mv_cesa_req* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %53, i32 0, i32 1
  store %struct.mv_cesa_tdma_desc* null, %struct.mv_cesa_tdma_desc** %54, align 8
  %55 = load %struct.mv_cesa_req*, %struct.mv_cesa_req** %2, align 8
  %56 = getelementptr inbounds %struct.mv_cesa_req, %struct.mv_cesa_req* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %56, i32 0, i32 0
  store i32* null, i32** %57, align 8
  ret void
}

declare dso_local i32 @dma_pool_free(i32, %struct.mv_cesa_tdma_desc*, i32) #1

declare dso_local i32 @le32_to_cpu(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
