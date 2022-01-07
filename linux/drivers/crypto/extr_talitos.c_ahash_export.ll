; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/extr_talitos.c_ahash_export.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/extr_talitos.c_ahash_export.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ahash_request = type { i32 }
%struct.talitos_ahash_req_ctx = type { i64, i32, i32, i32, i32, i32, i32*, i32, i32 }
%struct.talitos_export_state = type { i32, i32, i32, i32, i32, i32, i32 }
%struct.crypto_ahash = type { i32 }
%struct.talitos_ctx = type { %struct.device* }
%struct.device = type { i32 }

@DMA_FROM_DEVICE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ahash_request*, i8*)* @ahash_export to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ahash_export(%struct.ahash_request* %0, i8* %1) #0 {
  %3 = alloca %struct.ahash_request*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.talitos_ahash_req_ctx*, align 8
  %6 = alloca %struct.talitos_export_state*, align 8
  %7 = alloca %struct.crypto_ahash*, align 8
  %8 = alloca %struct.talitos_ctx*, align 8
  %9 = alloca %struct.device*, align 8
  %10 = alloca i32, align 4
  store %struct.ahash_request* %0, %struct.ahash_request** %3, align 8
  store i8* %1, i8** %4, align 8
  %11 = load %struct.ahash_request*, %struct.ahash_request** %3, align 8
  %12 = call %struct.talitos_ahash_req_ctx* @ahash_request_ctx(%struct.ahash_request* %11)
  store %struct.talitos_ahash_req_ctx* %12, %struct.talitos_ahash_req_ctx** %5, align 8
  %13 = load i8*, i8** %4, align 8
  %14 = bitcast i8* %13 to %struct.talitos_export_state*
  store %struct.talitos_export_state* %14, %struct.talitos_export_state** %6, align 8
  %15 = load %struct.ahash_request*, %struct.ahash_request** %3, align 8
  %16 = call %struct.crypto_ahash* @crypto_ahash_reqtfm(%struct.ahash_request* %15)
  store %struct.crypto_ahash* %16, %struct.crypto_ahash** %7, align 8
  %17 = load %struct.crypto_ahash*, %struct.crypto_ahash** %7, align 8
  %18 = call %struct.talitos_ctx* @crypto_ahash_ctx(%struct.crypto_ahash* %17)
  store %struct.talitos_ctx* %18, %struct.talitos_ctx** %8, align 8
  %19 = load %struct.talitos_ctx*, %struct.talitos_ctx** %8, align 8
  %20 = getelementptr inbounds %struct.talitos_ctx, %struct.talitos_ctx* %19, i32 0, i32 0
  %21 = load %struct.device*, %struct.device** %20, align 8
  store %struct.device* %21, %struct.device** %9, align 8
  %22 = load %struct.device*, %struct.device** %9, align 8
  %23 = load %struct.talitos_ahash_req_ctx*, %struct.talitos_ahash_req_ctx** %5, align 8
  %24 = getelementptr inbounds %struct.talitos_ahash_req_ctx, %struct.talitos_ahash_req_ctx* %23, i32 0, i32 8
  %25 = load i32, i32* %24, align 4
  %26 = load %struct.talitos_ahash_req_ctx*, %struct.talitos_ahash_req_ctx** %5, align 8
  %27 = getelementptr inbounds %struct.talitos_ahash_req_ctx, %struct.talitos_ahash_req_ctx* %26, i32 0, i32 7
  %28 = load i32, i32* %27, align 8
  %29 = load i32, i32* @DMA_FROM_DEVICE, align 4
  %30 = call i32 @dma_map_single(%struct.device* %22, i32 %25, i32 %28, i32 %29)
  store i32 %30, i32* %10, align 4
  %31 = load %struct.device*, %struct.device** %9, align 8
  %32 = load i32, i32* %10, align 4
  %33 = load %struct.talitos_ahash_req_ctx*, %struct.talitos_ahash_req_ctx** %5, align 8
  %34 = getelementptr inbounds %struct.talitos_ahash_req_ctx, %struct.talitos_ahash_req_ctx* %33, i32 0, i32 7
  %35 = load i32, i32* %34, align 8
  %36 = load i32, i32* @DMA_FROM_DEVICE, align 4
  %37 = call i32 @dma_unmap_single(%struct.device* %31, i32 %32, i32 %35, i32 %36)
  %38 = load %struct.talitos_export_state*, %struct.talitos_export_state** %6, align 8
  %39 = getelementptr inbounds %struct.talitos_export_state, %struct.talitos_export_state* %38, i32 0, i32 6
  %40 = load i32, i32* %39, align 4
  %41 = load %struct.talitos_ahash_req_ctx*, %struct.talitos_ahash_req_ctx** %5, align 8
  %42 = getelementptr inbounds %struct.talitos_ahash_req_ctx, %struct.talitos_ahash_req_ctx* %41, i32 0, i32 8
  %43 = load i32, i32* %42, align 4
  %44 = load %struct.talitos_ahash_req_ctx*, %struct.talitos_ahash_req_ctx** %5, align 8
  %45 = getelementptr inbounds %struct.talitos_ahash_req_ctx, %struct.talitos_ahash_req_ctx* %44, i32 0, i32 7
  %46 = load i32, i32* %45, align 8
  %47 = call i32 @memcpy(i32 %40, i32 %43, i32 %46)
  %48 = load %struct.talitos_export_state*, %struct.talitos_export_state** %6, align 8
  %49 = getelementptr inbounds %struct.talitos_export_state, %struct.talitos_export_state* %48, i32 0, i32 5
  %50 = load i32, i32* %49, align 4
  %51 = load %struct.talitos_ahash_req_ctx*, %struct.talitos_ahash_req_ctx** %5, align 8
  %52 = getelementptr inbounds %struct.talitos_ahash_req_ctx, %struct.talitos_ahash_req_ctx* %51, i32 0, i32 6
  %53 = load i32*, i32** %52, align 8
  %54 = load %struct.talitos_ahash_req_ctx*, %struct.talitos_ahash_req_ctx** %5, align 8
  %55 = getelementptr inbounds %struct.talitos_ahash_req_ctx, %struct.talitos_ahash_req_ctx* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = getelementptr inbounds i32, i32* %53, i64 %56
  %58 = load i32, i32* %57, align 4
  %59 = load %struct.talitos_ahash_req_ctx*, %struct.talitos_ahash_req_ctx** %5, align 8
  %60 = getelementptr inbounds %struct.talitos_ahash_req_ctx, %struct.talitos_ahash_req_ctx* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 8
  %62 = call i32 @memcpy(i32 %50, i32 %58, i32 %61)
  %63 = load %struct.talitos_ahash_req_ctx*, %struct.talitos_ahash_req_ctx** %5, align 8
  %64 = getelementptr inbounds %struct.talitos_ahash_req_ctx, %struct.talitos_ahash_req_ctx* %63, i32 0, i32 5
  %65 = load i32, i32* %64, align 8
  %66 = load %struct.talitos_export_state*, %struct.talitos_export_state** %6, align 8
  %67 = getelementptr inbounds %struct.talitos_export_state, %struct.talitos_export_state* %66, i32 0, i32 4
  store i32 %65, i32* %67, align 4
  %68 = load %struct.talitos_ahash_req_ctx*, %struct.talitos_ahash_req_ctx** %5, align 8
  %69 = getelementptr inbounds %struct.talitos_ahash_req_ctx, %struct.talitos_ahash_req_ctx* %68, i32 0, i32 4
  %70 = load i32, i32* %69, align 4
  %71 = load %struct.talitos_export_state*, %struct.talitos_export_state** %6, align 8
  %72 = getelementptr inbounds %struct.talitos_export_state, %struct.talitos_export_state* %71, i32 0, i32 3
  store i32 %70, i32* %72, align 4
  %73 = load %struct.talitos_ahash_req_ctx*, %struct.talitos_ahash_req_ctx** %5, align 8
  %74 = getelementptr inbounds %struct.talitos_ahash_req_ctx, %struct.talitos_ahash_req_ctx* %73, i32 0, i32 3
  %75 = load i32, i32* %74, align 8
  %76 = load %struct.talitos_export_state*, %struct.talitos_export_state** %6, align 8
  %77 = getelementptr inbounds %struct.talitos_export_state, %struct.talitos_export_state* %76, i32 0, i32 2
  store i32 %75, i32* %77, align 4
  %78 = load %struct.talitos_ahash_req_ctx*, %struct.talitos_ahash_req_ctx** %5, align 8
  %79 = getelementptr inbounds %struct.talitos_ahash_req_ctx, %struct.talitos_ahash_req_ctx* %78, i32 0, i32 2
  %80 = load i32, i32* %79, align 4
  %81 = load %struct.talitos_export_state*, %struct.talitos_export_state** %6, align 8
  %82 = getelementptr inbounds %struct.talitos_export_state, %struct.talitos_export_state* %81, i32 0, i32 1
  store i32 %80, i32* %82, align 4
  %83 = load %struct.talitos_ahash_req_ctx*, %struct.talitos_ahash_req_ctx** %5, align 8
  %84 = getelementptr inbounds %struct.talitos_ahash_req_ctx, %struct.talitos_ahash_req_ctx* %83, i32 0, i32 1
  %85 = load i32, i32* %84, align 8
  %86 = load %struct.talitos_export_state*, %struct.talitos_export_state** %6, align 8
  %87 = getelementptr inbounds %struct.talitos_export_state, %struct.talitos_export_state* %86, i32 0, i32 0
  store i32 %85, i32* %87, align 4
  ret i32 0
}

declare dso_local %struct.talitos_ahash_req_ctx* @ahash_request_ctx(%struct.ahash_request*) #1

declare dso_local %struct.crypto_ahash* @crypto_ahash_reqtfm(%struct.ahash_request*) #1

declare dso_local %struct.talitos_ctx* @crypto_ahash_ctx(%struct.crypto_ahash*) #1

declare dso_local i32 @dma_map_single(%struct.device*, i32, i32, i32) #1

declare dso_local i32 @dma_unmap_single(%struct.device*, i32, i32, i32) #1

declare dso_local i32 @memcpy(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
