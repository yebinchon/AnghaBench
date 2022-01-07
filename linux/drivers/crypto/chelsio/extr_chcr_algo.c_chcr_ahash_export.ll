; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/chelsio/extr_chcr_algo.c_chcr_ahash_export.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/chelsio/extr_chcr_algo.c_chcr_ahash_export.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ahash_request = type { i32 }
%struct.chcr_ahash_req_ctx = type { i32, i32, i32, i32, i32 }

@CHCR_HASH_MAX_DIGEST_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ahash_request*, i8*)* @chcr_ahash_export to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @chcr_ahash_export(%struct.ahash_request* %0, i8* %1) #0 {
  %3 = alloca %struct.ahash_request*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.chcr_ahash_req_ctx*, align 8
  %6 = alloca %struct.chcr_ahash_req_ctx*, align 8
  store %struct.ahash_request* %0, %struct.ahash_request** %3, align 8
  store i8* %1, i8** %4, align 8
  %7 = load %struct.ahash_request*, %struct.ahash_request** %3, align 8
  %8 = call %struct.chcr_ahash_req_ctx* @ahash_request_ctx(%struct.ahash_request* %7)
  store %struct.chcr_ahash_req_ctx* %8, %struct.chcr_ahash_req_ctx** %5, align 8
  %9 = load i8*, i8** %4, align 8
  %10 = bitcast i8* %9 to %struct.chcr_ahash_req_ctx*
  store %struct.chcr_ahash_req_ctx* %10, %struct.chcr_ahash_req_ctx** %6, align 8
  %11 = load %struct.chcr_ahash_req_ctx*, %struct.chcr_ahash_req_ctx** %5, align 8
  %12 = getelementptr inbounds %struct.chcr_ahash_req_ctx, %struct.chcr_ahash_req_ctx* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 4
  %14 = load %struct.chcr_ahash_req_ctx*, %struct.chcr_ahash_req_ctx** %6, align 8
  %15 = getelementptr inbounds %struct.chcr_ahash_req_ctx, %struct.chcr_ahash_req_ctx* %14, i32 0, i32 1
  store i32 %13, i32* %15, align 4
  %16 = load %struct.chcr_ahash_req_ctx*, %struct.chcr_ahash_req_ctx** %5, align 8
  %17 = getelementptr inbounds %struct.chcr_ahash_req_ctx, %struct.chcr_ahash_req_ctx* %16, i32 0, i32 4
  %18 = load i32, i32* %17, align 4
  %19 = load %struct.chcr_ahash_req_ctx*, %struct.chcr_ahash_req_ctx** %6, align 8
  %20 = getelementptr inbounds %struct.chcr_ahash_req_ctx, %struct.chcr_ahash_req_ctx* %19, i32 0, i32 4
  store i32 %18, i32* %20, align 4
  %21 = load %struct.chcr_ahash_req_ctx*, %struct.chcr_ahash_req_ctx** %6, align 8
  %22 = getelementptr inbounds %struct.chcr_ahash_req_ctx, %struct.chcr_ahash_req_ctx* %21, i32 0, i32 3
  %23 = load i32, i32* %22, align 4
  %24 = load %struct.chcr_ahash_req_ctx*, %struct.chcr_ahash_req_ctx** %5, align 8
  %25 = getelementptr inbounds %struct.chcr_ahash_req_ctx, %struct.chcr_ahash_req_ctx* %24, i32 0, i32 2
  %26 = load i32, i32* %25, align 4
  %27 = load %struct.chcr_ahash_req_ctx*, %struct.chcr_ahash_req_ctx** %5, align 8
  %28 = getelementptr inbounds %struct.chcr_ahash_req_ctx, %struct.chcr_ahash_req_ctx* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @memcpy(i32 %23, i32 %26, i32 %29)
  %31 = load %struct.chcr_ahash_req_ctx*, %struct.chcr_ahash_req_ctx** %6, align 8
  %32 = getelementptr inbounds %struct.chcr_ahash_req_ctx, %struct.chcr_ahash_req_ctx* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = load %struct.chcr_ahash_req_ctx*, %struct.chcr_ahash_req_ctx** %5, align 8
  %35 = getelementptr inbounds %struct.chcr_ahash_req_ctx, %struct.chcr_ahash_req_ctx* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = load i32, i32* @CHCR_HASH_MAX_DIGEST_SIZE, align 4
  %38 = call i32 @memcpy(i32 %33, i32 %36, i32 %37)
  %39 = load %struct.chcr_ahash_req_ctx*, %struct.chcr_ahash_req_ctx** %6, align 8
  %40 = call i32 @chcr_init_hctx_per_wr(%struct.chcr_ahash_req_ctx* %39)
  ret i32 0
}

declare dso_local %struct.chcr_ahash_req_ctx* @ahash_request_ctx(%struct.ahash_request*) #1

declare dso_local i32 @memcpy(i32, i32, i32) #1

declare dso_local i32 @chcr_init_hctx_per_wr(%struct.chcr_ahash_req_ctx*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
