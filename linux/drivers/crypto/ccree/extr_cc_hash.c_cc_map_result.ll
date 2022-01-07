; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/ccree/extr_cc_hash.c_cc_map_result.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/ccree/extr_cc_hash.c_cc_map_result.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.ahash_req_ctx = type { i32, i32 }

@DMA_BIDIRECTIONAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [50 x i8] c"Mapping digest result buffer %u B for DMA failed\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [56 x i8] c"Mapped digest result buffer %u B at va=%pK to dma=%pad\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.ahash_req_ctx*, i32)* @cc_map_result to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cc_map_result(%struct.device* %0, %struct.ahash_req_ctx* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.device*, align 8
  %6 = alloca %struct.ahash_req_ctx*, align 8
  %7 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %5, align 8
  store %struct.ahash_req_ctx* %1, %struct.ahash_req_ctx** %6, align 8
  store i32 %2, i32* %7, align 4
  %8 = load %struct.device*, %struct.device** %5, align 8
  %9 = load %struct.ahash_req_ctx*, %struct.ahash_req_ctx** %6, align 8
  %10 = getelementptr inbounds %struct.ahash_req_ctx, %struct.ahash_req_ctx* %9, i32 0, i32 1
  %11 = load i32, i32* %10, align 4
  %12 = load i32, i32* %7, align 4
  %13 = load i32, i32* @DMA_BIDIRECTIONAL, align 4
  %14 = call i32 @dma_map_single(%struct.device* %8, i32 %11, i32 %12, i32 %13)
  %15 = load %struct.ahash_req_ctx*, %struct.ahash_req_ctx** %6, align 8
  %16 = getelementptr inbounds %struct.ahash_req_ctx, %struct.ahash_req_ctx* %15, i32 0, i32 0
  store i32 %14, i32* %16, align 4
  %17 = load %struct.device*, %struct.device** %5, align 8
  %18 = load %struct.ahash_req_ctx*, %struct.ahash_req_ctx** %6, align 8
  %19 = getelementptr inbounds %struct.ahash_req_ctx, %struct.ahash_req_ctx* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = call i64 @dma_mapping_error(%struct.device* %17, i32 %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %29

23:                                               ; preds = %3
  %24 = load %struct.device*, %struct.device** %5, align 8
  %25 = load i32, i32* %7, align 4
  %26 = call i32 @dev_err(%struct.device* %24, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str, i64 0, i64 0), i32 %25)
  %27 = load i32, i32* @ENOMEM, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %4, align 4
  br label %38

29:                                               ; preds = %3
  %30 = load %struct.device*, %struct.device** %5, align 8
  %31 = load i32, i32* %7, align 4
  %32 = load %struct.ahash_req_ctx*, %struct.ahash_req_ctx** %6, align 8
  %33 = getelementptr inbounds %struct.ahash_req_ctx, %struct.ahash_req_ctx* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.ahash_req_ctx*, %struct.ahash_req_ctx** %6, align 8
  %36 = getelementptr inbounds %struct.ahash_req_ctx, %struct.ahash_req_ctx* %35, i32 0, i32 0
  %37 = call i32 @dev_dbg(%struct.device* %30, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.1, i64 0, i64 0), i32 %31, i32 %34, i32* %36)
  store i32 0, i32* %4, align 4
  br label %38

38:                                               ; preds = %29, %23
  %39 = load i32, i32* %4, align 4
  ret i32 %39
}

declare dso_local i32 @dma_map_single(%struct.device*, i32, i32, i32) #1

declare dso_local i64 @dma_mapping_error(%struct.device*, i32) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, i32) #1

declare dso_local i32 @dev_dbg(%struct.device*, i8*, i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
