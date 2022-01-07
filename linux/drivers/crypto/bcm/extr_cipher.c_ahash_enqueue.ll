; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/bcm/extr_cipher.c_ahash_enqueue.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/bcm/extr_cipher.c_ahash_enqueue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i64 }
%struct.ahash_request = type { i32, i32, i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.iproc_reqctx_s = type { i32, i32, i64, i32, i64, i64, i32*, i64, i64, i32, i32, %struct.iproc_ctx_s*, %struct.TYPE_4__*, i32 }
%struct.iproc_ctx_s = type { i32, i32 }
%struct.crypto_ahash = type { i32 }

@.str = private unnamed_addr constant [27 x i8] c"ahash_enqueue() nbytes:%u\0A\00", align 1
@CRYPTO_TFM_REQ_MAY_BACKLOG = common dso_local global i32 0, align 4
@CRYPTO_TFM_REQ_MAY_SLEEP = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@GFP_ATOMIC = common dso_local global i32 0, align 4
@iproc_priv = common dso_local global %struct.TYPE_6__ zeroinitializer, align 8
@SPU_TYPE_SPU2 = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [52 x i8] c"Doing %sfinal %s zero-len hash request in software\0A\00", align 1
@.str.2 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"non-\00", align 1
@.str.4 = private unnamed_addr constant [35 x i8] c"Hash request failed with error %d\0A\00", align 1
@EINPROGRESS = common dso_local global i32 0, align 4
@EAGAIN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ahash_request*)* @ahash_enqueue to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ahash_enqueue(%struct.ahash_request* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ahash_request*, align 8
  %4 = alloca %struct.iproc_reqctx_s*, align 8
  %5 = alloca %struct.crypto_ahash*, align 8
  %6 = alloca %struct.iproc_ctx_s*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  store %struct.ahash_request* %0, %struct.ahash_request** %3, align 8
  %9 = load %struct.ahash_request*, %struct.ahash_request** %3, align 8
  %10 = call %struct.iproc_reqctx_s* @ahash_request_ctx(%struct.ahash_request* %9)
  store %struct.iproc_reqctx_s* %10, %struct.iproc_reqctx_s** %4, align 8
  %11 = load %struct.ahash_request*, %struct.ahash_request** %3, align 8
  %12 = call %struct.crypto_ahash* @crypto_ahash_reqtfm(%struct.ahash_request* %11)
  store %struct.crypto_ahash* %12, %struct.crypto_ahash** %5, align 8
  %13 = load %struct.crypto_ahash*, %struct.crypto_ahash** %5, align 8
  %14 = call %struct.iproc_ctx_s* @crypto_ahash_ctx(%struct.crypto_ahash* %13)
  store %struct.iproc_ctx_s* %14, %struct.iproc_ctx_s** %6, align 8
  store i32 0, i32* %7, align 4
  %15 = load %struct.ahash_request*, %struct.ahash_request** %3, align 8
  %16 = getelementptr inbounds %struct.ahash_request, %struct.ahash_request* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = call i32 (i8*, ...) @flow_log(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i32 %17)
  %19 = load %struct.ahash_request*, %struct.ahash_request** %3, align 8
  %20 = getelementptr inbounds %struct.ahash_request, %struct.ahash_request* %19, i32 0, i32 3
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* @CRYPTO_TFM_REQ_MAY_BACKLOG, align 4
  %24 = load i32, i32* @CRYPTO_TFM_REQ_MAY_SLEEP, align 4
  %25 = or i32 %23, %24
  %26 = and i32 %22, %25
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %30

28:                                               ; preds = %1
  %29 = load i32, i32* @GFP_KERNEL, align 4
  br label %32

30:                                               ; preds = %1
  %31 = load i32, i32* @GFP_ATOMIC, align 4
  br label %32

32:                                               ; preds = %30, %28
  %33 = phi i32 [ %29, %28 ], [ %31, %30 ]
  %34 = load %struct.iproc_reqctx_s*, %struct.iproc_reqctx_s** %4, align 8
  %35 = getelementptr inbounds %struct.iproc_reqctx_s, %struct.iproc_reqctx_s* %34, i32 0, i32 13
  store i32 %33, i32* %35, align 8
  %36 = load %struct.ahash_request*, %struct.ahash_request** %3, align 8
  %37 = getelementptr inbounds %struct.ahash_request, %struct.ahash_request* %36, i32 0, i32 3
  %38 = load %struct.iproc_reqctx_s*, %struct.iproc_reqctx_s** %4, align 8
  %39 = getelementptr inbounds %struct.iproc_reqctx_s, %struct.iproc_reqctx_s* %38, i32 0, i32 12
  store %struct.TYPE_4__* %37, %struct.TYPE_4__** %39, align 8
  %40 = load %struct.iproc_ctx_s*, %struct.iproc_ctx_s** %6, align 8
  %41 = load %struct.iproc_reqctx_s*, %struct.iproc_reqctx_s** %4, align 8
  %42 = getelementptr inbounds %struct.iproc_reqctx_s, %struct.iproc_reqctx_s* %41, i32 0, i32 11
  store %struct.iproc_ctx_s* %40, %struct.iproc_ctx_s** %42, align 8
  %43 = load %struct.iproc_reqctx_s*, %struct.iproc_reqctx_s** %4, align 8
  %44 = getelementptr inbounds %struct.iproc_reqctx_s, %struct.iproc_reqctx_s* %43, i32 0, i32 0
  store i32 1, i32* %44, align 8
  %45 = load %struct.iproc_reqctx_s*, %struct.iproc_reqctx_s** %4, align 8
  %46 = getelementptr inbounds %struct.iproc_reqctx_s, %struct.iproc_reqctx_s* %45, i32 0, i32 10
  %47 = call i32 @memset(i32* %46, i32 0, i32 4)
  %48 = load %struct.ahash_request*, %struct.ahash_request** %3, align 8
  %49 = getelementptr inbounds %struct.ahash_request, %struct.ahash_request* %48, i32 0, i32 2
  %50 = load i32, i32* %49, align 4
  %51 = load %struct.iproc_reqctx_s*, %struct.iproc_reqctx_s** %4, align 8
  %52 = getelementptr inbounds %struct.iproc_reqctx_s, %struct.iproc_reqctx_s* %51, i32 0, i32 9
  store i32 %50, i32* %52, align 8
  %53 = load %struct.iproc_reqctx_s*, %struct.iproc_reqctx_s** %4, align 8
  %54 = getelementptr inbounds %struct.iproc_reqctx_s, %struct.iproc_reqctx_s* %53, i32 0, i32 8
  store i64 0, i64* %54, align 8
  %55 = load %struct.iproc_reqctx_s*, %struct.iproc_reqctx_s** %4, align 8
  %56 = getelementptr inbounds %struct.iproc_reqctx_s, %struct.iproc_reqctx_s* %55, i32 0, i32 7
  store i64 0, i64* %56, align 8
  %57 = load %struct.iproc_reqctx_s*, %struct.iproc_reqctx_s** %4, align 8
  %58 = getelementptr inbounds %struct.iproc_reqctx_s, %struct.iproc_reqctx_s* %57, i32 0, i32 6
  store i32* null, i32** %58, align 8
  %59 = load %struct.iproc_reqctx_s*, %struct.iproc_reqctx_s** %4, align 8
  %60 = getelementptr inbounds %struct.iproc_reqctx_s, %struct.iproc_reqctx_s* %59, i32 0, i32 5
  store i64 0, i64* %60, align 8
  %61 = load %struct.iproc_reqctx_s*, %struct.iproc_reqctx_s** %4, align 8
  %62 = getelementptr inbounds %struct.iproc_reqctx_s, %struct.iproc_reqctx_s* %61, i32 0, i32 4
  store i64 0, i64* %62, align 8
  %63 = load %struct.iproc_reqctx_s*, %struct.iproc_reqctx_s** %4, align 8
  %64 = getelementptr inbounds %struct.iproc_reqctx_s, %struct.iproc_reqctx_s* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 4
  %66 = icmp eq i32 %65, 1
  br i1 %66, label %67, label %106

67:                                               ; preds = %32
  %68 = load %struct.iproc_reqctx_s*, %struct.iproc_reqctx_s** %4, align 8
  %69 = getelementptr inbounds %struct.iproc_reqctx_s, %struct.iproc_reqctx_s* %68, i32 0, i32 2
  %70 = load i64, i64* %69, align 8
  %71 = icmp eq i64 %70, 0
  br i1 %71, label %72, label %106

72:                                               ; preds = %67
  %73 = load i64, i64* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @iproc_priv, i32 0, i32 0, i32 0), align 8
  %74 = load i64, i64* @SPU_TYPE_SPU2, align 8
  %75 = icmp eq i64 %73, %74
  br i1 %75, label %76, label %106

