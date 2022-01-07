; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/ccree/extr_cc_hash.c_cc_init_req.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/ccree/extr_cc_hash.c_cc_init_req.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.ahash_req_ctx = type { i32, i32, i32 }
%struct.cc_hash_ctx = type { i32, i64, i8*, i64, i8*, i32, i32, i32, i32 }

@DRV_CIPHER_XCBC_MAC = common dso_local global i64 0, align 8
@DRV_CIPHER_CMAC = common dso_local global i64 0, align 8
@DMA_BIDIRECTIONAL = common dso_local global i32 0, align 4
@DRV_HASH_SHA512 = common dso_local global i64 0, align 8
@DRV_HASH_SHA384 = common dso_local global i64 0, align 8
@cc_digest_len_sha512_init = common dso_local global i8* null, align 8
@cc_digest_len_init = common dso_local global i8* null, align 8
@DRV_HASH_NULL = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.device*, %struct.ahash_req_ctx*, %struct.cc_hash_ctx*)* @cc_init_req to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cc_init_req(%struct.device* %0, %struct.ahash_req_ctx* %1, %struct.cc_hash_ctx* %2) #0 {
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.ahash_req_ctx*, align 8
  %6 = alloca %struct.cc_hash_ctx*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  store %struct.device* %0, %struct.device** %4, align 8
  store %struct.ahash_req_ctx* %1, %struct.ahash_req_ctx** %5, align 8
  store %struct.cc_hash_ctx* %2, %struct.cc_hash_ctx** %6, align 8
  %9 = load %struct.cc_hash_ctx*, %struct.cc_hash_ctx** %6, align 8
  %10 = getelementptr inbounds %struct.cc_hash_ctx, %struct.cc_hash_ctx* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  store i32 %11, i32* %7, align 4
  %12 = load %struct.ahash_req_ctx*, %struct.ahash_req_ctx** %5, align 8
  %13 = call i32 @memset(%struct.ahash_req_ctx* %12, i32 0, i32 12)
  %14 = load i32, i32* %7, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %105

16:                                               ; preds = %3
  %17 = load %struct.cc_hash_ctx*, %struct.cc_hash_ctx** %6, align 8
  %18 = getelementptr inbounds %struct.cc_hash_ctx, %struct.cc_hash_ctx* %17, i32 0, i32 1
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* @DRV_CIPHER_XCBC_MAC, align 8
  %21 = icmp ne i64 %19, %20
  br i1 %21, label %22, label %78

22:                                               ; preds = %16
  %23 = load %struct.cc_hash_ctx*, %struct.cc_hash_ctx** %6, align 8
  %24 = getelementptr inbounds %struct.cc_hash_ctx, %struct.cc_hash_ctx* %23, i32 0, i32 1
  %25 = load i64, i64* %24, align 8
  %26 = load i64, i64* @DRV_CIPHER_CMAC, align 8
  %27 = icmp ne i64 %25, %26
  br i1 %27, label %28, label %78

28:                                               ; preds = %22
  %29 = load %struct.device*, %struct.device** %4, align 8
  %30 = load %struct.cc_hash_ctx*, %struct.cc_hash_ctx** %6, align 8
  %31 = getelementptr inbounds %struct.cc_hash_ctx, %struct.cc_hash_ctx* %30, i32 0, i32 8
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.cc_hash_ctx*, %struct.cc_hash_ctx** %6, align 8
  %34 = getelementptr inbounds %struct.cc_hash_ctx, %struct.cc_hash_ctx* %33, i32 0, i32 5
  %35 = load i32, i32* %34, align 8
  %36 = load i32, i32* @DMA_BIDIRECTIONAL, align 4
  %37 = call i32 @dma_sync_single_for_cpu(%struct.device* %29, i32 %32, i32 %35, i32 %36)
  %38 = load %struct.ahash_req_ctx*, %struct.ahash_req_ctx** %5, align 8
  %39 = getelementptr inbounds %struct.ahash_req_ctx, %struct.ahash_req_ctx* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = load %struct.cc_hash_ctx*, %struct.cc_hash_ctx** %6, align 8
  %42 = getelementptr inbounds %struct.cc_hash_ctx, %struct.cc_hash_ctx* %41, i32 0, i32 2
  %43 = load i8*, i8** %42, align 8
  %44 = load %struct.cc_hash_ctx*, %struct.cc_hash_ctx** %6, align 8
  %45 = getelementptr inbounds %struct.cc_hash_ctx, %struct.cc_hash_ctx* %44, i32 0, i32 5
  %46 = load i32, i32* %45, align 8
  %47 = call i32 @memcpy(i32 %40, i8* %43, i32 %46)
  %48 = load %struct.cc_hash_ctx*, %struct.cc_hash_ctx** %6, align 8
  %49 = getelementptr inbounds %struct.cc_hash_ctx, %struct.cc_hash_ctx* %48, i32 0, i32 3
  %50 = load i64, i64* %49, align 8
  %51 = load i64, i64* @DRV_HASH_SHA512, align 8
  %52 = icmp eq i64 %50, %51
  br i1 %52, label %59, label %53

53:                                               ; preds = %28
  %54 = load %struct.cc_hash_ctx*, %struct.cc_hash_ctx** %6, align 8
  %55 = getelementptr inbounds %struct.cc_hash_ctx, %struct.cc_hash_ctx* %54, i32 0, i32 3
  %56 = load i64, i64* %55, align 8
  %57 = load i64, i64* @DRV_HASH_SHA384, align 8
  %58 = icmp eq i64 %56, %57
  br i1 %58, label %59, label %68

