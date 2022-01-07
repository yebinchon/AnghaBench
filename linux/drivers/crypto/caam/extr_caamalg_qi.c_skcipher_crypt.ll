; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/caam/extr_caamalg_qi.c_skcipher_crypt.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/caam/extr_caamalg_qi.c_skcipher_crypt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.skcipher_request = type { i32 }
%struct.skcipher_edesc = type { i32 }
%struct.crypto_skcipher = type { i32 }
%struct.caam_ctx = type { i32 }

@caam_congested = common dso_local global i32 0, align 4
@EAGAIN = common dso_local global i32 0, align 4
@EINPROGRESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.skcipher_request*, i32)* @skcipher_crypt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @skcipher_crypt(%struct.skcipher_request* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.skcipher_request*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.skcipher_edesc*, align 8
  %7 = alloca %struct.crypto_skcipher*, align 8
  %8 = alloca %struct.caam_ctx*, align 8
  %9 = alloca i32, align 4
  store %struct.skcipher_request* %0, %struct.skcipher_request** %4, align 8
  store i32 %1, i32* %5, align 4
  %10 = load %struct.skcipher_request*, %struct.skcipher_request** %4, align 8
  %11 = call %struct.crypto_skcipher* @crypto_skcipher_reqtfm(%struct.skcipher_request* %10)
  store %struct.crypto_skcipher* %11, %struct.crypto_skcipher** %7, align 8
  %12 = load %struct.crypto_skcipher*, %struct.crypto_skcipher** %7, align 8
  %13 = call %struct.caam_ctx* @crypto_skcipher_ctx(%struct.crypto_skcipher* %12)
  store %struct.caam_ctx* %13, %struct.caam_ctx** %8, align 8
  %14 = load %struct.skcipher_request*, %struct.skcipher_request** %4, align 8
  %15 = getelementptr inbounds %struct.skcipher_request, %struct.skcipher_request* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %19, label %18

18:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %59

19:                                               ; preds = %2
  %20 = load i32, i32* @caam_congested, align 4
  %21 = call i64 @unlikely(i32 %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %26

23:                                               ; preds = %19
  %24 = load i32, i32* @EAGAIN, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %3, align 4
  br label %59

26:                                               ; preds = %19
  %27 = load %struct.skcipher_request*, %struct.skcipher_request** %4, align 8
  %28 = load i32, i32* %5, align 4
  %29 = call %struct.skcipher_edesc* @skcipher_edesc_alloc(%struct.skcipher_request* %27, i32 %28)
  store %struct.skcipher_edesc* %29, %struct.skcipher_edesc** %6, align 8
  %30 = load %struct.skcipher_edesc*, %struct.skcipher_edesc** %6, align 8
  %31 = call i64 @IS_ERR(%struct.skcipher_edesc* %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %36

33:                                               ; preds = %26
  %34 = load %struct.skcipher_edesc*, %struct.skcipher_edesc** %6, align 8
  %35 = call i32 @PTR_ERR(%struct.skcipher_edesc* %34)
  store i32 %35, i32* %3, align 4
  br label %59

36:                                               ; preds = %26
  %37 = load %struct.caam_ctx*, %struct.caam_ctx** %8, align 8
  %38 = getelementptr inbounds %struct.caam_ctx, %struct.caam_ctx* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = load %struct.skcipher_edesc*, %struct.skcipher_edesc** %6, align 8
  %41 = getelementptr inbounds %struct.skcipher_edesc, %struct.skcipher_edesc* %40, i32 0, i32 0
  %42 = call i32 @caam_qi_enqueue(i32 %39, i32* %41)
  store i32 %42, i32* %9, align 4
  %43 = load i32, i32* %9, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %48, label %45

45:                                               ; preds = %36
  %46 = load i32, i32* @EINPROGRESS, align 4
  %47 = sub nsw i32 0, %46
  store i32 %47, i32* %9, align 4
  br label %57

48:                                               ; preds = %36
  %49 = load %struct.caam_ctx*, %struct.caam_ctx** %8, align 8
  %50 = getelementptr inbounds %struct.caam_ctx, %struct.caam_ctx* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = load %struct.skcipher_edesc*, %struct.skcipher_edesc** %6, align 8
  %53 = load %struct.skcipher_request*, %struct.skcipher_request** %4, align 8
  %54 = call i32 @skcipher_unmap(i32 %51, %struct.skcipher_edesc* %52, %struct.skcipher_request* %53)
  %55 = load %struct.skcipher_edesc*, %struct.skcipher_edesc** %6, align 8
  %56 = call i32 @qi_cache_free(%struct.skcipher_edesc* %55)
  br label %57

57:                                               ; preds = %48, %45
  %58 = load i32, i32* %9, align 4
  store i32 %58, i32* %3, align 4
  br label %59

59:                                               ; preds = %57, %33, %23, %18
  %60 = load i32, i32* %3, align 4
  ret i32 %60
}

declare dso_local %struct.crypto_skcipher* @crypto_skcipher_reqtfm(%struct.skcipher_request*) #1

declare dso_local %struct.caam_ctx* @crypto_skcipher_ctx(%struct.crypto_skcipher*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local %struct.skcipher_edesc* @skcipher_edesc_alloc(%struct.skcipher_request*, i32) #1

declare dso_local i64 @IS_ERR(%struct.skcipher_edesc*) #1

declare dso_local i32 @PTR_ERR(%struct.skcipher_edesc*) #1

declare dso_local i32 @caam_qi_enqueue(i32, i32*) #1

declare dso_local i32 @skcipher_unmap(i32, %struct.skcipher_edesc*, %struct.skcipher_request*) #1

declare dso_local i32 @qi_cache_free(%struct.skcipher_edesc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
