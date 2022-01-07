; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/cavium/cpt/extr_cptvf_algs.c_create_ctx_hdr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/cavium/cpt/extr_cptvf_algs.c_create_ctx_hdr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ablkcipher_request = type { i32 }
%struct.crypto_ablkcipher = type { i32 }
%struct.cvm_enc_ctx = type { i64, i32, i32, i32 }
%struct.cvm_req_ctx = type { i32, %struct.cpt_request_info, %struct.fc_context }
%struct.cpt_request_info = type { %struct.TYPE_18__, %struct.TYPE_17__*, %struct.TYPE_11__ }
%struct.TYPE_18__ = type { i32, i64, i32, %struct.TYPE_13__ }
%struct.TYPE_13__ = type { %struct.TYPE_12__ }
%struct.TYPE_12__ = type { i32, i32 }
%struct.TYPE_17__ = type { i32, i32* }
%struct.TYPE_11__ = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i32, i32, i64 }
%struct.fc_context = type { %struct.TYPE_16__ }
%struct.TYPE_16__ = type { %struct.TYPE_15__, i32 }
%struct.TYPE_15__ = type { i32, %struct.TYPE_14__ }
%struct.TYPE_14__ = type { i64, i32, i32 }

@DMA_GATHER_SCATTER = common dso_local global i32 0, align 4
@SE_CORE_REQ = common dso_local global i32 0, align 4
@MAJOR_OP_FC = common dso_local global i32 0, align 4
@FROM_DPTR = common dso_local global i32 0, align 4
@AES_XTS = common dso_local global i64 0, align 8
@CONTROL_WORD_LEN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.ablkcipher_request*, i64, i64*)* @create_ctx_hdr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @create_ctx_hdr(%struct.ablkcipher_request* %0, i64 %1, i64* %2) #0 {
  %4 = alloca %struct.ablkcipher_request*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64*, align 8
  %7 = alloca %struct.crypto_ablkcipher*, align 8
  %8 = alloca %struct.cvm_enc_ctx*, align 8
  %9 = alloca %struct.cvm_req_ctx*, align 8
  %10 = alloca %struct.fc_context*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i64, align 8
  %13 = alloca %struct.cpt_request_info*, align 8
  %14 = alloca i32*, align 8
  store %struct.ablkcipher_request* %0, %struct.ablkcipher_request** %4, align 8
  store i64 %1, i64* %5, align 8
  store i64* %2, i64** %6, align 8
  %15 = load %struct.ablkcipher_request*, %struct.ablkcipher_request** %4, align 8
  %16 = call %struct.crypto_ablkcipher* @crypto_ablkcipher_reqtfm(%struct.ablkcipher_request* %15)
  store %struct.crypto_ablkcipher* %16, %struct.crypto_ablkcipher** %7, align 8
  %17 = load %struct.crypto_ablkcipher*, %struct.crypto_ablkcipher** %7, align 8
  %18 = call %struct.cvm_enc_ctx* @crypto_ablkcipher_ctx(%struct.crypto_ablkcipher* %17)
  store %struct.cvm_enc_ctx* %18, %struct.cvm_enc_ctx** %8, align 8
  %19 = load %struct.ablkcipher_request*, %struct.ablkcipher_request** %4, align 8
  %20 = call %struct.cvm_req_ctx* @ablkcipher_request_ctx(%struct.ablkcipher_request* %19)
  store %struct.cvm_req_ctx* %20, %struct.cvm_req_ctx** %9, align 8
  %21 = load %struct.cvm_req_ctx*, %struct.cvm_req_ctx** %9, align 8
  %22 = getelementptr inbounds %struct.cvm_req_ctx, %struct.cvm_req_ctx* %21, i32 0, i32 2
  store %struct.fc_context* %22, %struct.fc_context** %10, align 8
  %23 = load %struct.cvm_req_ctx*, %struct.cvm_req_ctx** %9, align 8
  %24 = getelementptr inbounds %struct.cvm_req_ctx, %struct.cvm_req_ctx* %23, i32 0, i32 0
  store i32* %24, i32** %11, align 8
  %25 = load %struct.crypto_ablkcipher*, %struct.crypto_ablkcipher** %7, align 8
  %26 = call i64 @crypto_ablkcipher_ivsize(%struct.crypto_ablkcipher* %25)
  store i64 %26, i64* %12, align 8
  %27 = load %struct.cvm_req_ctx*, %struct.cvm_req_ctx** %9, align 8
  %28 = getelementptr inbounds %struct.cvm_req_ctx, %struct.cvm_req_ctx* %27, i32 0, i32 1
  store %struct.cpt_request_info* %28, %struct.cpt_request_info** %13, align 8
  store i32* null, i32** %14, align 8
  %29 = load %struct.cpt_request_info*, %struct.cpt_request_info** %13, align 8
  %30 = getelementptr inbounds %struct.cpt_request_info, %struct.cpt_request_info* %29, i32 0, i32 2
  %31 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %31, i32 0, i32 2
  store i64 0, i64* %32, align 8
  %33 = load i32, i32* @DMA_GATHER_SCATTER, align 4
  %34 = load %struct.cpt_request_info*, %struct.cpt_request_info** %13, align 8
  %35 = getelementptr inbounds %struct.cpt_request_info, %struct.cpt_request_info* %34, i32 0, i32 2
  %36 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %36, i32 0, i32 1
  store i32 %33, i32* %37, align 4
  %38 = load i32, i32* @SE_CORE_REQ, align 4
  %39 = load %struct.cpt_request_info*, %struct.cpt_request_info** %13, align 8
  %40 = getelementptr inbounds %struct.cpt_request_info, %struct.cpt_request_info* %39, i32 0, i32 2
  %41 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %41, i32 0, i32 0
  store i32 %38, i32* %42, align 8
  %43 = load i32, i32* @MAJOR_OP_FC, align 4
  %44 = load i32, i32* @DMA_GATHER_SCATTER, align 4
  %45 = call i32 @DMA_MODE_FLAG(i32 %44)
  %46 = or i32 %43, %45
  %47 = load %struct.cpt_request_info*, %struct.cpt_request_info** %13, align 8
  %48 = getelementptr inbounds %struct.cpt_request_info, %struct.cpt_request_info* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %48, i32 0, i32 3
  %50 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %50, i32 0, i32 0
  store i32 %46, i32* %51, align 4
  %52 = load i64, i64* %5, align 8
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %60

