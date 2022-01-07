; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/ccree/extr_cc_hash.c_cc_unmap_req.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/ccree/extr_cc_hash.c_cc_unmap_req.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.ahash_req_ctx = type { i64, i64, i64 }
%struct.cc_hash_ctx = type { i32 }

@DMA_BIDIRECTIONAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [51 x i8] c"Unmapped digest-buffer: digest_buff_dma_addr=%pad\0A\00", align 1
@HASH_MAX_LEN_SIZE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [66 x i8] c"Unmapped digest-bytes-len buffer: digest_bytes_len_dma_addr=%pad\0A\00", align 1
@.str.2 = private unnamed_addr constant [49 x i8] c"Unmapped opad-digest: opad_digest_dma_addr=%pad\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.device*, %struct.ahash_req_ctx*, %struct.cc_hash_ctx*)* @cc_unmap_req to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cc_unmap_req(%struct.device* %0, %struct.ahash_req_ctx* %1, %struct.cc_hash_ctx* %2) #0 {
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.ahash_req_ctx*, align 8
  %6 = alloca %struct.cc_hash_ctx*, align 8
  store %struct.device* %0, %struct.device** %4, align 8
  store %struct.ahash_req_ctx* %1, %struct.ahash_req_ctx** %5, align 8
  store %struct.cc_hash_ctx* %2, %struct.cc_hash_ctx** %6, align 8
  %7 = load %struct.ahash_req_ctx*, %struct.ahash_req_ctx** %5, align 8
  %8 = getelementptr inbounds %struct.ahash_req_ctx, %struct.ahash_req_ctx* %7, i32 0, i32 2
  %9 = load i64, i64* %8, align 8
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %27

11:                                               ; preds = %3
  %12 = load %struct.device*, %struct.device** %4, align 8
  %13 = load %struct.ahash_req_ctx*, %struct.ahash_req_ctx** %5, align 8
  %14 = getelementptr inbounds %struct.ahash_req_ctx, %struct.ahash_req_ctx* %13, i32 0, i32 2
  %15 = load i64, i64* %14, align 8
  %16 = load %struct.cc_hash_ctx*, %struct.cc_hash_ctx** %6, align 8
  %17 = getelementptr inbounds %struct.cc_hash_ctx, %struct.cc_hash_ctx* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = load i32, i32* @DMA_BIDIRECTIONAL, align 4
  %20 = call i32 @dma_unmap_single(%struct.device* %12, i64 %15, i32 %18, i32 %19)
  %21 = load %struct.device*, %struct.device** %4, align 8
  %22 = load %struct.ahash_req_ctx*, %struct.ahash_req_ctx** %5, align 8
  %23 = getelementptr inbounds %struct.ahash_req_ctx, %struct.ahash_req_ctx* %22, i32 0, i32 2
  %24 = call i32 @dev_dbg(%struct.device* %21, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str, i64 0, i64 0), i64* %23)
  %25 = load %struct.ahash_req_ctx*, %struct.ahash_req_ctx** %5, align 8
  %26 = getelementptr inbounds %struct.ahash_req_ctx, %struct.ahash_req_ctx* %25, i32 0, i32 2
  store i64 0, i64* %26, align 8
  br label %27

27:                                               ; preds = %11, %3
  %28 = load %struct.ahash_req_ctx*, %struct.ahash_req_ctx** %5, align 8
  %29 = getelementptr inbounds %struct.ahash_req_ctx, %struct.ahash_req_ctx* %28, i32 0, i32 1
  %30 = load i64, i64* %29, align 8
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %46

32:                                               ; preds = %27
  %33 = load %struct.device*, %struct.device** %4, align 8
  %34 = load %struct.ahash_req_ctx*, %struct.ahash_req_ctx** %5, align 8
  %35 = getelementptr inbounds %struct.ahash_req_ctx, %struct.ahash_req_ctx* %34, i32 0, i32 1
  %36 = load i64, i64* %35, align 8
  %37 = load i32, i32* @HASH_MAX_LEN_SIZE, align 4
  %38 = load i32, i32* @DMA_BIDIRECTIONAL, align 4
  %39 = call i32 @dma_unmap_single(%struct.device* %33, i64 %36, i32 %37, i32 %38)
  %40 = load %struct.device*, %struct.device** %4, align 8
  %41 = load %struct.ahash_req_ctx*, %struct.ahash_req_ctx** %5, align 8
  %42 = getelementptr inbounds %struct.ahash_req_ctx, %struct.ahash_req_ctx* %41, i32 0, i32 1
  %43 = call i32 @dev_dbg(%struct.device* %40, i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str.1, i64 0, i64 0), i64* %42)
  %44 = load %struct.ahash_req_ctx*, %struct.ahash_req_ctx** %5, align 8
  %45 = getelementptr inbounds %struct.ahash_req_ctx, %struct.ahash_req_ctx* %44, i32 0, i32 1
  store i64 0, i64* %45, align 8
  br label %46

46:                                               ; preds = %32, %27
  %47 = load %struct.ahash_req_ctx*, %struct.ahash_req_ctx** %5, align 8
  %48 = getelementptr inbounds %struct.ahash_req_ctx, %struct.ahash_req_ctx* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %67

51:                                               ; preds = %46
  %52 = load %struct.device*, %struct.device** %4, align 8
  %53 = load %struct.ahash_req_ctx*, %struct.ahash_req_ctx** %5, align 8
  %54 = getelementptr inbounds %struct.ahash_req_ctx, %struct.ahash_req_ctx* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = load %struct.cc_hash_ctx*, %struct.cc_hash_ctx** %6, align 8
  %57 = getelementptr inbounds %struct.cc_hash_ctx, %struct.cc_hash_ctx* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = load i32, i32* @DMA_BIDIRECTIONAL, align 4
  %60 = call i32 @dma_unmap_single(%struct.device* %52, i64 %55, i32 %58, i32 %59)
  %61 = load %struct.device*, %struct.device** %4, align 8
  %62 = load %struct.ahash_req_ctx*, %struct.ahash_req_ctx** %5, align 8
  %63 = getelementptr inbounds %struct.ahash_req_ctx, %struct.ahash_req_ctx* %62, i32 0, i32 0
  %64 = call i32 @dev_dbg(%struct.device* %61, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.2, i64 0, i64 0), i64* %63)
  %65 = load %struct.ahash_req_ctx*, %struct.ahash_req_ctx** %5, align 8
  %66 = getelementptr inbounds %struct.ahash_req_ctx, %struct.ahash_req_ctx* %65, i32 0, i32 0
  store i64 0, i64* %66, align 8
  br label %67

67:                                               ; preds = %51, %46
  ret void
}

declare dso_local i32 @dma_unmap_single(%struct.device*, i64, i32, i32) #1

declare dso_local i32 @dev_dbg(%struct.device*, i8*, i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
