; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/extr_omap-aes-gcm.c_omap_aes_gcm_copy_buffers.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/extr_omap-aes-gcm.c_omap_aes_gcm_copy_buffers.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.omap_aes_dev = type { i32, i32, i32, i32, %struct.scatterlist*, i8*, %struct.scatterlist*, i8*, %struct.scatterlist, %struct.scatterlist*, %struct.scatterlist* }
%struct.scatterlist = type { i32 }
%struct.aead_request = type { i32, i32, %struct.scatterlist*, %struct.scatterlist* }
%struct.crypto_aead = type { i32 }

@FLAGS_RFC4106_GCM = common dso_local global i32 0, align 4
@FLAGS_ENCRYPT = common dso_local global i32 0, align 4
@AES_BLOCK_SIZE = common dso_local global i32 0, align 4
@OMAP_CRYPTO_COPY_DATA = common dso_local global i32 0, align 4
@OMAP_CRYPTO_ZERO_BUF = common dso_local global i32 0, align 4
@OMAP_CRYPTO_FORCE_SINGLE_ENTRY = common dso_local global i32 0, align 4
@FLAGS_ASSOC_DATA_ST_SHIFT = common dso_local global i32 0, align 4
@FLAGS_IN_DATA_ST_SHIFT = common dso_local global i32 0, align 4
@OMAP_CRYPTO_FORCE_COPY = common dso_local global i32 0, align 4
@FLAGS_OUT_DATA_ST_SHIFT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.omap_aes_dev*, %struct.aead_request*)* @omap_aes_gcm_copy_buffers to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @omap_aes_gcm_copy_buffers(%struct.omap_aes_dev* %0, %struct.aead_request* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.omap_aes_dev*, align 8
  %5 = alloca %struct.aead_request*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.crypto_aead*, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.scatterlist*, align 8
  %14 = alloca [2 x %struct.scatterlist], align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.omap_aes_dev* %0, %struct.omap_aes_dev** %4, align 8
  store %struct.aead_request* %1, %struct.aead_request** %5, align 8
  %17 = load %struct.aead_request*, %struct.aead_request** %5, align 8
  %18 = call %struct.crypto_aead* @crypto_aead_reqtfm(%struct.aead_request* %17)
  store %struct.crypto_aead* %18, %struct.crypto_aead** %11, align 8
  %19 = load %struct.crypto_aead*, %struct.crypto_aead** %11, align 8
  %20 = call i32 @crypto_aead_authsize(%struct.crypto_aead* %19)
  store i32 %20, i32* %12, align 4
  %21 = load %struct.aead_request*, %struct.aead_request** %5, align 8
  %22 = getelementptr inbounds %struct.aead_request, %struct.aead_request* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  store i32 %23, i32* %9, align 4
  %24 = load %struct.aead_request*, %struct.aead_request** %5, align 8
  %25 = getelementptr inbounds %struct.aead_request, %struct.aead_request* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  store i32 %26, i32* %8, align 4
  %27 = load %struct.omap_aes_dev*, %struct.omap_aes_dev** %4, align 8
  %28 = getelementptr inbounds %struct.omap_aes_dev, %struct.omap_aes_dev* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = load i32, i32* @FLAGS_RFC4106_GCM, align 4
  %31 = and i32 %29, %30
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %36

33:                                               ; preds = %2
  %34 = load i32, i32* %9, align 4
  %35 = sub nsw i32 %34, 8
  store i32 %35, i32* %9, align 4
  br label %36

36:                                               ; preds = %33, %2
  %37 = load %struct.omap_aes_dev*, %struct.omap_aes_dev** %4, align 8
  %38 = getelementptr inbounds %struct.omap_aes_dev, %struct.omap_aes_dev* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = load i32, i32* @FLAGS_ENCRYPT, align 4
  %41 = and i32 %39, %40
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %47, label %43

43:                                               ; preds = %36
  %44 = load i32, i32* %12, align 4
  %45 = load i32, i32* %8, align 4
  %46 = sub i32 %45, %44
  store i32 %46, i32* %8, align 4
  br label %47

47:                                               ; preds = %43, %36
  %48 = load i32, i32* %9, align 4
  %49 = load i32, i32* @AES_BLOCK_SIZE, align 4
  %50 = call i32 @ALIGN(i32 %48, i32 %49)
  store i32 %50, i32* %6, align 4
  %51 = load i32, i32* %8, align 4
  %52 = load i32, i32* @AES_BLOCK_SIZE, align 4
  %53 = call i32 @ALIGN(i32 %51, i32 %52)
  store i32 %53, i32* %7, align 4
  %54 = load i32, i32* %9, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %59

56:                                               ; preds = %47
  %57 = load i32, i32* %8, align 4
  %58 = icmp ne i32 %57, 0
  br label %59

59:                                               ; preds = %56, %47
  %60 = phi i1 [ false, %47 ], [ %58, %56 ]
  %61 = xor i1 %60, true
  %62 = xor i1 %61, true
  %63 = zext i1 %62 to i32
  store i32 %63, i32* %15, align 4
  %64 = load %struct.omap_aes_dev*, %struct.omap_aes_dev** %4, align 8
  %65 = call i32 @omap_aes_clear_copy_flags(%struct.omap_aes_dev* %64)
  %66 = load %struct.omap_aes_dev*, %struct.omap_aes_dev** %4, align 8
  %67 = getelementptr inbounds %struct.omap_aes_dev, %struct.omap_aes_dev* %66, i32 0, i32 10
  %68 = load %struct.scatterlist*, %struct.scatterlist** %67, align 8
  %69 = load i32, i32* %15, align 4
  %70 = add nsw i32 %69, 1
  %71 = call i32 @sg_init_table(%struct.scatterlist* %68, i32 %70)
  %72 = load i32, i32* %9, align 4
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %92

74:                                               ; preds = %59
  %75 = load %struct.aead_request*, %struct.aead_request** %5, align 8
  %76 = getelementptr inbounds %struct.aead_request, %struct.aead_request* %75, i32 0, i32 3
  %77 = load %struct.scatterlist*, %struct.scatterlist** %76, align 8
  store %struct.scatterlist* %77, %struct.scatterlist** %13, align 8
  %78 = load i32, i32* %9, align 4
  %79 = load i32, i32* @AES_BLOCK_SIZE, align 4
  %80 = load %struct.omap_aes_dev*, %struct.omap_aes_dev** %4, align 8
  %81 = getelementptr inbounds %struct.omap_aes_dev, %struct.omap_aes_dev* %80, i32 0, i32 10
  %82 = load %struct.scatterlist*, %struct.scatterlist** %81, align 8
  %83 = load i32, i32* @OMAP_CRYPTO_COPY_DATA, align 4
  %84 = load i32, i32* @OMAP_CRYPTO_ZERO_BUF, align 4
  %85 = or i32 %83, %84
  %86 = load i32, i32* @OMAP_CRYPTO_FORCE_SINGLE_ENTRY, align 4
  %87 = or i32 %85, %86
  %88 = load i32, i32* @FLAGS_ASSOC_DATA_ST_SHIFT, align 4
  %89 = load %struct.omap_aes_dev*, %struct.omap_aes_dev** %4, align 8
  %90 = getelementptr inbounds %struct.omap_aes_dev, %struct.omap_aes_dev* %89, i32 0, i32 0
  %91 = call i32 @omap_crypto_align_sg(%struct.scatterlist** %13, i32 %78, i32 %79, %struct.scatterlist* %82, i32 %87, i32 %88, i32* %90)
  store i32 %91, i32* %10, align 4
  br label %92

92:                                               ; preds = %74, %59
  %93 = load i32, i32* %8, align 4
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %95, label %122

95:                                               ; preds = %92
  %96 = getelementptr inbounds [2 x %struct.scatterlist], [2 x %struct.scatterlist]* %14, i64 0, i64 0
  %97 = load %struct.aead_request*, %struct.aead_request** %5, align 8
  %98 = getelementptr inbounds %struct.aead_request, %struct.aead_request* %97, i32 0, i32 3
  %99 = load %struct.scatterlist*, %struct.scatterlist** %98, align 8
  %100 = load %struct.aead_request*, %struct.aead_request** %5, align 8
  %101 = getelementptr inbounds %struct.aead_request, %struct.aead_request* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 8
  %103 = call i8* @scatterwalk_ffwd(%struct.scatterlist* %96, %struct.scatterlist* %99, i32 %102)
  %104 = bitcast i8* %103 to %struct.scatterlist*
  store %struct.scatterlist* %104, %struct.scatterlist** %13, align 8
  %105 = load i32, i32* %8, align 4
  %106 = load i32, i32* @AES_BLOCK_SIZE, align 4
  %107 = load %struct.omap_aes_dev*, %struct.omap_aes_dev** %4, align 8
  %108 = getelementptr inbounds %struct.omap_aes_dev, %struct.omap_aes_dev* %107, i32 0, i32 10
  %109 = load %struct.scatterlist*, %struct.scatterlist** %108, align 8
  %110 = load i32, i32* %15, align 4
  %111 = sext i32 %110 to i64
  %112 = getelementptr inbounds %struct.scatterlist, %struct.scatterlist* %109, i64 %111
  %113 = load i32, i32* @OMAP_CRYPTO_COPY_DATA, align 4
  %114 = load i32, i32* @OMAP_CRYPTO_ZERO_BUF, align 4
  %115 = or i32 %113, %114
  %116 = load i32, i32* @OMAP_CRYPTO_FORCE_SINGLE_ENTRY, align 4
  %117 = or i32 %115, %116
  %118 = load i32, i32* @FLAGS_IN_DATA_ST_SHIFT, align 4
  %119 = load %struct.omap_aes_dev*, %struct.omap_aes_dev** %4, align 8
  %120 = getelementptr inbounds %struct.omap_aes_dev, %struct.omap_aes_dev* %119, i32 0, i32 0
  %121 = call i32 @omap_crypto_align_sg(%struct.scatterlist** %13, i32 %105, i32 %106, %struct.scatterlist* %112, i32 %117, i32 %118, i32* %120)
  store i32 %121, i32* %10, align 4
  br label %122

122:                                              ; preds = %95, %92
  %123 = load %struct.omap_aes_dev*, %struct.omap_aes_dev** %4, align 8
  %124 = getelementptr inbounds %struct.omap_aes_dev, %struct.omap_aes_dev* %123, i32 0, i32 10
  %125 = load %struct.scatterlist*, %struct.scatterlist** %124, align 8
  %126 = load %struct.omap_aes_dev*, %struct.omap_aes_dev** %4, align 8
  %127 = getelementptr inbounds %struct.omap_aes_dev, %struct.omap_aes_dev* %126, i32 0, i32 6
  store %struct.scatterlist* %125, %struct.scatterlist** %127, align 8
  %128 = load i32, i32* %8, align 4
  %129 = load %struct.omap_aes_dev*, %struct.omap_aes_dev** %4, align 8
  %130 = getelementptr inbounds %struct.omap_aes_dev, %struct.omap_aes_dev* %129, i32 0, i32 1
  store i32 %128, i32* %130, align 4
  %131 = load i32, i32* %9, align 4
  %132 = load %struct.omap_aes_dev*, %struct.omap_aes_dev** %4, align 8
  %133 = getelementptr inbounds %struct.omap_aes_dev, %struct.omap_aes_dev* %132, i32 0, i32 2
  store i32 %131, i32* %133, align 8
  %134 = load i32, i32* %12, align 4
  %135 = load %struct.omap_aes_dev*, %struct.omap_aes_dev** %4, align 8
  %136 = getelementptr inbounds %struct.omap_aes_dev, %struct.omap_aes_dev* %135, i32 0, i32 3
  store i32 %134, i32* %136, align 4
  %137 = load %struct.aead_request*, %struct.aead_request** %5, align 8
  %138 = getelementptr inbounds %struct.aead_request, %struct.aead_request* %137, i32 0, i32 2
  %139 = load %struct.scatterlist*, %struct.scatterlist** %138, align 8
  %140 = load %struct.omap_aes_dev*, %struct.omap_aes_dev** %4, align 8
  %141 = getelementptr inbounds %struct.omap_aes_dev, %struct.omap_aes_dev* %140, i32 0, i32 4
  store %struct.scatterlist* %139, %struct.scatterlist** %141, align 8
  %142 = load %struct.aead_request*, %struct.aead_request** %5, align 8
  %143 = getelementptr inbounds %struct.aead_request, %struct.aead_request* %142, i32 0, i32 2
  %144 = load %struct.scatterlist*, %struct.scatterlist** %143, align 8
  %145 = load %struct.omap_aes_dev*, %struct.omap_aes_dev** %4, align 8
  %146 = getelementptr inbounds %struct.omap_aes_dev, %struct.omap_aes_dev* %145, i32 0, i32 9
  store %struct.scatterlist* %144, %struct.scatterlist** %146, align 8
  %147 = getelementptr inbounds [2 x %struct.scatterlist], [2 x %struct.scatterlist]* %14, i64 0, i64 0
  %148 = load %struct.aead_request*, %struct.aead_request** %5, align 8
  %149 = getelementptr inbounds %struct.aead_request, %struct.aead_request* %148, i32 0, i32 2
  %150 = load %struct.scatterlist*, %struct.scatterlist** %149, align 8
  %151 = load i32, i32* %9, align 4
  %152 = call i8* @scatterwalk_ffwd(%struct.scatterlist* %147, %struct.scatterlist* %150, i32 %151)
  %153 = bitcast i8* %152 to %struct.scatterlist*
  %154 = load %struct.omap_aes_dev*, %struct.omap_aes_dev** %4, align 8
  %155 = getelementptr inbounds %struct.omap_aes_dev, %struct.omap_aes_dev* %154, i32 0, i32 4
  store %struct.scatterlist* %153, %struct.scatterlist** %155, align 8
  store i32 0, i32* %16, align 4
  %156 = load %struct.aead_request*, %struct.aead_request** %5, align 8
  %157 = getelementptr inbounds %struct.aead_request, %struct.aead_request* %156, i32 0, i32 3
  %158 = load %struct.scatterlist*, %struct.scatterlist** %157, align 8
  %159 = load %struct.aead_request*, %struct.aead_request** %5, align 8
  %160 = getelementptr inbounds %struct.aead_request, %struct.aead_request* %159, i32 0, i32 2
  %161 = load %struct.scatterlist*, %struct.scatterlist** %160, align 8
  %162 = icmp eq %struct.scatterlist* %158, %161
  br i1 %162, label %169, label %163

163:                                              ; preds = %122
  %164 = load %struct.omap_aes_dev*, %struct.omap_aes_dev** %4, align 8
  %165 = getelementptr inbounds %struct.omap_aes_dev, %struct.omap_aes_dev* %164, i32 0, i32 4
  %166 = load %struct.scatterlist*, %struct.scatterlist** %165, align 8
  %167 = getelementptr inbounds [2 x %struct.scatterlist], [2 x %struct.scatterlist]* %14, i64 0, i64 0
  %168 = icmp eq %struct.scatterlist* %166, %167
  br i1 %168, label %169, label %173

169:                                              ; preds = %163, %122
  %170 = load i32, i32* @OMAP_CRYPTO_FORCE_COPY, align 4
  %171 = load i32, i32* %16, align 4
  %172 = or i32 %171, %170
  store i32 %172, i32* %16, align 4
  br label %173

173:                                              ; preds = %169, %163
  %174 = load %struct.omap_aes_dev*, %struct.omap_aes_dev** %4, align 8
  %175 = getelementptr inbounds %struct.omap_aes_dev, %struct.omap_aes_dev* %174, i32 0, i32 4
  %176 = load i32, i32* %8, align 4
  %177 = load i32, i32* @AES_BLOCK_SIZE, align 4
  %178 = load %struct.omap_aes_dev*, %struct.omap_aes_dev** %4, align 8
  %179 = getelementptr inbounds %struct.omap_aes_dev, %struct.omap_aes_dev* %178, i32 0, i32 8
  %180 = load i32, i32* %16, align 4
  %181 = load i32, i32* @FLAGS_OUT_DATA_ST_SHIFT, align 4
  %182 = load %struct.omap_aes_dev*, %struct.omap_aes_dev** %4, align 8
  %183 = getelementptr inbounds %struct.omap_aes_dev, %struct.omap_aes_dev* %182, i32 0, i32 0
  %184 = call i32 @omap_crypto_align_sg(%struct.scatterlist** %175, i32 %176, i32 %177, %struct.scatterlist* %179, i32 %180, i32 %181, i32* %183)
  store i32 %184, i32* %10, align 4
  %185 = load i32, i32* %10, align 4
  %186 = icmp ne i32 %185, 0
  br i1 %186, label %187, label %189

187:                                              ; preds = %173
  %188 = load i32, i32* %10, align 4
  store i32 %188, i32* %3, align 4
  br label %206

189:                                              ; preds = %173
  %190 = load %struct.omap_aes_dev*, %struct.omap_aes_dev** %4, align 8
  %191 = getelementptr inbounds %struct.omap_aes_dev, %struct.omap_aes_dev* %190, i32 0, i32 6
  %192 = load %struct.scatterlist*, %struct.scatterlist** %191, align 8
  %193 = load i32, i32* %6, align 4
  %194 = load i32, i32* %7, align 4
  %195 = add nsw i32 %193, %194
  %196 = call i8* @sg_nents_for_len(%struct.scatterlist* %192, i32 %195)
  %197 = load %struct.omap_aes_dev*, %struct.omap_aes_dev** %4, align 8
  %198 = getelementptr inbounds %struct.omap_aes_dev, %struct.omap_aes_dev* %197, i32 0, i32 7
  store i8* %196, i8** %198, align 8
  %199 = load %struct.omap_aes_dev*, %struct.omap_aes_dev** %4, align 8
  %200 = getelementptr inbounds %struct.omap_aes_dev, %struct.omap_aes_dev* %199, i32 0, i32 4
  %201 = load %struct.scatterlist*, %struct.scatterlist** %200, align 8
  %202 = load i32, i32* %7, align 4
  %203 = call i8* @sg_nents_for_len(%struct.scatterlist* %201, i32 %202)
  %204 = load %struct.omap_aes_dev*, %struct.omap_aes_dev** %4, align 8
  %205 = getelementptr inbounds %struct.omap_aes_dev, %struct.omap_aes_dev* %204, i32 0, i32 5
  store i8* %203, i8** %205, align 8
  store i32 0, i32* %3, align 4
  br label %206

206:                                              ; preds = %189, %187
  %207 = load i32, i32* %3, align 4
  ret i32 %207
}

declare dso_local %struct.crypto_aead* @crypto_aead_reqtfm(%struct.aead_request*) #1

declare dso_local i32 @crypto_aead_authsize(%struct.crypto_aead*) #1

declare dso_local i32 @ALIGN(i32, i32) #1

declare dso_local i32 @omap_aes_clear_copy_flags(%struct.omap_aes_dev*) #1

declare dso_local i32 @sg_init_table(%struct.scatterlist*, i32) #1

declare dso_local i32 @omap_crypto_align_sg(%struct.scatterlist**, i32, i32, %struct.scatterlist*, i32, i32, i32*) #1

declare dso_local i8* @scatterwalk_ffwd(%struct.scatterlist*, %struct.scatterlist*, i32) #1

declare dso_local i8* @sg_nents_for_len(%struct.scatterlist*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
