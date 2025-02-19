; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/mediatek/extr_mtk-aes.c_mtk_aes_gcm_crypt.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/mediatek/extr_mtk-aes.c_mtk_aes_gcm_crypt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.aead_request = type { i32, i32, i64 }
%struct.mtk_aes_base_ctx = type { i32 }
%struct.mtk_aes_gcm_ctx = type { i64, i64 }
%struct.mtk_aes_reqctx = type { i32 }
%struct.mtk_cryp = type { i32 }

@AES_FLAGS_ENCRYPT = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@AES_FLAGS_GCM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.aead_request*, i32)* @mtk_aes_gcm_crypt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mtk_aes_gcm_crypt(%struct.aead_request* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.aead_request*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.mtk_aes_base_ctx*, align 8
  %7 = alloca %struct.mtk_aes_gcm_ctx*, align 8
  %8 = alloca %struct.mtk_aes_reqctx*, align 8
  %9 = alloca %struct.mtk_cryp*, align 8
  %10 = alloca i32, align 4
  store %struct.aead_request* %0, %struct.aead_request** %4, align 8
  store i32 %1, i32* %5, align 4
  %11 = load %struct.aead_request*, %struct.aead_request** %4, align 8
  %12 = call i32 @crypto_aead_reqtfm(%struct.aead_request* %11)
  %13 = call %struct.mtk_aes_base_ctx* @crypto_aead_ctx(i32 %12)
  store %struct.mtk_aes_base_ctx* %13, %struct.mtk_aes_base_ctx** %6, align 8
  %14 = load %struct.mtk_aes_base_ctx*, %struct.mtk_aes_base_ctx** %6, align 8
  %15 = call %struct.mtk_aes_gcm_ctx* @mtk_aes_gcm_ctx_cast(%struct.mtk_aes_base_ctx* %14)
  store %struct.mtk_aes_gcm_ctx* %15, %struct.mtk_aes_gcm_ctx** %7, align 8
  %16 = load %struct.aead_request*, %struct.aead_request** %4, align 8
  %17 = call %struct.mtk_aes_reqctx* @aead_request_ctx(%struct.aead_request* %16)
  store %struct.mtk_aes_reqctx* %17, %struct.mtk_aes_reqctx** %8, align 8
  %18 = load i32, i32* %5, align 4
  %19 = load i32, i32* @AES_FLAGS_ENCRYPT, align 4
  %20 = and i32 %18, %19
  %21 = icmp ne i32 %20, 0
  %22 = xor i1 %21, true
  %23 = xor i1 %22, true
  %24 = zext i1 %23 to i32
  store i32 %24, i32* %10, align 4
  %25 = load %struct.mtk_aes_base_ctx*, %struct.mtk_aes_base_ctx** %6, align 8
  %26 = call %struct.mtk_cryp* @mtk_aes_find_dev(%struct.mtk_aes_base_ctx* %25)
  store %struct.mtk_cryp* %26, %struct.mtk_cryp** %9, align 8
  %27 = load %struct.mtk_cryp*, %struct.mtk_cryp** %9, align 8
  %28 = icmp ne %struct.mtk_cryp* %27, null
  br i1 %28, label %32, label %29

29:                                               ; preds = %2
  %30 = load i32, i32* @ENODEV, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %3, align 4
  br label %71

32:                                               ; preds = %2
  %33 = load %struct.aead_request*, %struct.aead_request** %4, align 8
  %34 = getelementptr inbounds %struct.aead_request, %struct.aead_request* %33, i32 0, i32 2
  %35 = load i64, i64* %34, align 8
  %36 = load i32, i32* %10, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %39

38:                                               ; preds = %32
  br label %43

39:                                               ; preds = %32
  %40 = load %struct.mtk_aes_gcm_ctx*, %struct.mtk_aes_gcm_ctx** %7, align 8
  %41 = getelementptr inbounds %struct.mtk_aes_gcm_ctx, %struct.mtk_aes_gcm_ctx* %40, i32 0, i32 1
  %42 = load i64, i64* %41, align 8
  br label %43

43:                                               ; preds = %39, %38
  %44 = phi i64 [ 0, %38 ], [ %42, %39 ]
  %45 = sub nsw i64 %35, %44
  %46 = load %struct.mtk_aes_gcm_ctx*, %struct.mtk_aes_gcm_ctx** %7, align 8
  %47 = getelementptr inbounds %struct.mtk_aes_gcm_ctx, %struct.mtk_aes_gcm_ctx* %46, i32 0, i32 0
  store i64 %45, i64* %47, align 8
  %48 = load %struct.mtk_aes_gcm_ctx*, %struct.mtk_aes_gcm_ctx** %7, align 8
  %49 = getelementptr inbounds %struct.mtk_aes_gcm_ctx, %struct.mtk_aes_gcm_ctx* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %60, label %52

52:                                               ; preds = %43
  %53 = load %struct.aead_request*, %struct.aead_request** %4, align 8
  %54 = getelementptr inbounds %struct.aead_request, %struct.aead_request* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %60, label %57

57:                                               ; preds = %52
  %58 = load i32, i32* @EINVAL, align 4
  %59 = sub nsw i32 0, %58
  store i32 %59, i32* %3, align 4
  br label %71

60:                                               ; preds = %52, %43
  %61 = load i32, i32* @AES_FLAGS_GCM, align 4
  %62 = load i32, i32* %5, align 4
  %63 = or i32 %61, %62
  %64 = load %struct.mtk_aes_reqctx*, %struct.mtk_aes_reqctx** %8, align 8
  %65 = getelementptr inbounds %struct.mtk_aes_reqctx, %struct.mtk_aes_reqctx* %64, i32 0, i32 0
  store i32 %63, i32* %65, align 4
  %66 = load %struct.mtk_cryp*, %struct.mtk_cryp** %9, align 8
  %67 = load i32, i32* %10, align 4
  %68 = load %struct.aead_request*, %struct.aead_request** %4, align 8
  %69 = getelementptr inbounds %struct.aead_request, %struct.aead_request* %68, i32 0, i32 0
  %70 = call i32 @mtk_aes_handle_queue(%struct.mtk_cryp* %66, i32 %67, i32* %69)
  store i32 %70, i32* %3, align 4
  br label %71

71:                                               ; preds = %60, %57, %29
  %72 = load i32, i32* %3, align 4
  ret i32 %72
}

declare dso_local %struct.mtk_aes_base_ctx* @crypto_aead_ctx(i32) #1

declare dso_local i32 @crypto_aead_reqtfm(%struct.aead_request*) #1

declare dso_local %struct.mtk_aes_gcm_ctx* @mtk_aes_gcm_ctx_cast(%struct.mtk_aes_base_ctx*) #1

declare dso_local %struct.mtk_aes_reqctx* @aead_request_ctx(%struct.aead_request*) #1

declare dso_local %struct.mtk_cryp* @mtk_aes_find_dev(%struct.mtk_aes_base_ctx*) #1

declare dso_local i32 @mtk_aes_handle_queue(%struct.mtk_cryp*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
