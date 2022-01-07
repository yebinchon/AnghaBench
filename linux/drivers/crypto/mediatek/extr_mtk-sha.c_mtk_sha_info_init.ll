; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/mediatek/extr_mtk-sha.c_mtk_sha_info_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/mediatek/extr_mtk-sha.c_mtk_sha_info_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mtk_sha_reqctx = type { i32, i32, i32, i32, %struct.mtk_sha_info }
%struct.mtk_sha_info = type { i32*, i32*, i32* }

@SHA_CT_CTRL_HDR = common dso_local global i32 0, align 4
@SHA_CT_SIZE = common dso_local global i32 0, align 4
@SHA_TFM_HASH = common dso_local global i32 0, align 4
@SHA_FLAGS_ALGO_MSK = common dso_local global i32 0, align 4
@SHA_TFM_SHA1 = common dso_local global i32 0, align 4
@SHA_TFM_SHA224 = common dso_local global i32 0, align 4
@SHA_TFM_SHA256 = common dso_local global i32 0, align 4
@SHA_TFM_SHA384 = common dso_local global i32 0, align 4
@SHA_TFM_SHA512 = common dso_local global i32 0, align 4
@SHA_TFM_HASH_STORE = common dso_local global i32 0, align 4
@SHA_TFM_CONTINUE = common dso_local global i32 0, align 4
@SHA_TFM_START = common dso_local global i32 0, align 4
@SHA_CMD0 = common dso_local global i32 0, align 4
@SHA_CMD1 = common dso_local global i32 0, align 4
@SHA_CMD2 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mtk_sha_reqctx*)* @mtk_sha_info_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mtk_sha_info_init(%struct.mtk_sha_reqctx* %0) #0 {
  %2 = alloca %struct.mtk_sha_reqctx*, align 8
  %3 = alloca %struct.mtk_sha_info*, align 8
  store %struct.mtk_sha_reqctx* %0, %struct.mtk_sha_reqctx** %2, align 8
  %4 = load %struct.mtk_sha_reqctx*, %struct.mtk_sha_reqctx** %2, align 8
  %5 = getelementptr inbounds %struct.mtk_sha_reqctx, %struct.mtk_sha_reqctx* %4, i32 0, i32 4
  store %struct.mtk_sha_info* %5, %struct.mtk_sha_info** %3, align 8
  %6 = load i32, i32* @SHA_CT_CTRL_HDR, align 4
  %7 = load %struct.mtk_sha_reqctx*, %struct.mtk_sha_reqctx** %2, align 8
  %8 = getelementptr inbounds %struct.mtk_sha_reqctx, %struct.mtk_sha_reqctx* %7, i32 0, i32 3
  store i32 %6, i32* %8, align 4
  %9 = load i32, i32* @SHA_CT_SIZE, align 4
  %10 = load %struct.mtk_sha_reqctx*, %struct.mtk_sha_reqctx** %2, align 8
  %11 = getelementptr inbounds %struct.mtk_sha_reqctx, %struct.mtk_sha_reqctx* %10, i32 0, i32 2
  store i32 %9, i32* %11, align 8
  %12 = load i32, i32* @SHA_TFM_HASH, align 4
  %13 = load %struct.mtk_sha_reqctx*, %struct.mtk_sha_reqctx** %2, align 8
  %14 = getelementptr inbounds %struct.mtk_sha_reqctx, %struct.mtk_sha_reqctx* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  %16 = call i32 @SIZE_IN_WORDS(i32 %15)
  %17 = call i32 @SHA_TFM_SIZE(i32 %16)
  %18 = or i32 %12, %17
  %19 = load %struct.mtk_sha_info*, %struct.mtk_sha_info** %3, align 8
  %20 = getelementptr inbounds %struct.mtk_sha_info, %struct.mtk_sha_info* %19, i32 0, i32 0
  %21 = load i32*, i32** %20, align 8
  %22 = getelementptr inbounds i32, i32* %21, i64 0
  store i32 %18, i32* %22, align 4
  %23 = load %struct.mtk_sha_reqctx*, %struct.mtk_sha_reqctx** %2, align 8
  %24 = getelementptr inbounds %struct.mtk_sha_reqctx, %struct.mtk_sha_reqctx* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = load i32, i32* @SHA_FLAGS_ALGO_MSK, align 4
  %27 = and i32 %25, %26
  switch i32 %27, label %68 [
    i32 132, label %28
    i32 131, label %36
    i32 130, label %44
    i32 129, label %52
    i32 128, label %60
  ]

