; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/caam/extr_caamalg_qi2.c_gcm_set_sh_desc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/caam/extr_caamalg_qi2.c_gcm_set_sh_desc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.crypto_aead = type { i32 }
%struct.caam_ctx = type { i32, i32*, i32, %struct.TYPE_3__, %struct.caam_flc*, i32, i32, %struct.device* }
%struct.TYPE_3__ = type { i32, i32, i32, i32 }
%struct.caam_flc = type { i8**, i32* }
%struct.device = type { i32 }

@CAAM_DESC_BYTES_MAX = common dso_local global i32 0, align 4
@DESC_JOB_IO_LEN = common dso_local global i32 0, align 4
@DESC_QI_GCM_ENC_LEN = common dso_local global i32 0, align 4
@ENCRYPT = common dso_local global i64 0, align 8
@DESC_QI_GCM_DEC_LEN = common dso_local global i32 0, align 4
@DECRYPT = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.crypto_aead*)* @gcm_set_sh_desc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gcm_set_sh_desc(%struct.crypto_aead* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.crypto_aead*, align 8
  %4 = alloca %struct.caam_ctx*, align 8
  %5 = alloca %struct.device*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.caam_flc*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  store %struct.crypto_aead* %0, %struct.crypto_aead** %3, align 8
  %10 = load %struct.crypto_aead*, %struct.crypto_aead** %3, align 8
  %11 = call %struct.caam_ctx* @crypto_aead_ctx(%struct.crypto_aead* %10)
  store %struct.caam_ctx* %11, %struct.caam_ctx** %4, align 8
  %12 = load %struct.caam_ctx*, %struct.caam_ctx** %4, align 8
  %13 = getelementptr inbounds %struct.caam_ctx, %struct.caam_ctx* %12, i32 0, i32 7
  %14 = load %struct.device*, %struct.device** %13, align 8
  store %struct.device* %14, %struct.device** %5, align 8
  %15 = load %struct.crypto_aead*, %struct.crypto_aead** %3, align 8
  %16 = call i32 @crypto_aead_ivsize(%struct.crypto_aead* %15)
  store i32 %16, i32* %6, align 4
  %17 = load i32, i32* @CAAM_DESC_BYTES_MAX, align 4
  %18 = load i32, i32* @DESC_JOB_IO_LEN, align 4
  %19 = sub nsw i32 %17, %18
  %20 = load %struct.caam_ctx*, %struct.caam_ctx** %4, align 8
  %21 = getelementptr inbounds %struct.caam_ctx, %struct.caam_ctx* %20, i32 0, i32 3
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = sub nsw i32 %19, %23
  store i32 %24, i32* %9, align 4
  %25 = load %struct.caam_ctx*, %struct.caam_ctx** %4, align 8
  %26 = getelementptr inbounds %struct.caam_ctx, %struct.caam_ctx* %25, i32 0, i32 3
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %35

30:                                               ; preds = %1
  %31 = load %struct.caam_ctx*, %struct.caam_ctx** %4, align 8
  %32 = getelementptr inbounds %struct.caam_ctx, %struct.caam_ctx* %31, i32 0, i32 2
  %33 = load i32, i32* %32, align 8
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %36, label %35

35:                                               ; preds = %30, %1
  store i32 0, i32* %2, align 4
  br label %163

36:                                               ; preds = %30
  %37 = load i32, i32* %9, align 4
  %38 = load i32, i32* @DESC_QI_GCM_ENC_LEN, align 4
  %39 = icmp sge i32 %37, %38
  br i1 %39, label %40, label %50

40:                                               ; preds = %36
  %41 = load %struct.caam_ctx*, %struct.caam_ctx** %4, align 8
  %42 = getelementptr inbounds %struct.caam_ctx, %struct.caam_ctx* %41, i32 0, i32 3
  %43 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %42, i32 0, i32 1
  store i32 1, i32* %43, align 4
  %44 = load %struct.caam_ctx*, %struct.caam_ctx** %4, align 8
  %45 = getelementptr inbounds %struct.caam_ctx, %struct.caam_ctx* %44, i32 0, i32 6
  %46 = load i32, i32* %45, align 4
  %47 = load %struct.caam_ctx*, %struct.caam_ctx** %4, align 8
  %48 = getelementptr inbounds %struct.caam_ctx, %struct.caam_ctx* %47, i32 0, i32 3
  %49 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %48, i32 0, i32 3
  store i32 %46, i32* %49, align 4
  br label %60

50:                                               ; preds = %36
  %51 = load %struct.caam_ctx*, %struct.caam_ctx** %4, align 8
  %52 = getelementptr inbounds %struct.caam_ctx, %struct.caam_ctx* %51, i32 0, i32 3
  %53 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %52, i32 0, i32 1
  store i32 0, i32* %53, align 4
  %54 = load %struct.caam_ctx*, %struct.caam_ctx** %4, align 8
  %55 = getelementptr inbounds %struct.caam_ctx, %struct.caam_ctx* %54, i32 0, i32 5
  %56 = load i32, i32* %55, align 8
  %57 = load %struct.caam_ctx*, %struct.caam_ctx** %4, align 8
  %58 = getelementptr inbounds %struct.caam_ctx, %struct.caam_ctx* %57, i32 0, i32 3
  %59 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %58, i32 0, i32 2
  store i32 %56, i32* %59, align 4
  br label %60

60:                                               ; preds = %50, %40
  %61 = load %struct.caam_ctx*, %struct.caam_ctx** %4, align 8
  %62 = getelementptr inbounds %struct.caam_ctx, %struct.caam_ctx* %61, i32 0, i32 4
  %63 = load %struct.caam_flc*, %struct.caam_flc** %62, align 8
  %64 = load i64, i64* @ENCRYPT, align 8
  %65 = getelementptr inbounds %struct.caam_flc, %struct.caam_flc* %63, i64 %64
  store %struct.caam_flc* %65, %struct.caam_flc** %7, align 8
  %66 = load %struct.caam_flc*, %struct.caam_flc** %7, align 8
  %67 = getelementptr inbounds %struct.caam_flc, %struct.caam_flc* %66, i32 0, i32 1
  %68 = load i32*, i32** %67, align 8
  store i32* %68, i32** %8, align 8
  %69 = load i32*, i32** %8, align 8
  %70 = load %struct.caam_ctx*, %struct.caam_ctx** %4, align 8
  %71 = getelementptr inbounds %struct.caam_ctx, %struct.caam_ctx* %70, i32 0, i32 3
  %72 = load i32, i32* %6, align 4
  %73 = load %struct.caam_ctx*, %struct.caam_ctx** %4, align 8
  %74 = getelementptr inbounds %struct.caam_ctx, %struct.caam_ctx* %73, i32 0, i32 2
  %75 = load i32, i32* %74, align 8
  %76 = call i32 @cnstr_shdsc_gcm_encap(i32* %69, %struct.TYPE_3__* %71, i32 %72, i32 %75, i32 1)
  %77 = load i32*, i32** %8, align 8
  %78 = call i32 @desc_len(i32* %77)
  %79 = call i8* @cpu_to_caam32(i32 %78)
  %80 = load %struct.caam_flc*, %struct.caam_flc** %7, align 8
  %81 = getelementptr inbounds %struct.caam_flc, %struct.caam_flc* %80, i32 0, i32 0
  %82 = load i8**, i8*** %81, align 8
  %83 = getelementptr inbounds i8*, i8** %82, i64 1
  store i8* %79, i8** %83, align 8
  %84 = load %struct.device*, %struct.device** %5, align 8
  %85 = load %struct.caam_ctx*, %struct.caam_ctx** %4, align 8
  %86 = getelementptr inbounds %struct.caam_ctx, %struct.caam_ctx* %85, i32 0, i32 1
  %87 = load i32*, i32** %86, align 8
  %88 = load i64, i64* @ENCRYPT, align 8
  %89 = getelementptr inbounds i32, i32* %87, i64 %88
  %90 = load i32, i32* %89, align 4
  %91 = load i32*, i32** %8, align 8
  %92 = call i32 @desc_bytes(i32* %91)
  %93 = sext i32 %92 to i64
  %94 = add i64 8, %93
  %95 = trunc i64 %94 to i32
  %96 = load %struct.caam_ctx*, %struct.caam_ctx** %4, align 8
  %97 = getelementptr inbounds %struct.caam_ctx, %struct.caam_ctx* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 8
  %99 = call i32 @dma_sync_single_for_device(%struct.device* %84, i32 %90, i32 %95, i32 %98)
  %100 = load i32, i32* %9, align 4
  %101 = load i32, i32* @DESC_QI_GCM_DEC_LEN, align 4
  %102 = icmp sge i32 %100, %101
  br i1 %102, label %103, label %113

103:                                              ; preds = %60
  %104 = load %struct.caam_ctx*, %struct.caam_ctx** %4, align 8
  %105 = getelementptr inbounds %struct.caam_ctx, %struct.caam_ctx* %104, i32 0, i32 3
  %106 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %105, i32 0, i32 1
  store i32 1, i32* %106, align 4
  %107 = load %struct.caam_ctx*, %struct.caam_ctx** %4, align 8
  %108 = getelementptr inbounds %struct.caam_ctx, %struct.caam_ctx* %107, i32 0, i32 6
  %109 = load i32, i32* %108, align 4
  %110 = load %struct.caam_ctx*, %struct.caam_ctx** %4, align 8
  %111 = getelementptr inbounds %struct.caam_ctx, %struct.caam_ctx* %110, i32 0, i32 3
  %112 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %111, i32 0, i32 3
  store i32 %109, i32* %112, align 4
  br label %123

113:                                              ; preds = %60
  %114 = load %struct.caam_ctx*, %struct.caam_ctx** %4, align 8
  %115 = getelementptr inbounds %struct.caam_ctx, %struct.caam_ctx* %114, i32 0, i32 3
  %116 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %115, i32 0, i32 1
  store i32 0, i32* %116, align 4
  %117 = load %struct.caam_ctx*, %struct.caam_ctx** %4, align 8
  %118 = getelementptr inbounds %struct.caam_ctx, %struct.caam_ctx* %117, i32 0, i32 5
  %119 = load i32, i32* %118, align 8
  %120 = load %struct.caam_ctx*, %struct.caam_ctx** %4, align 8
  %121 = getelementptr inbounds %struct.caam_ctx, %struct.caam_ctx* %120, i32 0, i32 3
  %122 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %121, i32 0, i32 2
  store i32 %119, i32* %122, align 4
  br label %123

123:                                              ; preds = %113, %103
  %124 = load %struct.caam_ctx*, %struct.caam_ctx** %4, align 8
  %125 = getelementptr inbounds %struct.caam_ctx, %struct.caam_ctx* %124, i32 0, i32 4
  %126 = load %struct.caam_flc*, %struct.caam_flc** %125, align 8
  %127 = load i64, i64* @DECRYPT, align 8
  %128 = getelementptr inbounds %struct.caam_flc, %struct.caam_flc* %126, i64 %127
  store %struct.caam_flc* %128, %struct.caam_flc** %7, align 8
  %129 = load %struct.caam_flc*, %struct.caam_flc** %7, align 8
  %130 = getelementptr inbounds %struct.caam_flc, %struct.caam_flc* %129, i32 0, i32 1
  %131 = load i32*, i32** %130, align 8
  store i32* %131, i32** %8, align 8
  %132 = load i32*, i32** %8, align 8
  %133 = load %struct.caam_ctx*, %struct.caam_ctx** %4, align 8
  %134 = getelementptr inbounds %struct.caam_ctx, %struct.caam_ctx* %133, i32 0, i32 3
  %135 = load i32, i32* %6, align 4
  %136 = load %struct.caam_ctx*, %struct.caam_ctx** %4, align 8
  %137 = getelementptr inbounds %struct.caam_ctx, %struct.caam_ctx* %136, i32 0, i32 2
  %138 = load i32, i32* %137, align 8
  %139 = call i32 @cnstr_shdsc_gcm_decap(i32* %132, %struct.TYPE_3__* %134, i32 %135, i32 %138, i32 1)
  %140 = load i32*, i32** %8, align 8
  %141 = call i32 @desc_len(i32* %140)
  %142 = call i8* @cpu_to_caam32(i32 %141)
  %143 = load %struct.caam_flc*, %struct.caam_flc** %7, align 8
  %144 = getelementptr inbounds %struct.caam_flc, %struct.caam_flc* %143, i32 0, i32 0
  %145 = load i8**, i8*** %144, align 8
  %146 = getelementptr inbounds i8*, i8** %145, i64 1
  store i8* %142, i8** %146, align 8
  %147 = load %struct.device*, %struct.device** %5, align 8
  %148 = load %struct.caam_ctx*, %struct.caam_ctx** %4, align 8
  %149 = getelementptr inbounds %struct.caam_ctx, %struct.caam_ctx* %148, i32 0, i32 1
  %150 = load i32*, i32** %149, align 8
  %151 = load i64, i64* @DECRYPT, align 8
  %152 = getelementptr inbounds i32, i32* %150, i64 %151
  %153 = load i32, i32* %152, align 4
  %154 = load i32*, i32** %8, align 8
  %155 = call i32 @desc_bytes(i32* %154)
  %156 = sext i32 %155 to i64
  %157 = add i64 8, %156
  %158 = trunc i64 %157 to i32
  %159 = load %struct.caam_ctx*, %struct.caam_ctx** %4, align 8
  %160 = getelementptr inbounds %struct.caam_ctx, %struct.caam_ctx* %159, i32 0, i32 0
  %161 = load i32, i32* %160, align 8
  %162 = call i32 @dma_sync_single_for_device(%struct.device* %147, i32 %153, i32 %158, i32 %161)
  store i32 0, i32* %2, align 4
  br label %163

163:                                              ; preds = %123, %35
  %164 = load i32, i32* %2, align 4
  ret i32 %164
}

declare dso_local %struct.caam_ctx* @crypto_aead_ctx(%struct.crypto_aead*) #1

declare dso_local i32 @crypto_aead_ivsize(%struct.crypto_aead*) #1

declare dso_local i32 @cnstr_shdsc_gcm_encap(i32*, %struct.TYPE_3__*, i32, i32, i32) #1

declare dso_local i8* @cpu_to_caam32(i32) #1

declare dso_local i32 @desc_len(i32*) #1

declare dso_local i32 @dma_sync_single_for_device(%struct.device*, i32, i32, i32) #1

declare dso_local i32 @desc_bytes(i32*) #1

declare dso_local i32 @cnstr_shdsc_gcm_decap(i32*, %struct.TYPE_3__*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
