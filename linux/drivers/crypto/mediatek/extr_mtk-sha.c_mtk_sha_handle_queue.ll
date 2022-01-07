; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/mediatek/extr_mtk-sha.c_mtk_sha_handle_queue.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/mediatek/extr_mtk-sha.c_mtk_sha_handle_queue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mtk_cryp = type { %struct.mtk_sha_rec** }
%struct.mtk_sha_rec = type { i32, %struct.ahash_request*, i32, i32 }
%struct.ahash_request = type { i32 }
%struct.crypto_async_request = type { i32 (%struct.crypto_async_request*, i32)* }
%struct.mtk_sha_reqctx = type { i64, i32 }

@SHA_FLAGS_BUSY = common dso_local global i32 0, align 4
@EINPROGRESS = common dso_local global i32 0, align 4
@SHA_OP_UPDATE = common dso_local global i64 0, align 8
@SHA_FLAGS_FINUP = common dso_local global i32 0, align 4
@SHA_OP_FINAL = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mtk_cryp*, i64, %struct.ahash_request*)* @mtk_sha_handle_queue to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mtk_sha_handle_queue(%struct.mtk_cryp* %0, i64 %1, %struct.ahash_request* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.mtk_cryp*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.ahash_request*, align 8
  %8 = alloca %struct.mtk_sha_rec*, align 8
  %9 = alloca %struct.crypto_async_request*, align 8
  %10 = alloca %struct.crypto_async_request*, align 8
  %11 = alloca %struct.mtk_sha_reqctx*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.mtk_cryp* %0, %struct.mtk_cryp** %5, align 8
  store i64 %1, i64* %6, align 8
  store %struct.ahash_request* %2, %struct.ahash_request** %7, align 8
  %15 = load %struct.mtk_cryp*, %struct.mtk_cryp** %5, align 8
  %16 = getelementptr inbounds %struct.mtk_cryp, %struct.mtk_cryp* %15, i32 0, i32 0
  %17 = load %struct.mtk_sha_rec**, %struct.mtk_sha_rec*** %16, align 8
  %18 = load i64, i64* %6, align 8
  %19 = getelementptr inbounds %struct.mtk_sha_rec*, %struct.mtk_sha_rec** %17, i64 %18
  %20 = load %struct.mtk_sha_rec*, %struct.mtk_sha_rec** %19, align 8
  store %struct.mtk_sha_rec* %20, %struct.mtk_sha_rec** %8, align 8
  store i32 0, i32* %13, align 4
  store i32 0, i32* %14, align 4
  %21 = load %struct.mtk_sha_rec*, %struct.mtk_sha_rec** %8, align 8
  %22 = getelementptr inbounds %struct.mtk_sha_rec, %struct.mtk_sha_rec* %21, i32 0, i32 2
  %23 = load i64, i64* %12, align 8
  %24 = call i32 @spin_lock_irqsave(i32* %22, i64 %23)
  %25 = load %struct.ahash_request*, %struct.ahash_request** %7, align 8
  %26 = icmp ne %struct.ahash_request* %25, null
  br i1 %26, label %27, label %32

27:                                               ; preds = %3
  %28 = load %struct.mtk_sha_rec*, %struct.mtk_sha_rec** %8, align 8
  %29 = getelementptr inbounds %struct.mtk_sha_rec, %struct.mtk_sha_rec* %28, i32 0, i32 3
  %30 = load %struct.ahash_request*, %struct.ahash_request** %7, align 8
  %31 = call i32 @ahash_enqueue_request(i32* %29, %struct.ahash_request* %30)
  store i32 %31, i32* %14, align 4
  br label %32

32:                                               ; preds = %27, %3
  %33 = load i32, i32* @SHA_FLAGS_BUSY, align 4
  %34 = load %struct.mtk_sha_rec*, %struct.mtk_sha_rec** %8, align 8
  %35 = getelementptr inbounds %struct.mtk_sha_rec, %struct.mtk_sha_rec* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = and i32 %33, %36
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %45

39:                                               ; preds = %32
  %40 = load %struct.mtk_sha_rec*, %struct.mtk_sha_rec** %8, align 8
  %41 = getelementptr inbounds %struct.mtk_sha_rec, %struct.mtk_sha_rec* %40, i32 0, i32 2
  %42 = load i64, i64* %12, align 8
  %43 = call i32 @spin_unlock_irqrestore(i32* %41, i64 %42)
  %44 = load i32, i32* %14, align 4
  store i32 %44, i32* %4, align 4
  br label %141

45:                                               ; preds = %32
  %46 = load %struct.mtk_sha_rec*, %struct.mtk_sha_rec** %8, align 8
  %47 = getelementptr inbounds %struct.mtk_sha_rec, %struct.mtk_sha_rec* %46, i32 0, i32 3
  %48 = call %struct.crypto_async_request* @crypto_get_backlog(i32* %47)
  store %struct.crypto_async_request* %48, %struct.crypto_async_request** %10, align 8
  %49 = load %struct.mtk_sha_rec*, %struct.mtk_sha_rec** %8, align 8
  %50 = getelementptr inbounds %struct.mtk_sha_rec, %struct.mtk_sha_rec* %49, i32 0, i32 3
  %51 = call %struct.crypto_async_request* @crypto_dequeue_request(i32* %50)
  store %struct.crypto_async_request* %51, %struct.crypto_async_request** %9, align 8
  %52 = load %struct.crypto_async_request*, %struct.crypto_async_request** %9, align 8
  %53 = icmp ne %struct.crypto_async_request* %52, null
  br i1 %53, label %54, label %60

54:                                               ; preds = %45
  %55 = load i32, i32* @SHA_FLAGS_BUSY, align 4
  %56 = load %struct.mtk_sha_rec*, %struct.mtk_sha_rec** %8, align 8
  %57 = getelementptr inbounds %struct.mtk_sha_rec, %struct.mtk_sha_rec* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = or i32 %58, %55
  store i32 %59, i32* %57, align 8
  br label %60

60:                                               ; preds = %54, %45
  %61 = load %struct.mtk_sha_rec*, %struct.mtk_sha_rec** %8, align 8
  %62 = getelementptr inbounds %struct.mtk_sha_rec, %struct.mtk_sha_rec* %61, i32 0, i32 2
  %63 = load i64, i64* %12, align 8
  %64 = call i32 @spin_unlock_irqrestore(i32* %62, i64 %63)
  %65 = load %struct.crypto_async_request*, %struct.crypto_async_request** %9, align 8
  %66 = icmp ne %struct.crypto_async_request* %65, null
  br i1 %66, label %69, label %67

67:                                               ; preds = %60
  %68 = load i32, i32* %14, align 4
  store i32 %68, i32* %4, align 4
  br label %141

69:                                               ; preds = %60
  %70 = load %struct.crypto_async_request*, %struct.crypto_async_request** %10, align 8
  %71 = icmp ne %struct.crypto_async_request* %70, null
  br i1 %71, label %72, label %80

72:                                               ; preds = %69
  %73 = load %struct.crypto_async_request*, %struct.crypto_async_request** %10, align 8
  %74 = getelementptr inbounds %struct.crypto_async_request, %struct.crypto_async_request* %73, i32 0, i32 0
  %75 = load i32 (%struct.crypto_async_request*, i32)*, i32 (%struct.crypto_async_request*, i32)** %74, align 8
  %76 = load %struct.crypto_async_request*, %struct.crypto_async_request** %10, align 8
  %77 = load i32, i32* @EINPROGRESS, align 4
  %78 = sub nsw i32 0, %77
  %79 = call i32 %75(%struct.crypto_async_request* %76, i32 %78)
  br label %80

80:                                               ; preds = %72, %69
  %81 = load %struct.crypto_async_request*, %struct.crypto_async_request** %9, align 8
  %82 = call %struct.ahash_request* @ahash_request_cast(%struct.crypto_async_request* %81)
  store %struct.ahash_request* %82, %struct.ahash_request** %7, align 8
  %83 = load %struct.ahash_request*, %struct.ahash_request** %7, align 8
  %84 = call %struct.mtk_sha_reqctx* @ahash_request_ctx(%struct.ahash_request* %83)
  store %struct.mtk_sha_reqctx* %84, %struct.mtk_sha_reqctx** %11, align 8
  %85 = load %struct.ahash_request*, %struct.ahash_request** %7, align 8
  %86 = load %struct.mtk_sha_rec*, %struct.mtk_sha_rec** %8, align 8
  %87 = getelementptr inbounds %struct.mtk_sha_rec, %struct.mtk_sha_rec* %86, i32 0, i32 1
  store %struct.ahash_request* %85, %struct.ahash_request** %87, align 8
  %88 = load %struct.mtk_sha_reqctx*, %struct.mtk_sha_reqctx** %11, align 8
  %89 = call i32 @mtk_sha_info_init(%struct.mtk_sha_reqctx* %88)
  %90 = load %struct.mtk_sha_reqctx*, %struct.mtk_sha_reqctx** %11, align 8
  %91 = getelementptr inbounds %struct.mtk_sha_reqctx, %struct.mtk_sha_reqctx* %90, i32 0, i32 0
  %92 = load i64, i64* %91, align 8
  %93 = load i64, i64* @SHA_OP_UPDATE, align 8
  %94 = icmp eq i64 %92, %93
  br i1 %94, label %95, label %115

95:                                               ; preds = %80
  %96 = load %struct.mtk_cryp*, %struct.mtk_cryp** %5, align 8
  %97 = load %struct.mtk_sha_rec*, %struct.mtk_sha_rec** %8, align 8
  %98 = call i32 @mtk_sha_update_start(%struct.mtk_cryp* %96, %struct.mtk_sha_rec* %97)
  store i32 %98, i32* %13, align 4
  %99 = load i32, i32* %13, align 4
  %100 = load i32, i32* @EINPROGRESS, align 4
  %101 = sub nsw i32 0, %100
  %102 = icmp ne i32 %99, %101
  br i1 %102, label %103, label %114

103:                                              ; preds = %95
  %104 = load %struct.mtk_sha_reqctx*, %struct.mtk_sha_reqctx** %11, align 8
  %105 = getelementptr inbounds %struct.mtk_sha_reqctx, %struct.mtk_sha_reqctx* %104, i32 0, i32 1
  %106 = load i32, i32* %105, align 8
  %107 = load i32, i32* @SHA_FLAGS_FINUP, align 4
  %108 = and i32 %106, %107
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %110, label %114

110:                                              ; preds = %103
  %111 = load %struct.mtk_cryp*, %struct.mtk_cryp** %5, align 8
  %112 = load %struct.mtk_sha_rec*, %struct.mtk_sha_rec** %8, align 8
  %113 = call i32 @mtk_sha_final_req(%struct.mtk_cryp* %111, %struct.mtk_sha_rec* %112)
  store i32 %113, i32* %13, align 4
  br label %114

114:                                              ; preds = %110, %103, %95
  br label %126

115:                                              ; preds = %80
  %116 = load %struct.mtk_sha_reqctx*, %struct.mtk_sha_reqctx** %11, align 8
  %117 = getelementptr inbounds %struct.mtk_sha_reqctx, %struct.mtk_sha_reqctx* %116, i32 0, i32 0
  %118 = load i64, i64* %117, align 8
  %119 = load i64, i64* @SHA_OP_FINAL, align 8
  %120 = icmp eq i64 %118, %119
  br i1 %120, label %121, label %125

121:                                              ; preds = %115
  %122 = load %struct.mtk_cryp*, %struct.mtk_cryp** %5, align 8
  %123 = load %struct.mtk_sha_rec*, %struct.mtk_sha_rec** %8, align 8
  %124 = call i32 @mtk_sha_final_req(%struct.mtk_cryp* %122, %struct.mtk_sha_rec* %123)
  store i32 %124, i32* %13, align 4
  br label %125

125:                                              ; preds = %121, %115
  br label %126

126:                                              ; preds = %125, %114
  %127 = load i32, i32* %13, align 4
  %128 = load i32, i32* @EINPROGRESS, align 4
  %129 = sub nsw i32 0, %128
  %130 = icmp ne i32 %127, %129
  %131 = zext i1 %130 to i32
  %132 = call i64 @unlikely(i32 %131)
  %133 = icmp ne i64 %132, 0
  br i1 %133, label %134, label %139

134:                                              ; preds = %126
  %135 = load %struct.mtk_cryp*, %struct.mtk_cryp** %5, align 8
  %136 = load %struct.mtk_sha_rec*, %struct.mtk_sha_rec** %8, align 8
  %137 = load i32, i32* %13, align 4
  %138 = call i32 @mtk_sha_finish_req(%struct.mtk_cryp* %135, %struct.mtk_sha_rec* %136, i32 %137)
  br label %139

139:                                              ; preds = %134, %126
  %140 = load i32, i32* %14, align 4
  store i32 %140, i32* %4, align 4
  br label %141

141:                                              ; preds = %139, %67, %39
  %142 = load i32, i32* %4, align 4
  ret i32 %142
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @ahash_enqueue_request(i32*, %struct.ahash_request*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local %struct.crypto_async_request* @crypto_get_backlog(i32*) #1

declare dso_local %struct.crypto_async_request* @crypto_dequeue_request(i32*) #1

declare dso_local %struct.ahash_request* @ahash_request_cast(%struct.crypto_async_request*) #1

declare dso_local %struct.mtk_sha_reqctx* @ahash_request_ctx(%struct.ahash_request*) #1

declare dso_local i32 @mtk_sha_info_init(%struct.mtk_sha_reqctx*) #1

declare dso_local i32 @mtk_sha_update_start(%struct.mtk_cryp*, %struct.mtk_sha_rec*) #1

declare dso_local i32 @mtk_sha_final_req(%struct.mtk_cryp*, %struct.mtk_sha_rec*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @mtk_sha_finish_req(%struct.mtk_cryp*, %struct.mtk_sha_rec*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
