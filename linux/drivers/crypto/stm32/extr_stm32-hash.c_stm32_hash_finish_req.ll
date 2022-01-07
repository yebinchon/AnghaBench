; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/stm32/extr_stm32-hash.c_stm32_hash_finish_req.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/stm32/extr_stm32-hash.c_stm32_hash_finish_req.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ahash_request = type { i32 }
%struct.stm32_hash_request_ctx = type { i32, %struct.stm32_hash_dev* }
%struct.stm32_hash_dev = type { i32, i32, i32 }

@HASH_FLAGS_FINAL = common dso_local global i32 0, align 4
@HASH_FLAGS_CPU = common dso_local global i32 0, align 4
@HASH_FLAGS_INIT = common dso_local global i32 0, align 4
@HASH_FLAGS_DMA_READY = common dso_local global i32 0, align 4
@HASH_FLAGS_OUTPUT_READY = common dso_local global i32 0, align 4
@HASH_FLAGS_HMAC = common dso_local global i32 0, align 4
@HASH_FLAGS_HMAC_INIT = common dso_local global i32 0, align 4
@HASH_FLAGS_HMAC_FINAL = common dso_local global i32 0, align 4
@HASH_FLAGS_HMAC_KEY = common dso_local global i32 0, align 4
@HASH_FLAGS_ERRORS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ahash_request*, i32)* @stm32_hash_finish_req to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @stm32_hash_finish_req(%struct.ahash_request* %0, i32 %1) #0 {
  %3 = alloca %struct.ahash_request*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.stm32_hash_request_ctx*, align 8
  %6 = alloca %struct.stm32_hash_dev*, align 8
  store %struct.ahash_request* %0, %struct.ahash_request** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.ahash_request*, %struct.ahash_request** %3, align 8
  %8 = call %struct.stm32_hash_request_ctx* @ahash_request_ctx(%struct.ahash_request* %7)
  store %struct.stm32_hash_request_ctx* %8, %struct.stm32_hash_request_ctx** %5, align 8
  %9 = load %struct.stm32_hash_request_ctx*, %struct.stm32_hash_request_ctx** %5, align 8
  %10 = getelementptr inbounds %struct.stm32_hash_request_ctx, %struct.stm32_hash_request_ctx* %9, i32 0, i32 1
  %11 = load %struct.stm32_hash_dev*, %struct.stm32_hash_dev** %10, align 8
  store %struct.stm32_hash_dev* %11, %struct.stm32_hash_dev** %6, align 8
  %12 = load i32, i32* %4, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %48, label %14

14:                                               ; preds = %2
  %15 = load i32, i32* @HASH_FLAGS_FINAL, align 4
  %16 = load %struct.stm32_hash_dev*, %struct.stm32_hash_dev** %6, align 8
  %17 = getelementptr inbounds %struct.stm32_hash_dev, %struct.stm32_hash_dev* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = and i32 %15, %18
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %48

21:                                               ; preds = %14
  %22 = load %struct.ahash_request*, %struct.ahash_request** %3, align 8
  %23 = call i32 @stm32_hash_copy_hash(%struct.ahash_request* %22)
  %24 = load %struct.ahash_request*, %struct.ahash_request** %3, align 8
  %25 = call i32 @stm32_hash_finish(%struct.ahash_request* %24)
  store i32 %25, i32* %4, align 4
  %26 = load i32, i32* @HASH_FLAGS_FINAL, align 4
  %27 = load i32, i32* @HASH_FLAGS_CPU, align 4
  %28 = or i32 %26, %27
  %29 = load i32, i32* @HASH_FLAGS_INIT, align 4
  %30 = or i32 %28, %29
  %31 = load i32, i32* @HASH_FLAGS_DMA_READY, align 4
  %32 = or i32 %30, %31
  %33 = load i32, i32* @HASH_FLAGS_OUTPUT_READY, align 4
  %34 = or i32 %32, %33
  %35 = load i32, i32* @HASH_FLAGS_HMAC, align 4
  %36 = or i32 %34, %35
  %37 = load i32, i32* @HASH_FLAGS_HMAC_INIT, align 4
  %38 = or i32 %36, %37
  %39 = load i32, i32* @HASH_FLAGS_HMAC_FINAL, align 4
  %40 = or i32 %38, %39
  %41 = load i32, i32* @HASH_FLAGS_HMAC_KEY, align 4
  %42 = or i32 %40, %41
  %43 = xor i32 %42, -1
  %44 = load %struct.stm32_hash_dev*, %struct.stm32_hash_dev** %6, align 8
  %45 = getelementptr inbounds %struct.stm32_hash_dev, %struct.stm32_hash_dev* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = and i32 %46, %43
  store i32 %47, i32* %45, align 4
  br label %54

48:                                               ; preds = %14, %2
  %49 = load i32, i32* @HASH_FLAGS_ERRORS, align 4
  %50 = load %struct.stm32_hash_request_ctx*, %struct.stm32_hash_request_ctx** %5, align 8
  %51 = getelementptr inbounds %struct.stm32_hash_request_ctx, %struct.stm32_hash_request_ctx* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = or i32 %52, %49
  store i32 %53, i32* %51, align 8
  br label %54

54:                                               ; preds = %48, %21
  %55 = load %struct.stm32_hash_dev*, %struct.stm32_hash_dev** %6, align 8
  %56 = getelementptr inbounds %struct.stm32_hash_dev, %struct.stm32_hash_dev* %55, i32 0, i32 2
  %57 = load i32, i32* %56, align 4
  %58 = call i32 @pm_runtime_mark_last_busy(i32 %57)
  %59 = load %struct.stm32_hash_dev*, %struct.stm32_hash_dev** %6, align 8
  %60 = getelementptr inbounds %struct.stm32_hash_dev, %struct.stm32_hash_dev* %59, i32 0, i32 2
  %61 = load i32, i32* %60, align 4
  %62 = call i32 @pm_runtime_put_autosuspend(i32 %61)
  %63 = load %struct.stm32_hash_dev*, %struct.stm32_hash_dev** %6, align 8
  %64 = getelementptr inbounds %struct.stm32_hash_dev, %struct.stm32_hash_dev* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 4
  %66 = load %struct.ahash_request*, %struct.ahash_request** %3, align 8
  %67 = load i32, i32* %4, align 4
  %68 = call i32 @crypto_finalize_hash_request(i32 %65, %struct.ahash_request* %66, i32 %67)
  ret void
}

declare dso_local %struct.stm32_hash_request_ctx* @ahash_request_ctx(%struct.ahash_request*) #1

declare dso_local i32 @stm32_hash_copy_hash(%struct.ahash_request*) #1

declare dso_local i32 @stm32_hash_finish(%struct.ahash_request*) #1

declare dso_local i32 @pm_runtime_mark_last_busy(i32) #1

declare dso_local i32 @pm_runtime_put_autosuspend(i32) #1

declare dso_local i32 @crypto_finalize_hash_request(i32, %struct.ahash_request*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