28:                                               ; preds = %1
  %29 = load i32, i32* @SHA_TFM_SHA1, align 4
  %30 = load %struct.mtk_sha_info*, %struct.mtk_sha_info** %3, align 8
  %31 = getelementptr inbounds %struct.mtk_sha_info, %struct.mtk_sha_info* %30, i32 0, i32 0
  %32 = load i32*, i32** %31, align 8
  %33 = getelementptr inbounds i32, i32* %32, i64 0
  %34 = load i32, i32* %33, align 4
  %35 = or i32 %34, %29
  store i32 %35, i32* %33, align 4
  br label %69

36:                                               ; preds = %1
  %37 = load i32, i32* @SHA_TFM_SHA224, align 4
  %38 = load %struct.mtk_sha_info*, %struct.mtk_sha_info** %3, align 8
  %39 = getelementptr inbounds %struct.mtk_sha_info, %struct.mtk_sha_info* %38, i32 0, i32 0
  %40 = load i32*, i32** %39, align 8
  %41 = getelementptr inbounds i32, i32* %40, i64 0
  %42 = load i32, i32* %41, align 4
  %43 = or i32 %42, %37
  store i32 %43, i32* %41, align 4
  br label %69

44:                                               ; preds = %1
  %45 = load i32, i32* @SHA_TFM_SHA256, align 4
  %46 = load %struct.mtk_sha_info*, %struct.mtk_sha_info** %3, align 8
  %47 = getelementptr inbounds %struct.mtk_sha_info, %struct.mtk_sha_info* %46, i32 0, i32 0
  %48 = load i32*, i32** %47, align 8
  %49 = getelementptr inbounds i32, i32* %48, i64 0
  %50 = load i32, i32* %49, align 4
  %51 = or i32 %50, %45
  store i32 %51, i32* %49, align 4
  br label %69

52:                                               ; preds = %1
  %53 = load i32, i32* @SHA_TFM_SHA384, align 4
  %54 = load %struct.mtk_sha_info*, %struct.mtk_sha_info** %3, align 8
  %55 = getelementptr inbounds %struct.mtk_sha_info, %struct.mtk_sha_info* %54, i32 0, i32 0
  %56 = load i32*, i32** %55, align 8
  %57 = getelementptr inbounds i32, i32* %56, i64 0
  %58 = load i32, i32* %57, align 4
  %59 = or i32 %58, %53
  store i32 %59, i32* %57, align 4
  br label %69

60:                                               ; preds = %1
  %61 = load i32, i32* @SHA_TFM_SHA512, align 4
  %62 = load %struct.mtk_sha_info*, %struct.mtk_sha_info** %3, align 8
  %63 = getelementptr inbounds %struct.mtk_sha_info, %struct.mtk_sha_info* %62, i32 0, i32 0
  %64 = load i32*, i32** %63, align 8
  %65 = getelementptr inbounds i32, i32* %64, i64 0
  %66 = load i32, i32* %65, align 4
  %67 = or i32 %66, %61
  store i32 %67, i32* %65, align 4
  br label %69

68:                                               ; preds = %1
  br label %118

