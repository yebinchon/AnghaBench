; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/mediatek/extr_mtk-sha.c_mtk_sha_finish.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/mediatek/extr_mtk-sha.c_mtk_sha_finish.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ahash_request = type { i64 }
%struct.mtk_sha_reqctx = type { i32, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32* }

@SHA_FLAGS_HMAC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ahash_request*)* @mtk_sha_finish to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mtk_sha_finish(%struct.ahash_request* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ahash_request*, align 8
  %4 = alloca %struct.mtk_sha_reqctx*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  store %struct.ahash_request* %0, %struct.ahash_request** %3, align 8
  %8 = load %struct.ahash_request*, %struct.ahash_request** %3, align 8
  %9 = call %struct.mtk_sha_reqctx* @ahash_request_ctx(%struct.ahash_request* %8)
  store %struct.mtk_sha_reqctx* %9, %struct.mtk_sha_reqctx** %4, align 8
  %10 = load %struct.mtk_sha_reqctx*, %struct.mtk_sha_reqctx** %4, align 8
  %11 = getelementptr inbounds %struct.mtk_sha_reqctx, %struct.mtk_sha_reqctx* %10, i32 0, i32 2
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = load i32*, i32** %12, align 8
  store i32* %13, i32** %5, align 8
  %14 = load %struct.ahash_request*, %struct.ahash_request** %3, align 8
  %15 = getelementptr inbounds %struct.ahash_request, %struct.ahash_request* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = inttoptr i64 %16 to i32*
  store i32* %17, i32** %6, align 8
  store i32 0, i32* %7, align 4
  br label %18

18:                                               ; preds = %36, %1
  %19 = load i32, i32* %7, align 4
  %20 = load %struct.mtk_sha_reqctx*, %struct.mtk_sha_reqctx** %4, align 8
  %21 = getelementptr inbounds %struct.mtk_sha_reqctx, %struct.mtk_sha_reqctx* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @SIZE_IN_WORDS(i32 %22)
  %24 = icmp slt i32 %19, %23
  br i1 %24, label %25, label %39

25:                                               ; preds = %18
  %26 = load i32*, i32** %5, align 8
  %27 = load i32, i32* %7, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds i32, i32* %26, i64 %28
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @le32_to_cpu(i32 %30)
  %32 = load i32*, i32** %6, align 8
  %33 = load i32, i32* %7, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds i32, i32* %32, i64 %34
  store i32 %31, i32* %35, align 4
  br label %36

36:                                               ; preds = %25
  %37 = load i32, i32* %7, align 4
  %38 = add nsw i32 %37, 1
  store i32 %38, i32* %7, align 4
  br label %18

39:                                               ; preds = %18
  %40 = load %struct.mtk_sha_reqctx*, %struct.mtk_sha_reqctx** %4, align 8
  %41 = getelementptr inbounds %struct.mtk_sha_reqctx, %struct.mtk_sha_reqctx* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = load i32, i32* @SHA_FLAGS_HMAC, align 4
  %44 = and i32 %42, %43
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %49

46:                                               ; preds = %39
  %47 = load %struct.ahash_request*, %struct.ahash_request** %3, align 8
  %48 = call i32 @mtk_sha_finish_hmac(%struct.ahash_request* %47)
  store i32 %48, i32* %2, align 4
  br label %50

49:                                               ; preds = %39
  store i32 0, i32* %2, align 4
  br label %50

50:                                               ; preds = %49, %46
  %51 = load i32, i32* %2, align 4
  ret i32 %51
}

declare dso_local %struct.mtk_sha_reqctx* @ahash_request_ctx(%struct.ahash_request*) #1

declare dso_local i32 @SIZE_IN_WORDS(i32) #1

declare dso_local i32 @le32_to_cpu(i32) #1

declare dso_local i32 @mtk_sha_finish_hmac(%struct.ahash_request*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
