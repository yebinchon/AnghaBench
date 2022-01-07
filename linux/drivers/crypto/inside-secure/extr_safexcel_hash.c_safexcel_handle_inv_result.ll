; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/inside-secure/extr_safexcel_hash.c_safexcel_handle_inv_result.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/inside-secure/extr_safexcel_hash.c_safexcel_handle_inv_result.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.safexcel_crypto_priv = type { %struct.TYPE_6__*, i32, i32 }
%struct.TYPE_6__ = type { %struct.TYPE_5__, i32, i32, i32, i32 }
%struct.TYPE_5__ = type { i32 }
%struct.crypto_async_request = type { i32 }
%struct.safexcel_result_desc = type { i32 }
%struct.ahash_request = type { i32 }
%struct.crypto_ahash = type { i32 }
%struct.safexcel_ahash_ctx = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i32, i32, i64 }

@.str = private unnamed_addr constant [60 x i8] c"hash: invalidate: could not retrieve the result descriptor\0A\00", align 1
@EINPROGRESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.safexcel_crypto_priv*, i32, %struct.crypto_async_request*, i32*, i32*)* @safexcel_handle_inv_result to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @safexcel_handle_inv_result(%struct.safexcel_crypto_priv* %0, i32 %1, %struct.crypto_async_request* %2, i32* %3, i32* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.safexcel_crypto_priv*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.crypto_async_request*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca %struct.safexcel_result_desc*, align 8
  %13 = alloca %struct.ahash_request*, align 8
  %14 = alloca %struct.crypto_ahash*, align 8
  %15 = alloca %struct.safexcel_ahash_ctx*, align 8
  %16 = alloca i32, align 4
  store %struct.safexcel_crypto_priv* %0, %struct.safexcel_crypto_priv** %7, align 8
  store i32 %1, i32* %8, align 4
  store %struct.crypto_async_request* %2, %struct.crypto_async_request** %9, align 8
  store i32* %3, i32** %10, align 8
  store i32* %4, i32** %11, align 8
  %17 = load %struct.crypto_async_request*, %struct.crypto_async_request** %9, align 8
  %18 = call %struct.ahash_request* @ahash_request_cast(%struct.crypto_async_request* %17)
  store %struct.ahash_request* %18, %struct.ahash_request** %13, align 8
  %19 = load %struct.ahash_request*, %struct.ahash_request** %13, align 8
  %20 = call %struct.crypto_ahash* @crypto_ahash_reqtfm(%struct.ahash_request* %19)
  store %struct.crypto_ahash* %20, %struct.crypto_ahash** %14, align 8
  %21 = load %struct.crypto_ahash*, %struct.crypto_ahash** %14, align 8
  %22 = call %struct.safexcel_ahash_ctx* @crypto_ahash_ctx(%struct.crypto_ahash* %21)
  store %struct.safexcel_ahash_ctx* %22, %struct.safexcel_ahash_ctx** %15, align 8
  %23 = load i32*, i32** %11, align 8
  store i32 0, i32* %23, align 4
  %24 = load %struct.safexcel_crypto_priv*, %struct.safexcel_crypto_priv** %7, align 8
  %25 = load %struct.safexcel_crypto_priv*, %struct.safexcel_crypto_priv** %7, align 8
  %26 = getelementptr inbounds %struct.safexcel_crypto_priv, %struct.safexcel_crypto_priv* %25, i32 0, i32 0
  %27 = load %struct.TYPE_6__*, %struct.TYPE_6__** %26, align 8
  %28 = load i32, i32* %8, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %27, i64 %29
  %31 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %30, i32 0, i32 4
  %32 = call %struct.safexcel_result_desc* @safexcel_ring_next_rptr(%struct.safexcel_crypto_priv* %24, i32* %31)
  store %struct.safexcel_result_desc* %32, %struct.safexcel_result_desc** %12, align 8
  %33 = load %struct.safexcel_result_desc*, %struct.safexcel_result_desc** %12, align 8
  %34 = call i64 @IS_ERR(%struct.safexcel_result_desc* %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %44

36:                                               ; preds = %5
  %37 = load %struct.safexcel_crypto_priv*, %struct.safexcel_crypto_priv** %7, align 8
  %38 = getelementptr inbounds %struct.safexcel_crypto_priv, %struct.safexcel_crypto_priv* %37, i32 0, i32 2
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @dev_err(i32 %39, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str, i64 0, i64 0))
  %41 = load %struct.safexcel_result_desc*, %struct.safexcel_result_desc** %12, align 8
  %42 = call i32 @PTR_ERR(%struct.safexcel_result_desc* %41)
  %43 = load i32*, i32** %11, align 8
  store i32 %42, i32* %43, align 4
  br label %49

44:                                               ; preds = %5
  %45 = load %struct.safexcel_crypto_priv*, %struct.safexcel_crypto_priv** %7, align 8
  %46 = load %struct.safexcel_result_desc*, %struct.safexcel_result_desc** %12, align 8
  %47 = call i32 @safexcel_rdesc_check_errors(%struct.safexcel_crypto_priv* %45, %struct.safexcel_result_desc* %46)
  %48 = load i32*, i32** %11, align 8
  store i32 %47, i32* %48, align 4
  br label %49

49:                                               ; preds = %44, %36
  %50 = load %struct.safexcel_crypto_priv*, %struct.safexcel_crypto_priv** %7, align 8
  %51 = load i32, i32* %8, align 4
  %52 = call i32 @safexcel_complete(%struct.safexcel_crypto_priv* %50, i32 %51)
  %53 = load %struct.safexcel_ahash_ctx*, %struct.safexcel_ahash_ctx** %15, align 8
  %54 = getelementptr inbounds %struct.safexcel_ahash_ctx, %struct.safexcel_ahash_ctx* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %54, i32 0, i32 3
  %56 = load i64, i64* %55, align 8
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %72

58:                                               ; preds = %49
  %59 = load %struct.safexcel_crypto_priv*, %struct.safexcel_crypto_priv** %7, align 8
  %60 = getelementptr inbounds %struct.safexcel_crypto_priv, %struct.safexcel_crypto_priv* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 8
  %62 = load %struct.safexcel_ahash_ctx*, %struct.safexcel_ahash_ctx** %15, align 8
  %63 = getelementptr inbounds %struct.safexcel_ahash_ctx, %struct.safexcel_ahash_ctx* %62, i32 0, i32 0
  %64 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %63, i32 0, i32 2
  %65 = load i32, i32* %64, align 8
  %66 = load %struct.safexcel_ahash_ctx*, %struct.safexcel_ahash_ctx** %15, align 8
  %67 = getelementptr inbounds %struct.safexcel_ahash_ctx, %struct.safexcel_ahash_ctx* %66, i32 0, i32 0
  %68 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 4
  %70 = call i32 @dma_pool_free(i32 %61, i32 %65, i32 %69)
  %71 = load i32*, i32** %10, align 8
  store i32 1, i32* %71, align 4
  store i32 1, i32* %6, align 4
  br label %130

72:                                               ; preds = %49
  %73 = load %struct.safexcel_crypto_priv*, %struct.safexcel_crypto_priv** %7, align 8
  %74 = call i32 @safexcel_select_ring(%struct.safexcel_crypto_priv* %73)
  store i32 %74, i32* %8, align 4
  %75 = load i32, i32* %8, align 4
  %76 = load %struct.safexcel_ahash_ctx*, %struct.safexcel_ahash_ctx** %15, align 8
  %77 = getelementptr inbounds %struct.safexcel_ahash_ctx, %struct.safexcel_ahash_ctx* %76, i32 0, i32 0
  %78 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %77, i32 0, i32 0
  store i32 %75, i32* %78, align 8
  %79 = load %struct.safexcel_crypto_priv*, %struct.safexcel_crypto_priv** %7, align 8
  %80 = getelementptr inbounds %struct.safexcel_crypto_priv, %struct.safexcel_crypto_priv* %79, i32 0, i32 0
  %81 = load %struct.TYPE_6__*, %struct.TYPE_6__** %80, align 8
  %82 = load i32, i32* %8, align 4
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %81, i64 %83
  %85 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %84, i32 0, i32 2
  %86 = call i32 @spin_lock_bh(i32* %85)
  %87 = load %struct.safexcel_crypto_priv*, %struct.safexcel_crypto_priv** %7, align 8
  %88 = getelementptr inbounds %struct.safexcel_crypto_priv, %struct.safexcel_crypto_priv* %87, i32 0, i32 0
  %89 = load %struct.TYPE_6__*, %struct.TYPE_6__** %88, align 8
  %90 = load i32, i32* %8, align 4
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %89, i64 %91
  %93 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %92, i32 0, i32 3
  %94 = load %struct.crypto_async_request*, %struct.crypto_async_request** %9, align 8
  %95 = call i32 @crypto_enqueue_request(i32* %93, %struct.crypto_async_request* %94)
  store i32 %95, i32* %16, align 4
  %96 = load %struct.safexcel_crypto_priv*, %struct.safexcel_crypto_priv** %7, align 8
  %97 = getelementptr inbounds %struct.safexcel_crypto_priv, %struct.safexcel_crypto_priv* %96, i32 0, i32 0
  %98 = load %struct.TYPE_6__*, %struct.TYPE_6__** %97, align 8
  %99 = load i32, i32* %8, align 4
  %100 = sext i32 %99 to i64
  %101 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %98, i64 %100
  %102 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %101, i32 0, i32 2
  %103 = call i32 @spin_unlock_bh(i32* %102)
  %104 = load i32, i32* %16, align 4
  %105 = load i32, i32* @EINPROGRESS, align 4
  %106 = sub nsw i32 0, %105
  %107 = icmp ne i32 %104, %106
  br i1 %107, label %108, label %111

108:                                              ; preds = %72
  %109 = load i32, i32* %16, align 4
  %110 = load i32*, i32** %11, align 8
  store i32 %109, i32* %110, align 4
  br label %111

111:                                              ; preds = %108, %72
  %112 = load %struct.safexcel_crypto_priv*, %struct.safexcel_crypto_priv** %7, align 8
  %113 = getelementptr inbounds %struct.safexcel_crypto_priv, %struct.safexcel_crypto_priv* %112, i32 0, i32 0
  %114 = load %struct.TYPE_6__*, %struct.TYPE_6__** %113, align 8
  %115 = load i32, i32* %8, align 4
  %116 = sext i32 %115 to i64
  %117 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %114, i64 %116
  %118 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %117, i32 0, i32 1
  %119 = load i32, i32* %118, align 4
  %120 = load %struct.safexcel_crypto_priv*, %struct.safexcel_crypto_priv** %7, align 8
  %121 = getelementptr inbounds %struct.safexcel_crypto_priv, %struct.safexcel_crypto_priv* %120, i32 0, i32 0
  %122 = load %struct.TYPE_6__*, %struct.TYPE_6__** %121, align 8
  %123 = load i32, i32* %8, align 4
  %124 = sext i32 %123 to i64
  %125 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %122, i64 %124
  %126 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %125, i32 0, i32 0
  %127 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %126, i32 0, i32 0
  %128 = call i32 @queue_work(i32 %119, i32* %127)
  %129 = load i32*, i32** %10, align 8
  store i32 0, i32* %129, align 4
  store i32 1, i32* %6, align 4
  br label %130

130:                                              ; preds = %111, %58
  %131 = load i32, i32* %6, align 4
  ret i32 %131
}

