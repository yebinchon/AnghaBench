; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/caam/extr_caamhash.c_ahash_unmap.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/caam/extr_caamhash.c_ahash_unmap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.ahash_edesc = type { i64, i64, i64 }
%struct.ahash_request = type { i32 }
%struct.caam_hash_state = type { i64 }

@DMA_TO_DEVICE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.device*, %struct.ahash_edesc*, %struct.ahash_request*, i32)* @ahash_unmap to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ahash_unmap(%struct.device* %0, %struct.ahash_edesc* %1, %struct.ahash_request* %2, i32 %3) #0 {
  %5 = alloca %struct.device*, align 8
  %6 = alloca %struct.ahash_edesc*, align 8
  %7 = alloca %struct.ahash_request*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.caam_hash_state*, align 8
  store %struct.device* %0, %struct.device** %5, align 8
  store %struct.ahash_edesc* %1, %struct.ahash_edesc** %6, align 8
  store %struct.ahash_request* %2, %struct.ahash_request** %7, align 8
  store i32 %3, i32* %8, align 4
  %10 = load %struct.ahash_request*, %struct.ahash_request** %7, align 8
  %11 = call %struct.caam_hash_state* @ahash_request_ctx(%struct.ahash_request* %10)
  store %struct.caam_hash_state* %11, %struct.caam_hash_state** %9, align 8
  %12 = load %struct.ahash_edesc*, %struct.ahash_edesc** %6, align 8
  %13 = getelementptr inbounds %struct.ahash_edesc, %struct.ahash_edesc* %12, i32 0, i32 2
  %14 = load i64, i64* %13, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %26

16:                                               ; preds = %4
  %17 = load %struct.device*, %struct.device** %5, align 8
  %18 = load %struct.ahash_request*, %struct.ahash_request** %7, align 8
  %19 = getelementptr inbounds %struct.ahash_request, %struct.ahash_request* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = load %struct.ahash_edesc*, %struct.ahash_edesc** %6, align 8
  %22 = getelementptr inbounds %struct.ahash_edesc, %struct.ahash_edesc* %21, i32 0, i32 2
  %23 = load i64, i64* %22, align 8
  %24 = load i32, i32* @DMA_TO_DEVICE, align 4
  %25 = call i32 @dma_unmap_sg(%struct.device* %17, i32 %20, i64 %23, i32 %24)
  br label %26

26:                                               ; preds = %16, %4
  %27 = load %struct.ahash_edesc*, %struct.ahash_edesc** %6, align 8
  %28 = getelementptr inbounds %struct.ahash_edesc, %struct.ahash_edesc* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %41

31:                                               ; preds = %26
  %32 = load %struct.device*, %struct.device** %5, align 8
  %33 = load %struct.ahash_edesc*, %struct.ahash_edesc** %6, align 8
  %34 = getelementptr inbounds %struct.ahash_edesc, %struct.ahash_edesc* %33, i32 0, i32 1
  %35 = load i64, i64* %34, align 8
  %36 = load %struct.ahash_edesc*, %struct.ahash_edesc** %6, align 8
  %37 = getelementptr inbounds %struct.ahash_edesc, %struct.ahash_edesc* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = load i32, i32* @DMA_TO_DEVICE, align 4
  %40 = call i32 @dma_unmap_single(%struct.device* %32, i64 %35, i64 %38, i32 %39)
  br label %41

41:                                               ; preds = %31, %26
  %42 = load %struct.caam_hash_state*, %struct.caam_hash_state** %9, align 8
  %43 = getelementptr inbounds %struct.caam_hash_state, %struct.caam_hash_state* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %58

46:                                               ; preds = %41
  %47 = load %struct.device*, %struct.device** %5, align 8
  %48 = load %struct.caam_hash_state*, %struct.caam_hash_state** %9, align 8
  %49 = getelementptr inbounds %struct.caam_hash_state, %struct.caam_hash_state* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = load %struct.caam_hash_state*, %struct.caam_hash_state** %9, align 8
  %52 = call i64* @current_buflen(%struct.caam_hash_state* %51)
  %53 = load i64, i64* %52, align 8
  %54 = load i32, i32* @DMA_TO_DEVICE, align 4
  %55 = call i32 @dma_unmap_single(%struct.device* %47, i64 %50, i64 %53, i32 %54)
  %56 = load %struct.caam_hash_state*, %struct.caam_hash_state** %9, align 8
  %57 = getelementptr inbounds %struct.caam_hash_state, %struct.caam_hash_state* %56, i32 0, i32 0
  store i64 0, i64* %57, align 8
  br label %58

58:                                               ; preds = %46, %41
  ret void
}

declare dso_local %struct.caam_hash_state* @ahash_request_ctx(%struct.ahash_request*) #1

declare dso_local i32 @dma_unmap_sg(%struct.device*, i32, i64, i32) #1

declare dso_local i32 @dma_unmap_single(%struct.device*, i64, i64, i32) #1

declare dso_local i64* @current_buflen(%struct.caam_hash_state*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