54:                                               ; preds = %3
  %55 = load %struct.cpt_request_info*, %struct.cpt_request_info** %13, align 8
  %56 = getelementptr inbounds %struct.cpt_request_info, %struct.cpt_request_info* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %56, i32 0, i32 3
  %58 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %58, i32 0, i32 1
  store i32 2, i32* %59, align 4
  br label %66

60:                                               ; preds = %3
  %61 = load %struct.cpt_request_info*, %struct.cpt_request_info** %13, align 8
  %62 = getelementptr inbounds %struct.cpt_request_info, %struct.cpt_request_info* %61, i32 0, i32 0
  %63 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %62, i32 0, i32 3
  %64 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %63, i32 0, i32 0
  %65 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %64, i32 0, i32 1
  store i32 3, i32* %65, align 4
  br label %66

66:                                               ; preds = %60, %54
  %67 = load %struct.ablkcipher_request*, %struct.ablkcipher_request** %4, align 8
  %68 = getelementptr inbounds %struct.ablkcipher_request, %struct.ablkcipher_request* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = load %struct.cpt_request_info*, %struct.cpt_request_info** %13, align 8
  %71 = getelementptr inbounds %struct.cpt_request_info, %struct.cpt_request_info* %70, i32 0, i32 0
  %72 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %71, i32 0, i32 2
  store i32 %69, i32* %72, align 8
  %73 = load %struct.cpt_request_info*, %struct.cpt_request_info** %13, align 8
  %74 = getelementptr inbounds %struct.cpt_request_info, %struct.cpt_request_info* %73, i32 0, i32 0
  %75 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %74, i32 0, i32 1
  store i64 0, i64* %75, align 8
  %76 = load %struct.cvm_enc_ctx*, %struct.cvm_enc_ctx** %8, align 8
  %77 = getelementptr inbounds %struct.cvm_enc_ctx, %struct.cvm_enc_ctx* %76, i32 0, i32 0
  %78 = load i64, i64* %77, align 8
  %79 = load %struct.fc_context*, %struct.fc_context** %10, align 8
  %80 = getelementptr inbounds %struct.fc_context, %struct.fc_context* %79, i32 0, i32 0
  %81 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %80, i32 0, i32 0
  %82 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %81, i32 0, i32 1
  %83 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %82, i32 0, i32 0
  store i64 %78, i64* %83, align 8
  %84 = load %struct.cvm_enc_ctx*, %struct.cvm_enc_ctx** %8, align 8
  %85 = getelementptr inbounds %struct.cvm_enc_ctx, %struct.cvm_enc_ctx* %84, i32 0, i32 3
  %86 = load i32, i32* %85, align 8
  %87 = load %struct.fc_context*, %struct.fc_context** %10, align 8
  %88 = getelementptr inbounds %struct.fc_context, %struct.fc_context* %87, i32 0, i32 0
  %89 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %88, i32 0, i32 0
  %90 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %89, i32 0, i32 1
  %91 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %90, i32 0, i32 2
  store i32 %86, i32* %91, align 4
  %92 = load i32, i32* @FROM_DPTR, align 4
  %93 = load %struct.fc_context*, %struct.fc_context** %10, align 8
  %94 = getelementptr inbounds %struct.fc_context, %struct.fc_context* %93, i32 0, i32 0
  %95 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %94, i32 0, i32 0
  %96 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %95, i32 0, i32 1
  %97 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %96, i32 0, i32 1
  store i32 %92, i32* %97, align 8
  %98 = load %struct.cvm_enc_ctx*, %struct.cvm_enc_ctx** %8, align 8
  %99 = getelementptr inbounds %struct.cvm_enc_ctx, %struct.cvm_enc_ctx* %98, i32 0, i32 0
  %100 = load i64, i64* %99, align 8
  %101 = load i64, i64* @AES_XTS, align 8
  %102 = icmp eq i64 %100, %101
  br i1 %102, label %103, label %116

