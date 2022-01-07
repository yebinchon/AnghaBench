; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/extr_omap-aes.c_omap_aes_crypt.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/extr_omap-aes.c_omap_aes_crypt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ablkcipher_request = type { i64, i32, i32, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.omap_aes_ctx = type { i32 }
%struct.omap_aes_reqctx = type { i64 }
%struct.omap_aes_dev = type { i32 }

@.str = private unnamed_addr constant [30 x i8] c"nbytes: %d, enc: %d, cbc: %d\0A\00", align 1
@FLAGS_ENCRYPT = common dso_local global i64 0, align 8
@FLAGS_CBC = common dso_local global i64 0, align 8
@aes_fallback_sz = common dso_local global i64 0, align 8
@subreq = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ablkcipher_request*, i64)* @omap_aes_crypt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @omap_aes_crypt(%struct.ablkcipher_request* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ablkcipher_request*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.omap_aes_ctx*, align 8
  %7 = alloca %struct.omap_aes_reqctx*, align 8
  %8 = alloca %struct.omap_aes_dev*, align 8
  %9 = alloca i32, align 4
  store %struct.ablkcipher_request* %0, %struct.ablkcipher_request** %4, align 8
  store i64 %1, i64* %5, align 8
  %10 = load %struct.ablkcipher_request*, %struct.ablkcipher_request** %4, align 8
  %11 = call i32 @crypto_ablkcipher_reqtfm(%struct.ablkcipher_request* %10)
  %12 = call %struct.omap_aes_ctx* @crypto_ablkcipher_ctx(i32 %11)
  store %struct.omap_aes_ctx* %12, %struct.omap_aes_ctx** %6, align 8
  %13 = load %struct.ablkcipher_request*, %struct.ablkcipher_request** %4, align 8
  %14 = call %struct.omap_aes_reqctx* @ablkcipher_request_ctx(%struct.ablkcipher_request* %13)
  store %struct.omap_aes_reqctx* %14, %struct.omap_aes_reqctx** %7, align 8
  %15 = load %struct.ablkcipher_request*, %struct.ablkcipher_request** %4, align 8
  %16 = getelementptr inbounds %struct.ablkcipher_request, %struct.ablkcipher_request* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* %5, align 8
  %19 = load i64, i64* @FLAGS_ENCRYPT, align 8
  %20 = and i64 %18, %19
  %21 = icmp ne i64 %20, 0
  %22 = xor i1 %21, true
  %23 = xor i1 %22, true
  %24 = zext i1 %23 to i32
  %25 = load i64, i64* %5, align 8
  %26 = load i64, i64* @FLAGS_CBC, align 8
  %27 = and i64 %25, %26
  %28 = icmp ne i64 %27, 0
  %29 = xor i1 %28, true
  %30 = xor i1 %29, true
  %31 = zext i1 %30 to i32
  %32 = call i32 @pr_debug(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i64 %17, i32 %24, i32 %31)
  %33 = load %struct.ablkcipher_request*, %struct.ablkcipher_request** %4, align 8
  %34 = getelementptr inbounds %struct.ablkcipher_request, %struct.ablkcipher_request* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = load i64, i64* @aes_fallback_sz, align 8
  %37 = icmp slt i64 %35, %36
  br i1 %37, label %38, label %83

38:                                               ; preds = %2
  %39 = load i32, i32* @subreq, align 4
  %40 = load %struct.omap_aes_ctx*, %struct.omap_aes_ctx** %6, align 8
  %41 = getelementptr inbounds %struct.omap_aes_ctx, %struct.omap_aes_ctx* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @SYNC_SKCIPHER_REQUEST_ON_STACK(i32 %39, i32 %42)
  %44 = load i32, i32* @subreq, align 4
  %45 = load %struct.omap_aes_ctx*, %struct.omap_aes_ctx** %6, align 8
  %46 = getelementptr inbounds %struct.omap_aes_ctx, %struct.omap_aes_ctx* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = call i32 @skcipher_request_set_sync_tfm(i32 %44, i32 %47)
  %49 = load i32, i32* @subreq, align 4
  %50 = load %struct.ablkcipher_request*, %struct.ablkcipher_request** %4, align 8
  %51 = getelementptr inbounds %struct.ablkcipher_request, %struct.ablkcipher_request* %50, i32 0, i32 4
  %52 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = call i32 @skcipher_request_set_callback(i32 %49, i32 %53, i32* null, i32* null)
  %55 = load i32, i32* @subreq, align 4
  %56 = load %struct.ablkcipher_request*, %struct.ablkcipher_request** %4, align 8
  %57 = getelementptr inbounds %struct.ablkcipher_request, %struct.ablkcipher_request* %56, i32 0, i32 3
  %58 = load i32, i32* %57, align 8
  %59 = load %struct.ablkcipher_request*, %struct.ablkcipher_request** %4, align 8
  %60 = getelementptr inbounds %struct.ablkcipher_request, %struct.ablkcipher_request* %59, i32 0, i32 2
  %61 = load i32, i32* %60, align 4
  %62 = load %struct.ablkcipher_request*, %struct.ablkcipher_request** %4, align 8
  %63 = getelementptr inbounds %struct.ablkcipher_request, %struct.ablkcipher_request* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = load %struct.ablkcipher_request*, %struct.ablkcipher_request** %4, align 8
  %66 = getelementptr inbounds %struct.ablkcipher_request, %struct.ablkcipher_request* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 8
  %68 = call i32 @skcipher_request_set_crypt(i32 %55, i32 %58, i32 %61, i64 %64, i32 %67)
  %69 = load i64, i64* %5, align 8
  %70 = load i64, i64* @FLAGS_ENCRYPT, align 8
  %71 = and i64 %69, %70
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %73, label %76

73:                                               ; preds = %38
  %74 = load i32, i32* @subreq, align 4
  %75 = call i32 @crypto_skcipher_encrypt(i32 %74)
  store i32 %75, i32* %9, align 4
  br label %79

76:                                               ; preds = %38
  %77 = load i32, i32* @subreq, align 4
  %78 = call i32 @crypto_skcipher_decrypt(i32 %77)
  store i32 %78, i32* %9, align 4
  br label %79

79:                                               ; preds = %76, %73
  %80 = load i32, i32* @subreq, align 4
  %81 = call i32 @skcipher_request_zero(i32 %80)
  %82 = load i32, i32* %9, align 4
  store i32 %82, i32* %3, align 4
  br label %98

83:                                               ; preds = %2
  %84 = load %struct.omap_aes_reqctx*, %struct.omap_aes_reqctx** %7, align 8
  %85 = call %struct.omap_aes_dev* @omap_aes_find_dev(%struct.omap_aes_reqctx* %84)
  store %struct.omap_aes_dev* %85, %struct.omap_aes_dev** %8, align 8
  %86 = load %struct.omap_aes_dev*, %struct.omap_aes_dev** %8, align 8
  %87 = icmp ne %struct.omap_aes_dev* %86, null
  br i1 %87, label %91, label %88

88:                                               ; preds = %83
  %89 = load i32, i32* @ENODEV, align 4
  %90 = sub nsw i32 0, %89
  store i32 %90, i32* %3, align 4
  br label %98

91:                                               ; preds = %83
  %92 = load i64, i64* %5, align 8
  %93 = load %struct.omap_aes_reqctx*, %struct.omap_aes_reqctx** %7, align 8
  %94 = getelementptr inbounds %struct.omap_aes_reqctx, %struct.omap_aes_reqctx* %93, i32 0, i32 0
  store i64 %92, i64* %94, align 8
  %95 = load %struct.omap_aes_dev*, %struct.omap_aes_dev** %8, align 8
  %96 = load %struct.ablkcipher_request*, %struct.ablkcipher_request** %4, align 8
  %97 = call i32 @omap_aes_handle_queue(%struct.omap_aes_dev* %95, %struct.ablkcipher_request* %96)
  store i32 %97, i32* %3, align 4
  br label %98

98:                                               ; preds = %91, %88, %79
  %99 = load i32, i32* %3, align 4
  ret i32 %99
}

