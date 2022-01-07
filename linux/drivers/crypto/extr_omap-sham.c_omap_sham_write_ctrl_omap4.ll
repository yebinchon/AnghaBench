; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/extr_omap-sham.c_omap_sham_write_ctrl_omap4.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/extr_omap-sham.c_omap_sham_write_ctrl_omap4.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.omap_sham_dev = type { i32, i32 }
%struct.omap_sham_reqctx = type { i32, i64 }
%struct.crypto_ahash = type { i32 }
%struct.omap_sham_ctx = type { %struct.omap_sham_hmac_ctx* }
%struct.omap_sham_hmac_ctx = type { i64 }

@FLAGS_MODE_MASK = common dso_local global i32 0, align 4
@FLAGS_MODE_SHIFT = common dso_local global i32 0, align 4
@SHA_REG_MODE_ALGO_CONSTANT = common dso_local global i32 0, align 4
@FLAGS_HMAC = common dso_local global i32 0, align 4
@SHA_REG_MODE_HMAC_KEY_PROC = common dso_local global i32 0, align 4
@SHA_REG_MODE_CLOSE_HASH = common dso_local global i32 0, align 4
@SHA_REG_MODE_HMAC_OUTER_HASH = common dso_local global i32 0, align 4
@SHA_REG_MODE_ALGO_MASK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"ctrl: %08x, flags: %08lx\0A\00", align 1
@SHA_REG_IRQENA = common dso_local global i32 0, align 4
@SHA_REG_IRQENA_OUTPUT_RDY = common dso_local global i32 0, align 4
@SHA_REG_MASK_IT_EN = common dso_local global i32 0, align 4
@SHA_REG_MASK_DMA_EN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.omap_sham_dev*, i64, i32, i32)* @omap_sham_write_ctrl_omap4 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @omap_sham_write_ctrl_omap4(%struct.omap_sham_dev* %0, i64 %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.omap_sham_dev*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.omap_sham_reqctx*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.crypto_ahash*, align 8
  %13 = alloca %struct.omap_sham_ctx*, align 8
  %14 = alloca %struct.omap_sham_hmac_ctx*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.omap_sham_dev* %0, %struct.omap_sham_dev** %5, align 8
  store i64 %1, i64* %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %17 = load %struct.omap_sham_dev*, %struct.omap_sham_dev** %5, align 8
  %18 = getelementptr inbounds %struct.omap_sham_dev, %struct.omap_sham_dev* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = call %struct.omap_sham_reqctx* @ahash_request_ctx(i32 %19)
  store %struct.omap_sham_reqctx* %20, %struct.omap_sham_reqctx** %9, align 8
  %21 = load %struct.omap_sham_reqctx*, %struct.omap_sham_reqctx** %9, align 8
  %22 = getelementptr inbounds %struct.omap_sham_reqctx, %struct.omap_sham_reqctx* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = load i32, i32* @FLAGS_MODE_MASK, align 4
  %25 = and i32 %23, %24
  %26 = load i32, i32* @FLAGS_MODE_SHIFT, align 4
  %27 = ashr i32 %25, %26
  store i32 %27, i32* %10, align 4
  %28 = load %struct.omap_sham_reqctx*, %struct.omap_sham_reqctx** %9, align 8
  %29 = getelementptr inbounds %struct.omap_sham_reqctx, %struct.omap_sham_reqctx* %28, i32 0, i32 1
  %30 = load i64, i64* %29, align 8
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %90, label %32

32:                                               ; preds = %4
  %33 = load %struct.omap_sham_dev*, %struct.omap_sham_dev** %5, align 8
  %34 = getelementptr inbounds %struct.omap_sham_dev, %struct.omap_sham_dev* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = call %struct.crypto_ahash* @crypto_ahash_reqtfm(i32 %35)
  store %struct.crypto_ahash* %36, %struct.crypto_ahash** %12, align 8
  %37 = load %struct.crypto_ahash*, %struct.crypto_ahash** %12, align 8
  %38 = call %struct.omap_sham_ctx* @crypto_ahash_ctx(%struct.crypto_ahash* %37)
  store %struct.omap_sham_ctx* %38, %struct.omap_sham_ctx** %13, align 8
  %39 = load %struct.omap_sham_ctx*, %struct.omap_sham_ctx** %13, align 8
  %40 = getelementptr inbounds %struct.omap_sham_ctx, %struct.omap_sham_ctx* %39, i32 0, i32 0
  %41 = load %struct.omap_sham_hmac_ctx*, %struct.omap_sham_hmac_ctx** %40, align 8
  store %struct.omap_sham_hmac_ctx* %41, %struct.omap_sham_hmac_ctx** %14, align 8
  %42 = load i32, i32* @SHA_REG_MODE_ALGO_CONSTANT, align 4
  %43 = load i32, i32* %10, align 4
  %44 = or i32 %43, %42
  store i32 %44, i32* %10, align 4
  %45 = load %struct.omap_sham_reqctx*, %struct.omap_sham_reqctx** %9, align 8
  %46 = getelementptr inbounds %struct.omap_sham_reqctx, %struct.omap_sham_reqctx* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = load i32, i32* @FLAGS_HMAC, align 4
  %49 = call i32 @BIT(i32 %48)
  %50 = and i32 %47, %49
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %89

52:                                               ; preds = %32
  %53 = load %struct.omap_sham_reqctx*, %struct.omap_sham_reqctx** %9, align 8
  %54 = call i32 @get_block_size(%struct.omap_sham_reqctx* %53)
  store i32 %54, i32* %15, align 4
  %55 = load i32, i32* %15, align 4
  %56 = sext i32 %55 to i64
  %57 = udiv i64 %56, 8
  %58 = trunc i64 %57 to i32
  store i32 %58, i32* %16, align 4
  %59 = load i32, i32* @SHA_REG_MODE_HMAC_KEY_PROC, align 4
  %60 = load i32, i32* %10, align 4
  %61 = or i32 %60, %59
  store i32 %61, i32* %10, align 4
  %62 = load %struct.omap_sham_dev*, %struct.omap_sham_dev** %5, align 8
  %63 = load %struct.omap_sham_dev*, %struct.omap_sham_dev** %5, align 8
  %64 = call i32 @SHA_REG_ODIGEST(%struct.omap_sham_dev* %63, i32 0)
  %65 = load %struct.omap_sham_hmac_ctx*, %struct.omap_sham_hmac_ctx** %14, align 8
  %66 = getelementptr inbounds %struct.omap_sham_hmac_ctx, %struct.omap_sham_hmac_ctx* %65, i32 0, i32 0
  %67 = load i64, i64* %66, align 8
  %68 = inttoptr i64 %67 to i32*
  %69 = load i32, i32* %16, align 4
  %70 = call i32 @omap_sham_write_n(%struct.omap_sham_dev* %62, i32 %64, i32* %68, i32 %69)
  %71 = load %struct.omap_sham_dev*, %struct.omap_sham_dev** %5, align 8
  %72 = load %struct.omap_sham_dev*, %struct.omap_sham_dev** %5, align 8
  %73 = call i32 @SHA_REG_IDIGEST(%struct.omap_sham_dev* %72, i32 0)
  %74 = load %struct.omap_sham_hmac_ctx*, %struct.omap_sham_hmac_ctx** %14, align 8
  %75 = getelementptr inbounds %struct.omap_sham_hmac_ctx, %struct.omap_sham_hmac_ctx* %74, i32 0, i32 0
  %76 = load i64, i64* %75, align 8
  %77 = inttoptr i64 %76 to i32*
  %78 = load i32, i32* %16, align 4
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds i32, i32* %77, i64 %79
  %81 = load i32, i32* %16, align 4
  %82 = call i32 @omap_sham_write_n(%struct.omap_sham_dev* %71, i32 %73, i32* %80, i32 %81)
  %83 = load i32, i32* %15, align 4
  %84 = sext i32 %83 to i64
  %85 = load %struct.omap_sham_reqctx*, %struct.omap_sham_reqctx** %9, align 8
  %86 = getelementptr inbounds %struct.omap_sham_reqctx, %struct.omap_sham_reqctx* %85, i32 0, i32 1
  %87 = load i64, i64* %86, align 8
  %88 = add nsw i64 %87, %84
  store i64 %88, i64* %86, align 8
  br label %89

89:                                               ; preds = %52, %32
  br label %90

90:                                               ; preds = %89, %4
  %91 = load i32, i32* %7, align 4
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %93, label %109

93:                                               ; preds = %90
  %94 = load i32, i32* @SHA_REG_MODE_CLOSE_HASH, align 4
  %95 = load i32, i32* %10, align 4
  %96 = or i32 %95, %94
  store i32 %96, i32* %10, align 4
  %97 = load %struct.omap_sham_reqctx*, %struct.omap_sham_reqctx** %9, align 8
  %98 = getelementptr inbounds %struct.omap_sham_reqctx, %struct.omap_sham_reqctx* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 8
  %100 = load i32, i32* @FLAGS_HMAC, align 4
  %101 = call i32 @BIT(i32 %100)
  %102 = and i32 %99, %101
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %104, label %108

104:                                              ; preds = %93
  %105 = load i32, i32* @SHA_REG_MODE_HMAC_OUTER_HASH, align 4
  %106 = load i32, i32* %10, align 4
  %107 = or i32 %106, %105
  store i32 %107, i32* %10, align 4
  br label %108

108:                                              ; preds = %104, %93
  br label %109

109:                                              ; preds = %108, %90
  %110 = load i32, i32* @SHA_REG_MODE_ALGO_CONSTANT, align 4
  %111 = load i32, i32* @SHA_REG_MODE_CLOSE_HASH, align 4
  %112 = or i32 %110, %111
  %113 = load i32, i32* @SHA_REG_MODE_ALGO_MASK, align 4
  %114 = or i32 %112, %113
  %115 = load i32, i32* @SHA_REG_MODE_HMAC_OUTER_HASH, align 4
  %116 = or i32 %114, %115
  %117 = load i32, i32* @SHA_REG_MODE_HMAC_KEY_PROC, align 4
  %118 = or i32 %116, %117
  store i32 %118, i32* %11, align 4
  %119 = load %struct.omap_sham_dev*, %struct.omap_sham_dev** %5, align 8
  %120 = getelementptr inbounds %struct.omap_sham_dev, %struct.omap_sham_dev* %119, i32 0, i32 0
  %121 = load i32, i32* %120, align 4
  %122 = load i32, i32* %10, align 4
  %123 = load %struct.omap_sham_reqctx*, %struct.omap_sham_reqctx** %9, align 8
  %124 = getelementptr inbounds %struct.omap_sham_reqctx, %struct.omap_sham_reqctx* %123, i32 0, i32 0
  %125 = load i32, i32* %124, align 8
  %126 = call i32 @dev_dbg(i32 %121, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i32 %122, i32 %125)
  %127 = load %struct.omap_sham_dev*, %struct.omap_sham_dev** %5, align 8
  %128 = load %struct.omap_sham_dev*, %struct.omap_sham_dev** %5, align 8
  %129 = call i32 @SHA_REG_MODE(%struct.omap_sham_dev* %128)
  %130 = load i32, i32* %10, align 4
  %131 = load i32, i32* %11, align 4
  %132 = call i32 @omap_sham_write_mask(%struct.omap_sham_dev* %127, i32 %129, i32 %130, i32 %131)
  %133 = load %struct.omap_sham_dev*, %struct.omap_sham_dev** %5, align 8
  %134 = load i32, i32* @SHA_REG_IRQENA, align 4
  %135 = load i32, i32* @SHA_REG_IRQENA_OUTPUT_RDY, align 4
  %136 = call i32 @omap_sham_write(%struct.omap_sham_dev* %133, i32 %134, i32 %135)
  %137 = load %struct.omap_sham_dev*, %struct.omap_sham_dev** %5, align 8
  %138 = load %struct.omap_sham_dev*, %struct.omap_sham_dev** %5, align 8
  %139 = call i32 @SHA_REG_MASK(%struct.omap_sham_dev* %138)
  %140 = load i32, i32* @SHA_REG_MASK_IT_EN, align 4
  %141 = load i32, i32* %8, align 4
  %142 = icmp ne i32 %141, 0
  br i1 %142, label %143, label %145

143:                                              ; preds = %109
  %144 = load i32, i32* @SHA_REG_MASK_DMA_EN, align 4
  br label %146

145:                                              ; preds = %109
  br label %146

146:                                              ; preds = %145, %143
  %147 = phi i32 [ %144, %143 ], [ 0, %145 ]
  %148 = or i32 %140, %147
  %149 = load i32, i32* @SHA_REG_MASK_IT_EN, align 4
  %150 = load i32, i32* @SHA_REG_MASK_DMA_EN, align 4
  %151 = or i32 %149, %150
  %152 = call i32 @omap_sham_write_mask(%struct.omap_sham_dev* %137, i32 %139, i32 %148, i32 %151)
  ret void
}

declare dso_local %struct.omap_sham_reqctx* @ahash_request_ctx(i32) #1

declare dso_local %struct.crypto_ahash* @crypto_ahash_reqtfm(i32) #1

declare dso_local %struct.omap_sham_ctx* @crypto_ahash_ctx(%struct.crypto_ahash*) #1

declare dso_local i32 @BIT(i32) #1

declare dso_local i32 @get_block_size(%struct.omap_sham_reqctx*) #1

declare dso_local i32 @omap_sham_write_n(%struct.omap_sham_dev*, i32, i32*, i32) #1

declare dso_local i32 @SHA_REG_ODIGEST(%struct.omap_sham_dev*, i32) #1

declare dso_local i32 @SHA_REG_IDIGEST(%struct.omap_sham_dev*, i32) #1

declare dso_local i32 @dev_dbg(i32, i8*, i32, i32) #1

declare dso_local i32 @omap_sham_write_mask(%struct.omap_sham_dev*, i32, i32, i32) #1

declare dso_local i32 @SHA_REG_MODE(%struct.omap_sham_dev*) #1

declare dso_local i32 @omap_sham_write(%struct.omap_sham_dev*, i32, i32) #1

declare dso_local i32 @SHA_REG_MASK(%struct.omap_sham_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
