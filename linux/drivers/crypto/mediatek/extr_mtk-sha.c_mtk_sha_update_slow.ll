; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/mediatek/extr_mtk-sha.c_mtk_sha_update_slow.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/mediatek/extr_mtk-sha.c_mtk_sha_update_slow.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mtk_cryp = type { i32 }
%struct.mtk_sha_rec = type { i32, i32 }
%struct.mtk_sha_reqctx = type { i32, i64, i64 }

@SHA_FLAGS_FINUP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [19 x i8] c"slow: bufcnt: %zu\0A\00", align 1
@SHA_FLAGS_FINAL = common dso_local global i32 0, align 4
@SHA_BUF_SIZE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mtk_cryp*, %struct.mtk_sha_rec*)* @mtk_sha_update_slow to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mtk_sha_update_slow(%struct.mtk_cryp* %0, %struct.mtk_sha_rec* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.mtk_cryp*, align 8
  %5 = alloca %struct.mtk_sha_rec*, align 8
  %6 = alloca %struct.mtk_sha_reqctx*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  store %struct.mtk_cryp* %0, %struct.mtk_cryp** %4, align 8
  store %struct.mtk_sha_rec* %1, %struct.mtk_sha_rec** %5, align 8
  %9 = load %struct.mtk_sha_rec*, %struct.mtk_sha_rec** %5, align 8
  %10 = getelementptr inbounds %struct.mtk_sha_rec, %struct.mtk_sha_rec* %9, i32 0, i32 1
  %11 = load i32, i32* %10, align 4
  %12 = call %struct.mtk_sha_reqctx* @ahash_request_ctx(i32 %11)
  store %struct.mtk_sha_reqctx* %12, %struct.mtk_sha_reqctx** %6, align 8
  %13 = load %struct.mtk_sha_reqctx*, %struct.mtk_sha_reqctx** %6, align 8
  %14 = call i32 @mtk_sha_append_sg(%struct.mtk_sha_reqctx* %13)
  %15 = load %struct.mtk_sha_reqctx*, %struct.mtk_sha_reqctx** %6, align 8
  %16 = getelementptr inbounds %struct.mtk_sha_reqctx, %struct.mtk_sha_reqctx* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = load i32, i32* @SHA_FLAGS_FINUP, align 4
  %19 = and i32 %17, %18
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %27

21:                                               ; preds = %2
  %22 = load %struct.mtk_sha_reqctx*, %struct.mtk_sha_reqctx** %6, align 8
  %23 = getelementptr inbounds %struct.mtk_sha_reqctx, %struct.mtk_sha_reqctx* %22, i32 0, i32 2
  %24 = load i64, i64* %23, align 8
  %25 = icmp ne i64 %24, 0
  %26 = xor i1 %25, true
  br label %27

27:                                               ; preds = %21, %2
  %28 = phi i1 [ false, %2 ], [ %26, %21 ]
  %29 = zext i1 %28 to i32
  store i32 %29, i32* %8, align 4
  %30 = load %struct.mtk_cryp*, %struct.mtk_cryp** %4, align 8
  %31 = getelementptr inbounds %struct.mtk_cryp, %struct.mtk_cryp* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.mtk_sha_reqctx*, %struct.mtk_sha_reqctx** %6, align 8
  %34 = getelementptr inbounds %struct.mtk_sha_reqctx, %struct.mtk_sha_reqctx* %33, i32 0, i32 1
  %35 = load i64, i64* %34, align 8
  %36 = call i32 @dev_dbg(i32 %32, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i64 %35)
  %37 = load i32, i32* %8, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %47

39:                                               ; preds = %27
  %40 = load i32, i32* @SHA_FLAGS_FINAL, align 4
  %41 = load %struct.mtk_sha_rec*, %struct.mtk_sha_rec** %5, align 8
  %42 = getelementptr inbounds %struct.mtk_sha_rec, %struct.mtk_sha_rec* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = or i32 %43, %40
  store i32 %44, i32* %42, align 4
  %45 = load %struct.mtk_sha_reqctx*, %struct.mtk_sha_reqctx** %6, align 8
  %46 = call i32 @mtk_sha_fill_padding(%struct.mtk_sha_reqctx* %45, i32 0)
  br label %47

47:                                               ; preds = %39, %27
  %48 = load i32, i32* %8, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %61, label %50

50:                                               ; preds = %47
  %51 = load %struct.mtk_sha_reqctx*, %struct.mtk_sha_reqctx** %6, align 8
  %52 = getelementptr inbounds %struct.mtk_sha_reqctx, %struct.mtk_sha_reqctx* %51, i32 0, i32 1
  %53 = load i64, i64* %52, align 8
  %54 = load i64, i64* @SHA_BUF_SIZE, align 8
  %55 = icmp eq i64 %53, %54
  br i1 %55, label %56, label %72

56:                                               ; preds = %50
  %57 = load %struct.mtk_sha_reqctx*, %struct.mtk_sha_reqctx** %6, align 8
  %58 = getelementptr inbounds %struct.mtk_sha_reqctx, %struct.mtk_sha_reqctx* %57, i32 0, i32 2
  %59 = load i64, i64* %58, align 8
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %72

61:                                               ; preds = %56, %47
  %62 = load %struct.mtk_sha_reqctx*, %struct.mtk_sha_reqctx** %6, align 8
  %63 = getelementptr inbounds %struct.mtk_sha_reqctx, %struct.mtk_sha_reqctx* %62, i32 0, i32 1
  %64 = load i64, i64* %63, align 8
  store i64 %64, i64* %7, align 8
  %65 = load %struct.mtk_sha_reqctx*, %struct.mtk_sha_reqctx** %6, align 8
  %66 = getelementptr inbounds %struct.mtk_sha_reqctx, %struct.mtk_sha_reqctx* %65, i32 0, i32 1
  store i64 0, i64* %66, align 8
  %67 = load %struct.mtk_cryp*, %struct.mtk_cryp** %4, align 8
  %68 = load %struct.mtk_sha_rec*, %struct.mtk_sha_rec** %5, align 8
  %69 = load %struct.mtk_sha_reqctx*, %struct.mtk_sha_reqctx** %6, align 8
  %70 = load i64, i64* %7, align 8
  %71 = call i32 @mtk_sha_dma_map(%struct.mtk_cryp* %67, %struct.mtk_sha_rec* %68, %struct.mtk_sha_reqctx* %69, i64 %70)
  store i32 %71, i32* %3, align 4
  br label %73

72:                                               ; preds = %56, %50
  store i32 0, i32* %3, align 4
  br label %73

73:                                               ; preds = %72, %61
  %74 = load i32, i32* %3, align 4
  ret i32 %74
}

declare dso_local %struct.mtk_sha_reqctx* @ahash_request_ctx(i32) #1

declare dso_local i32 @mtk_sha_append_sg(%struct.mtk_sha_reqctx*) #1

declare dso_local i32 @dev_dbg(i32, i8*, i64) #1

declare dso_local i32 @mtk_sha_fill_padding(%struct.mtk_sha_reqctx*, i32) #1

declare dso_local i32 @mtk_sha_dma_map(%struct.mtk_cryp*, %struct.mtk_sha_rec*, %struct.mtk_sha_reqctx*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
