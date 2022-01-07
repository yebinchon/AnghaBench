; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/stm32/extr_stm32-hash.c_stm32_hash_final_req.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/stm32/extr_stm32-hash.c_stm32_hash_final_req.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stm32_hash_dev = type { %struct.ahash_request* }
%struct.ahash_request = type { i32 }
%struct.stm32_hash_request_ctx = type { i32, i32, i32 }

@HASH_FLAGS_CPU = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.stm32_hash_dev*)* @stm32_hash_final_req to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @stm32_hash_final_req(%struct.stm32_hash_dev* %0) #0 {
  %2 = alloca %struct.stm32_hash_dev*, align 8
  %3 = alloca %struct.ahash_request*, align 8
  %4 = alloca %struct.stm32_hash_request_ctx*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.stm32_hash_dev* %0, %struct.stm32_hash_dev** %2, align 8
  %7 = load %struct.stm32_hash_dev*, %struct.stm32_hash_dev** %2, align 8
  %8 = getelementptr inbounds %struct.stm32_hash_dev, %struct.stm32_hash_dev* %7, i32 0, i32 0
  %9 = load %struct.ahash_request*, %struct.ahash_request** %8, align 8
  store %struct.ahash_request* %9, %struct.ahash_request** %3, align 8
  %10 = load %struct.ahash_request*, %struct.ahash_request** %3, align 8
  %11 = call %struct.stm32_hash_request_ctx* @ahash_request_ctx(%struct.ahash_request* %10)
  store %struct.stm32_hash_request_ctx* %11, %struct.stm32_hash_request_ctx** %4, align 8
  %12 = load %struct.stm32_hash_request_ctx*, %struct.stm32_hash_request_ctx** %4, align 8
  %13 = getelementptr inbounds %struct.stm32_hash_request_ctx, %struct.stm32_hash_request_ctx* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  store i32 %14, i32* %6, align 4
  %15 = load %struct.stm32_hash_request_ctx*, %struct.stm32_hash_request_ctx** %4, align 8
  %16 = getelementptr inbounds %struct.stm32_hash_request_ctx, %struct.stm32_hash_request_ctx* %15, i32 0, i32 0
  store i32 0, i32* %16, align 4
  %17 = load %struct.stm32_hash_request_ctx*, %struct.stm32_hash_request_ctx** %4, align 8
  %18 = getelementptr inbounds %struct.stm32_hash_request_ctx, %struct.stm32_hash_request_ctx* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = load i32, i32* @HASH_FLAGS_CPU, align 4
  %21 = and i32 %19, %20
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %26, label %23

23:                                               ; preds = %1
  %24 = load %struct.stm32_hash_dev*, %struct.stm32_hash_dev** %2, align 8
  %25 = call i32 @stm32_hash_dma_send(%struct.stm32_hash_dev* %24)
  store i32 %25, i32* %5, align 4
  br label %33

26:                                               ; preds = %1
  %27 = load %struct.stm32_hash_dev*, %struct.stm32_hash_dev** %2, align 8
  %28 = load %struct.stm32_hash_request_ctx*, %struct.stm32_hash_request_ctx** %4, align 8
  %29 = getelementptr inbounds %struct.stm32_hash_request_ctx, %struct.stm32_hash_request_ctx* %28, i32 0, i32 2
  %30 = load i32, i32* %29, align 4
  %31 = load i32, i32* %6, align 4
  %32 = call i32 @stm32_hash_xmit_cpu(%struct.stm32_hash_dev* %27, i32 %30, i32 %31, i32 1)
  store i32 %32, i32* %5, align 4
  br label %33

33:                                               ; preds = %26, %23
  %34 = load i32, i32* %5, align 4
  ret i32 %34
}

declare dso_local %struct.stm32_hash_request_ctx* @ahash_request_ctx(%struct.ahash_request*) #1

declare dso_local i32 @stm32_hash_dma_send(%struct.stm32_hash_dev*) #1

declare dso_local i32 @stm32_hash_xmit_cpu(%struct.stm32_hash_dev*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
