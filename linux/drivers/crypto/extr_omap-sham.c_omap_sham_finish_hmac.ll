; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/extr_omap-sham.c_omap_sham_finish_hmac.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/extr_omap-sham.c_omap_sham_finish_hmac.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32 }
%struct.ahash_request = type { i32, %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32 }
%struct.omap_sham_ctx = type { %struct.omap_sham_hmac_ctx* }
%struct.omap_sham_hmac_ctx = type { i32, i32 }

@shash = common dso_local global %struct.TYPE_8__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ahash_request*)* @omap_sham_finish_hmac to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @omap_sham_finish_hmac(%struct.ahash_request* %0) #0 {
  %2 = alloca %struct.ahash_request*, align 8
  %3 = alloca %struct.omap_sham_ctx*, align 8
  %4 = alloca %struct.omap_sham_hmac_ctx*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.ahash_request* %0, %struct.ahash_request** %2, align 8
  %7 = load %struct.ahash_request*, %struct.ahash_request** %2, align 8
  %8 = getelementptr inbounds %struct.ahash_request, %struct.ahash_request* %7, i32 0, i32 1
  %9 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = call %struct.omap_sham_ctx* @crypto_tfm_ctx(i32 %10)
  store %struct.omap_sham_ctx* %11, %struct.omap_sham_ctx** %3, align 8
  %12 = load %struct.omap_sham_ctx*, %struct.omap_sham_ctx** %3, align 8
  %13 = getelementptr inbounds %struct.omap_sham_ctx, %struct.omap_sham_ctx* %12, i32 0, i32 0
  %14 = load %struct.omap_sham_hmac_ctx*, %struct.omap_sham_hmac_ctx** %13, align 8
  store %struct.omap_sham_hmac_ctx* %14, %struct.omap_sham_hmac_ctx** %4, align 8
  %15 = load %struct.omap_sham_hmac_ctx*, %struct.omap_sham_hmac_ctx** %4, align 8
  %16 = getelementptr inbounds %struct.omap_sham_hmac_ctx, %struct.omap_sham_hmac_ctx* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @crypto_shash_blocksize(i32 %17)
  store i32 %18, i32* %5, align 4
  %19 = load %struct.omap_sham_hmac_ctx*, %struct.omap_sham_hmac_ctx** %4, align 8
  %20 = getelementptr inbounds %struct.omap_sham_hmac_ctx, %struct.omap_sham_hmac_ctx* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @crypto_shash_digestsize(i32 %21)
  store i32 %22, i32* %6, align 4
  %23 = load %struct.TYPE_8__*, %struct.TYPE_8__** @shash, align 8
  %24 = load %struct.omap_sham_hmac_ctx*, %struct.omap_sham_hmac_ctx** %4, align 8
  %25 = getelementptr inbounds %struct.omap_sham_hmac_ctx, %struct.omap_sham_hmac_ctx* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @SHASH_DESC_ON_STACK(%struct.TYPE_8__* %23, i32 %26)
  %28 = load %struct.omap_sham_hmac_ctx*, %struct.omap_sham_hmac_ctx** %4, align 8
  %29 = getelementptr inbounds %struct.omap_sham_hmac_ctx, %struct.omap_sham_hmac_ctx* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = load %struct.TYPE_8__*, %struct.TYPE_8__** @shash, align 8
  %32 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %31, i32 0, i32 0
  store i32 %30, i32* %32, align 4
  %33 = load %struct.TYPE_8__*, %struct.TYPE_8__** @shash, align 8
  %34 = call i64 @crypto_shash_init(%struct.TYPE_8__* %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %37

36:                                               ; preds = %1
  br label %59

37:                                               ; preds = %1
  %38 = load %struct.TYPE_8__*, %struct.TYPE_8__** @shash, align 8
  %39 = load %struct.omap_sham_hmac_ctx*, %struct.omap_sham_hmac_ctx** %4, align 8
  %40 = getelementptr inbounds %struct.omap_sham_hmac_ctx, %struct.omap_sham_hmac_ctx* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = load i32, i32* %5, align 4
  %43 = call i64 @crypto_shash_update(%struct.TYPE_8__* %38, i32 %41, i32 %42)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %46

45:                                               ; preds = %37
  br label %57

46:                                               ; preds = %37
  %47 = load %struct.TYPE_8__*, %struct.TYPE_8__** @shash, align 8
  %48 = load %struct.ahash_request*, %struct.ahash_request** %2, align 8
  %49 = getelementptr inbounds %struct.ahash_request, %struct.ahash_request* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = load i32, i32* %6, align 4
  %52 = load %struct.ahash_request*, %struct.ahash_request** %2, align 8
  %53 = getelementptr inbounds %struct.ahash_request, %struct.ahash_request* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = call i32 @crypto_shash_finup(%struct.TYPE_8__* %47, i32 %50, i32 %51, i32 %54)
  %56 = sext i32 %55 to i64
  br label %57

57:                                               ; preds = %46, %45
  %58 = phi i64 [ %43, %45 ], [ %56, %46 ]
  br label %59

59:                                               ; preds = %57, %36
  %60 = phi i64 [ %34, %36 ], [ %58, %57 ]
  %61 = trunc i64 %60 to i32
  ret i32 %61
}

declare dso_local %struct.omap_sham_ctx* @crypto_tfm_ctx(i32) #1

declare dso_local i32 @crypto_shash_blocksize(i32) #1

declare dso_local i32 @crypto_shash_digestsize(i32) #1

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
