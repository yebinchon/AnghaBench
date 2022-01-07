; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/extr_omap-aes-gcm.c_omap_aes_gcm_crypt.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/extr_omap-aes-gcm.c_omap_aes_gcm_crypt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.aead_request = type { i32, i64, i32 }
%struct.omap_aes_reqctx = type { i64, i64, i64 }
%struct.crypto_aead = type { i32 }
%struct.omap_aes_dev = type { i32 }

@GCM_AES_IV_SIZE = common dso_local global i64 0, align 8
@FLAGS_RFC4106_GCM = common dso_local global i64 0, align 8
@ENODEV = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.aead_request*, i64)* @omap_aes_gcm_crypt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @omap_aes_gcm_crypt(%struct.aead_request* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.aead_request*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.omap_aes_reqctx*, align 8
  %7 = alloca %struct.crypto_aead*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.omap_aes_dev*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.aead_request* %0, %struct.aead_request** %4, align 8
  store i64 %1, i64* %5, align 8
  %13 = load %struct.aead_request*, %struct.aead_request** %4, align 8
  %14 = call %struct.omap_aes_reqctx* @aead_request_ctx(%struct.aead_request* %13)
  store %struct.omap_aes_reqctx* %14, %struct.omap_aes_reqctx** %6, align 8
  %15 = load %struct.aead_request*, %struct.aead_request** %4, align 8
  %16 = call %struct.crypto_aead* @crypto_aead_reqtfm(%struct.aead_request* %15)
  store %struct.crypto_aead* %16, %struct.crypto_aead** %7, align 8
  %17 = load %struct.crypto_aead*, %struct.crypto_aead** %7, align 8
  %18 = call i32 @crypto_aead_authsize(%struct.crypto_aead* %17)
  store i32 %18, i32* %8, align 4
  %19 = call i32 @cpu_to_be32(i32 1)
  store i32 %19, i32* %10, align 4
  %20 = load %struct.omap_aes_reqctx*, %struct.omap_aes_reqctx** %6, align 8
  %21 = getelementptr inbounds %struct.omap_aes_reqctx, %struct.omap_aes_reqctx* %20, i32 0, i32 1
  %22 = load i64, i64* %21, align 8
  %23 = call i32 @memset(i64 %22, i32 0, i32 8)
  %24 = load %struct.omap_aes_reqctx*, %struct.omap_aes_reqctx** %6, align 8
  %25 = getelementptr inbounds %struct.omap_aes_reqctx, %struct.omap_aes_reqctx* %24, i32 0, i32 2
  %26 = load i64, i64* %25, align 8
  %27 = load i64, i64* @GCM_AES_IV_SIZE, align 8
  %28 = add nsw i64 %26, %27
  %29 = call i32 @memcpy(i64 %28, i32* %10, i32 4)
  %30 = load %struct.aead_request*, %struct.aead_request** %4, align 8
  %31 = load %struct.omap_aes_reqctx*, %struct.omap_aes_reqctx** %6, align 8
  %32 = getelementptr inbounds %struct.omap_aes_reqctx, %struct.omap_aes_reqctx* %31, i32 0, i32 1
  %33 = load i64, i64* %32, align 8
  %34 = inttoptr i64 %33 to i32*
  %35 = load %struct.omap_aes_reqctx*, %struct.omap_aes_reqctx** %6, align 8
  %36 = getelementptr inbounds %struct.omap_aes_reqctx, %struct.omap_aes_reqctx* %35, i32 0, i32 2
  %37 = load i64, i64* %36, align 8
  %38 = inttoptr i64 %37 to i32*
  %39 = call i32 @do_encrypt_iv(%struct.aead_request* %30, i32* %34, i32* %38)
  store i32 %39, i32* %11, align 4
  %40 = load i32, i32* %11, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %44

42:                                               ; preds = %2
  %43 = load i32, i32* %11, align 4
  store i32 %43, i32* %3, align 4
  br label %90

44:                                               ; preds = %2
  %45 = load i64, i64* %5, align 8
  %46 = load i64, i64* @FLAGS_RFC4106_GCM, align 8
  %47 = and i64 %45, %46
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %54

49:                                               ; preds = %44
  %50 = load %struct.aead_request*, %struct.aead_request** %4, align 8
  %51 = getelementptr inbounds %struct.aead_request, %struct.aead_request* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = sub nsw i32 %52, 8
  store i32 %53, i32* %12, align 4
  br label %58

54:                                               ; preds = %44
  %55 = load %struct.aead_request*, %struct.aead_request** %4, align 8
  %56 = getelementptr inbounds %struct.aead_request, %struct.aead_request* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  store i32 %57, i32* %12, align 4
  br label %58

58:                                               ; preds = %54, %49
  %59 = load i32, i32* %12, align 4
  %60 = sext i32 %59 to i64
  %61 = load %struct.aead_request*, %struct.aead_request** %4, align 8
  %62 = getelementptr inbounds %struct.aead_request, %struct.aead_request* %61, i32 0, i32 1
  %63 = load i64, i64* %62, align 8
  %64 = add nsw i64 %60, %63
  %65 = icmp eq i64 %64, 0
  br i1 %65, label %66, label %75

66:                                               ; preds = %58
  %67 = load %struct.omap_aes_reqctx*, %struct.omap_aes_reqctx** %6, align 8
  %68 = getelementptr inbounds %struct.omap_aes_reqctx, %struct.omap_aes_reqctx* %67, i32 0, i32 1
  %69 = load i64, i64* %68, align 8
  %70 = load %struct.aead_request*, %struct.aead_request** %4, align 8
  %71 = getelementptr inbounds %struct.aead_request, %struct.aead_request* %70, i32 0, i32 2
  %72 = load i32, i32* %71, align 8
  %73 = load i32, i32* %8, align 4
  %74 = call i32 @scatterwalk_map_and_copy(i64 %69, i32 %72, i32 0, i32 %73, i32 1)
  store i32 0, i32* %3, align 4
  br label %90

75:                                               ; preds = %58
  %76 = load %struct.omap_aes_reqctx*, %struct.omap_aes_reqctx** %6, align 8
  %77 = call %struct.omap_aes_dev* @omap_aes_find_dev(%struct.omap_aes_reqctx* %76)
  store %struct.omap_aes_dev* %77, %struct.omap_aes_dev** %9, align 8
  %78 = load %struct.omap_aes_dev*, %struct.omap_aes_dev** %9, align 8
  %79 = icmp ne %struct.omap_aes_dev* %78, null
  br i1 %79, label %83, label %80

80:                                               ; preds = %75
  %81 = load i32, i32* @ENODEV, align 4
  %82 = sub nsw i32 0, %81
  store i32 %82, i32* %3, align 4
  br label %90

83:                                               ; preds = %75
  %84 = load i64, i64* %5, align 8
  %85 = load %struct.omap_aes_reqctx*, %struct.omap_aes_reqctx** %6, align 8
  %86 = getelementptr inbounds %struct.omap_aes_reqctx, %struct.omap_aes_reqctx* %85, i32 0, i32 0
  store i64 %84, i64* %86, align 8
  %87 = load %struct.omap_aes_dev*, %struct.omap_aes_dev** %9, align 8
  %88 = load %struct.aead_request*, %struct.aead_request** %4, align 8
  %89 = call i32 @omap_aes_gcm_handle_queue(%struct.omap_aes_dev* %87, %struct.aead_request* %88)
  store i32 %89, i32* %3, align 4
  br label %90

90:                                               ; preds = %83, %80, %66, %42
  %91 = load i32, i32* %3, align 4
  ret i32 %91
}

declare dso_local %struct.omap_aes_reqctx* @aead_request_ctx(%struct.aead_request*) #1

declare dso_local %struct.crypto_aead* @crypto_aead_reqtfm(%struct.aead_request*) #1

declare dso_local i32 @crypto_aead_authsize(%struct.crypto_aead*) #1

declare dso_local i32 @cpu_to_be32(i32) #1

declare dso_local i32 @memset(i64, i32, i32) #1

declare dso_local i32 @memcpy(i64, i32*, i32) #1

declare dso_local i32 @do_encrypt_iv(%struct.aead_request*, i32*, i32*) #1

declare dso_local i32 @scatterwalk_map_and_copy(i64, i32, i32, i32, i32) #1

declare dso_local %struct.omap_aes_dev* @omap_aes_find_dev(%struct.omap_aes_reqctx*) #1

declare dso_local i32 @omap_aes_gcm_handle_queue(%struct.omap_aes_dev*, %struct.aead_request*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
