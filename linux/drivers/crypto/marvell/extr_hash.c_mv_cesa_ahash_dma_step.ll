; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/marvell/extr_hash.c_mv_cesa_ahash_dma_step.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/marvell/extr_hash.c_mv_cesa_ahash_dma_step.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ahash_request = type { i32 }
%struct.mv_cesa_ahash_req = type { i32*, %struct.mv_cesa_req }
%struct.mv_cesa_req = type { %struct.mv_cesa_engine*, %struct.TYPE_4__ }
%struct.mv_cesa_engine = type { i64 }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }

@CESA_TDMA_SET_STATE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ahash_request*)* @mv_cesa_ahash_dma_step to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mv_cesa_ahash_dma_step(%struct.ahash_request* %0) #0 {
  %2 = alloca %struct.ahash_request*, align 8
  %3 = alloca %struct.mv_cesa_ahash_req*, align 8
  %4 = alloca %struct.mv_cesa_req*, align 8
  %5 = alloca %struct.mv_cesa_engine*, align 8
  %6 = alloca i32, align 4
  store %struct.ahash_request* %0, %struct.ahash_request** %2, align 8
  %7 = load %struct.ahash_request*, %struct.ahash_request** %2, align 8
  %8 = call %struct.mv_cesa_ahash_req* @ahash_request_ctx(%struct.ahash_request* %7)
  store %struct.mv_cesa_ahash_req* %8, %struct.mv_cesa_ahash_req** %3, align 8
  %9 = load %struct.mv_cesa_ahash_req*, %struct.mv_cesa_ahash_req** %3, align 8
  %10 = getelementptr inbounds %struct.mv_cesa_ahash_req, %struct.mv_cesa_ahash_req* %9, i32 0, i32 1
  store %struct.mv_cesa_req* %10, %struct.mv_cesa_req** %4, align 8
  %11 = load %struct.mv_cesa_req*, %struct.mv_cesa_req** %4, align 8
  %12 = getelementptr inbounds %struct.mv_cesa_req, %struct.mv_cesa_req* %11, i32 0, i32 1
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 0
  %14 = load %struct.TYPE_3__*, %struct.TYPE_3__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = load i32, i32* @CESA_TDMA_SET_STATE, align 4
  %18 = and i32 %16, %17
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %50

20:                                               ; preds = %1
  %21 = load %struct.mv_cesa_req*, %struct.mv_cesa_req** %4, align 8
  %22 = getelementptr inbounds %struct.mv_cesa_req, %struct.mv_cesa_req* %21, i32 0, i32 0
  %23 = load %struct.mv_cesa_engine*, %struct.mv_cesa_engine** %22, align 8
  store %struct.mv_cesa_engine* %23, %struct.mv_cesa_engine** %5, align 8
  store i32 0, i32* %6, align 4
  br label %24

24:                                               ; preds = %46, %20
  %25 = load i32, i32* %6, align 4
  %26 = load %struct.mv_cesa_ahash_req*, %struct.mv_cesa_ahash_req** %3, align 8
  %27 = getelementptr inbounds %struct.mv_cesa_ahash_req, %struct.mv_cesa_ahash_req* %26, i32 0, i32 0
  %28 = load i32*, i32** %27, align 8
  %29 = call i32 @ARRAY_SIZE(i32* %28)
  %30 = icmp slt i32 %25, %29
  br i1 %30, label %31, label %49

31:                                               ; preds = %24
  %32 = load %struct.mv_cesa_ahash_req*, %struct.mv_cesa_ahash_req** %3, align 8
  %33 = getelementptr inbounds %struct.mv_cesa_ahash_req, %struct.mv_cesa_ahash_req* %32, i32 0, i32 0
  %34 = load i32*, i32** %33, align 8
  %35 = load i32, i32* %6, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds i32, i32* %34, i64 %36
  %38 = load i32, i32* %37, align 4
  %39 = load %struct.mv_cesa_engine*, %struct.mv_cesa_engine** %5, align 8
  %40 = getelementptr inbounds %struct.mv_cesa_engine, %struct.mv_cesa_engine* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = load i32, i32* %6, align 4
  %43 = call i64 @CESA_IVDIG(i32 %42)
  %44 = add nsw i64 %41, %43
  %45 = call i32 @writel_relaxed(i32 %38, i64 %44)
  br label %46

46:                                               ; preds = %31
  %47 = load i32, i32* %6, align 4
  %48 = add nsw i32 %47, 1
  store i32 %48, i32* %6, align 4
  br label %24

49:                                               ; preds = %24
  br label %50

50:                                               ; preds = %49, %1
  %51 = load %struct.mv_cesa_req*, %struct.mv_cesa_req** %4, align 8
  %52 = call i32 @mv_cesa_dma_step(%struct.mv_cesa_req* %51)
  ret void
}

declare dso_local %struct.mv_cesa_ahash_req* @ahash_request_ctx(%struct.ahash_request*) #1

declare dso_local i32 @ARRAY_SIZE(i32*) #1

declare dso_local i32 @writel_relaxed(i32, i64) #1

declare dso_local i64 @CESA_IVDIG(i32) #1

declare dso_local i32 @mv_cesa_dma_step(%struct.mv_cesa_req*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