declare dso_local %struct.omap_aes_ctx* @crypto_ablkcipher_ctx(i32) #1

declare dso_local i32 @crypto_ablkcipher_reqtfm(%struct.ablkcipher_request*) #1

declare dso_local %struct.omap_aes_reqctx* @ablkcipher_request_ctx(%struct.ablkcipher_request*) #1

declare dso_local i32 @pr_debug(i8*, i64, i32, i32) #1

declare dso_local i32 @SYNC_SKCIPHER_REQUEST_ON_STACK(i32, i32) #1

declare dso_local i32 @skcipher_request_set_sync_tfm(i32, i32) #1

declare dso_local i32 @skcipher_request_set_callback(i32, i32, i32*, i32*) #1

declare dso_local i32 @skcipher_request_set_crypt(i32, i32, i32, i64, i32) #1

declare dso_local i32 @crypto_skcipher_encrypt(i32) #1

declare dso_local i32 @crypto_skcipher_decrypt(i32) #1

declare dso_local i32 @skcipher_request_zero(i32) #1

declare dso_local %struct.omap_aes_dev* @omap_aes_find_dev(%struct.omap_aes_reqctx*) #1

declare dso_local i32 @omap_aes_handle_queue(%struct.omap_aes_dev*, %struct.ablkcipher_request*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
