; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/inside-secure/extr_safexcel_hash.c_safexcel_ahash_exit_inv.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/inside-secure/extr_safexcel_hash.c_safexcel_ahash_exit_inv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { %struct.TYPE_15__ }
%struct.TYPE_15__ = type { %struct.crypto_tfm* }
%struct.crypto_tfm = type { i32 }
%struct.safexcel_ahash_ctx = type { %struct.TYPE_11__, %struct.safexcel_crypto_priv* }
%struct.TYPE_11__ = type { i32, i32 }
%struct.safexcel_crypto_priv = type { i32, %struct.TYPE_13__* }
%struct.TYPE_13__ = type { %struct.TYPE_12__, i32, i32, i32 }
%struct.TYPE_12__ = type { i32 }
%struct.safexcel_ahash_req = type { i32 }
%struct.safexcel_inv_result = type { i32, i32 }

@req = common dso_local global %struct.TYPE_14__* null, align 8
@ahash = common dso_local global i32 0, align 4
@EIP197_AHASH_REQ_SIZE = common dso_local global i32 0, align 4
@CRYPTO_TFM_REQ_MAY_BACKLOG = common dso_local global i32 0, align 4
@safexcel_inv_complete = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"hash: completion error (%d)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.crypto_tfm*)* @safexcel_ahash_exit_inv to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @safexcel_ahash_exit_inv(%struct.crypto_tfm* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.crypto_tfm*, align 8
  %4 = alloca %struct.safexcel_ahash_ctx*, align 8
  %5 = alloca %struct.safexcel_crypto_priv*, align 8
  %6 = alloca %struct.safexcel_ahash_req*, align 8
  %7 = alloca %struct.safexcel_inv_result, align 4
  %8 = alloca i32, align 4
  store %struct.crypto_tfm* %0, %struct.crypto_tfm** %3, align 8
  %9 = load %struct.crypto_tfm*, %struct.crypto_tfm** %3, align 8
  %10 = call %struct.safexcel_ahash_ctx* @crypto_tfm_ctx(%struct.crypto_tfm* %9)
  store %struct.safexcel_ahash_ctx* %10, %struct.safexcel_ahash_ctx** %4, align 8
  %11 = load %struct.safexcel_ahash_ctx*, %struct.safexcel_ahash_ctx** %4, align 8
  %12 = getelementptr inbounds %struct.safexcel_ahash_ctx, %struct.safexcel_ahash_ctx* %11, i32 0, i32 1
  %13 = load %struct.safexcel_crypto_priv*, %struct.safexcel_crypto_priv** %12, align 8
  store %struct.safexcel_crypto_priv* %13, %struct.safexcel_crypto_priv** %5, align 8
  %14 = load %struct.TYPE_14__*, %struct.TYPE_14__** @req, align 8
  %15 = load i32, i32* @ahash, align 4
  %16 = load i32, i32* @EIP197_AHASH_REQ_SIZE, align 4
  %17 = call i32 @EIP197_REQUEST_ON_STACK(%struct.TYPE_14__* %14, i32 %15, i32 %16)
  %18 = load %struct.TYPE_14__*, %struct.TYPE_14__** @req, align 8
  %19 = call %struct.safexcel_ahash_req* @ahash_request_ctx(%struct.TYPE_14__* %18)
  store %struct.safexcel_ahash_req* %19, %struct.safexcel_ahash_req** %6, align 8
  %20 = bitcast %struct.safexcel_inv_result* %7 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %20, i8 0, i64 8, i1 false)
  %21 = load %struct.safexcel_ahash_ctx*, %struct.safexcel_ahash_ctx** %4, align 8
  %22 = getelementptr inbounds %struct.safexcel_ahash_ctx, %struct.safexcel_ahash_ctx* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  store i32 %24, i32* %8, align 4
  %25 = load %struct.TYPE_14__*, %struct.TYPE_14__** @req, align 8
  %26 = load i32, i32* @EIP197_AHASH_REQ_SIZE, align 4
  %27 = call i32 @memset(%struct.TYPE_14__* %25, i32 0, i32 %26)
  %28 = getelementptr inbounds %struct.safexcel_inv_result, %struct.safexcel_inv_result* %7, i32 0, i32 1
  %29 = call i32 @init_completion(i32* %28)
  %30 = load %struct.TYPE_14__*, %struct.TYPE_14__** @req, align 8
  %31 = load i32, i32* @CRYPTO_TFM_REQ_MAY_BACKLOG, align 4
  %32 = load i32, i32* @safexcel_inv_complete, align 4
  %33 = call i32 @ahash_request_set_callback(%struct.TYPE_14__* %30, i32 %31, i32 %32, %struct.safexcel_inv_result* %7)
  %34 = load %struct.TYPE_14__*, %struct.TYPE_14__** @req, align 8
  %35 = load %struct.crypto_tfm*, %struct.crypto_tfm** %3, align 8
  %36 = call i32 @__crypto_ahash_cast(%struct.crypto_tfm* %35)
  %37 = call i32 @ahash_request_set_tfm(%struct.TYPE_14__* %34, i32 %36)
  %38 = load %struct.TYPE_14__*, %struct.TYPE_14__** @req, align 8
  %39 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %39, i32 0, i32 0
  %41 = load %struct.crypto_tfm*, %struct.crypto_tfm** %40, align 8
  %42 = call %struct.safexcel_ahash_ctx* @crypto_tfm_ctx(%struct.crypto_tfm* %41)
  store %struct.safexcel_ahash_ctx* %42, %struct.safexcel_ahash_ctx** %4, align 8
  %43 = load %struct.safexcel_ahash_ctx*, %struct.safexcel_ahash_ctx** %4, align 8
  %44 = getelementptr inbounds %struct.safexcel_ahash_ctx, %struct.safexcel_ahash_ctx* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %44, i32 0, i32 1
  store i32 1, i32* %45, align 4
  %46 = load %struct.safexcel_ahash_req*, %struct.safexcel_ahash_req** %6, align 8
  %47 = getelementptr inbounds %struct.safexcel_ahash_req, %struct.safexcel_ahash_req* %46, i32 0, i32 0
  store i32 1, i32* %47, align 4
  %48 = load %struct.safexcel_crypto_priv*, %struct.safexcel_crypto_priv** %5, align 8
  %49 = getelementptr inbounds %struct.safexcel_crypto_priv, %struct.safexcel_crypto_priv* %48, i32 0, i32 1
  %50 = load %struct.TYPE_13__*, %struct.TYPE_13__** %49, align 8
  %51 = load i32, i32* %8, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %50, i64 %52
  %54 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %53, i32 0, i32 2
  %55 = call i32 @spin_lock_bh(i32* %54)
  %56 = load %struct.safexcel_crypto_priv*, %struct.safexcel_crypto_priv** %5, align 8
  %57 = getelementptr inbounds %struct.safexcel_crypto_priv, %struct.safexcel_crypto_priv* %56, i32 0, i32 1
  %58 = load %struct.TYPE_13__*, %struct.TYPE_13__** %57, align 8
  %59 = load i32, i32* %8, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %58, i64 %60
  %62 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %61, i32 0, i32 3
  %63 = load %struct.TYPE_14__*, %struct.TYPE_14__** @req, align 8
  %64 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %63, i32 0, i32 0
  %65 = call i32 @crypto_enqueue_request(i32* %62, %struct.TYPE_15__* %64)
  %66 = load %struct.safexcel_crypto_priv*, %struct.safexcel_crypto_priv** %5, align 8
  %67 = getelementptr inbounds %struct.safexcel_crypto_priv, %struct.safexcel_crypto_priv* %66, i32 0, i32 1
  %68 = load %struct.TYPE_13__*, %struct.TYPE_13__** %67, align 8
  %69 = load i32, i32* %8, align 4
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %68, i64 %70
  %72 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %71, i32 0, i32 2
  %73 = call i32 @spin_unlock_bh(i32* %72)
  %74 = load %struct.safexcel_crypto_priv*, %struct.safexcel_crypto_priv** %5, align 8
  %75 = getelementptr inbounds %struct.safexcel_crypto_priv, %struct.safexcel_crypto_priv* %74, i32 0, i32 1
  %76 = load %struct.TYPE_13__*, %struct.TYPE_13__** %75, align 8
  %77 = load i32, i32* %8, align 4
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %76, i64 %78
  %80 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %79, i32 0, i32 1
  %81 = load i32, i32* %80, align 4
  %82 = load %struct.safexcel_crypto_priv*, %struct.safexcel_crypto_priv** %5, align 8
  %83 = getelementptr inbounds %struct.safexcel_crypto_priv, %struct.safexcel_crypto_priv* %82, i32 0, i32 1
  %84 = load %struct.TYPE_13__*, %struct.TYPE_13__** %83, align 8
  %85 = load i32, i32* %8, align 4
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %84, i64 %86
  %88 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %87, i32 0, i32 0
  %89 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %88, i32 0, i32 0
  %90 = call i32 @queue_work(i32 %81, i32* %89)
  %91 = getelementptr inbounds %struct.safexcel_inv_result, %struct.safexcel_inv_result* %7, i32 0, i32 1
  %92 = call i32 @wait_for_completion(i32* %91)
  %93 = getelementptr inbounds %struct.safexcel_inv_result, %struct.safexcel_inv_result* %7, i32 0, i32 0
  %94 = load i32, i32* %93, align 4
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %96, label %105

