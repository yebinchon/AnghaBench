; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/qce/extr_sha.c_qce_ahash_update.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/qce/extr_sha.c_qce_ahash_update.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ahash_request = type { i32, %struct.TYPE_2__, %struct.scatterlist* }
%struct.TYPE_2__ = type { i32 }
%struct.scatterlist = type { i32 }
%struct.crypto_ahash = type { i32 }
%struct.qce_sha_reqctx = type { i32, i32, i32, %struct.scatterlist*, i32, i64, %struct.scatterlist* }
%struct.qce_alg_template = type { %struct.qce_device* }
%struct.qce_device = type { i32 (%struct.qce_device*, %struct.TYPE_2__*)* }

@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ahash_request*)* @qce_ahash_update to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qce_ahash_update(%struct.ahash_request* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ahash_request*, align 8
  %4 = alloca %struct.crypto_ahash*, align 8
  %5 = alloca %struct.qce_sha_reqctx*, align 8
  %6 = alloca %struct.qce_alg_template*, align 8
  %7 = alloca %struct.qce_device*, align 8
  %8 = alloca %struct.scatterlist*, align 8
  %9 = alloca %struct.scatterlist*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.ahash_request* %0, %struct.ahash_request** %3, align 8
  %16 = load %struct.ahash_request*, %struct.ahash_request** %3, align 8
  %17 = call %struct.crypto_ahash* @crypto_ahash_reqtfm(%struct.ahash_request* %16)
  store %struct.crypto_ahash* %17, %struct.crypto_ahash** %4, align 8
  %18 = load %struct.ahash_request*, %struct.ahash_request** %3, align 8
  %19 = call %struct.qce_sha_reqctx* @ahash_request_ctx(%struct.ahash_request* %18)
  store %struct.qce_sha_reqctx* %19, %struct.qce_sha_reqctx** %5, align 8
  %20 = load %struct.ahash_request*, %struct.ahash_request** %3, align 8
  %21 = getelementptr inbounds %struct.ahash_request, %struct.ahash_request* %20, i32 0, i32 1
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = call %struct.qce_alg_template* @to_ahash_tmpl(i32 %23)
  store %struct.qce_alg_template* %24, %struct.qce_alg_template** %6, align 8
  %25 = load %struct.qce_alg_template*, %struct.qce_alg_template** %6, align 8
  %26 = getelementptr inbounds %struct.qce_alg_template, %struct.qce_alg_template* %25, i32 0, i32 0
  %27 = load %struct.qce_device*, %struct.qce_device** %26, align 8
  store %struct.qce_device* %27, %struct.qce_device** %7, align 8
  %28 = load %struct.crypto_ahash*, %struct.crypto_ahash** %4, align 8
  %29 = call i32 @crypto_ahash_tfm(%struct.crypto_ahash* %28)
  %30 = call i32 @crypto_tfm_alg_blocksize(i32 %29)
  store i32 %30, i32* %14, align 4
  %31 = load %struct.ahash_request*, %struct.ahash_request** %3, align 8
  %32 = getelementptr inbounds %struct.ahash_request, %struct.ahash_request* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = load %struct.qce_sha_reqctx*, %struct.qce_sha_reqctx** %5, align 8
  %35 = getelementptr inbounds %struct.qce_sha_reqctx, %struct.qce_sha_reqctx* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = add i32 %36, %33
  store i32 %37, i32* %35, align 8
  %38 = load %struct.ahash_request*, %struct.ahash_request** %3, align 8
  %39 = getelementptr inbounds %struct.ahash_request, %struct.ahash_request* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = load %struct.qce_sha_reqctx*, %struct.qce_sha_reqctx** %5, align 8
  %42 = getelementptr inbounds %struct.qce_sha_reqctx, %struct.qce_sha_reqctx* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = add i32 %40, %43
  store i32 %44, i32* %10, align 4
  %45 = load i32, i32* %10, align 4
  %46 = load i32, i32* %14, align 4
  %47 = icmp ule i32 %45, %46
  br i1 %47, label %48, label %71

48:                                               ; preds = %1
  %49 = load %struct.qce_sha_reqctx*, %struct.qce_sha_reqctx** %5, align 8
  %50 = getelementptr inbounds %struct.qce_sha_reqctx, %struct.qce_sha_reqctx* %49, i32 0, i32 5
  %51 = load i64, i64* %50, align 8
  %52 = load %struct.qce_sha_reqctx*, %struct.qce_sha_reqctx** %5, align 8
  %53 = getelementptr inbounds %struct.qce_sha_reqctx, %struct.qce_sha_reqctx* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 4
  %55 = zext i32 %54 to i64
  %56 = add nsw i64 %51, %55
  %57 = load %struct.ahash_request*, %struct.ahash_request** %3, align 8
  %58 = getelementptr inbounds %struct.ahash_request, %struct.ahash_request* %57, i32 0, i32 2
  %59 = load %struct.scatterlist*, %struct.scatterlist** %58, align 8
  %60 = load %struct.ahash_request*, %struct.ahash_request** %3, align 8
  %61 = getelementptr inbounds %struct.ahash_request, %struct.ahash_request* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 8
  %63 = call i32 @scatterwalk_map_and_copy(i64 %56, %struct.scatterlist* %59, i32 0, i32 %62, i32 0)
  %64 = load %struct.ahash_request*, %struct.ahash_request** %3, align 8
  %65 = getelementptr inbounds %struct.ahash_request, %struct.ahash_request* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 8
  %67 = load %struct.qce_sha_reqctx*, %struct.qce_sha_reqctx** %5, align 8
  %68 = getelementptr inbounds %struct.qce_sha_reqctx, %struct.qce_sha_reqctx* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 4
  %70 = add i32 %69, %66
  store i32 %70, i32* %68, align 4
  store i32 0, i32* %2, align 4
  br label %209

71:                                               ; preds = %1
  %72 = load %struct.ahash_request*, %struct.ahash_request** %3, align 8
  %73 = getelementptr inbounds %struct.ahash_request, %struct.ahash_request* %72, i32 0, i32 2
  %74 = load %struct.scatterlist*, %struct.scatterlist** %73, align 8
  %75 = load %struct.qce_sha_reqctx*, %struct.qce_sha_reqctx** %5, align 8
  %76 = getelementptr inbounds %struct.qce_sha_reqctx, %struct.qce_sha_reqctx* %75, i32 0, i32 6
  store %struct.scatterlist* %74, %struct.scatterlist** %76, align 8
  %77 = load %struct.ahash_request*, %struct.ahash_request** %3, align 8
  %78 = getelementptr inbounds %struct.ahash_request, %struct.ahash_request* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 8
  %80 = load %struct.qce_sha_reqctx*, %struct.qce_sha_reqctx** %5, align 8
  %81 = getelementptr inbounds %struct.qce_sha_reqctx, %struct.qce_sha_reqctx* %80, i32 0, i32 2
  store i32 %79, i32* %81, align 8
  %82 = load %struct.qce_sha_reqctx*, %struct.qce_sha_reqctx** %5, align 8
  %83 = getelementptr inbounds %struct.qce_sha_reqctx, %struct.qce_sha_reqctx* %82, i32 0, i32 1
  %84 = load i32, i32* %83, align 4
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %86, label %97

86:                                               ; preds = %71
  %87 = load %struct.qce_sha_reqctx*, %struct.qce_sha_reqctx** %5, align 8
  %88 = getelementptr inbounds %struct.qce_sha_reqctx, %struct.qce_sha_reqctx* %87, i32 0, i32 4
  %89 = load i32, i32* %88, align 8
  %90 = load %struct.qce_sha_reqctx*, %struct.qce_sha_reqctx** %5, align 8
  %91 = getelementptr inbounds %struct.qce_sha_reqctx, %struct.qce_sha_reqctx* %90, i32 0, i32 5
  %92 = load i64, i64* %91, align 8
  %93 = load %struct.qce_sha_reqctx*, %struct.qce_sha_reqctx** %5, align 8
  %94 = getelementptr inbounds %struct.qce_sha_reqctx, %struct.qce_sha_reqctx* %93, i32 0, i32 1
  %95 = load i32, i32* %94, align 4
  %96 = call i32 @memcpy(i32 %89, i64 %92, i32 %95)
  br label %97

97:                                               ; preds = %86, %71
  %98 = load i32, i32* %10, align 4
  %99 = load i32, i32* %14, align 4
  %100 = urem i32 %98, %99
  store i32 %100, i32* %12, align 4
  %101 = load i32, i32* %12, align 4
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %103, label %118

103:                                              ; preds = %97
  %104 = load %struct.ahash_request*, %struct.ahash_request** %3, align 8
  %105 = getelementptr inbounds %struct.ahash_request, %struct.ahash_request* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 8
  %107 = load i32, i32* %12, align 4
  %108 = sub i32 %106, %107
  store i32 %108, i32* %15, align 4
  %109 = load %struct.qce_sha_reqctx*, %struct.qce_sha_reqctx** %5, align 8
  %110 = getelementptr inbounds %struct.qce_sha_reqctx, %struct.qce_sha_reqctx* %109, i32 0, i32 5
  %111 = load i64, i64* %110, align 8
  %112 = load %struct.ahash_request*, %struct.ahash_request** %3, align 8
  %113 = getelementptr inbounds %struct.ahash_request, %struct.ahash_request* %112, i32 0, i32 2
  %114 = load %struct.scatterlist*, %struct.scatterlist** %113, align 8
  %115 = load i32, i32* %15, align 4
  %116 = load i32, i32* %12, align 4
  %117 = call i32 @scatterwalk_map_and_copy(i64 %111, %struct.scatterlist* %114, i32 %115, i32 %116, i32 0)
  br label %118

118:                                              ; preds = %103, %97
  %119 = load i32, i32* %10, align 4
  %120 = load i32, i32* %12, align 4
  %121 = sub i32 %119, %120
  store i32 %121, i32* %13, align 4
  %122 = load %struct.qce_sha_reqctx*, %struct.qce_sha_reqctx** %5, align 8
  %123 = getelementptr inbounds %struct.qce_sha_reqctx, %struct.qce_sha_reqctx* %122, i32 0, i32 1
  %124 = load i32, i32* %123, align 4
  store i32 %124, i32* %11, align 4
  %125 = load %struct.ahash_request*, %struct.ahash_request** %3, align 8
  %126 = getelementptr inbounds %struct.ahash_request, %struct.ahash_request* %125, i32 0, i32 2
  %127 = load %struct.scatterlist*, %struct.scatterlist** %126, align 8
  store %struct.scatterlist* %127, %struct.scatterlist** %8, align 8
  store %struct.scatterlist* %127, %struct.scatterlist** %9, align 8
  br label %128

128:                                              ; preds = %145, %118
  %129 = load i32, i32* %11, align 4
  %130 = load i32, i32* %13, align 4
  %131 = icmp ult i32 %129, %130
  br i1 %131, label %132, label %135

132:                                              ; preds = %128
  %133 = load %struct.scatterlist*, %struct.scatterlist** %9, align 8
  %134 = icmp ne %struct.scatterlist* %133, null
  br label %135

135:                                              ; preds = %132, %128
  %136 = phi i1 [ false, %128 ], [ %134, %132 ]
  br i1 %136, label %137, label %153

137:                                              ; preds = %135
  %138 = load i32, i32* %11, align 4
  %139 = load %struct.scatterlist*, %struct.scatterlist** %9, align 8
  %140 = call i32 @sg_dma_len(%struct.scatterlist* %139)
  %141 = add i32 %138, %140
  %142 = load i32, i32* %13, align 4
  %143 = icmp ugt i32 %141, %142
  br i1 %143, label %144, label %145

144:                                              ; preds = %137
  br label %153

145:                                              ; preds = %137
  %146 = load %struct.scatterlist*, %struct.scatterlist** %9, align 8
  %147 = call i32 @sg_dma_len(%struct.scatterlist* %146)
  %148 = load i32, i32* %11, align 4
  %149 = add i32 %148, %147
  store i32 %149, i32* %11, align 4
  %150 = load %struct.scatterlist*, %struct.scatterlist** %9, align 8
  store %struct.scatterlist* %150, %struct.scatterlist** %8, align 8
  %151 = load %struct.scatterlist*, %struct.scatterlist** %9, align 8
  %152 = call %struct.scatterlist* @sg_next(%struct.scatterlist* %151)
  store %struct.scatterlist* %152, %struct.scatterlist** %9, align 8
  br label %128

153:                                              ; preds = %144, %135
  %154 = load %struct.scatterlist*, %struct.scatterlist** %8, align 8
  %155 = icmp ne %struct.scatterlist* %154, null
  br i1 %155, label %159, label %156

156:                                              ; preds = %153
  %157 = load i32, i32* @EINVAL, align 4
  %158 = sub nsw i32 0, %157
  store i32 %158, i32* %2, align 4
  br label %209

159:                                              ; preds = %153
  %160 = load %struct.scatterlist*, %struct.scatterlist** %8, align 8
  %161 = call i32 @sg_mark_end(%struct.scatterlist* %160)
  %162 = load %struct.qce_sha_reqctx*, %struct.qce_sha_reqctx** %5, align 8
  %163 = getelementptr inbounds %struct.qce_sha_reqctx, %struct.qce_sha_reqctx* %162, i32 0, i32 1
  %164 = load i32, i32* %163, align 4
  %165 = icmp ne i32 %164, 0
  br i1 %165, label %166, label %193

166:                                              ; preds = %159
  %167 = load %struct.qce_sha_reqctx*, %struct.qce_sha_reqctx** %5, align 8
  %168 = getelementptr inbounds %struct.qce_sha_reqctx, %struct.qce_sha_reqctx* %167, i32 0, i32 3
  %169 = load %struct.scatterlist*, %struct.scatterlist** %168, align 8
  %170 = call i32 @sg_init_table(%struct.scatterlist* %169, i32 2)
  %171 = load %struct.qce_sha_reqctx*, %struct.qce_sha_reqctx** %5, align 8
  %172 = getelementptr inbounds %struct.qce_sha_reqctx, %struct.qce_sha_reqctx* %171, i32 0, i32 3
  %173 = load %struct.scatterlist*, %struct.scatterlist** %172, align 8
  %174 = load %struct.qce_sha_reqctx*, %struct.qce_sha_reqctx** %5, align 8
  %175 = getelementptr inbounds %struct.qce_sha_reqctx, %struct.qce_sha_reqctx* %174, i32 0, i32 4
  %176 = load i32, i32* %175, align 8
  %177 = load %struct.qce_sha_reqctx*, %struct.qce_sha_reqctx** %5, align 8
  %178 = getelementptr inbounds %struct.qce_sha_reqctx, %struct.qce_sha_reqctx* %177, i32 0, i32 1
  %179 = load i32, i32* %178, align 4
  %180 = call i32 @sg_set_buf(%struct.scatterlist* %173, i32 %176, i32 %179)
  %181 = load %struct.qce_sha_reqctx*, %struct.qce_sha_reqctx** %5, align 8
  %182 = getelementptr inbounds %struct.qce_sha_reqctx, %struct.qce_sha_reqctx* %181, i32 0, i32 3
  %183 = load %struct.scatterlist*, %struct.scatterlist** %182, align 8
  %184 = load %struct.ahash_request*, %struct.ahash_request** %3, align 8
  %185 = getelementptr inbounds %struct.ahash_request, %struct.ahash_request* %184, i32 0, i32 2
  %186 = load %struct.scatterlist*, %struct.scatterlist** %185, align 8
  %187 = call i32 @sg_chain(%struct.scatterlist* %183, i32 2, %struct.scatterlist* %186)
  %188 = load %struct.qce_sha_reqctx*, %struct.qce_sha_reqctx** %5, align 8
  %189 = getelementptr inbounds %struct.qce_sha_reqctx, %struct.qce_sha_reqctx* %188, i32 0, i32 3
  %190 = load %struct.scatterlist*, %struct.scatterlist** %189, align 8
  %191 = load %struct.ahash_request*, %struct.ahash_request** %3, align 8
  %192 = getelementptr inbounds %struct.ahash_request, %struct.ahash_request* %191, i32 0, i32 2
  store %struct.scatterlist* %190, %struct.scatterlist** %192, align 8
  br label %193

193:                                              ; preds = %166, %159
  %194 = load i32, i32* %13, align 4
  %195 = load %struct.ahash_request*, %struct.ahash_request** %3, align 8
  %196 = getelementptr inbounds %struct.ahash_request, %struct.ahash_request* %195, i32 0, i32 0
  store i32 %194, i32* %196, align 8
  %197 = load i32, i32* %12, align 4
  %198 = load %struct.qce_sha_reqctx*, %struct.qce_sha_reqctx** %5, align 8
  %199 = getelementptr inbounds %struct.qce_sha_reqctx, %struct.qce_sha_reqctx* %198, i32 0, i32 1
  store i32 %197, i32* %199, align 4
  %200 = load %struct.qce_device*, %struct.qce_device** %7, align 8
  %201 = getelementptr inbounds %struct.qce_device, %struct.qce_device* %200, i32 0, i32 0
  %202 = load i32 (%struct.qce_device*, %struct.TYPE_2__*)*, i32 (%struct.qce_device*, %struct.TYPE_2__*)** %201, align 8
  %203 = load %struct.qce_alg_template*, %struct.qce_alg_template** %6, align 8
  %204 = getelementptr inbounds %struct.qce_alg_template, %struct.qce_alg_template* %203, i32 0, i32 0
  %205 = load %struct.qce_device*, %struct.qce_device** %204, align 8
  %206 = load %struct.ahash_request*, %struct.ahash_request** %3, align 8
  %207 = getelementptr inbounds %struct.ahash_request, %struct.ahash_request* %206, i32 0, i32 1
  %208 = call i32 %202(%struct.qce_device* %205, %struct.TYPE_2__* %207)
  store i32 %208, i32* %2, align 4
  br label %209

209:                                              ; preds = %193, %156, %48
  %210 = load i32, i32* %2, align 4
  ret i32 %210
}

declare dso_local %struct.crypto_ahash* @crypto_ahash_reqtfm(%struct.ahash_request*) #1

declare dso_local %struct.qce_sha_reqctx* @ahash_request_ctx(%struct.ahash_request*) #1

declare dso_local %struct.qce_alg_template* @to_ahash_tmpl(i32) #1

declare dso_local i32 @crypto_tfm_alg_blocksize(i32) #1

declare dso_local i32 @crypto_ahash_tfm(%struct.crypto_ahash*) #1

declare dso_local i32 @scatterwalk_map_and_copy(i64, %struct.scatterlist*, i32, i32, i32) #1

declare dso_local i32 @memcpy(i32, i64, i32) #1

declare dso_local i32 @sg_dma_len(%struct.scatterlist*) #1

declare dso_local %struct.scatterlist* @sg_next(%struct.scatterlist*) #1

declare dso_local i32 @sg_mark_end(%struct.scatterlist*) #1

declare dso_local i32 @sg_init_table(%struct.scatterlist*, i32) #1

declare dso_local i32 @sg_set_buf(%struct.scatterlist*, i32, i32) #1

declare dso_local i32 @sg_chain(%struct.scatterlist*, i32, %struct.scatterlist*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