59:                                               ; preds = %53, %28
  %60 = load %struct.ahash_req_ctx*, %struct.ahash_req_ctx** %5, align 8
  %61 = getelementptr inbounds %struct.ahash_req_ctx, %struct.ahash_req_ctx* %60, i32 0, i32 2
  %62 = load i32, i32* %61, align 4
  %63 = load i8*, i8** @cc_digest_len_sha512_init, align 8
  %64 = load %struct.cc_hash_ctx*, %struct.cc_hash_ctx** %6, align 8
  %65 = getelementptr inbounds %struct.cc_hash_ctx, %struct.cc_hash_ctx* %64, i32 0, i32 7
  %66 = load i32, i32* %65, align 8
  %67 = call i32 @memcpy(i32 %62, i8* %63, i32 %66)
  br label %77

68:                                               ; preds = %53
  %69 = load %struct.ahash_req_ctx*, %struct.ahash_req_ctx** %5, align 8
  %70 = getelementptr inbounds %struct.ahash_req_ctx, %struct.ahash_req_ctx* %69, i32 0, i32 2
  %71 = load i32, i32* %70, align 4
  %72 = load i8*, i8** @cc_digest_len_init, align 8
  %73 = load %struct.cc_hash_ctx*, %struct.cc_hash_ctx** %6, align 8
  %74 = getelementptr inbounds %struct.cc_hash_ctx, %struct.cc_hash_ctx* %73, i32 0, i32 7
  %75 = load i32, i32* %74, align 8
  %76 = call i32 @memcpy(i32 %71, i8* %72, i32 %75)
  br label %77

77:                                               ; preds = %68, %59
  br label %78

78:                                               ; preds = %77, %22, %16
  %79 = load %struct.cc_hash_ctx*, %struct.cc_hash_ctx** %6, align 8
  %80 = getelementptr inbounds %struct.cc_hash_ctx, %struct.cc_hash_ctx* %79, i32 0, i32 3
  %81 = load i64, i64* %80, align 8
  %82 = load i64, i64* @DRV_HASH_NULL, align 8
  %83 = icmp ne i64 %81, %82
  br i1 %83, label %84, label %104

84:                                               ; preds = %78
  %85 = load %struct.device*, %struct.device** %4, align 8
  %86 = load %struct.cc_hash_ctx*, %struct.cc_hash_ctx** %6, align 8
  %87 = getelementptr inbounds %struct.cc_hash_ctx, %struct.cc_hash_ctx* %86, i32 0, i32 6
  %88 = load i32, i32* %87, align 4
  %89 = load %struct.cc_hash_ctx*, %struct.cc_hash_ctx** %6, align 8
  %90 = getelementptr inbounds %struct.cc_hash_ctx, %struct.cc_hash_ctx* %89, i32 0, i32 5
  %91 = load i32, i32* %90, align 8
  %92 = load i32, i32* @DMA_BIDIRECTIONAL, align 4
  %93 = call i32 @dma_sync_single_for_cpu(%struct.device* %85, i32 %88, i32 %91, i32 %92)
  %94 = load %struct.ahash_req_ctx*, %struct.ahash_req_ctx** %5, align 8
  %95 = getelementptr inbounds %struct.ahash_req_ctx, %struct.ahash_req_ctx* %94, i32 0, i32 1
  %96 = load i32, i32* %95, align 4
  %97 = load %struct.cc_hash_ctx*, %struct.cc_hash_ctx** %6, align 8
  %98 = getelementptr inbounds %struct.cc_hash_ctx, %struct.cc_hash_ctx* %97, i32 0, i32 4
  %99 = load i8*, i8** %98, align 8
  %100 = load %struct.cc_hash_ctx*, %struct.cc_hash_ctx** %6, align 8
  %101 = getelementptr inbounds %struct.cc_hash_ctx, %struct.cc_hash_ctx* %100, i32 0, i32 5
  %102 = load i32, i32* %101, align 8
  %103 = call i32 @memcpy(i32 %96, i8* %99, i32 %102)
  br label %104

104:                                              ; preds = %84, %78
  br label %119

105:                                              ; preds = %3
  %106 = load %struct.device*, %struct.device** %4, align 8
  %107 = load %struct.cc_hash_ctx*, %struct.cc_hash_ctx** %6, align 8
  %108 = getelementptr inbounds %struct.cc_hash_ctx, %struct.cc_hash_ctx* %107, i32 0, i32 3
  %109 = load i64, i64* %108, align 8
  %110 = call i8* @cc_larval_digest(%struct.device* %106, i64 %109)
  store i8* %110, i8** %8, align 8
  %111 = load %struct.ahash_req_ctx*, %struct.ahash_req_ctx** %5, align 8
  %112 = getelementptr inbounds %struct.ahash_req_ctx, %struct.ahash_req_ctx* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 4
  %114 = load i8*, i8** %8, align 8
  %115 = load %struct.cc_hash_ctx*, %struct.cc_hash_ctx** %6, align 8
  %116 = getelementptr inbounds %struct.cc_hash_ctx, %struct.cc_hash_ctx* %115, i32 0, i32 5
  %117 = load i32, i32* %116, align 8
  %118 = call i32 @memcpy(i32 %113, i8* %114, i32 %117)
  br label %119

119:                                              ; preds = %105, %104
  ret void
}

declare dso_local i32 @memset(%struct.ahash_req_ctx*, i32, i32) #1

declare dso_local i32 @dma_sync_single_for_cpu(%struct.device*, i32, i32, i32) #1

declare dso_local i32 @memcpy(i32, i8*, i32) #1

declare dso_local i8* @cc_larval_digest(%struct.device*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