69:                                               ; preds = %60, %52, %44, %36, %28
  %70 = load i32, i32* @SHA_TFM_HASH_STORE, align 4
  %71 = load %struct.mtk_sha_info*, %struct.mtk_sha_info** %3, align 8
  %72 = getelementptr inbounds %struct.mtk_sha_info, %struct.mtk_sha_info* %71, i32 0, i32 0
  %73 = load i32*, i32** %72, align 8
  %74 = getelementptr inbounds i32, i32* %73, i64 1
  store i32 %70, i32* %74, align 4
  %75 = load %struct.mtk_sha_info*, %struct.mtk_sha_info** %3, align 8
  %76 = getelementptr inbounds %struct.mtk_sha_info, %struct.mtk_sha_info* %75, i32 0, i32 0
  %77 = load i32*, i32** %76, align 8
  %78 = getelementptr inbounds i32, i32* %77, i64 0
  %79 = load i32, i32* %78, align 4
  %80 = load i32, i32* @SHA_TFM_CONTINUE, align 4
  %81 = or i32 %79, %80
  %82 = load i32, i32* @SHA_TFM_START, align 4
  %83 = or i32 %81, %82
  %84 = load %struct.mtk_sha_info*, %struct.mtk_sha_info** %3, align 8
  %85 = getelementptr inbounds %struct.mtk_sha_info, %struct.mtk_sha_info* %84, i32 0, i32 1
  %86 = load i32*, i32** %85, align 8
  %87 = getelementptr inbounds i32, i32* %86, i64 0
  store i32 %83, i32* %87, align 4
  %88 = load %struct.mtk_sha_info*, %struct.mtk_sha_info** %3, align 8
  %89 = getelementptr inbounds %struct.mtk_sha_info, %struct.mtk_sha_info* %88, i32 0, i32 0
  %90 = load i32*, i32** %89, align 8
  %91 = getelementptr inbounds i32, i32* %90, i64 1
  %92 = load i32, i32* %91, align 4
  %93 = load %struct.mtk_sha_info*, %struct.mtk_sha_info** %3, align 8
  %94 = getelementptr inbounds %struct.mtk_sha_info, %struct.mtk_sha_info* %93, i32 0, i32 1
  %95 = load i32*, i32** %94, align 8
  %96 = getelementptr inbounds i32, i32* %95, i64 1
  store i32 %92, i32* %96, align 4
  %97 = load i32, i32* @SHA_CMD0, align 4
  %98 = load %struct.mtk_sha_info*, %struct.mtk_sha_info** %3, align 8
  %99 = getelementptr inbounds %struct.mtk_sha_info, %struct.mtk_sha_info* %98, i32 0, i32 2
  %100 = load i32*, i32** %99, align 8
  %101 = getelementptr inbounds i32, i32* %100, i64 0
  store i32 %97, i32* %101, align 4
  %102 = load i32, i32* @SHA_CMD1, align 4
  %103 = load %struct.mtk_sha_info*, %struct.mtk_sha_info** %3, align 8
  %104 = getelementptr inbounds %struct.mtk_sha_info, %struct.mtk_sha_info* %103, i32 0, i32 2
  %105 = load i32*, i32** %104, align 8
  %106 = getelementptr inbounds i32, i32* %105, i64 1
  store i32 %102, i32* %106, align 4
  %107 = load i32, i32* @SHA_CMD2, align 4
  %108 = load %struct.mtk_sha_reqctx*, %struct.mtk_sha_reqctx** %2, align 8
  %109 = getelementptr inbounds %struct.mtk_sha_reqctx, %struct.mtk_sha_reqctx* %108, i32 0, i32 1
  %110 = load i32, i32* %109, align 4
  %111 = call i32 @SIZE_IN_WORDS(i32 %110)
  %112 = call i32 @SHA_TFM_DIGEST(i32 %111)
  %113 = or i32 %107, %112
  %114 = load %struct.mtk_sha_info*, %struct.mtk_sha_info** %3, align 8
  %115 = getelementptr inbounds %struct.mtk_sha_info, %struct.mtk_sha_info* %114, i32 0, i32 2
  %116 = load i32*, i32** %115, align 8
  %117 = getelementptr inbounds i32, i32* %116, i64 2
  store i32 %113, i32* %117, align 4
  br label %118

118:                                              ; preds = %69, %68
  ret void
}

declare dso_local i32 @SHA_TFM_SIZE(i32) #1

declare dso_local i32 @SIZE_IN_WORDS(i32) #1

declare dso_local i32 @SHA_TFM_DIGEST(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
