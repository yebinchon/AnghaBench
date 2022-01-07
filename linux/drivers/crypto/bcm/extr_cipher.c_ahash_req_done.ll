; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/bcm/extr_cipher.c_ahash_req_done.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/bcm/extr_cipher.c_ahash_req_done.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32*, i32*, i32*, %struct.spu_hw }
%struct.spu_hw = type { i64 }
%struct.iproc_reqctx_s = type { i64, %struct.TYPE_4__, %struct.iproc_ctx_s*, %struct.crypto_async_request* }
%struct.TYPE_4__ = type { i32 }
%struct.iproc_ctx_s = type { %struct.TYPE_5__, i32 }
%struct.TYPE_5__ = type { i64, i64 }
%struct.crypto_async_request = type { i32 }
%struct.ahash_request = type { i64 }

@iproc_priv = common dso_local global %struct.TYPE_6__ zeroinitializer, align 8
@SPU_TYPE_SPUM = common dso_local global i64 0, align 8
@HASH_ALG_MD5 = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [10 x i8] c"  digest \00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"  hmac: \00", align 1
@HASH_MODE_HMAC = common dso_local global i64 0, align 8
@SPU_OP_HMAC = common dso_local global i64 0, align 8
@SPU_OP_HASH = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iproc_reqctx_s*)* @ahash_req_done to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ahash_req_done(%struct.iproc_reqctx_s* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.iproc_reqctx_s*, align 8
  %4 = alloca %struct.spu_hw*, align 8
  %5 = alloca %struct.crypto_async_request*, align 8
  %6 = alloca %struct.ahash_request*, align 8
  %7 = alloca %struct.iproc_ctx_s*, align 8
  %8 = alloca i32, align 4
  store %struct.iproc_reqctx_s* %0, %struct.iproc_reqctx_s** %3, align 8
  store %struct.spu_hw* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @iproc_priv, i32 0, i32 3), %struct.spu_hw** %4, align 8
  %9 = load %struct.iproc_reqctx_s*, %struct.iproc_reqctx_s** %3, align 8
  %10 = getelementptr inbounds %struct.iproc_reqctx_s, %struct.iproc_reqctx_s* %9, i32 0, i32 3
  %11 = load %struct.crypto_async_request*, %struct.crypto_async_request** %10, align 8
  store %struct.crypto_async_request* %11, %struct.crypto_async_request** %5, align 8
  %12 = load %struct.crypto_async_request*, %struct.crypto_async_request** %5, align 8
  %13 = call %struct.ahash_request* @ahash_request_cast(%struct.crypto_async_request* %12)
  store %struct.ahash_request* %13, %struct.ahash_request** %6, align 8
  %14 = load %struct.iproc_reqctx_s*, %struct.iproc_reqctx_s** %3, align 8
  %15 = getelementptr inbounds %struct.iproc_reqctx_s, %struct.iproc_reqctx_s* %14, i32 0, i32 2
  %16 = load %struct.iproc_ctx_s*, %struct.iproc_ctx_s** %15, align 8
  store %struct.iproc_ctx_s* %16, %struct.iproc_ctx_s** %7, align 8
  %17 = load %struct.ahash_request*, %struct.ahash_request** %6, align 8
  %18 = getelementptr inbounds %struct.ahash_request, %struct.ahash_request* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load %struct.iproc_reqctx_s*, %struct.iproc_reqctx_s** %3, align 8
  %21 = getelementptr inbounds %struct.iproc_reqctx_s, %struct.iproc_reqctx_s* %20, i32 0, i32 1
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = load %struct.iproc_ctx_s*, %struct.iproc_ctx_s** %7, align 8
  %25 = getelementptr inbounds %struct.iproc_ctx_s, %struct.iproc_ctx_s* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 8
  %27 = call i32 @memcpy(i64 %19, i32 %23, i32 %26)
  %28 = load %struct.spu_hw*, %struct.spu_hw** %4, align 8
  %29 = getelementptr inbounds %struct.spu_hw, %struct.spu_hw* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = load i64, i64* @SPU_TYPE_SPUM, align 8
  %32 = icmp eq i64 %30, %31
  br i1 %32, label %33, label %71

