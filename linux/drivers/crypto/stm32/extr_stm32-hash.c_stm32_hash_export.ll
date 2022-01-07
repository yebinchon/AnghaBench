; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/stm32/extr_stm32-hash.c_stm32_hash_export.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/stm32/extr_stm32-hash.c_stm32_hash_export.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ahash_request = type { i32 }
%struct.stm32_hash_request_ctx = type { i32* }
%struct.stm32_hash_ctx = type { i32 }
%struct.stm32_hash_dev = type { i32 }

@HASH_SR = common dso_local global i32 0, align 4
@HASH_SR_BUSY = common dso_local global i32 0, align 4
@HASH_CSR_REGISTER_NUMBER = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@HASH_IMR = common dso_local global i32 0, align 4
@HASH_STR = common dso_local global i32 0, align 4
@HASH_CR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ahash_request*, i8*)* @stm32_hash_export to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @stm32_hash_export(%struct.ahash_request* %0, i8* %1) #0 {
  %3 = alloca %struct.ahash_request*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.stm32_hash_request_ctx*, align 8
  %6 = alloca %struct.stm32_hash_ctx*, align 8
  %7 = alloca %struct.stm32_hash_dev*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  store %struct.ahash_request* %0, %struct.ahash_request** %3, align 8
  store i8* %1, i8** %4, align 8
  %10 = load %struct.ahash_request*, %struct.ahash_request** %3, align 8
  %11 = call %struct.stm32_hash_request_ctx* @ahash_request_ctx(%struct.ahash_request* %10)
  store %struct.stm32_hash_request_ctx* %11, %struct.stm32_hash_request_ctx** %5, align 8
  %12 = load %struct.ahash_request*, %struct.ahash_request** %3, align 8
  %13 = call i32 @crypto_ahash_reqtfm(%struct.ahash_request* %12)
  %14 = call %struct.stm32_hash_ctx* @crypto_ahash_ctx(i32 %13)
  store %struct.stm32_hash_ctx* %14, %struct.stm32_hash_ctx** %6, align 8
  %15 = load %struct.stm32_hash_ctx*, %struct.stm32_hash_ctx** %6, align 8
  %16 = call %struct.stm32_hash_dev* @stm32_hash_find_dev(%struct.stm32_hash_ctx* %15)
  store %struct.stm32_hash_dev* %16, %struct.stm32_hash_dev** %7, align 8
  %17 = load %struct.stm32_hash_dev*, %struct.stm32_hash_dev** %7, align 8
  %18 = getelementptr inbounds %struct.stm32_hash_dev, %struct.stm32_hash_dev* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @pm_runtime_get_sync(i32 %19)
  br label %21

21:                                               ; preds = %28, %2
  %22 = load %struct.stm32_hash_dev*, %struct.stm32_hash_dev** %7, align 8
  %23 = load i32, i32* @HASH_SR, align 4
  %24 = call i32 @stm32_hash_read(%struct.stm32_hash_dev* %22, i32 %23)
  %25 = load i32, i32* @HASH_SR_BUSY, align 4
  %26 = and i32 %24, %25
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %30

28:                                               ; preds = %21
  %29 = call i32 (...) @cpu_relax()
  br label %21

