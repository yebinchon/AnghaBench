; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/mediatek/extr_mtk-aes.c_mtk_aes_record_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/mediatek/extr_mtk-aes.c_mtk_aes_record_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mtk_cryp = type { %struct.mtk_aes_rec** }
%struct.mtk_aes_rec = type { i8*, i32, i32, i32, i32, i32, %struct.mtk_cryp* }

@ENOMEM = common dso_local global i32 0, align 4
@MTK_REC_NUM = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@AES_BUF_ORDER = common dso_local global i32 0, align 4
@AES_QUEUE_SIZE = common dso_local global i32 0, align 4
@mtk_aes_queue_task = common dso_local global i32 0, align 4
@mtk_aes_done_task = common dso_local global i32 0, align 4
@MTK_RING0 = common dso_local global i32 0, align 4
@MTK_RING1 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mtk_cryp*)* @mtk_aes_record_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mtk_aes_record_init(%struct.mtk_cryp* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.mtk_cryp*, align 8
  %4 = alloca %struct.mtk_aes_rec**, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.mtk_cryp* %0, %struct.mtk_cryp** %3, align 8
  %7 = load %struct.mtk_cryp*, %struct.mtk_cryp** %3, align 8
  %8 = getelementptr inbounds %struct.mtk_cryp, %struct.mtk_cryp* %7, i32 0, i32 0
  %9 = load %struct.mtk_aes_rec**, %struct.mtk_aes_rec*** %8, align 8
  store %struct.mtk_aes_rec** %9, %struct.mtk_aes_rec*** %4, align 8
  %10 = load i32, i32* @ENOMEM, align 4
  %11 = sub nsw i32 0, %10
  store i32 %11, i32* %6, align 4
  store i32 0, i32* %5, align 4
  br label %12

12:                                               ; preds = %101, %1
  %13 = load i32, i32* %5, align 4
  %14 = load i32, i32* @MTK_REC_NUM, align 4
  %15 = icmp slt i32 %13, %14
  br i1 %15, label %16, label %104

16:                                               ; preds = %12
  %17 = load i32, i32* @GFP_KERNEL, align 4
  %18 = call %struct.mtk_aes_rec* @kzalloc(i32 40, i32 %17)
  %19 = load %struct.mtk_aes_rec**, %struct.mtk_aes_rec*** %4, align 8
  %20 = load i32, i32* %5, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds %struct.mtk_aes_rec*, %struct.mtk_aes_rec** %19, i64 %21
  store %struct.mtk_aes_rec* %18, %struct.mtk_aes_rec** %22, align 8
  %23 = load %struct.mtk_aes_rec**, %struct.mtk_aes_rec*** %4, align 8
  %24 = load i32, i32* %5, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds %struct.mtk_aes_rec*, %struct.mtk_aes_rec** %23, i64 %25
  %27 = load %struct.mtk_aes_rec*, %struct.mtk_aes_rec** %26, align 8
  %28 = icmp ne %struct.mtk_aes_rec* %27, null
  br i1 %28, label %30, label %29

29:                                               ; preds = %16
  br label %115

30:                                               ; preds = %16
  %31 = load i32, i32* @GFP_KERNEL, align 4
  %32 = load i32, i32* @AES_BUF_ORDER, align 4
  %33 = call i64 @__get_free_pages(i32 %31, i32 %32)
  %34 = inttoptr i64 %33 to i8*
  %35 = load %struct.mtk_aes_rec**, %struct.mtk_aes_rec*** %4, align 8
  %36 = load i32, i32* %5, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds %struct.mtk_aes_rec*, %struct.mtk_aes_rec** %35, i64 %37
  %39 = load %struct.mtk_aes_rec*, %struct.mtk_aes_rec** %38, align 8
  %40 = getelementptr inbounds %struct.mtk_aes_rec, %struct.mtk_aes_rec* %39, i32 0, i32 0
  store i8* %34, i8** %40, align 8
  %41 = load %struct.mtk_aes_rec**, %struct.mtk_aes_rec*** %4, align 8
  %42 = load i32, i32* %5, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds %struct.mtk_aes_rec*, %struct.mtk_aes_rec** %41, i64 %43
  %45 = load %struct.mtk_aes_rec*, %struct.mtk_aes_rec** %44, align 8
  %46 = getelementptr inbounds %struct.mtk_aes_rec, %struct.mtk_aes_rec* %45, i32 0, i32 0
  %47 = load i8*, i8** %46, align 8
  %48 = icmp ne i8* %47, null
  br i1 %48, label %50, label %49

49:                                               ; preds = %30
  br label %115

50:                                               ; preds = %30
  %51 = load %struct.mtk_cryp*, %struct.mtk_cryp** %3, align 8
  %52 = load %struct.mtk_aes_rec**, %struct.mtk_aes_rec*** %4, align 8
  %53 = load i32, i32* %5, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds %struct.mtk_aes_rec*, %struct.mtk_aes_rec** %52, i64 %54
  %56 = load %struct.mtk_aes_rec*, %struct.mtk_aes_rec** %55, align 8
  %57 = getelementptr inbounds %struct.mtk_aes_rec, %struct.mtk_aes_rec* %56, i32 0, i32 6
  store %struct.mtk_cryp* %51, %struct.mtk_cryp** %57, align 8
  %58 = load %struct.mtk_aes_rec**, %struct.mtk_aes_rec*** %4, align 8
  %59 = load i32, i32* %5, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds %struct.mtk_aes_rec*, %struct.mtk_aes_rec** %58, i64 %60
  %62 = load %struct.mtk_aes_rec*, %struct.mtk_aes_rec** %61, align 8
  %63 = getelementptr inbounds %struct.mtk_aes_rec, %struct.mtk_aes_rec* %62, i32 0, i32 5
  %64 = call i32 @spin_lock_init(i32* %63)
  %65 = load %struct.mtk_aes_rec**, %struct.mtk_aes_rec*** %4, align 8
  %66 = load i32, i32* %5, align 4
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds %struct.mtk_aes_rec*, %struct.mtk_aes_rec** %65, i64 %67
  %69 = load %struct.mtk_aes_rec*, %struct.mtk_aes_rec** %68, align 8
  %70 = getelementptr inbounds %struct.mtk_aes_rec, %struct.mtk_aes_rec* %69, i32 0, i32 4
  %71 = load i32, i32* @AES_QUEUE_SIZE, align 4
  %72 = call i32 @crypto_init_queue(i32* %70, i32 %71)
  %73 = load %struct.mtk_aes_rec**, %struct.mtk_aes_rec*** %4, align 8
  %74 = load i32, i32* %5, align 4
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds %struct.mtk_aes_rec*, %struct.mtk_aes_rec** %73, i64 %75
  %77 = load %struct.mtk_aes_rec*, %struct.mtk_aes_rec** %76, align 8
  %78 = getelementptr inbounds %struct.mtk_aes_rec, %struct.mtk_aes_rec* %77, i32 0, i32 3
  %79 = load i32, i32* @mtk_aes_queue_task, align 4
  %80 = load %struct.mtk_aes_rec**, %struct.mtk_aes_rec*** %4, align 8
  %81 = load i32, i32* %5, align 4
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds %struct.mtk_aes_rec*, %struct.mtk_aes_rec** %80, i64 %82
  %84 = load %struct.mtk_aes_rec*, %struct.mtk_aes_rec** %83, align 8
  %85 = ptrtoint %struct.mtk_aes_rec* %84 to i64
  %86 = call i32 @tasklet_init(i32* %78, i32 %79, i64 %85)
  %87 = load %struct.mtk_aes_rec**, %struct.mtk_aes_rec*** %4, align 8
  %88 = load i32, i32* %5, align 4
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds %struct.mtk_aes_rec*, %struct.mtk_aes_rec** %87, i64 %89
  %91 = load %struct.mtk_aes_rec*, %struct.mtk_aes_rec** %90, align 8
  %92 = getelementptr inbounds %struct.mtk_aes_rec, %struct.mtk_aes_rec* %91, i32 0, i32 2
  %93 = load i32, i32* @mtk_aes_done_task, align 4
  %94 = load %struct.mtk_aes_rec**, %struct.mtk_aes_rec*** %4, align 8
  %95 = load i32, i32* %5, align 4
  %96 = sext i32 %95 to i64
  %97 = getelementptr inbounds %struct.mtk_aes_rec*, %struct.mtk_aes_rec** %94, i64 %96
  %98 = load %struct.mtk_aes_rec*, %struct.mtk_aes_rec** %97, align 8
  %99 = ptrtoint %struct.mtk_aes_rec* %98 to i64
  %100 = call i32 @tasklet_init(i32* %92, i32 %93, i64 %99)
  br label %101

101:                                              ; preds = %50
  %102 = load i32, i32* %5, align 4
  %103 = add nsw i32 %102, 1
  store i32 %103, i32* %5, align 4
  br label %12

104:                                              ; preds = %12
  %105 = load i32, i32* @MTK_RING0, align 4
  %106 = load %struct.mtk_aes_rec**, %struct.mtk_aes_rec*** %4, align 8
  %107 = getelementptr inbounds %struct.mtk_aes_rec*, %struct.mtk_aes_rec** %106, i64 0
  %108 = load %struct.mtk_aes_rec*, %struct.mtk_aes_rec** %107, align 8
  %109 = getelementptr inbounds %struct.mtk_aes_rec, %struct.mtk_aes_rec* %108, i32 0, i32 1
  store i32 %105, i32* %109, align 8
  %110 = load i32, i32* @MTK_RING1, align 4
  %111 = load %struct.mtk_aes_rec**, %struct.mtk_aes_rec*** %4, align 8
  %112 = getelementptr inbounds %struct.mtk_aes_rec*, %struct.mtk_aes_rec** %111, i64 1
  %113 = load %struct.mtk_aes_rec*, %struct.mtk_aes_rec** %112, align 8
  %114 = getelementptr inbounds %struct.mtk_aes_rec, %struct.mtk_aes_rec* %113, i32 0, i32 1
  store i32 %110, i32* %114, align 8
  store i32 0, i32* %2, align 4
  br label %138

115:                                              ; preds = %49, %29
  br label %116

116:                                              ; preds = %120, %115
  %117 = load i32, i32* %5, align 4
  %118 = add nsw i32 %117, -1
  store i32 %118, i32* %5, align 4
  %119 = icmp ne i32 %117, 0
  br i1 %119, label %120, label %136

120:                                              ; preds = %116
  %121 = load %struct.mtk_aes_rec**, %struct.mtk_aes_rec*** %4, align 8
  %122 = load i32, i32* %5, align 4
  %123 = sext i32 %122 to i64
  %124 = getelementptr inbounds %struct.mtk_aes_rec*, %struct.mtk_aes_rec** %121, i64 %123
  %125 = load %struct.mtk_aes_rec*, %struct.mtk_aes_rec** %124, align 8
  %126 = getelementptr inbounds %struct.mtk_aes_rec, %struct.mtk_aes_rec* %125, i32 0, i32 0
  %127 = load i8*, i8** %126, align 8
  %128 = ptrtoint i8* %127 to i64
  %129 = call i32 @free_page(i64 %128)
  %130 = load %struct.mtk_aes_rec**, %struct.mtk_aes_rec*** %4, align 8
  %131 = load i32, i32* %5, align 4
  %132 = sext i32 %131 to i64
  %133 = getelementptr inbounds %struct.mtk_aes_rec*, %struct.mtk_aes_rec** %130, i64 %132
  %134 = load %struct.mtk_aes_rec*, %struct.mtk_aes_rec** %133, align 8
  %135 = call i32 @kfree(%struct.mtk_aes_rec* %134)
  br label %116

136:                                              ; preds = %116
  %137 = load i32, i32* %6, align 4
  store i32 %137, i32* %2, align 4
  br label %138

138:                                              ; preds = %136, %104
  %139 = load i32, i32* %2, align 4
  ret i32 %139
}

declare dso_local %struct.mtk_aes_rec* @kzalloc(i32, i32) #1

declare dso_local i64 @__get_free_pages(i32, i32) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @crypto_init_queue(i32*, i32) #1

declare dso_local i32 @tasklet_init(i32*, i32, i64) #1

declare dso_local i32 @free_page(i64) #1

declare dso_local i32 @kfree(%struct.mtk_aes_rec*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