33:                                               ; preds = %1
  %34 = load %struct.iproc_ctx_s*, %struct.iproc_ctx_s** %7, align 8
  %35 = getelementptr inbounds %struct.iproc_ctx_s, %struct.iproc_ctx_s* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = load i64, i64* @HASH_ALG_MD5, align 8
  %39 = icmp eq i64 %37, %38
  br i1 %39, label %40, label %70

40:                                               ; preds = %33
  %41 = load %struct.ahash_request*, %struct.ahash_request** %6, align 8
  %42 = getelementptr inbounds %struct.ahash_request, %struct.ahash_request* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = inttoptr i64 %43 to i32*
  %45 = call i32 @__swab32s(i32* %44)
  %46 = load %struct.ahash_request*, %struct.ahash_request** %6, align 8
  %47 = getelementptr inbounds %struct.ahash_request, %struct.ahash_request* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = inttoptr i64 %48 to i32*
  %50 = getelementptr inbounds i32, i32* %49, i64 1
  %51 = call i32 @__swab32s(i32* %50)
  %52 = load %struct.ahash_request*, %struct.ahash_request** %6, align 8
  %53 = getelementptr inbounds %struct.ahash_request, %struct.ahash_request* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = inttoptr i64 %54 to i32*
  %56 = getelementptr inbounds i32, i32* %55, i64 2
  %57 = call i32 @__swab32s(i32* %56)
  %58 = load %struct.ahash_request*, %struct.ahash_request** %6, align 8
  %59 = getelementptr inbounds %struct.ahash_request, %struct.ahash_request* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = inttoptr i64 %60 to i32*
  %62 = getelementptr inbounds i32, i32* %61, i64 3
  %63 = call i32 @__swab32s(i32* %62)
  %64 = load %struct.ahash_request*, %struct.ahash_request** %6, align 8
  %65 = getelementptr inbounds %struct.ahash_request, %struct.ahash_request* %64, i32 0, i32 0
  %66 = load i64, i64* %65, align 8
  %67 = inttoptr i64 %66 to i32*
  %68 = getelementptr inbounds i32, i32* %67, i64 4
  %69 = call i32 @__swab32s(i32* %68)
  br label %70

70:                                               ; preds = %40, %33
  br label %71

71:                                               ; preds = %70, %1
  %72 = load %struct.ahash_request*, %struct.ahash_request** %6, align 8
  %73 = getelementptr inbounds %struct.ahash_request, %struct.ahash_request* %72, i32 0, i32 0
  %74 = load i64, i64* %73, align 8
  %75 = load %struct.iproc_ctx_s*, %struct.iproc_ctx_s** %7, align 8
  %76 = getelementptr inbounds %struct.iproc_ctx_s, %struct.iproc_ctx_s* %75, i32 0, i32 1
  %77 = load i32, i32* %76, align 8
  %78 = call i32 @flow_dump(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i64 %74, i32 %77)
  %79 = load %struct.iproc_reqctx_s*, %struct.iproc_reqctx_s** %3, align 8
  %80 = getelementptr inbounds %struct.iproc_reqctx_s, %struct.iproc_reqctx_s* %79, i32 0, i32 0
  %81 = load i64, i64* %80, align 8
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %83, label %99

83:                                               ; preds = %71
  %84 = load %struct.ahash_request*, %struct.ahash_request** %6, align 8
  %85 = load %struct.iproc_ctx_s*, %struct.iproc_ctx_s** %7, align 8
  %86 = call i32 @spu_hmac_outer_hash(%struct.ahash_request* %84, %struct.iproc_ctx_s* %85)
  store i32 %86, i32* %8, align 4
  %87 = load i32, i32* %8, align 4
  %88 = icmp slt i32 %87, 0
  br i1 %88, label %89, label %91

89:                                               ; preds = %83
  %90 = load i32, i32* %8, align 4
  store i32 %90, i32* %2, align 4
  br label %136