76:                                               ; preds = %72
  %77 = load %struct.crypto_ahash*, %struct.crypto_ahash** %5, align 8
  %78 = call i32 @crypto_ahash_tfm(%struct.crypto_ahash* %77)
  %79 = call i8* @crypto_tfm_alg_name(i32 %78)
  store i8* %79, i8** %8, align 8
  %80 = load %struct.iproc_reqctx_s*, %struct.iproc_reqctx_s** %4, align 8
  %81 = getelementptr inbounds %struct.iproc_reqctx_s, %struct.iproc_reqctx_s* %80, i32 0, i32 1
  %82 = load i32, i32* %81, align 4
  %83 = icmp ne i32 %82, 0
  %84 = zext i1 %83 to i64
  %85 = select i1 %83, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0)
  %86 = load i8*, i8** %8, align 8
  %87 = call i32 (i8*, ...) @flow_log(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.1, i64 0, i64 0), i8* %85, i8* %86)
  %88 = load i8*, i8** %8, align 8
  %89 = load %struct.ahash_request*, %struct.ahash_request** %3, align 8
  %90 = getelementptr inbounds %struct.ahash_request, %struct.ahash_request* %89, i32 0, i32 1
  %91 = load i32, i32* %90, align 4
  %92 = load %struct.iproc_ctx_s*, %struct.iproc_ctx_s** %6, align 8
  %93 = getelementptr inbounds %struct.iproc_ctx_s, %struct.iproc_ctx_s* %92, i32 0, i32 1
  %94 = load i32, i32* %93, align 4
  %95 = load %struct.iproc_ctx_s*, %struct.iproc_ctx_s** %6, align 8
  %96 = getelementptr inbounds %struct.iproc_ctx_s, %struct.iproc_ctx_s* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 4
  %98 = call i32 @do_shash(i8* %88, i32 %91, i32* null, i32 0, i32* null, i32 0, i32 %94, i32 %97)
  store i32 %98, i32* %7, align 4
  %99 = load i32, i32* %7, align 4
  %100 = icmp slt i32 %99, 0
  br i1 %100, label %101, label %104