103:                                              ; preds = %66
  %104 = load %struct.fc_context*, %struct.fc_context** %10, align 8
  %105 = getelementptr inbounds %struct.fc_context, %struct.fc_context* %104, i32 0, i32 0
  %106 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %105, i32 0, i32 1
  %107 = load i32, i32* %106, align 8
  %108 = load %struct.cvm_enc_ctx*, %struct.cvm_enc_ctx** %8, align 8
  %109 = getelementptr inbounds %struct.cvm_enc_ctx, %struct.cvm_enc_ctx* %108, i32 0, i32 2
  %110 = load i32, i32* %109, align 4
  %111 = load %struct.cvm_enc_ctx*, %struct.cvm_enc_ctx** %8, align 8
  %112 = getelementptr inbounds %struct.cvm_enc_ctx, %struct.cvm_enc_ctx* %111, i32 0, i32 1
  %113 = load i32, i32* %112, align 8
  %114 = mul nsw i32 %113, 2
  %115 = call i32 @memcpy(i32 %107, i32 %110, i32 %114)
  br label %128

116:                                              ; preds = %66
  %117 = load %struct.fc_context*, %struct.fc_context** %10, align 8
  %118 = getelementptr inbounds %struct.fc_context, %struct.fc_context* %117, i32 0, i32 0
  %119 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %118, i32 0, i32 1
  %120 = load i32, i32* %119, align 8
  %121 = load %struct.cvm_enc_ctx*, %struct.cvm_enc_ctx** %8, align 8
  %122 = getelementptr inbounds %struct.cvm_enc_ctx, %struct.cvm_enc_ctx* %121, i32 0, i32 2
  %123 = load i32, i32* %122, align 4
  %124 = load %struct.cvm_enc_ctx*, %struct.cvm_enc_ctx** %8, align 8
  %125 = getelementptr inbounds %struct.cvm_enc_ctx, %struct.cvm_enc_ctx* %124, i32 0, i32 1
  %126 = load i32, i32* %125, align 8
  %127 = call i32 @memcpy(i32 %120, i32 %123, i32 %126)
  br label %128