91:                                               ; preds = %83
  %92 = load %struct.ahash_request*, %struct.ahash_request** %6, align 8
  %93 = getelementptr inbounds %struct.ahash_request, %struct.ahash_request* %92, i32 0, i32 0
  %94 = load i64, i64* %93, align 8
  %95 = load %struct.iproc_ctx_s*, %struct.iproc_ctx_s** %7, align 8
  %96 = getelementptr inbounds %struct.iproc_ctx_s, %struct.iproc_ctx_s* %95, i32 0, i32 1
  %97 = load i32, i32* %96, align 8
  %98 = call i32 @flow_dump(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i64 %94, i32 %97)
  br label %99

99:                                               ; preds = %91, %71
  %100 = load %struct.iproc_reqctx_s*, %struct.iproc_reqctx_s** %3, align 8
  %101 = getelementptr inbounds %struct.iproc_reqctx_s, %struct.iproc_reqctx_s* %100, i32 0, i32 0
  %102 = load i64, i64* %101, align 8
  %103 = icmp ne i64 %102, 0
  br i1 %103, label %111, label %104

104:                                              ; preds = %99
  %105 = load %struct.iproc_ctx_s*, %struct.iproc_ctx_s** %7, align 8
  %106 = getelementptr inbounds %struct.iproc_ctx_s, %struct.iproc_ctx_s* %105, i32 0, i32 0
  %107 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %106, i32 0, i32 1
  %108 = load i64, i64* %107, align 8
  %109 = load i64, i64* @HASH_MODE_HMAC, align 8
  %110 = icmp eq i64 %108, %109
  br i1 %110, label %111, label %123

111:                                              ; preds = %104, %99
  %112 = load i32*, i32** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @iproc_priv, i32 0, i32 1), align 8
  %113 = load i64, i64* @SPU_OP_HMAC, align 8
  %114 = getelementptr inbounds i32, i32* %112, i64 %113
  %115 = call i32 @atomic_inc(i32* %114)
  %116 = load i32*, i32** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @iproc_priv, i32 0, i32 2), align 8
  %117 = load %struct.iproc_ctx_s*, %struct.iproc_ctx_s** %7, align 8
  %118 = getelementptr inbounds %struct.iproc_ctx_s, %struct.iproc_ctx_s* %117, i32 0, i32 0
  %119 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %118, i32 0, i32 0
  %120 = load i64, i64* %119, align 8
  %121 = getelementptr inbounds i32, i32* %116, i64 %120
  %122 = call i32 @atomic_inc(i32* %121)
  br label %135

123:                                              ; preds = %104
  %124 = load i32*, i32** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @iproc_priv, i32 0, i32 1), align 8
  %125 = load i64, i64* @SPU_OP_HASH, align 8
  %126 = getelementptr inbounds i32, i32* %124, i64 %125
  %127 = call i32 @atomic_inc(i32* %126)
  %128 = load i32*, i32** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @iproc_priv, i32 0, i32 0), align 8
  %129 = load %struct.iproc_ctx_s*, %struct.iproc_ctx_s** %7, align 8
  %130 = getelementptr inbounds %struct.iproc_ctx_s, %struct.iproc_ctx_s* %129, i32 0, i32 0
  %131 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %130, i32 0, i32 0
  %132 = load i64, i64* %131, align 8
  %133 = getelementptr inbounds i32, i32* %128, i64 %132
  %134 = call i32 @atomic_inc(i32* %133)
  br label %135

135:                                              ; preds = %123, %111
  store i32 0, i32* %2, align 4
  br label %136

136:                                              ; preds = %135, %89
  %137 = load i32, i32* %2, align 4
  ret i32 %137
}

declare dso_local %struct.ahash_request* @ahash_request_cast(%struct.crypto_async_request*) #1

declare dso_local i32 @memcpy(i64, i32, i32) #1

declare dso_local i32 @__swab32s(i32*) #1

declare dso_local i32 @flow_dump(i8*, i64, i32) #1

declare dso_local i32 @spu_hmac_outer_hash(%struct.ahash_request*, %struct.iproc_ctx_s*) #1

declare dso_local i32 @atomic_inc(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
