; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/caam/extr_caamalg_qi2.c_ahash_unmap_ctx.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/caam/extr_caamalg_qi2.c_ahash_unmap_ctx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.ahash_edesc = type { i32 }
%struct.ahash_request = type { i32 }
%struct.caam_hash_state = type { i64, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.device*, %struct.ahash_edesc*, %struct.ahash_request*, i32)* @ahash_unmap_ctx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ahash_unmap_ctx(%struct.device* %0, %struct.ahash_edesc* %1, %struct.ahash_request* %2, i32 %3) #0 {
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
  %12 = load %struct.caam_hash_state*, %struct.caam_hash_state** %9, align 8
  %13 = getelementptr inbounds %struct.caam_hash_state, %struct.caam_hash_state* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %28

16:                                               ; preds = %4
  %17 = load %struct.device*, %struct.device** %5, align 8
  %18 = load %struct.caam_hash_state*, %struct.caam_hash_state** %9, align 8
  %19 = getelementptr inbounds %struct.caam_hash_state, %struct.caam_hash_state* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load %struct.caam_hash_state*, %struct.caam_hash_state** %9, align 8
  %22 = getelementptr inbounds %struct.caam_hash_state, %struct.caam_hash_state* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 8
  %24 = load i32, i32* %8, align 4
  %25 = call i32 @dma_unmap_single(%struct.device* %17, i64 %20, i32 %23, i32 %24)
  %26 = load %struct.caam_hash_state*, %struct.caam_hash_state** %9, align 8
  %27 = getelementptr inbounds %struct.caam_hash_state, %struct.caam_hash_state* %26, i32 0, i32 0
  store i64 0, i64* %27, align 8
  br label %28

28:                                               ; preds = %16, %4
  %29 = load %struct.device*, %struct.device** %5, align 8
  %30 = load %struct.ahash_edesc*, %struct.ahash_edesc** %6, align 8
  %31 = load %struct.ahash_request*, %struct.ahash_request** %7, align 8
  %32 = call i32 @ahash_unmap(%struct.device* %29, %struct.ahash_edesc* %30, %struct.ahash_request* %31)
  ret void
}

declare dso_local %struct.caam_hash_state* @ahash_request_ctx(%struct.ahash_request*) #1

declare dso_local i32 @dma_unmap_single(%struct.device*, i64, i32, i32) #1

declare dso_local i32 @ahash_unmap(%struct.device*, %struct.ahash_edesc*, %struct.ahash_request*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