declare dso_local %struct.ahash_request* @ahash_request_cast(%struct.crypto_async_request*) #1

declare dso_local %struct.crypto_ahash* @crypto_ahash_reqtfm(%struct.ahash_request*) #1

declare dso_local %struct.safexcel_ahash_ctx* @crypto_ahash_ctx(%struct.crypto_ahash*) #1

declare dso_local %struct.safexcel_result_desc* @safexcel_ring_next_rptr(%struct.safexcel_crypto_priv*, i32*) #1

declare dso_local i64 @IS_ERR(%struct.safexcel_result_desc*) #1

declare dso_local i32 @dev_err(i32, i8*) #1

declare dso_local i32 @PTR_ERR(%struct.safexcel_result_desc*) #1

declare dso_local i32 @safexcel_rdesc_check_errors(%struct.safexcel_crypto_priv*, %struct.safexcel_result_desc*) #1

declare dso_local i32 @safexcel_complete(%struct.safexcel_crypto_priv*, i32) #1

declare dso_local i32 @dma_pool_free(i32, i32, i32) #1

declare dso_local i32 @safexcel_select_ring(%struct.safexcel_crypto_priv*) #1

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local i32 @crypto_enqueue_request(i32*, %struct.crypto_async_request*) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

declare dso_local i32 @queue_work(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
