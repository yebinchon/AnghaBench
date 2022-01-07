; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/ccree/extr_cc_hash.c_cc_unmap_result.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/ccree/extr_cc_hash.c_cc_unmap_result.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.ahash_req_ctx = type { i64, i32 }

@DMA_BIDIRECTIONAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [54 x i8] c"unmpa digest result buffer va (%pK) pa (%pad) len %u\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.device*, %struct.ahash_req_ctx*, i32, i32*)* @cc_unmap_result to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cc_unmap_result(%struct.device* %0, %struct.ahash_req_ctx* %1, i32 %2, i32* %3) #0 {
  %5 = alloca %struct.device*, align 8
  %6 = alloca %struct.ahash_req_ctx*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  store %struct.device* %0, %struct.device** %5, align 8
  store %struct.ahash_req_ctx* %1, %struct.ahash_req_ctx** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32* %3, i32** %8, align 8
  %9 = load %struct.ahash_req_ctx*, %struct.ahash_req_ctx** %6, align 8
  %10 = getelementptr inbounds %struct.ahash_req_ctx, %struct.ahash_req_ctx* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %35

13:                                               ; preds = %4
  %14 = load %struct.device*, %struct.device** %5, align 8
  %15 = load %struct.ahash_req_ctx*, %struct.ahash_req_ctx** %6, align 8
  %16 = getelementptr inbounds %struct.ahash_req_ctx, %struct.ahash_req_ctx* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load i32, i32* %7, align 4
  %19 = load i32, i32* @DMA_BIDIRECTIONAL, align 4
  %20 = call i32 @dma_unmap_single(%struct.device* %14, i64 %17, i32 %18, i32 %19)
  %21 = load %struct.device*, %struct.device** %5, align 8
  %22 = load %struct.ahash_req_ctx*, %struct.ahash_req_ctx** %6, align 8
  %23 = getelementptr inbounds %struct.ahash_req_ctx, %struct.ahash_req_ctx* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 8
  %25 = load %struct.ahash_req_ctx*, %struct.ahash_req_ctx** %6, align 8
  %26 = getelementptr inbounds %struct.ahash_req_ctx, %struct.ahash_req_ctx* %25, i32 0, i32 0
  %27 = load i32, i32* %7, align 4
  %28 = call i32 @dev_dbg(%struct.device* %21, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str, i64 0, i64 0), i32 %24, i64* %26, i32 %27)
  %29 = load i32*, i32** %8, align 8
  %30 = load %struct.ahash_req_ctx*, %struct.ahash_req_ctx** %6, align 8
  %31 = getelementptr inbounds %struct.ahash_req_ctx, %struct.ahash_req_ctx* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 8
  %33 = load i32, i32* %7, align 4
  %34 = call i32 @memcpy(i32* %29, i32 %32, i32 %33)
  br label %35

35:                                               ; preds = %13, %4
  %36 = load %struct.ahash_req_ctx*, %struct.ahash_req_ctx** %6, align 8
  %37 = getelementptr inbounds %struct.ahash_req_ctx, %struct.ahash_req_ctx* %36, i32 0, i32 0
  store i64 0, i64* %37, align 8
  ret void
}

declare dso_local i32 @dma_unmap_single(%struct.device*, i64, i32, i32) #1

declare dso_local i32 @dev_dbg(%struct.device*, i8*, i32, i64*, i32) #1

declare dso_local i32 @memcpy(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
