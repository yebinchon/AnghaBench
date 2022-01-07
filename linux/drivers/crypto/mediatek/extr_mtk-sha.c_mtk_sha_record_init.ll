; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/mediatek/extr_mtk-sha.c_mtk_sha_record_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/mediatek/extr_mtk-sha.c_mtk_sha_record_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mtk_cryp = type { i32, %struct.mtk_sha_rec** }
%struct.mtk_sha_rec = type { i32, i32, i32, i32, i32, %struct.mtk_cryp* }

@ENOMEM = common dso_local global i32 0, align 4
@MTK_REC_NUM = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@SHA_QUEUE_SIZE = common dso_local global i32 0, align 4
@mtk_sha_queue_task = common dso_local global i32 0, align 4
@mtk_sha_done_task = common dso_local global i32 0, align 4
@MTK_RING2 = common dso_local global i32 0, align 4
@MTK_RING3 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mtk_cryp*)* @mtk_sha_record_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mtk_sha_record_init(%struct.mtk_cryp* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.mtk_cryp*, align 8
  %4 = alloca %struct.mtk_sha_rec**, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.mtk_cryp* %0, %struct.mtk_cryp** %3, align 8
  %7 = load %struct.mtk_cryp*, %struct.mtk_cryp** %3, align 8
  %8 = getelementptr inbounds %struct.mtk_cryp, %struct.mtk_cryp* %7, i32 0, i32 1
  %9 = load %struct.mtk_sha_rec**, %struct.mtk_sha_rec*** %8, align 8
  store %struct.mtk_sha_rec** %9, %struct.mtk_sha_rec*** %4, align 8
  %10 = load i32, i32* @ENOMEM, align 4
  %11 = sub nsw i32 0, %10
  store i32 %11, i32* %6, align 4
  store i32 0, i32* %5, align 4
  br label %12

12:                                               ; preds = %81, %1
  %13 = load i32, i32* %5, align 4
  %14 = load i32, i32* @MTK_REC_NUM, align 4
  %15 = icmp slt i32 %13, %14
  br i1 %15, label %16, label %84

16:                                               ; preds = %12
  %17 = load i32, i32* @GFP_KERNEL, align 4
  %18 = call %struct.mtk_sha_rec* @kzalloc(i32 32, i32 %17)
  %19 = load %struct.mtk_sha_rec**, %struct.mtk_sha_rec*** %4, align 8
  %20 = load i32, i32* %5, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds %struct.mtk_sha_rec*, %struct.mtk_sha_rec** %19, i64 %21
  store %struct.mtk_sha_rec* %18, %struct.mtk_sha_rec** %22, align 8
  %23 = load %struct.mtk_sha_rec**, %struct.mtk_sha_rec*** %4, align 8
  %24 = load i32, i32* %5, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds %struct.mtk_sha_rec*, %struct.mtk_sha_rec** %23, i64 %25
  %27 = load %struct.mtk_sha_rec*, %struct.mtk_sha_rec** %26, align 8
  %28 = icmp ne %struct.mtk_sha_rec* %27, null
  br i1 %28, label %30, label %29

29:                                               ; preds = %16
  br label %97

30:                                               ; preds = %16
  %31 = load %struct.mtk_cryp*, %struct.mtk_cryp** %3, align 8
  %32 = load %struct.mtk_sha_rec**, %struct.mtk_sha_rec*** %4, align 8
  %33 = load i32, i32* %5, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds %struct.mtk_sha_rec*, %struct.mtk_sha_rec** %32, i64 %34
  %36 = load %struct.mtk_sha_rec*, %struct.mtk_sha_rec** %35, align 8
  %37 = getelementptr inbounds %struct.mtk_sha_rec, %struct.mtk_sha_rec* %36, i32 0, i32 5
  store %struct.mtk_cryp* %31, %struct.mtk_cryp** %37, align 8
  %38 = load %struct.mtk_sha_rec**, %struct.mtk_sha_rec*** %4, align 8
  %39 = load i32, i32* %5, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds %struct.mtk_sha_rec*, %struct.mtk_sha_rec** %38, i64 %40
  %42 = load %struct.mtk_sha_rec*, %struct.mtk_sha_rec** %41, align 8
  %43 = getelementptr inbounds %struct.mtk_sha_rec, %struct.mtk_sha_rec* %42, i32 0, i32 4
  %44 = call i32 @spin_lock_init(i32* %43)
  %45 = load %struct.mtk_sha_rec**, %struct.mtk_sha_rec*** %4, align 8
  %46 = load i32, i32* %5, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds %struct.mtk_sha_rec*, %struct.mtk_sha_rec** %45, i64 %47
  %49 = load %struct.mtk_sha_rec*, %struct.mtk_sha_rec** %48, align 8
  %50 = getelementptr inbounds %struct.mtk_sha_rec, %struct.mtk_sha_rec* %49, i32 0, i32 3
  %51 = load i32, i32* @SHA_QUEUE_SIZE, align 4
  %52 = call i32 @crypto_init_queue(i32* %50, i32 %51)
  %53 = load %struct.mtk_sha_rec**, %struct.mtk_sha_rec*** %4, align 8
  %54 = load i32, i32* %5, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds %struct.mtk_sha_rec*, %struct.mtk_sha_rec** %53, i64 %55
  %57 = load %struct.mtk_sha_rec*, %struct.mtk_sha_rec** %56, align 8
  %58 = getelementptr inbounds %struct.mtk_sha_rec, %struct.mtk_sha_rec* %57, i32 0, i32 2
  %59 = load i32, i32* @mtk_sha_queue_task, align 4
  %60 = load %struct.mtk_sha_rec**, %struct.mtk_sha_rec*** %4, align 8
  %61 = load i32, i32* %5, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds %struct.mtk_sha_rec*, %struct.mtk_sha_rec** %60, i64 %62
  %64 = load %struct.mtk_sha_rec*, %struct.mtk_sha_rec** %63, align 8
  %65 = ptrtoint %struct.mtk_sha_rec* %64 to i64
  %66 = call i32 @tasklet_init(i32* %58, i32 %59, i64 %65)
  %67 = load %struct.mtk_sha_rec**, %struct.mtk_sha_rec*** %4, align 8
  %68 = load i32, i32* %5, align 4
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds %struct.mtk_sha_rec*, %struct.mtk_sha_rec** %67, i64 %69
  %71 = load %struct.mtk_sha_rec*, %struct.mtk_sha_rec** %70, align 8
  %72 = getelementptr inbounds %struct.mtk_sha_rec, %struct.mtk_sha_rec* %71, i32 0, i32 1
  %73 = load i32, i32* @mtk_sha_done_task, align 4
  %74 = load %struct.mtk_sha_rec**, %struct.mtk_sha_rec*** %4, align 8
  %75 = load i32, i32* %5, align 4
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds %struct.mtk_sha_rec*, %struct.mtk_sha_rec** %74, i64 %76
  %78 = load %struct.mtk_sha_rec*, %struct.mtk_sha_rec** %77, align 8
  %79 = ptrtoint %struct.mtk_sha_rec* %78 to i64
  %80 = call i32 @tasklet_init(i32* %72, i32 %73, i64 %79)
  br label %81

81:                                               ; preds = %30
  %82 = load i32, i32* %5, align 4
  %83 = add nsw i32 %82, 1
  store i32 %83, i32* %5, align 4
  br label %12

84:                                               ; preds = %12
  %85 = load i32, i32* @MTK_RING2, align 4
  %86 = load %struct.mtk_sha_rec**, %struct.mtk_sha_rec*** %4, align 8
  %87 = getelementptr inbounds %struct.mtk_sha_rec*, %struct.mtk_sha_rec** %86, i64 0
  %88 = load %struct.mtk_sha_rec*, %struct.mtk_sha_rec** %87, align 8
  %89 = getelementptr inbounds %struct.mtk_sha_rec, %struct.mtk_sha_rec* %88, i32 0, i32 0
  store i32 %85, i32* %89, align 8
  %90 = load i32, i32* @MTK_RING3, align 4
  %91 = load %struct.mtk_sha_rec**, %struct.mtk_sha_rec*** %4, align 8
  %92 = getelementptr inbounds %struct.mtk_sha_rec*, %struct.mtk_sha_rec** %91, i64 1
  %93 = load %struct.mtk_sha_rec*, %struct.mtk_sha_rec** %92, align 8
  %94 = getelementptr inbounds %struct.mtk_sha_rec, %struct.mtk_sha_rec* %93, i32 0, i32 0
  store i32 %90, i32* %94, align 8
  %95 = load %struct.mtk_cryp*, %struct.mtk_cryp** %3, align 8
  %96 = getelementptr inbounds %struct.mtk_cryp, %struct.mtk_cryp* %95, i32 0, i32 0
  store i32 1, i32* %96, align 8
  store i32 0, i32* %2, align 4
  br label %111

97:                                               ; preds = %29
  br label %98

98:                                               ; preds = %102, %97
  %99 = load i32, i32* %5, align 4
  %100 = add nsw i32 %99, -1
  store i32 %100, i32* %5, align 4
  %101 = icmp ne i32 %99, 0
  br i1 %101, label %102, label %109

102:                                              ; preds = %98
  %103 = load %struct.mtk_sha_rec**, %struct.mtk_sha_rec*** %4, align 8
  %104 = load i32, i32* %5, align 4
  %105 = sext i32 %104 to i64
  %106 = getelementptr inbounds %struct.mtk_sha_rec*, %struct.mtk_sha_rec** %103, i64 %105
  %107 = load %struct.mtk_sha_rec*, %struct.mtk_sha_rec** %106, align 8
  %108 = call i32 @kfree(%struct.mtk_sha_rec* %107)
  br label %98

109:                                              ; preds = %98
  %110 = load i32, i32* %6, align 4
  store i32 %110, i32* %2, align 4
  br label %111

111:                                              ; preds = %109, %84
  %112 = load i32, i32* %2, align 4
  ret i32 %112
}

declare dso_local %struct.mtk_sha_rec* @kzalloc(i32, i32) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @crypto_init_queue(i32*, i32) #1

declare dso_local i32 @tasklet_init(i32*, i32, i64) #1

declare dso_local i32 @kfree(%struct.mtk_sha_rec*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
