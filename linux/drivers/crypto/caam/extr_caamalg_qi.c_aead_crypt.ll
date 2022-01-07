; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/caam/extr_caamalg_qi.c_aead_crypt.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/caam/extr_caamalg_qi.c_aead_crypt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.aead_request = type { i32 }
%struct.aead_edesc = type { i32 }
%struct.crypto_aead = type { i32 }
%struct.caam_ctx = type { i32 }

@caam_congested = common dso_local global i32 0, align 4
@EAGAIN = common dso_local global i32 0, align 4
@EINPROGRESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.aead_request*, i32)* @aead_crypt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @aead_crypt(%struct.aead_request* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.aead_request*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.aead_edesc*, align 8
  %7 = alloca %struct.crypto_aead*, align 8
  %8 = alloca %struct.caam_ctx*, align 8
  %9 = alloca i32, align 4
  store %struct.aead_request* %0, %struct.aead_request** %4, align 8
  store i32 %1, i32* %5, align 4
  %10 = load %struct.aead_request*, %struct.aead_request** %4, align 8
  %11 = call %struct.crypto_aead* @crypto_aead_reqtfm(%struct.aead_request* %10)
  store %struct.crypto_aead* %11, %struct.crypto_aead** %7, align 8
  %12 = load %struct.crypto_aead*, %struct.crypto_aead** %7, align 8
  %13 = call %struct.caam_ctx* @crypto_aead_ctx(%struct.crypto_aead* %12)
  store %struct.caam_ctx* %13, %struct.caam_ctx** %8, align 8
  %14 = load i32, i32* @caam_congested, align 4
  %15 = call i64 @unlikely(i32 %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %20

17:                                               ; preds = %2
  %18 = load i32, i32* @EAGAIN, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %3, align 4
  br label %53

20:                                               ; preds = %2
  %21 = load %struct.aead_request*, %struct.aead_request** %4, align 8
  %22 = load i32, i32* %5, align 4
  %23 = call %struct.aead_edesc* @aead_edesc_alloc(%struct.aead_request* %21, i32 %22)
  store %struct.aead_edesc* %23, %struct.aead_edesc** %6, align 8
  %24 = load %struct.aead_edesc*, %struct.aead_edesc** %6, align 8
  %25 = call i64 @IS_ERR_OR_NULL(%struct.aead_edesc* %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %30

27:                                               ; preds = %20
  %28 = load %struct.aead_edesc*, %struct.aead_edesc** %6, align 8
  %29 = call i32 @PTR_ERR(%struct.aead_edesc* %28)
  store i32 %29, i32* %3, align 4
  br label %53

30:                                               ; preds = %20
  %31 = load %struct.caam_ctx*, %struct.caam_ctx** %8, align 8
  %32 = getelementptr inbounds %struct.caam_ctx, %struct.caam_ctx* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = load %struct.aead_edesc*, %struct.aead_edesc** %6, align 8
  %35 = getelementptr inbounds %struct.aead_edesc, %struct.aead_edesc* %34, i32 0, i32 0
  %36 = call i32 @caam_qi_enqueue(i32 %33, i32* %35)
  store i32 %36, i32* %9, align 4
  %37 = load i32, i32* %9, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %42, label %39

39:                                               ; preds = %30
  %40 = load i32, i32* @EINPROGRESS, align 4
  %41 = sub nsw i32 0, %40
  store i32 %41, i32* %9, align 4
  br label %51

42:                                               ; preds = %30
  %43 = load %struct.caam_ctx*, %struct.caam_ctx** %8, align 8
  %44 = getelementptr inbounds %struct.caam_ctx, %struct.caam_ctx* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = load %struct.aead_edesc*, %struct.aead_edesc** %6, align 8
  %47 = load %struct.aead_request*, %struct.aead_request** %4, align 8
  %48 = call i32 @aead_unmap(i32 %45, %struct.aead_edesc* %46, %struct.aead_request* %47)
  %49 = load %struct.aead_edesc*, %struct.aead_edesc** %6, align 8
  %50 = call i32 @qi_cache_free(%struct.aead_edesc* %49)
  br label %51

51:                                               ; preds = %42, %39
  %52 = load i32, i32* %9, align 4
  store i32 %52, i32* %3, align 4
  br label %53

53:                                               ; preds = %51, %27, %17
  %54 = load i32, i32* %3, align 4
  ret i32 %54
}

declare dso_local %struct.crypto_aead* @crypto_aead_reqtfm(%struct.aead_request*) #1

declare dso_local %struct.caam_ctx* @crypto_aead_ctx(%struct.crypto_aead*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local %struct.aead_edesc* @aead_edesc_alloc(%struct.aead_request*, i32) #1

declare dso_local i64 @IS_ERR_OR_NULL(%struct.aead_edesc*) #1

declare dso_local i32 @PTR_ERR(%struct.aead_edesc*) #1

declare dso_local i32 @caam_qi_enqueue(i32, i32*) #1

declare dso_local i32 @aead_unmap(i32, %struct.aead_edesc*, %struct.aead_request*) #1

declare dso_local i32 @qi_cache_free(%struct.aead_edesc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