96:                                               ; preds = %1
  %97 = load %struct.safexcel_crypto_priv*, %struct.safexcel_crypto_priv** %5, align 8
  %98 = getelementptr inbounds %struct.safexcel_crypto_priv, %struct.safexcel_crypto_priv* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 8
  %100 = getelementptr inbounds %struct.safexcel_inv_result, %struct.safexcel_inv_result* %7, i32 0, i32 0
  %101 = load i32, i32* %100, align 4
  %102 = call i32 @dev_warn(i32 %99, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 %101)
  %103 = getelementptr inbounds %struct.safexcel_inv_result, %struct.safexcel_inv_result* %7, i32 0, i32 0
  %104 = load i32, i32* %103, align 4
  store i32 %104, i32* %2, align 4
  br label %106

105:                                              ; preds = %1
  store i32 0, i32* %2, align 4
  br label %106

106:                                              ; preds = %105, %96
  %107 = load i32, i32* %2, align 4
  ret i32 %107
}

declare dso_local %struct.safexcel_ahash_ctx* @crypto_tfm_ctx(%struct.crypto_tfm*) #1

declare dso_local i32 @EIP197_REQUEST_ON_STACK(%struct.TYPE_14__*, i32, i32) #1

declare dso_local %struct.safexcel_ahash_req* @ahash_request_ctx(%struct.TYPE_14__*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

declare dso_local i32 @memset(%struct.TYPE_14__*, i32, i32) #1

declare dso_local i32 @init_completion(i32*) #1

declare dso_local i32 @ahash_request_set_callback(%struct.TYPE_14__*, i32, i32, %struct.safexcel_inv_result*) #1

declare dso_local i32 @ahash_request_set_tfm(%struct.TYPE_14__*, i32) #1

declare dso_local i32 @__crypto_ahash_cast(%struct.crypto_tfm*) #1

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local i32 @crypto_enqueue_request(i32*, %struct.TYPE_15__*) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

declare dso_local i32 @queue_work(i32, i32*) #1

declare dso_local i32 @wait_for_completion(i32*) #1

declare dso_local i32 @dev_warn(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
