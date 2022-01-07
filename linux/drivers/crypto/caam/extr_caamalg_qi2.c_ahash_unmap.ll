; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/caam/extr_caamalg_qi2.c_ahash_unmap.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/caam/extr_caamalg_qi2.c_ahash_unmap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.ahash_edesc = type { i64, i64, i64 }
%struct.ahash_request = type { i32 }
%struct.caam_hash_state = type { i64 }

@DMA_TO_DEVICE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.device*, %struct.ahash_edesc*, %struct.ahash_request*)* @ahash_unmap to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ahash_unmap(%struct.device* %0, %struct.ahash_edesc* %1, %struct.ahash_request* %2) #0 {
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.ahash_edesc*, align 8
  %6 = alloca %struct.ahash_request*, align 8
  %7 = alloca %struct.caam_hash_state*, align 8
  store %struct.device* %0, %struct.device** %4, align 8
  store %struct.ahash_edesc* %1, %struct.ahash_edesc** %5, align 8
  store %struct.ahash_request* %2, %struct.ahash_request** %6, align 8
  %8 = load %struct.ahash_request*, %struct.ahash_request** %6, align 8
  %9 = call %struct.caam_hash_state* @ahash_request_ctx(%struct.ahash_request* %8)
  store %struct.caam_hash_state* %9, %struct.caam_hash_state** %7, align 8
  %10 = load %struct.ahash_edesc*, %struct.ahash_edesc** %5, align 8
  %11 = getelementptr inbounds %struct.ahash_edesc, %struct.ahash_edesc* %10, i32 0, i32 2
  %12 = load i64, i64* %11, align 8
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %24

14:                                               ; preds = %3
  %15 = load %struct.device*, %struct.device** %4, align 8
  %16 = load %struct.ahash_request*, %struct.ahash_request** %6, align 8
  %17 = getelementptr inbounds %struct.ahash_request, %struct.ahash_request* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = load %struct.ahash_edesc*, %struct.ahash_edesc** %5, align 8
  %20 = getelementptr inbounds %struct.ahash_edesc, %struct.ahash_edesc* %19, i32 0, i32 2
  %21 = load i64, i64* %20, align 8
  %22 = load i32, i32* @DMA_TO_DEVICE, align 4
  %23 = call i32 @dma_unmap_sg(%struct.device* %15, i32 %18, i64 %21, i32 %22)
  br label %24

24:                                               ; preds = %14, %3
  %25 = load %struct.ahash_edesc*, %struct.ahash_edesc** %5, align 8
  %26 = getelementptr inbounds %struct.ahash_edesc, %struct.ahash_edesc* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %39

29:                                               ; preds = %24
  %30 = load %struct.device*, %struct.device** %4, align 8
  %31 = load %struct.ahash_edesc*, %struct.ahash_edesc** %5, align 8
  %32 = getelementptr inbounds %struct.ahash_edesc, %struct.ahash_edesc* %31, i32 0, i32 1
  %33 = load i64, i64* %32, align 8
  %34 = load %struct.ahash_edesc*, %struct.ahash_edesc** %5, align 8
  %35 = getelementptr inbounds %struct.ahash_edesc, %struct.ahash_edesc* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = load i32, i32* @DMA_TO_DEVICE, align 4
  %38 = call i32 @dma_unmap_single(%struct.device* %30, i64 %33, i64 %36, i32 %37)
  br label %39

39:                                               ; preds = %29, %24
  %40 = load %struct.caam_hash_state*, %struct.caam_hash_state** %7, align 8
  %41 = getelementptr inbounds %struct.caam_hash_state, %struct.caam_hash_state* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %56

44:                                               ; preds = %39
  %45 = load %struct.device*, %struct.device** %4, align 8
  %46 = load %struct.caam_hash_state*, %struct.caam_hash_state** %7, align 8
  %47 = getelementptr inbounds %struct.caam_hash_state, %struct.caam_hash_state* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = load %struct.caam_hash_state*, %struct.caam_hash_state** %7, align 8
  %50 = call i64* @current_buflen(%struct.caam_hash_state* %49)
  %51 = load i64, i64* %50, align 8
  %52 = load i32, i32* @DMA_TO_DEVICE, align 4
  %53 = call i32 @dma_unmap_single(%struct.device* %45, i64 %48, i64 %51, i32 %52)
  %54 = load %struct.caam_hash_state*, %struct.caam_hash_state** %7, align 8
  %55 = getelementptr inbounds %struct.caam_hash_state, %struct.caam_hash_state* %54, i32 0, i32 0
  store i64 0, i64* %55, align 8
  br label %56

56:                                               ; preds = %44, %39
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