30:                                               ; preds = %21
  %31 = load i32, i32* @HASH_CSR_REGISTER_NUMBER, align 4
  %32 = add nsw i32 3, %31
  %33 = load i32, i32* @GFP_KERNEL, align 4
  %34 = call i32* @kmalloc_array(i32 %32, i32 4, i32 %33)
  %35 = load %struct.stm32_hash_request_ctx*, %struct.stm32_hash_request_ctx** %5, align 8
  %36 = getelementptr inbounds %struct.stm32_hash_request_ctx, %struct.stm32_hash_request_ctx* %35, i32 0, i32 0
  store i32* %34, i32** %36, align 8
  %37 = load %struct.stm32_hash_request_ctx*, %struct.stm32_hash_request_ctx** %5, align 8
  %38 = getelementptr inbounds %struct.stm32_hash_request_ctx, %struct.stm32_hash_request_ctx* %37, i32 0, i32 0
  %39 = load i32*, i32** %38, align 8
  store i32* %39, i32** %8, align 8
  %40 = load %struct.stm32_hash_dev*, %struct.stm32_hash_dev** %7, align 8
  %41 = load i32, i32* @HASH_IMR, align 4
  %42 = call i32 @stm32_hash_read(%struct.stm32_hash_dev* %40, i32 %41)
  %43 = load i32*, i32** %8, align 8
  %44 = getelementptr inbounds i32, i32* %43, i32 1
  store i32* %44, i32** %8, align 8
  store i32 %42, i32* %43, align 4
  %45 = load %struct.stm32_hash_dev*, %struct.stm32_hash_dev** %7, align 8
  %46 = load i32, i32* @HASH_STR, align 4
  %47 = call i32 @stm32_hash_read(%struct.stm32_hash_dev* %45, i32 %46)
  %48 = load i32*, i32** %8, align 8
  %49 = getelementptr inbounds i32, i32* %48, i32 1
  store i32* %49, i32** %8, align 8
  store i32 %47, i32* %48, align 4
  %50 = load %struct.stm32_hash_dev*, %struct.stm32_hash_dev** %7, align 8
  %51 = load i32, i32* @HASH_CR, align 4
  %52 = call i32 @stm32_hash_read(%struct.stm32_hash_dev* %50, i32 %51)
  %53 = load i32*, i32** %8, align 8
  %54 = getelementptr inbounds i32, i32* %53, i32 1
  store i32* %54, i32** %8, align 8
  store i32 %52, i32* %53, align 4
  store i32 0, i32* %9, align 4
  br label %55

55:                                               ; preds = %66, %30
  %56 = load i32, i32* %9, align 4
  %57 = load i32, i32* @HASH_CSR_REGISTER_NUMBER, align 4
  %58 = icmp ult i32 %56, %57
  br i1 %58, label %59, label %69

59:                                               ; preds = %55
  %60 = load %struct.stm32_hash_dev*, %struct.stm32_hash_dev** %7, align 8
  %61 = load i32, i32* %9, align 4
  %62 = call i32 @HASH_CSR(i32 %61)
  %63 = call i32 @stm32_hash_read(%struct.stm32_hash_dev* %60, i32 %62)
  %64 = load i32*, i32** %8, align 8
  %65 = getelementptr inbounds i32, i32* %64, i32 1
  store i32* %65, i32** %8, align 8
  store i32 %63, i32* %64, align 4
  br label %66

66:                                               ; preds = %59
  %67 = load i32, i32* %9, align 4
  %68 = add i32 %67, 1
  store i32 %68, i32* %9, align 4
  br label %55

69:                                               ; preds = %55
  %70 = load %struct.stm32_hash_dev*, %struct.stm32_hash_dev** %7, align 8
  %71 = getelementptr inbounds %struct.stm32_hash_dev, %struct.stm32_hash_dev* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = call i32 @pm_runtime_mark_last_busy(i32 %72)
  %74 = load %struct.stm32_hash_dev*, %struct.stm32_hash_dev** %7, align 8
  %75 = getelementptr inbounds %struct.stm32_hash_dev, %struct.stm32_hash_dev* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  %77 = call i32 @pm_runtime_put_autosuspend(i32 %76)
  %78 = load i8*, i8** %4, align 8
  %79 = load %struct.stm32_hash_request_ctx*, %struct.stm32_hash_request_ctx** %5, align 8
  %80 = call i32 @memcpy(i8* %78, %struct.stm32_hash_request_ctx* %79, i32 8)
  ret i32 0
}

declare dso_local %struct.stm32_hash_request_ctx* @ahash_request_ctx(%struct.ahash_request*) #1

declare dso_local %struct.stm32_hash_ctx* @crypto_ahash_ctx(i32) #1

declare dso_local i32 @crypto_ahash_reqtfm(%struct.ahash_request*) #1

declare dso_local %struct.stm32_hash_dev* @stm32_hash_find_dev(%struct.stm32_hash_ctx*) #1

declare dso_local i32 @pm_runtime_get_sync(i32) #1

declare dso_local i32 @stm32_hash_read(%struct.stm32_hash_dev*, i32) #1

declare dso_local i32 @cpu_relax(...) #1

declare dso_local i32* @kmalloc_array(i32, i32, i32) #1

declare dso_local i32 @HASH_CSR(i32) #1

declare dso_local i32 @pm_runtime_mark_last_busy(i32) #1

declare dso_local i32 @pm_runtime_put_autosuspend(i32) #1

declare dso_local i32 @memcpy(i8*, %struct.stm32_hash_request_ctx*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