128:                                              ; preds = %116, %103
  %129 = load %struct.fc_context*, %struct.fc_context** %10, align 8
  %130 = getelementptr inbounds %struct.fc_context, %struct.fc_context* %129, i32 0, i32 0
  %131 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %130, i32 0, i32 0
  %132 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %131, i32 0, i32 0
  store i32* %132, i32** %14, align 8
  %133 = load i32*, i32** %14, align 8
  %134 = load i32, i32* %133, align 4
  %135 = call i32 @cpu_to_be64(i32 %134)
  %136 = load i32*, i32** %14, align 8
  store i32 %135, i32* %136, align 4
  %137 = load i64, i64* %12, align 8
  %138 = trunc i64 %137 to i32
  %139 = shl i32 %138, 16
  %140 = call i32 @cpu_to_be64(i32 %139)
  %141 = load i32*, i32** %11, align 8
  store i32 %140, i32* %141, align 4
  %142 = load i32*, i32** %11, align 8
  %143 = load %struct.cpt_request_info*, %struct.cpt_request_info** %13, align 8
  %144 = getelementptr inbounds %struct.cpt_request_info, %struct.cpt_request_info* %143, i32 0, i32 1
  %145 = load %struct.TYPE_17__*, %struct.TYPE_17__** %144, align 8
  %146 = load i64*, i64** %6, align 8
  %147 = load i64, i64* %146, align 8
  %148 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %145, i64 %147
  %149 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %148, i32 0, i32 1
  store i32* %142, i32** %149, align 8
  %150 = load i32, i32* @CONTROL_WORD_LEN, align 4
  %151 = load %struct.cpt_request_info*, %struct.cpt_request_info** %13, align 8
  %152 = getelementptr inbounds %struct.cpt_request_info, %struct.cpt_request_info* %151, i32 0, i32 1
  %153 = load %struct.TYPE_17__*, %struct.TYPE_17__** %152, align 8
  %154 = load i64*, i64** %6, align 8
  %155 = load i64, i64* %154, align 8
  %156 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %153, i64 %155
  %157 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %156, i32 0, i32 0
  store i32 %150, i32* %157, align 8
  %158 = load i32, i32* @CONTROL_WORD_LEN, align 4
  %159 = load %struct.cpt_request_info*, %struct.cpt_request_info** %13, align 8
  %160 = getelementptr inbounds %struct.cpt_request_info, %struct.cpt_request_info* %159, i32 0, i32 0
  %161 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %160, i32 0, i32 0
  %162 = load i32, i32* %161, align 8
  %163 = add nsw i32 %162, %158
  store i32 %163, i32* %161, align 8
  %164 = load i64*, i64** %6, align 8
  %165 = load i64, i64* %164, align 8
  %166 = add i64 %165, 1
  store i64 %166, i64* %164, align 8
  %167 = load %struct.fc_context*, %struct.fc_context** %10, align 8
  %168 = bitcast %struct.fc_context* %167 to i32*
  %169 = load %struct.cpt_request_info*, %struct.cpt_request_info** %13, align 8
  %170 = getelementptr inbounds %struct.cpt_request_info, %struct.cpt_request_info* %169, i32 0, i32 1
  %171 = load %struct.TYPE_17__*, %struct.TYPE_17__** %170, align 8
  %172 = load i64*, i64** %6, align 8
  %173 = load i64, i64* %172, align 8
  %174 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %171, i64 %173
  %175 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %174, i32 0, i32 1
  store i32* %168, i32** %175, align 8
  %176 = load %struct.cpt_request_info*, %struct.cpt_request_info** %13, align 8
  %177 = getelementptr inbounds %struct.cpt_request_info, %struct.cpt_request_info* %176, i32 0, i32 1
  %178 = load %struct.TYPE_17__*, %struct.TYPE_17__** %177, align 8
  %179 = load i64*, i64** %6, align 8
  %180 = load i64, i64* %179, align 8
  %181 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %178, i64 %180
  %182 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %181, i32 0, i32 0
  store i32 32, i32* %182, align 8
  %183 = load %struct.cpt_request_info*, %struct.cpt_request_info** %13, align 8
  %184 = getelementptr inbounds %struct.cpt_request_info, %struct.cpt_request_info* %183, i32 0, i32 0
  %185 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %184, i32 0, i32 0
  %186 = load i32, i32* %185, align 8
  %187 = sext i32 %186 to i64
  %188 = add i64 %187, 32
  %189 = trunc i64 %188 to i32
  store i32 %189, i32* %185, align 8
  %190 = load i64*, i64** %6, align 8
  %191 = load i64, i64* %190, align 8
  %192 = add i64 %191, 1
  store i64 %192, i64* %190, align 8
  ret i64 0
}

declare dso_local %struct.crypto_ablkcipher* @crypto_ablkcipher_reqtfm(%struct.ablkcipher_request*) #1

declare dso_local %struct.cvm_enc_ctx* @crypto_ablkcipher_ctx(%struct.crypto_ablkcipher*) #1

declare dso_local %struct.cvm_req_ctx* @ablkcipher_request_ctx(%struct.ablkcipher_request*) #1

declare dso_local i64 @crypto_ablkcipher_ivsize(%struct.crypto_ablkcipher*) #1

declare dso_local i32 @DMA_MODE_FLAG(i32) #1

declare dso_local i32 @memcpy(i32, i32, i32) #1

declare dso_local i32 @cpu_to_be64(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
