; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/extr_atmel-sha.c_atmel_sha_hmac_digest2.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/extr_atmel-sha.c_atmel_sha_hmac_digest2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.atmel_sha_dev = type { %struct.ahash_request* }
%struct.ahash_request = type { i32, i32 }
%struct.atmel_sha_reqctx = type { i64, i32 }
%struct.crypto_ahash = type { i32 }
%struct.atmel_sha_hmac_ctx = type { i32*, i32* }

@EINVAL = common dso_local global i32 0, align 4
@ATMEL_SHA_DMA_THRESHOLD = common dso_local global i32 0, align 4
@SHA_CR = common dso_local global i32 0, align 4
@SHA_CR_WUIHV = common dso_local global i32 0, align 4
@SHA_CR_WUIEHV = common dso_local global i32 0, align 4
@SHA_MR_HMAC = common dso_local global i32 0, align 4
@SHA_MR_DUALBUFF = common dso_local global i32 0, align 4
@SHA_FLAGS_ALGO_MASK = common dso_local global i32 0, align 4
@SHA_MR_MODE_IDATAR0 = common dso_local global i32 0, align 4
@SHA_MR_MODE_AUTO = common dso_local global i32 0, align 4
@SHA_MR = common dso_local global i32 0, align 4
@SHA_MSR = common dso_local global i32 0, align 4
@SHA_BCR = common dso_local global i32 0, align 4
@SHA_CR_FIRST = common dso_local global i32 0, align 4
@atmel_sha_hmac_final_done = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.atmel_sha_dev*)* @atmel_sha_hmac_digest2 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @atmel_sha_hmac_digest2(%struct.atmel_sha_dev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.atmel_sha_dev*, align 8
  %4 = alloca %struct.ahash_request*, align 8
  %5 = alloca %struct.atmel_sha_reqctx*, align 8
  %6 = alloca %struct.crypto_ahash*, align 8
  %7 = alloca %struct.atmel_sha_hmac_ctx*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.atmel_sha_dev* %0, %struct.atmel_sha_dev** %3, align 8
  %13 = load %struct.atmel_sha_dev*, %struct.atmel_sha_dev** %3, align 8
  %14 = getelementptr inbounds %struct.atmel_sha_dev, %struct.atmel_sha_dev* %13, i32 0, i32 0
  %15 = load %struct.ahash_request*, %struct.ahash_request** %14, align 8
  store %struct.ahash_request* %15, %struct.ahash_request** %4, align 8
  %16 = load %struct.ahash_request*, %struct.ahash_request** %4, align 8
  %17 = call %struct.atmel_sha_reqctx* @ahash_request_ctx(%struct.ahash_request* %16)
  store %struct.atmel_sha_reqctx* %17, %struct.atmel_sha_reqctx** %5, align 8
  %18 = load %struct.ahash_request*, %struct.ahash_request** %4, align 8
  %19 = call %struct.crypto_ahash* @crypto_ahash_reqtfm(%struct.ahash_request* %18)
  store %struct.crypto_ahash* %19, %struct.crypto_ahash** %6, align 8
  %20 = load %struct.crypto_ahash*, %struct.crypto_ahash** %6, align 8
  %21 = call %struct.atmel_sha_hmac_ctx* @crypto_ahash_ctx(%struct.crypto_ahash* %20)
  store %struct.atmel_sha_hmac_ctx* %21, %struct.atmel_sha_hmac_ctx** %7, align 8
  %22 = load %struct.atmel_sha_reqctx*, %struct.atmel_sha_reqctx** %5, align 8
  %23 = getelementptr inbounds %struct.atmel_sha_reqctx, %struct.atmel_sha_reqctx* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  store i64 %24, i64* %8, align 8
  %25 = load i64, i64* %8, align 8
  %26 = udiv i64 %25, 4
  store i64 %26, i64* %10, align 8
  store i32 0, i32* %11, align 4
  %27 = load %struct.ahash_request*, %struct.ahash_request** %4, align 8
  %28 = getelementptr inbounds %struct.ahash_request, %struct.ahash_request* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %36, label %31

31:                                               ; preds = %1
  %32 = load %struct.atmel_sha_dev*, %struct.atmel_sha_dev** %3, align 8
  %33 = load i32, i32* @EINVAL, align 4
  %34 = sub nsw i32 0, %33
  %35 = call i32 @atmel_sha_complete(%struct.atmel_sha_dev* %32, i32 %34)
  store i32 %35, i32* %2, align 4
  br label %163

36:                                               ; preds = %1
  %37 = load %struct.ahash_request*, %struct.ahash_request** %4, align 8
  %38 = getelementptr inbounds %struct.ahash_request, %struct.ahash_request* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = load i32, i32* @ATMEL_SHA_DMA_THRESHOLD, align 4
  %41 = icmp sgt i32 %39, %40
  br i1 %41, label %42, label %53

42:                                               ; preds = %36
  %43 = load %struct.atmel_sha_dev*, %struct.atmel_sha_dev** %3, align 8
  %44 = load %struct.ahash_request*, %struct.ahash_request** %4, align 8
  %45 = getelementptr inbounds %struct.ahash_request, %struct.ahash_request* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = load %struct.ahash_request*, %struct.ahash_request** %4, align 8
  %48 = getelementptr inbounds %struct.ahash_request, %struct.ahash_request* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = call i64 @atmel_sha_dma_check_aligned(%struct.atmel_sha_dev* %43, i32 %46, i32 %49)
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %53

52:                                               ; preds = %42
  store i32 1, i32* %11, align 4
  br label %53

53:                                               ; preds = %52, %42, %36
  %54 = load %struct.atmel_sha_dev*, %struct.atmel_sha_dev** %3, align 8
  %55 = load i32, i32* @SHA_CR, align 4
  %56 = load i32, i32* @SHA_CR_WUIHV, align 4
  %57 = call i32 @atmel_sha_write(%struct.atmel_sha_dev* %54, i32 %55, i32 %56)
  store i64 0, i64* %9, align 8
  br label %58

58:                                               ; preds = %73, %53
  %59 = load i64, i64* %9, align 8
  %60 = load i64, i64* %10, align 8
  %61 = icmp ult i64 %59, %60
  br i1 %61, label %62, label %76

62:                                               ; preds = %58
  %63 = load %struct.atmel_sha_dev*, %struct.atmel_sha_dev** %3, align 8
  %64 = load i64, i64* %9, align 8
  %65 = call i32 @SHA_REG_DIN(i64 %64)
  %66 = load %struct.atmel_sha_hmac_ctx*, %struct.atmel_sha_hmac_ctx** %7, align 8
  %67 = getelementptr inbounds %struct.atmel_sha_hmac_ctx, %struct.atmel_sha_hmac_ctx* %66, i32 0, i32 0
  %68 = load i32*, i32** %67, align 8
  %69 = load i64, i64* %9, align 8
  %70 = getelementptr inbounds i32, i32* %68, i64 %69
  %71 = load i32, i32* %70, align 4
  %72 = call i32 @atmel_sha_write(%struct.atmel_sha_dev* %63, i32 %65, i32 %71)
  br label %73

73:                                               ; preds = %62
  %74 = load i64, i64* %9, align 8
  %75 = add i64 %74, 1
  store i64 %75, i64* %9, align 8
  br label %58

76:                                               ; preds = %58
  %77 = load %struct.atmel_sha_dev*, %struct.atmel_sha_dev** %3, align 8
  %78 = load i32, i32* @SHA_CR, align 4
  %79 = load i32, i32* @SHA_CR_WUIEHV, align 4
  %80 = call i32 @atmel_sha_write(%struct.atmel_sha_dev* %77, i32 %78, i32 %79)
  store i64 0, i64* %9, align 8
  br label %81

81:                                               ; preds = %96, %76
  %82 = load i64, i64* %9, align 8
  %83 = load i64, i64* %10, align 8
  %84 = icmp ult i64 %82, %83
  br i1 %84, label %85, label %99

85:                                               ; preds = %81
  %86 = load %struct.atmel_sha_dev*, %struct.atmel_sha_dev** %3, align 8
  %87 = load i64, i64* %9, align 8
  %88 = call i32 @SHA_REG_DIN(i64 %87)
  %89 = load %struct.atmel_sha_hmac_ctx*, %struct.atmel_sha_hmac_ctx** %7, align 8
  %90 = getelementptr inbounds %struct.atmel_sha_hmac_ctx, %struct.atmel_sha_hmac_ctx* %89, i32 0, i32 1
  %91 = load i32*, i32** %90, align 8
  %92 = load i64, i64* %9, align 8
  %93 = getelementptr inbounds i32, i32* %91, i64 %92
  %94 = load i32, i32* %93, align 4
  %95 = call i32 @atmel_sha_write(%struct.atmel_sha_dev* %86, i32 %88, i32 %94)
  br label %96

96:                                               ; preds = %85
  %97 = load i64, i64* %9, align 8
  %98 = add i64 %97, 1
  store i64 %98, i64* %9, align 8
  br label %81

99:                                               ; preds = %81
  %100 = load i32, i32* @SHA_MR_HMAC, align 4
  %101 = load i32, i32* @SHA_MR_DUALBUFF, align 4
  %102 = or i32 %100, %101
  store i32 %102, i32* %12, align 4
  %103 = load %struct.atmel_sha_reqctx*, %struct.atmel_sha_reqctx** %5, align 8
  %104 = getelementptr inbounds %struct.atmel_sha_reqctx, %struct.atmel_sha_reqctx* %103, i32 0, i32 1
  %105 = load i32, i32* %104, align 8
  %106 = load i32, i32* @SHA_FLAGS_ALGO_MASK, align 4
  %107 = and i32 %105, %106
  %108 = load i32, i32* %12, align 4
  %109 = or i32 %108, %107
  store i32 %109, i32* %12, align 4
  %110 = load i32, i32* %11, align 4
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %112, label %116

112:                                              ; preds = %99
  %113 = load i32, i32* @SHA_MR_MODE_IDATAR0, align 4
  %114 = load i32, i32* %12, align 4
  %115 = or i32 %114, %113
  store i32 %115, i32* %12, align 4
  br label %120

116:                                              ; preds = %99
  %117 = load i32, i32* @SHA_MR_MODE_AUTO, align 4
  %118 = load i32, i32* %12, align 4
  %119 = or i32 %118, %117
  store i32 %119, i32* %12, align 4
  br label %120

120:                                              ; preds = %116, %112
  %121 = load %struct.atmel_sha_dev*, %struct.atmel_sha_dev** %3, align 8
  %122 = load i32, i32* @SHA_MR, align 4
  %123 = load i32, i32* %12, align 4
  %124 = call i32 @atmel_sha_write(%struct.atmel_sha_dev* %121, i32 %122, i32 %123)
  %125 = load %struct.atmel_sha_dev*, %struct.atmel_sha_dev** %3, align 8
  %126 = load i32, i32* @SHA_MSR, align 4
  %127 = load %struct.ahash_request*, %struct.ahash_request** %4, align 8
  %128 = getelementptr inbounds %struct.ahash_request, %struct.ahash_request* %127, i32 0, i32 0
  %129 = load i32, i32* %128, align 4
  %130 = call i32 @atmel_sha_write(%struct.atmel_sha_dev* %125, i32 %126, i32 %129)
  %131 = load %struct.atmel_sha_dev*, %struct.atmel_sha_dev** %3, align 8
  %132 = load i32, i32* @SHA_BCR, align 4
  %133 = load %struct.ahash_request*, %struct.ahash_request** %4, align 8
  %134 = getelementptr inbounds %struct.ahash_request, %struct.ahash_request* %133, i32 0, i32 0
  %135 = load i32, i32* %134, align 4
  %136 = call i32 @atmel_sha_write(%struct.atmel_sha_dev* %131, i32 %132, i32 %135)
  %137 = load %struct.atmel_sha_dev*, %struct.atmel_sha_dev** %3, align 8
  %138 = load i32, i32* @SHA_CR, align 4
  %139 = load i32, i32* @SHA_CR_FIRST, align 4
  %140 = call i32 @atmel_sha_write(%struct.atmel_sha_dev* %137, i32 %138, i32 %139)
  %141 = load i32, i32* %11, align 4
  %142 = icmp ne i32 %141, 0
  br i1 %142, label %143, label %153

143:                                              ; preds = %120
  %144 = load %struct.atmel_sha_dev*, %struct.atmel_sha_dev** %3, align 8
  %145 = load %struct.ahash_request*, %struct.ahash_request** %4, align 8
  %146 = getelementptr inbounds %struct.ahash_request, %struct.ahash_request* %145, i32 0, i32 1
  %147 = load i32, i32* %146, align 4
  %148 = load %struct.ahash_request*, %struct.ahash_request** %4, align 8
  %149 = getelementptr inbounds %struct.ahash_request, %struct.ahash_request* %148, i32 0, i32 0
  %150 = load i32, i32* %149, align 4
  %151 = load i32, i32* @atmel_sha_hmac_final_done, align 4
  %152 = call i32 @atmel_sha_dma_start(%struct.atmel_sha_dev* %144, i32 %147, i32 %150, i32 %151)
  store i32 %152, i32* %2, align 4
  br label %163

153:                                              ; preds = %120
  %154 = load %struct.atmel_sha_dev*, %struct.atmel_sha_dev** %3, align 8
  %155 = load %struct.ahash_request*, %struct.ahash_request** %4, align 8
  %156 = getelementptr inbounds %struct.ahash_request, %struct.ahash_request* %155, i32 0, i32 1
  %157 = load i32, i32* %156, align 4
  %158 = load %struct.ahash_request*, %struct.ahash_request** %4, align 8
  %159 = getelementptr inbounds %struct.ahash_request, %struct.ahash_request* %158, i32 0, i32 0
  %160 = load i32, i32* %159, align 4
  %161 = load i32, i32* @atmel_sha_hmac_final_done, align 4
  %162 = call i32 @atmel_sha_cpu_start(%struct.atmel_sha_dev* %154, i32 %157, i32 %160, i32 0, i32 1, i32 %161)
  store i32 %162, i32* %2, align 4
  br label %163

163:                                              ; preds = %153, %143, %31
  %164 = load i32, i32* %2, align 4
  ret i32 %164
}

declare dso_local %struct.atmel_sha_reqctx* @ahash_request_ctx(%struct.ahash_request*) #1

declare dso_local %struct.crypto_ahash* @crypto_ahash_reqtfm(%struct.ahash_request*) #1

declare dso_local %struct.atmel_sha_hmac_ctx* @crypto_ahash_ctx(%struct.crypto_ahash*) #1

declare dso_local i32 @atmel_sha_complete(%struct.atmel_sha_dev*, i32) #1

declare dso_local i64 @atmel_sha_dma_check_aligned(%struct.atmel_sha_dev*, i32, i32) #1

declare dso_local i32 @atmel_sha_write(%struct.atmel_sha_dev*, i32, i32) #1

declare dso_local i32 @SHA_REG_DIN(i64) #1

declare dso_local i32 @atmel_sha_dma_start(%struct.atmel_sha_dev*, i32, i32, i32) #1

declare dso_local i32 @atmel_sha_cpu_start(%struct.atmel_sha_dev*, i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
