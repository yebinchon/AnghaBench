; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/extr_sahara.c_sahara_sha_prepare_request.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/extr_sahara.c_sahara_sha_prepare_request.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ahash_request = type { i32, i64 }
%struct.crypto_ahash = type { i32 }
%struct.sahara_sha_reqctx = type { i32, i32, i64, i32, i64, i64, i64 }

@EINPROGRESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ahash_request*)* @sahara_sha_prepare_request to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sahara_sha_prepare_request(%struct.ahash_request* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ahash_request*, align 8
  %4 = alloca %struct.crypto_ahash*, align 8
  %5 = alloca %struct.sahara_sha_reqctx*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.ahash_request* %0, %struct.ahash_request** %3, align 8
  %10 = load %struct.ahash_request*, %struct.ahash_request** %3, align 8
  %11 = call %struct.crypto_ahash* @crypto_ahash_reqtfm(%struct.ahash_request* %10)
  store %struct.crypto_ahash* %11, %struct.crypto_ahash** %4, align 8
  %12 = load %struct.ahash_request*, %struct.ahash_request** %3, align 8
  %13 = call %struct.sahara_sha_reqctx* @ahash_request_ctx(%struct.ahash_request* %12)
  store %struct.sahara_sha_reqctx* %13, %struct.sahara_sha_reqctx** %5, align 8
  %14 = load %struct.crypto_ahash*, %struct.crypto_ahash** %4, align 8
  %15 = call i32 @crypto_ahash_tfm(%struct.crypto_ahash* %14)
  %16 = call i32 @crypto_tfm_alg_blocksize(i32 %15)
  store i32 %16, i32* %7, align 4
  %17 = load %struct.sahara_sha_reqctx*, %struct.sahara_sha_reqctx** %5, align 8
  %18 = getelementptr inbounds %struct.sahara_sha_reqctx, %struct.sahara_sha_reqctx* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = load %struct.ahash_request*, %struct.ahash_request** %3, align 8
  %21 = getelementptr inbounds %struct.ahash_request, %struct.ahash_request* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = add i32 %19, %22
  store i32 %23, i32* %8, align 4
  %24 = load %struct.sahara_sha_reqctx*, %struct.sahara_sha_reqctx** %5, align 8
  %25 = getelementptr inbounds %struct.sahara_sha_reqctx, %struct.sahara_sha_reqctx* %24, i32 0, i32 6
  %26 = load i64, i64* %25, align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %55, label %28

28:                                               ; preds = %1
  %29 = load i32, i32* %8, align 4
  %30 = load i32, i32* %7, align 4
  %31 = icmp ult i32 %29, %30
  br i1 %31, label %32, label %55

32:                                               ; preds = %28
  %33 = load %struct.sahara_sha_reqctx*, %struct.sahara_sha_reqctx** %5, align 8
  %34 = getelementptr inbounds %struct.sahara_sha_reqctx, %struct.sahara_sha_reqctx* %33, i32 0, i32 5
  %35 = load i64, i64* %34, align 8
  %36 = load %struct.sahara_sha_reqctx*, %struct.sahara_sha_reqctx** %5, align 8
  %37 = getelementptr inbounds %struct.sahara_sha_reqctx, %struct.sahara_sha_reqctx* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = zext i32 %38 to i64
  %40 = add nsw i64 %35, %39
  %41 = load %struct.ahash_request*, %struct.ahash_request** %3, align 8
  %42 = getelementptr inbounds %struct.ahash_request, %struct.ahash_request* %41, i32 0, i32 1
  %43 = load i64, i64* %42, align 8
  %44 = load %struct.ahash_request*, %struct.ahash_request** %3, align 8
  %45 = getelementptr inbounds %struct.ahash_request, %struct.ahash_request* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = call i32 @scatterwalk_map_and_copy(i64 %40, i64 %43, i32 0, i32 %46, i32 0)
  %48 = load %struct.ahash_request*, %struct.ahash_request** %3, align 8
  %49 = getelementptr inbounds %struct.ahash_request, %struct.ahash_request* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = load %struct.sahara_sha_reqctx*, %struct.sahara_sha_reqctx** %5, align 8
  %52 = getelementptr inbounds %struct.sahara_sha_reqctx, %struct.sahara_sha_reqctx* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = add i32 %53, %50
  store i32 %54, i32* %52, align 8
  store i32 0, i32* %2, align 4
  br label %227

55:                                               ; preds = %28, %1
  %56 = load %struct.sahara_sha_reqctx*, %struct.sahara_sha_reqctx** %5, align 8
  %57 = getelementptr inbounds %struct.sahara_sha_reqctx, %struct.sahara_sha_reqctx* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %71

60:                                               ; preds = %55
  %61 = load %struct.sahara_sha_reqctx*, %struct.sahara_sha_reqctx** %5, align 8
  %62 = getelementptr inbounds %struct.sahara_sha_reqctx, %struct.sahara_sha_reqctx* %61, i32 0, i32 3
  %63 = load i32, i32* %62, align 8
  %64 = load %struct.sahara_sha_reqctx*, %struct.sahara_sha_reqctx** %5, align 8
  %65 = getelementptr inbounds %struct.sahara_sha_reqctx, %struct.sahara_sha_reqctx* %64, i32 0, i32 5
  %66 = load i64, i64* %65, align 8
  %67 = load %struct.sahara_sha_reqctx*, %struct.sahara_sha_reqctx** %5, align 8
  %68 = getelementptr inbounds %struct.sahara_sha_reqctx, %struct.sahara_sha_reqctx* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 8
  %70 = call i32 @memcpy(i32 %63, i64 %66, i32 %69)
  br label %71

71:                                               ; preds = %60, %55
  %72 = load %struct.sahara_sha_reqctx*, %struct.sahara_sha_reqctx** %5, align 8
  %73 = getelementptr inbounds %struct.sahara_sha_reqctx, %struct.sahara_sha_reqctx* %72, i32 0, i32 6
  %74 = load i64, i64* %73, align 8
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %76, label %77

76:                                               ; preds = %71
  br label %82

77:                                               ; preds = %71
  %78 = load i32, i32* %8, align 4
  %79 = load i32, i32* %7, align 4
  %80 = sub i32 %79, 1
  %81 = and i32 %78, %80
  br label %82

82:                                               ; preds = %77, %76
  %83 = phi i32 [ 0, %76 ], [ %81, %77 ]
  store i32 %83, i32* %6, align 4
  %84 = load i32, i32* %6, align 4
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %86, label %101

86:                                               ; preds = %82
  %87 = load %struct.ahash_request*, %struct.ahash_request** %3, align 8
  %88 = getelementptr inbounds %struct.ahash_request, %struct.ahash_request* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 8
  %90 = load i32, i32* %6, align 4
  %91 = sub i32 %89, %90
  store i32 %91, i32* %9, align 4
  %92 = load %struct.sahara_sha_reqctx*, %struct.sahara_sha_reqctx** %5, align 8
  %93 = getelementptr inbounds %struct.sahara_sha_reqctx, %struct.sahara_sha_reqctx* %92, i32 0, i32 5
  %94 = load i64, i64* %93, align 8
  %95 = load %struct.ahash_request*, %struct.ahash_request** %3, align 8
  %96 = getelementptr inbounds %struct.ahash_request, %struct.ahash_request* %95, i32 0, i32 1
  %97 = load i64, i64* %96, align 8
  %98 = load i32, i32* %9, align 4
  %99 = load i32, i32* %6, align 4
  %100 = call i32 @scatterwalk_map_and_copy(i64 %94, i64 %97, i32 %98, i32 %99, i32 0)
  br label %101

101:                                              ; preds = %86, %82
  %102 = load %struct.ahash_request*, %struct.ahash_request** %3, align 8
  %103 = getelementptr inbounds %struct.ahash_request, %struct.ahash_request* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 8
  %105 = load i32, i32* %6, align 4
  %106 = sub i32 %104, %105
  %107 = load %struct.ahash_request*, %struct.ahash_request** %3, align 8
  %108 = getelementptr inbounds %struct.ahash_request, %struct.ahash_request* %107, i32 0, i32 0
  store i32 %106, i32* %108, align 8
  %109 = load %struct.ahash_request*, %struct.ahash_request** %3, align 8
  %110 = getelementptr inbounds %struct.ahash_request, %struct.ahash_request* %109, i32 0, i32 1
  %111 = load i64, i64* %110, align 8
  %112 = load %struct.ahash_request*, %struct.ahash_request** %3, align 8
  %113 = getelementptr inbounds %struct.ahash_request, %struct.ahash_request* %112, i32 0, i32 0
  %114 = load i32, i32* %113, align 8
  %115 = call i32 @sahara_walk_and_recalc(i64 %111, i32 %114)
  %116 = load %struct.sahara_sha_reqctx*, %struct.sahara_sha_reqctx** %5, align 8
  %117 = getelementptr inbounds %struct.sahara_sha_reqctx, %struct.sahara_sha_reqctx* %116, i32 0, i32 0
  %118 = load i32, i32* %117, align 8
  %119 = icmp ne i32 %118, 0
  br i1 %119, label %120, label %166

120:                                              ; preds = %101
  %121 = load %struct.ahash_request*, %struct.ahash_request** %3, align 8
  %122 = getelementptr inbounds %struct.ahash_request, %struct.ahash_request* %121, i32 0, i32 0
  %123 = load i32, i32* %122, align 8
  %124 = icmp ne i32 %123, 0
  br i1 %124, label %125, label %166

125:                                              ; preds = %120
  %126 = load %struct.sahara_sha_reqctx*, %struct.sahara_sha_reqctx** %5, align 8
  %127 = getelementptr inbounds %struct.sahara_sha_reqctx, %struct.sahara_sha_reqctx* %126, i32 0, i32 4
  %128 = load i64, i64* %127, align 8
  %129 = call i32 @sg_init_table(i64 %128, i32 2)
  %130 = load %struct.sahara_sha_reqctx*, %struct.sahara_sha_reqctx** %5, align 8
  %131 = getelementptr inbounds %struct.sahara_sha_reqctx, %struct.sahara_sha_reqctx* %130, i32 0, i32 4
  %132 = load i64, i64* %131, align 8
  %133 = load %struct.sahara_sha_reqctx*, %struct.sahara_sha_reqctx** %5, align 8
  %134 = getelementptr inbounds %struct.sahara_sha_reqctx, %struct.sahara_sha_reqctx* %133, i32 0, i32 3
  %135 = load i32, i32* %134, align 8
  %136 = load %struct.sahara_sha_reqctx*, %struct.sahara_sha_reqctx** %5, align 8
  %137 = getelementptr inbounds %struct.sahara_sha_reqctx, %struct.sahara_sha_reqctx* %136, i32 0, i32 0
  %138 = load i32, i32* %137, align 8
  %139 = call i32 @sg_set_buf(i64 %132, i32 %135, i32 %138)
  %140 = load %struct.sahara_sha_reqctx*, %struct.sahara_sha_reqctx** %5, align 8
  %141 = getelementptr inbounds %struct.sahara_sha_reqctx, %struct.sahara_sha_reqctx* %140, i32 0, i32 4
  %142 = load i64, i64* %141, align 8
  %143 = load %struct.ahash_request*, %struct.ahash_request** %3, align 8
  %144 = getelementptr inbounds %struct.ahash_request, %struct.ahash_request* %143, i32 0, i32 1
  %145 = load i64, i64* %144, align 8
  %146 = call i32 @sg_chain(i64 %142, i32 2, i64 %145)
  %147 = load %struct.ahash_request*, %struct.ahash_request** %3, align 8
  %148 = getelementptr inbounds %struct.ahash_request, %struct.ahash_request* %147, i32 0, i32 0
  %149 = load i32, i32* %148, align 8
  %150 = load %struct.sahara_sha_reqctx*, %struct.sahara_sha_reqctx** %5, align 8
  %151 = getelementptr inbounds %struct.sahara_sha_reqctx, %struct.sahara_sha_reqctx* %150, i32 0, i32 0
  %152 = load i32, i32* %151, align 8
  %153 = add i32 %149, %152
  %154 = load %struct.sahara_sha_reqctx*, %struct.sahara_sha_reqctx** %5, align 8
  %155 = getelementptr inbounds %struct.sahara_sha_reqctx, %struct.sahara_sha_reqctx* %154, i32 0, i32 1
  store i32 %153, i32* %155, align 4
  %156 = load %struct.sahara_sha_reqctx*, %struct.sahara_sha_reqctx** %5, align 8
  %157 = getelementptr inbounds %struct.sahara_sha_reqctx, %struct.sahara_sha_reqctx* %156, i32 0, i32 4
  %158 = load i64, i64* %157, align 8
  %159 = load %struct.sahara_sha_reqctx*, %struct.sahara_sha_reqctx** %5, align 8
  %160 = getelementptr inbounds %struct.sahara_sha_reqctx, %struct.sahara_sha_reqctx* %159, i32 0, i32 2
  store i64 %158, i64* %160, align 8
  %161 = load %struct.sahara_sha_reqctx*, %struct.sahara_sha_reqctx** %5, align 8
  %162 = getelementptr inbounds %struct.sahara_sha_reqctx, %struct.sahara_sha_reqctx* %161, i32 0, i32 4
  %163 = load i64, i64* %162, align 8
  %164 = load %struct.ahash_request*, %struct.ahash_request** %3, align 8
  %165 = getelementptr inbounds %struct.ahash_request, %struct.ahash_request* %164, i32 0, i32 1
  store i64 %163, i64* %165, align 8
  br label %221

166:                                              ; preds = %120, %101
  %167 = load %struct.sahara_sha_reqctx*, %struct.sahara_sha_reqctx** %5, align 8
  %168 = getelementptr inbounds %struct.sahara_sha_reqctx, %struct.sahara_sha_reqctx* %167, i32 0, i32 0
  %169 = load i32, i32* %168, align 8
  %170 = icmp ne i32 %169, 0
  br i1 %170, label %171, label %204

171:                                              ; preds = %166
  %172 = load %struct.ahash_request*, %struct.ahash_request** %3, align 8
  %173 = getelementptr inbounds %struct.ahash_request, %struct.ahash_request* %172, i32 0, i32 1
  %174 = load i64, i64* %173, align 8
  %175 = icmp ne i64 %174, 0
  br i1 %175, label %176, label %182

176:                                              ; preds = %171
  %177 = load %struct.ahash_request*, %struct.ahash_request** %3, align 8
  %178 = getelementptr inbounds %struct.ahash_request, %struct.ahash_request* %177, i32 0, i32 1
  %179 = load i64, i64* %178, align 8
  %180 = load %struct.sahara_sha_reqctx*, %struct.sahara_sha_reqctx** %5, align 8
  %181 = getelementptr inbounds %struct.sahara_sha_reqctx, %struct.sahara_sha_reqctx* %180, i32 0, i32 2
  store i64 %179, i64* %181, align 8
  br label %188

182:                                              ; preds = %171
  %183 = load %struct.sahara_sha_reqctx*, %struct.sahara_sha_reqctx** %5, align 8
  %184 = getelementptr inbounds %struct.sahara_sha_reqctx, %struct.sahara_sha_reqctx* %183, i32 0, i32 4
  %185 = load i64, i64* %184, align 8
  %186 = load %struct.sahara_sha_reqctx*, %struct.sahara_sha_reqctx** %5, align 8
  %187 = getelementptr inbounds %struct.sahara_sha_reqctx, %struct.sahara_sha_reqctx* %186, i32 0, i32 2
  store i64 %185, i64* %187, align 8
  br label %188

188:                                              ; preds = %182, %176
  %189 = load %struct.sahara_sha_reqctx*, %struct.sahara_sha_reqctx** %5, align 8
  %190 = getelementptr inbounds %struct.sahara_sha_reqctx, %struct.sahara_sha_reqctx* %189, i32 0, i32 2
  %191 = load i64, i64* %190, align 8
  %192 = load %struct.sahara_sha_reqctx*, %struct.sahara_sha_reqctx** %5, align 8
  %193 = getelementptr inbounds %struct.sahara_sha_reqctx, %struct.sahara_sha_reqctx* %192, i32 0, i32 3
  %194 = load i32, i32* %193, align 8
  %195 = load %struct.sahara_sha_reqctx*, %struct.sahara_sha_reqctx** %5, align 8
  %196 = getelementptr inbounds %struct.sahara_sha_reqctx, %struct.sahara_sha_reqctx* %195, i32 0, i32 0
  %197 = load i32, i32* %196, align 8
  %198 = call i32 @sg_init_one(i64 %191, i32 %194, i32 %197)
  %199 = load %struct.sahara_sha_reqctx*, %struct.sahara_sha_reqctx** %5, align 8
  %200 = getelementptr inbounds %struct.sahara_sha_reqctx, %struct.sahara_sha_reqctx* %199, i32 0, i32 0
  %201 = load i32, i32* %200, align 8
  %202 = load %struct.sahara_sha_reqctx*, %struct.sahara_sha_reqctx** %5, align 8
  %203 = getelementptr inbounds %struct.sahara_sha_reqctx, %struct.sahara_sha_reqctx* %202, i32 0, i32 1
  store i32 %201, i32* %203, align 4
  br label %220

204:                                              ; preds = %166
  %205 = load %struct.ahash_request*, %struct.ahash_request** %3, align 8
  %206 = getelementptr inbounds %struct.ahash_request, %struct.ahash_request* %205, i32 0, i32 1
  %207 = load i64, i64* %206, align 8
  %208 = load %struct.sahara_sha_reqctx*, %struct.sahara_sha_reqctx** %5, align 8
  %209 = getelementptr inbounds %struct.sahara_sha_reqctx, %struct.sahara_sha_reqctx* %208, i32 0, i32 2
  store i64 %207, i64* %209, align 8
  %210 = load %struct.ahash_request*, %struct.ahash_request** %3, align 8
  %211 = getelementptr inbounds %struct.ahash_request, %struct.ahash_request* %210, i32 0, i32 0
  %212 = load i32, i32* %211, align 8
  %213 = load %struct.sahara_sha_reqctx*, %struct.sahara_sha_reqctx** %5, align 8
  %214 = getelementptr inbounds %struct.sahara_sha_reqctx, %struct.sahara_sha_reqctx* %213, i32 0, i32 1
  store i32 %212, i32* %214, align 4
  %215 = load %struct.sahara_sha_reqctx*, %struct.sahara_sha_reqctx** %5, align 8
  %216 = getelementptr inbounds %struct.sahara_sha_reqctx, %struct.sahara_sha_reqctx* %215, i32 0, i32 2
  %217 = load i64, i64* %216, align 8
  %218 = load %struct.ahash_request*, %struct.ahash_request** %3, align 8
  %219 = getelementptr inbounds %struct.ahash_request, %struct.ahash_request* %218, i32 0, i32 1
  store i64 %217, i64* %219, align 8
  br label %220

220:                                              ; preds = %204, %188
  br label %221

221:                                              ; preds = %220, %125
  %222 = load i32, i32* %6, align 4
  %223 = load %struct.sahara_sha_reqctx*, %struct.sahara_sha_reqctx** %5, align 8
  %224 = getelementptr inbounds %struct.sahara_sha_reqctx, %struct.sahara_sha_reqctx* %223, i32 0, i32 0
  store i32 %222, i32* %224, align 8
  %225 = load i32, i32* @EINPROGRESS, align 4
  %226 = sub nsw i32 0, %225
  store i32 %226, i32* %2, align 4
  br label %227

227:                                              ; preds = %221, %32
  %228 = load i32, i32* %2, align 4
  ret i32 %228
}

declare dso_local %struct.crypto_ahash* @crypto_ahash_reqtfm(%struct.ahash_request*) #1

declare dso_local %struct.sahara_sha_reqctx* @ahash_request_ctx(%struct.ahash_request*) #1

declare dso_local i32 @crypto_tfm_alg_blocksize(i32) #1

declare dso_local i32 @crypto_ahash_tfm(%struct.crypto_ahash*) #1

declare dso_local i32 @scatterwalk_map_and_copy(i64, i64, i32, i32, i32) #1

declare dso_local i32 @memcpy(i32, i64, i32) #1

declare dso_local i32 @sahara_walk_and_recalc(i64, i32) #1

declare dso_local i32 @sg_init_table(i64, i32) #1

declare dso_local i32 @sg_set_buf(i64, i32, i32) #1

declare dso_local i32 @sg_chain(i64, i32, i64) #1

declare dso_local i32 @sg_init_one(i64, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
