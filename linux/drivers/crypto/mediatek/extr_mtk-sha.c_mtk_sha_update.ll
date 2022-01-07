; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/mediatek/extr_mtk-sha.c_mtk_sha_update.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/mediatek/extr_mtk-sha.c_mtk_sha_update.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ahash_request = type { i64, i32 }
%struct.mtk_sha_reqctx = type { i64, i64, i32, i64, i32 }

@SHA_BUF_SIZE = common dso_local global i64 0, align 8
@SHA_FLAGS_FINUP = common dso_local global i32 0, align 4
@SHA_OP_UPDATE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ahash_request*)* @mtk_sha_update to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mtk_sha_update(%struct.ahash_request* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ahash_request*, align 8
  %4 = alloca %struct.mtk_sha_reqctx*, align 8
  store %struct.ahash_request* %0, %struct.ahash_request** %3, align 8
  %5 = load %struct.ahash_request*, %struct.ahash_request** %3, align 8
  %6 = call %struct.mtk_sha_reqctx* @ahash_request_ctx(%struct.ahash_request* %5)
  store %struct.mtk_sha_reqctx* %6, %struct.mtk_sha_reqctx** %4, align 8
  %7 = load %struct.ahash_request*, %struct.ahash_request** %3, align 8
  %8 = getelementptr inbounds %struct.ahash_request, %struct.ahash_request* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = load %struct.mtk_sha_reqctx*, %struct.mtk_sha_reqctx** %4, align 8
  %11 = getelementptr inbounds %struct.mtk_sha_reqctx, %struct.mtk_sha_reqctx* %10, i32 0, i32 0
  store i64 %9, i64* %11, align 8
  %12 = load %struct.ahash_request*, %struct.ahash_request** %3, align 8
  %13 = getelementptr inbounds %struct.ahash_request, %struct.ahash_request* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 8
  %15 = load %struct.mtk_sha_reqctx*, %struct.mtk_sha_reqctx** %4, align 8
  %16 = getelementptr inbounds %struct.mtk_sha_reqctx, %struct.mtk_sha_reqctx* %15, i32 0, i32 4
  store i32 %14, i32* %16, align 8
  %17 = load %struct.mtk_sha_reqctx*, %struct.mtk_sha_reqctx** %4, align 8
  %18 = getelementptr inbounds %struct.mtk_sha_reqctx, %struct.mtk_sha_reqctx* %17, i32 0, i32 3
  store i64 0, i64* %18, align 8
  %19 = load %struct.mtk_sha_reqctx*, %struct.mtk_sha_reqctx** %4, align 8
  %20 = getelementptr inbounds %struct.mtk_sha_reqctx, %struct.mtk_sha_reqctx* %19, i32 0, i32 1
  %21 = load i64, i64* %20, align 8
  %22 = load %struct.mtk_sha_reqctx*, %struct.mtk_sha_reqctx** %4, align 8
  %23 = getelementptr inbounds %struct.mtk_sha_reqctx, %struct.mtk_sha_reqctx* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = add nsw i64 %21, %24
  %26 = load i64, i64* @SHA_BUF_SIZE, align 8
  %27 = icmp slt i64 %25, %26
  br i1 %27, label %28, label %38

28:                                               ; preds = %1
  %29 = load %struct.mtk_sha_reqctx*, %struct.mtk_sha_reqctx** %4, align 8
  %30 = getelementptr inbounds %struct.mtk_sha_reqctx, %struct.mtk_sha_reqctx* %29, i32 0, i32 2
  %31 = load i32, i32* %30, align 8
  %32 = load i32, i32* @SHA_FLAGS_FINUP, align 4
  %33 = and i32 %31, %32
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %38, label %35

35:                                               ; preds = %28
  %36 = load %struct.mtk_sha_reqctx*, %struct.mtk_sha_reqctx** %4, align 8
  %37 = call i32 @mtk_sha_append_sg(%struct.mtk_sha_reqctx* %36)
  store i32 %37, i32* %2, align 4
  br label %42

38:                                               ; preds = %28, %1
  %39 = load %struct.ahash_request*, %struct.ahash_request** %3, align 8
  %40 = load i32, i32* @SHA_OP_UPDATE, align 4
  %41 = call i32 @mtk_sha_enqueue(%struct.ahash_request* %39, i32 %40)
  store i32 %41, i32* %2, align 4
  br label %42

42:                                               ; preds = %38, %35
  %43 = load i32, i32* %2, align 4
  ret i32 %43
}

declare dso_local %struct.mtk_sha_reqctx* @ahash_request_ctx(%struct.ahash_request*) #1

declare dso_local i32 @mtk_sha_append_sg(%struct.mtk_sha_reqctx*) #1

declare dso_local i32 @mtk_sha_enqueue(%struct.ahash_request*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
