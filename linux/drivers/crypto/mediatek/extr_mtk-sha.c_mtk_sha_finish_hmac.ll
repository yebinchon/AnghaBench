; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/mediatek/extr_mtk-sha.c_mtk_sha_finish_hmac.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/mediatek/extr_mtk-sha.c_mtk_sha_finish_hmac.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32 }
%struct.ahash_request = type { i32, %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32 }
%struct.mtk_sha_ctx = type { %struct.mtk_sha_hmac_ctx* }
%struct.mtk_sha_hmac_ctx = type { i32, i32 }
%struct.mtk_sha_reqctx = type { i32, i32 }

@shash = common dso_local global %struct.TYPE_8__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ahash_request*)* @mtk_sha_finish_hmac to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mtk_sha_finish_hmac(%struct.ahash_request* %0) #0 {
  %2 = alloca %struct.ahash_request*, align 8
  %3 = alloca %struct.mtk_sha_ctx*, align 8
  %4 = alloca %struct.mtk_sha_hmac_ctx*, align 8
  %5 = alloca %struct.mtk_sha_reqctx*, align 8
  store %struct.ahash_request* %0, %struct.ahash_request** %2, align 8
  %6 = load %struct.ahash_request*, %struct.ahash_request** %2, align 8
  %7 = getelementptr inbounds %struct.ahash_request, %struct.ahash_request* %6, i32 0, i32 1
  %8 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = call %struct.mtk_sha_ctx* @crypto_tfm_ctx(i32 %9)
  store %struct.mtk_sha_ctx* %10, %struct.mtk_sha_ctx** %3, align 8
  %11 = load %struct.mtk_sha_ctx*, %struct.mtk_sha_ctx** %3, align 8
  %12 = getelementptr inbounds %struct.mtk_sha_ctx, %struct.mtk_sha_ctx* %11, i32 0, i32 0
  %13 = load %struct.mtk_sha_hmac_ctx*, %struct.mtk_sha_hmac_ctx** %12, align 8
  store %struct.mtk_sha_hmac_ctx* %13, %struct.mtk_sha_hmac_ctx** %4, align 8
  %14 = load %struct.ahash_request*, %struct.ahash_request** %2, align 8
  %15 = call %struct.mtk_sha_reqctx* @ahash_request_ctx(%struct.ahash_request* %14)
  store %struct.mtk_sha_reqctx* %15, %struct.mtk_sha_reqctx** %5, align 8
  %16 = load %struct.TYPE_8__*, %struct.TYPE_8__** @shash, align 8
  %17 = load %struct.mtk_sha_hmac_ctx*, %struct.mtk_sha_hmac_ctx** %4, align 8
  %18 = getelementptr inbounds %struct.mtk_sha_hmac_ctx, %struct.mtk_sha_hmac_ctx* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @SHASH_DESC_ON_STACK(%struct.TYPE_8__* %16, i32 %19)
  %21 = load %struct.mtk_sha_hmac_ctx*, %struct.mtk_sha_hmac_ctx** %4, align 8
  %22 = getelementptr inbounds %struct.mtk_sha_hmac_ctx, %struct.mtk_sha_hmac_ctx* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = load %struct.TYPE_8__*, %struct.TYPE_8__** @shash, align 8
  %25 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %24, i32 0, i32 0
  store i32 %23, i32* %25, align 4
  %26 = load %struct.TYPE_8__*, %struct.TYPE_8__** @shash, align 8
  %27 = call i64 @crypto_shash_init(%struct.TYPE_8__* %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %1
  br label %56

30:                                               ; preds = %1
  %31 = load %struct.TYPE_8__*, %struct.TYPE_8__** @shash, align 8
  %32 = load %struct.mtk_sha_hmac_ctx*, %struct.mtk_sha_hmac_ctx** %4, align 8
  %33 = getelementptr inbounds %struct.mtk_sha_hmac_ctx, %struct.mtk_sha_hmac_ctx* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.mtk_sha_reqctx*, %struct.mtk_sha_reqctx** %5, align 8
  %36 = getelementptr inbounds %struct.mtk_sha_reqctx, %struct.mtk_sha_reqctx* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = call i64 @crypto_shash_update(%struct.TYPE_8__* %31, i32 %34, i32 %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %41

40:                                               ; preds = %30
  br label %54

41:                                               ; preds = %30
  %42 = load %struct.TYPE_8__*, %struct.TYPE_8__** @shash, align 8
  %43 = load %struct.ahash_request*, %struct.ahash_request** %2, align 8
  %44 = getelementptr inbounds %struct.ahash_request, %struct.ahash_request* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = load %struct.mtk_sha_reqctx*, %struct.mtk_sha_reqctx** %5, align 8
  %47 = getelementptr inbounds %struct.mtk_sha_reqctx, %struct.mtk_sha_reqctx* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = load %struct.ahash_request*, %struct.ahash_request** %2, align 8
  %50 = getelementptr inbounds %struct.ahash_request, %struct.ahash_request* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = call i32 @crypto_shash_finup(%struct.TYPE_8__* %42, i32 %45, i32 %48, i32 %51)
  %53 = sext i32 %52 to i64
  br label %54

54:                                               ; preds = %41, %40
  %55 = phi i64 [ %38, %40 ], [ %53, %41 ]
  br label %56

56:                                               ; preds = %54, %29
  %57 = phi i64 [ %27, %29 ], [ %55, %54 ]
  %58 = trunc i64 %57 to i32
  ret i32 %58
}

declare dso_local %struct.mtk_sha_ctx* @crypto_tfm_ctx(i32) #1

declare dso_local %struct.mtk_sha_reqctx* @ahash_request_ctx(%struct.ahash_request*) #1

declare dso_local i32 @SHASH_DESC_ON_STACK(%struct.TYPE_8__*, i32) #1

declare dso_local i64 @crypto_shash_init(%struct.TYPE_8__*) #1

declare dso_local i64 @crypto_shash_update(%struct.TYPE_8__*, i32, i32) #1

declare dso_local i32 @crypto_shash_finup(%struct.TYPE_8__*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
