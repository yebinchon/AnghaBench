; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/extr_mxs-dcp.c_dcp_sha_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/extr_mxs-dcp.c_dcp_sha_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ahash_request = type { i32 }
%struct.crypto_ahash = type { i32 }
%struct.dcp_async_ctx = type { i32, i32, i64, i64, i32 }
%struct.hash_alg_common = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [5 x i8] c"sha1\00", align 1
@MXS_DCP_CONTROL1_HASH_SELECT_SHA1 = common dso_local global i32 0, align 4
@MXS_DCP_CONTROL1_HASH_SELECT_SHA256 = common dso_local global i32 0, align 4
@DCP_CHAN_HASH_SHA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ahash_request*)* @dcp_sha_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dcp_sha_init(%struct.ahash_request* %0) #0 {
  %2 = alloca %struct.ahash_request*, align 8
  %3 = alloca %struct.crypto_ahash*, align 8
  %4 = alloca %struct.dcp_async_ctx*, align 8
  %5 = alloca %struct.hash_alg_common*, align 8
  store %struct.ahash_request* %0, %struct.ahash_request** %2, align 8
  %6 = load %struct.ahash_request*, %struct.ahash_request** %2, align 8
  %7 = call %struct.crypto_ahash* @crypto_ahash_reqtfm(%struct.ahash_request* %6)
  store %struct.crypto_ahash* %7, %struct.crypto_ahash** %3, align 8
  %8 = load %struct.crypto_ahash*, %struct.crypto_ahash** %3, align 8
  %9 = call %struct.dcp_async_ctx* @crypto_ahash_ctx(%struct.crypto_ahash* %8)
  store %struct.dcp_async_ctx* %9, %struct.dcp_async_ctx** %4, align 8
  %10 = load %struct.crypto_ahash*, %struct.crypto_ahash** %3, align 8
  %11 = call %struct.hash_alg_common* @crypto_hash_alg_common(%struct.crypto_ahash* %10)
  store %struct.hash_alg_common* %11, %struct.hash_alg_common** %5, align 8
  %12 = load %struct.dcp_async_ctx*, %struct.dcp_async_ctx** %4, align 8
  %13 = call i32 @memset(%struct.dcp_async_ctx* %12, i32 0, i32 32)
  %14 = load %struct.hash_alg_common*, %struct.hash_alg_common** %5, align 8
  %15 = getelementptr inbounds %struct.hash_alg_common, %struct.hash_alg_common* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = call i64 @strcmp(i32 %17, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  %19 = icmp eq i64 %18, 0
  br i1 %19, label %20, label %24

20:                                               ; preds = %1
  %21 = load i32, i32* @MXS_DCP_CONTROL1_HASH_SELECT_SHA1, align 4
  %22 = load %struct.dcp_async_ctx*, %struct.dcp_async_ctx** %4, align 8
  %23 = getelementptr inbounds %struct.dcp_async_ctx, %struct.dcp_async_ctx* %22, i32 0, i32 4
  store i32 %21, i32* %23, align 8
  br label %28

24:                                               ; preds = %1
  %25 = load i32, i32* @MXS_DCP_CONTROL1_HASH_SELECT_SHA256, align 4
  %26 = load %struct.dcp_async_ctx*, %struct.dcp_async_ctx** %4, align 8
  %27 = getelementptr inbounds %struct.dcp_async_ctx, %struct.dcp_async_ctx* %26, i32 0, i32 4
  store i32 %25, i32* %27, align 8
  br label %28

28:                                               ; preds = %24, %20
  %29 = load %struct.dcp_async_ctx*, %struct.dcp_async_ctx** %4, align 8
  %30 = getelementptr inbounds %struct.dcp_async_ctx, %struct.dcp_async_ctx* %29, i32 0, i32 3
  store i64 0, i64* %30, align 8
  %31 = load %struct.dcp_async_ctx*, %struct.dcp_async_ctx** %4, align 8
  %32 = getelementptr inbounds %struct.dcp_async_ctx, %struct.dcp_async_ctx* %31, i32 0, i32 2
  store i64 0, i64* %32, align 8
  %33 = load i32, i32* @DCP_CHAN_HASH_SHA, align 4
  %34 = load %struct.dcp_async_ctx*, %struct.dcp_async_ctx** %4, align 8
  %35 = getelementptr inbounds %struct.dcp_async_ctx, %struct.dcp_async_ctx* %34, i32 0, i32 1
  store i32 %33, i32* %35, align 4
  %36 = load %struct.dcp_async_ctx*, %struct.dcp_async_ctx** %4, align 8
  %37 = getelementptr inbounds %struct.dcp_async_ctx, %struct.dcp_async_ctx* %36, i32 0, i32 0
  %38 = call i32 @mutex_init(i32* %37)
  ret i32 0
}

declare dso_local %struct.crypto_ahash* @crypto_ahash_reqtfm(%struct.ahash_request*) #1

declare dso_local %struct.dcp_async_ctx* @crypto_ahash_ctx(%struct.crypto_ahash*) #1

declare dso_local %struct.hash_alg_common* @crypto_hash_alg_common(%struct.crypto_ahash*) #1

declare dso_local i32 @memset(%struct.dcp_async_ctx*, i32, i32) #1

declare dso_local i64 @strcmp(i32, i8*) #1

declare dso_local i32 @mutex_init(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