101:                                              ; preds = %76
  %102 = load i32, i32* %7, align 4
  %103 = call i32 (i8*, ...) @flow_log(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.4, i64 0, i64 0), i32 %102)
  br label %104

104:                                              ; preds = %101, %76
  %105 = load i32, i32* %7, align 4
  store i32 %105, i32* %2, align 4
  br label %127

106:                                              ; preds = %72, %67, %32
  %107 = call i32 (...) @select_channel()
  %108 = load %struct.iproc_reqctx_s*, %struct.iproc_reqctx_s** %4, align 8
  %109 = getelementptr inbounds %struct.iproc_reqctx_s, %struct.iproc_reqctx_s* %108, i32 0, i32 3
  store i32 %107, i32* %109, align 8
  %110 = load %struct.iproc_reqctx_s*, %struct.iproc_reqctx_s** %4, align 8
  %111 = call i32 @handle_ahash_req(%struct.iproc_reqctx_s* %110)
  store i32 %111, i32* %7, align 4
  %112 = load i32, i32* %7, align 4
  %113 = load i32, i32* @EINPROGRESS, align 4
  %114 = sub nsw i32 0, %113
  %115 = icmp ne i32 %112, %114
  br i1 %115, label %116, label %119

116:                                              ; preds = %106
  %117 = load %struct.iproc_reqctx_s*, %struct.iproc_reqctx_s** %4, align 8
  %118 = call i32 @spu_chunk_cleanup(%struct.iproc_reqctx_s* %117)
  br label %119

119:                                              ; preds = %116, %106
  %120 = load i32, i32* %7, align 4
  %121 = load i32, i32* @EAGAIN, align 4
  %122 = sub nsw i32 0, %121
  %123 = icmp eq i32 %120, %122
  br i1 %123, label %124, label %125

124:                                              ; preds = %119
  store i32 0, i32* %7, align 4
  br label %125

125:                                              ; preds = %124, %119
  %126 = load i32, i32* %7, align 4
  store i32 %126, i32* %2, align 4
  br label %127

127:                                              ; preds = %125, %104
  %128 = load i32, i32* %2, align 4
  ret i32 %128
}

declare dso_local %struct.iproc_reqctx_s* @ahash_request_ctx(%struct.ahash_request*) #1

declare dso_local %struct.crypto_ahash* @crypto_ahash_reqtfm(%struct.ahash_request*) #1

declare dso_local %struct.iproc_ctx_s* @crypto_ahash_ctx(%struct.crypto_ahash*) #1

declare dso_local i32 @flow_log(i8*, ...) #1

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i8* @crypto_tfm_alg_name(i32) #1

declare dso_local i32 @crypto_ahash_tfm(%struct.crypto_ahash*) #1

declare dso_local i32 @do_shash(i8*, i32, i32*, i32, i32*, i32, i32, i32) #1

declare dso_local i32 @select_channel(...) #1

declare dso_local i32 @handle_ahash_req(%struct.iproc_reqctx_s*) #1

declare dso_local i32 @spu_chunk_cleanup(%struct.iproc_reqctx_s*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
