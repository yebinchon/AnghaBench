; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/mediatek/extr_mtk-aes.c_mtk_aes_gcm_dma.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/mediatek/extr_mtk-aes.c_mtk_aes_gcm_dma.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mtk_cryp = type { i32 }
%struct.mtk_aes_rec = type { i64, i32, %struct.scatterlist, %struct.TYPE_2__, %struct.TYPE_2__, %struct.scatterlist* }
%struct.scatterlist = type { i32 }
%struct.TYPE_2__ = type { i32, i64, %struct.scatterlist* }

@AES_BUF_SIZE = common dso_local global i64 0, align 8
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mtk_cryp*, %struct.mtk_aes_rec*, %struct.scatterlist*, %struct.scatterlist*, i64)* @mtk_aes_gcm_dma to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mtk_aes_gcm_dma(%struct.mtk_cryp* %0, %struct.mtk_aes_rec* %1, %struct.scatterlist* %2, %struct.scatterlist* %3, i64 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.mtk_cryp*, align 8
  %8 = alloca %struct.mtk_aes_rec*, align 8
  %9 = alloca %struct.scatterlist*, align 8
  %10 = alloca %struct.scatterlist*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.mtk_cryp* %0, %struct.mtk_cryp** %7, align 8
  store %struct.mtk_aes_rec* %1, %struct.mtk_aes_rec** %8, align 8
  store %struct.scatterlist* %2, %struct.scatterlist** %9, align 8
  store %struct.scatterlist* %3, %struct.scatterlist** %10, align 8
  store i64 %4, i64* %11, align 8
  %14 = load %struct.scatterlist*, %struct.scatterlist** %9, align 8
  %15 = load %struct.mtk_aes_rec*, %struct.mtk_aes_rec** %8, align 8
  %16 = getelementptr inbounds %struct.mtk_aes_rec, %struct.mtk_aes_rec* %15, i32 0, i32 4
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 2
  store %struct.scatterlist* %14, %struct.scatterlist** %17, align 8
  %18 = load %struct.scatterlist*, %struct.scatterlist** %10, align 8
  %19 = load %struct.mtk_aes_rec*, %struct.mtk_aes_rec** %8, align 8
  %20 = getelementptr inbounds %struct.mtk_aes_rec, %struct.mtk_aes_rec* %19, i32 0, i32 3
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 2
  store %struct.scatterlist* %18, %struct.scatterlist** %21, align 8
  %22 = load %struct.scatterlist*, %struct.scatterlist** %10, align 8
  %23 = load %struct.mtk_aes_rec*, %struct.mtk_aes_rec** %8, align 8
  %24 = getelementptr inbounds %struct.mtk_aes_rec, %struct.mtk_aes_rec* %23, i32 0, i32 5
  store %struct.scatterlist* %22, %struct.scatterlist** %24, align 8
  %25 = load %struct.scatterlist*, %struct.scatterlist** %9, align 8
  %26 = load i64, i64* %11, align 8
  %27 = load %struct.mtk_aes_rec*, %struct.mtk_aes_rec** %8, align 8
  %28 = getelementptr inbounds %struct.mtk_aes_rec, %struct.mtk_aes_rec* %27, i32 0, i32 4
  %29 = call i32 @mtk_aes_check_aligned(%struct.scatterlist* %25, i64 %26, %struct.TYPE_2__* %28)
  store i32 %29, i32* %12, align 4
  %30 = load %struct.scatterlist*, %struct.scatterlist** %9, align 8
  %31 = load %struct.scatterlist*, %struct.scatterlist** %10, align 8
  %32 = icmp eq %struct.scatterlist* %30, %31
  br i1 %32, label %33, label %35

33:                                               ; preds = %5
  %34 = load i32, i32* %12, align 4
  store i32 %34, i32* %13, align 4
  br label %41

35:                                               ; preds = %5
  %36 = load %struct.scatterlist*, %struct.scatterlist** %10, align 8
  %37 = load i64, i64* %11, align 8
  %38 = load %struct.mtk_aes_rec*, %struct.mtk_aes_rec** %8, align 8
  %39 = getelementptr inbounds %struct.mtk_aes_rec, %struct.mtk_aes_rec* %38, i32 0, i32 3
  %40 = call i32 @mtk_aes_check_aligned(%struct.scatterlist* %36, i64 %37, %struct.TYPE_2__* %39)
  store i32 %40, i32* %13, align 4
  br label %41

41:                                               ; preds = %35, %33
  %42 = load i32, i32* %12, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %47

44:                                               ; preds = %41
  %45 = load i32, i32* %13, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %110, label %47

47:                                               ; preds = %44, %41
  %48 = load %struct.mtk_aes_rec*, %struct.mtk_aes_rec** %8, align 8
  %49 = getelementptr inbounds %struct.mtk_aes_rec, %struct.mtk_aes_rec* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = load i64, i64* @AES_BUF_SIZE, align 8
  %52 = icmp sgt i64 %50, %51
  br i1 %52, label %53, label %59

53:                                               ; preds = %47
  %54 = load %struct.mtk_cryp*, %struct.mtk_cryp** %7, align 8
  %55 = load %struct.mtk_aes_rec*, %struct.mtk_aes_rec** %8, align 8
  %56 = load i32, i32* @ENOMEM, align 4
  %57 = sub nsw i32 0, %56
  %58 = call i32 @mtk_aes_complete(%struct.mtk_cryp* %54, %struct.mtk_aes_rec* %55, i32 %57)
  store i32 %58, i32* %6, align 4
  br label %118

59:                                               ; preds = %47
  %60 = load i32, i32* %12, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %82, label %62

62:                                               ; preds = %59
  %63 = load %struct.scatterlist*, %struct.scatterlist** %9, align 8
  %64 = load %struct.scatterlist*, %struct.scatterlist** %9, align 8
  %65 = call i32 @sg_nents(%struct.scatterlist* %64)
  %66 = load %struct.mtk_aes_rec*, %struct.mtk_aes_rec** %8, align 8
  %67 = getelementptr inbounds %struct.mtk_aes_rec, %struct.mtk_aes_rec* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 8
  %69 = load i64, i64* %11, align 8
  %70 = call i32 @sg_copy_to_buffer(%struct.scatterlist* %63, i32 %65, i32 %68, i64 %69)
  %71 = load %struct.mtk_aes_rec*, %struct.mtk_aes_rec** %8, align 8
  %72 = getelementptr inbounds %struct.mtk_aes_rec, %struct.mtk_aes_rec* %71, i32 0, i32 2
  %73 = load %struct.mtk_aes_rec*, %struct.mtk_aes_rec** %8, align 8
  %74 = getelementptr inbounds %struct.mtk_aes_rec, %struct.mtk_aes_rec* %73, i32 0, i32 4
  %75 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %74, i32 0, i32 2
  store %struct.scatterlist* %72, %struct.scatterlist** %75, align 8
  %76 = load %struct.mtk_aes_rec*, %struct.mtk_aes_rec** %8, align 8
  %77 = getelementptr inbounds %struct.mtk_aes_rec, %struct.mtk_aes_rec* %76, i32 0, i32 4
  %78 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %77, i32 0, i32 0
  store i32 1, i32* %78, align 8
  %79 = load %struct.mtk_aes_rec*, %struct.mtk_aes_rec** %8, align 8
  %80 = getelementptr inbounds %struct.mtk_aes_rec, %struct.mtk_aes_rec* %79, i32 0, i32 4
  %81 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %80, i32 0, i32 1
  store i64 0, i64* %81, align 8
  br label %82

82:                                               ; preds = %62, %59
  %83 = load i32, i32* %13, align 4
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %97, label %85

85:                                               ; preds = %82
  %86 = load %struct.mtk_aes_rec*, %struct.mtk_aes_rec** %8, align 8
  %87 = getelementptr inbounds %struct.mtk_aes_rec, %struct.mtk_aes_rec* %86, i32 0, i32 2
  %88 = load %struct.mtk_aes_rec*, %struct.mtk_aes_rec** %8, align 8
  %89 = getelementptr inbounds %struct.mtk_aes_rec, %struct.mtk_aes_rec* %88, i32 0, i32 3
  %90 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %89, i32 0, i32 2
  store %struct.scatterlist* %87, %struct.scatterlist** %90, align 8
  %91 = load %struct.mtk_aes_rec*, %struct.mtk_aes_rec** %8, align 8
  %92 = getelementptr inbounds %struct.mtk_aes_rec, %struct.mtk_aes_rec* %91, i32 0, i32 3
  %93 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %92, i32 0, i32 0
  store i32 1, i32* %93, align 8
  %94 = load %struct.mtk_aes_rec*, %struct.mtk_aes_rec** %8, align 8
  %95 = getelementptr inbounds %struct.mtk_aes_rec, %struct.mtk_aes_rec* %94, i32 0, i32 3
  %96 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %95, i32 0, i32 1
  store i64 0, i64* %96, align 8
  br label %97

97:                                               ; preds = %85, %82
  %98 = load %struct.mtk_aes_rec*, %struct.mtk_aes_rec** %8, align 8
  %99 = getelementptr inbounds %struct.mtk_aes_rec, %struct.mtk_aes_rec* %98, i32 0, i32 2
  %100 = call i32 @sg_init_table(%struct.scatterlist* %99, i32 1)
  %101 = load %struct.mtk_aes_rec*, %struct.mtk_aes_rec** %8, align 8
  %102 = getelementptr inbounds %struct.mtk_aes_rec, %struct.mtk_aes_rec* %101, i32 0, i32 2
  %103 = load %struct.mtk_aes_rec*, %struct.mtk_aes_rec** %8, align 8
  %104 = getelementptr inbounds %struct.mtk_aes_rec, %struct.mtk_aes_rec* %103, i32 0, i32 1
  %105 = load i32, i32* %104, align 8
  %106 = load %struct.mtk_aes_rec*, %struct.mtk_aes_rec** %8, align 8
  %107 = getelementptr inbounds %struct.mtk_aes_rec, %struct.mtk_aes_rec* %106, i32 0, i32 0
  %108 = load i64, i64* %107, align 8
  %109 = call i32 @sg_set_buf(%struct.scatterlist* %102, i32 %105, i64 %108)
  br label %110

110:                                              ; preds = %97, %44
  %111 = load %struct.mtk_cryp*, %struct.mtk_cryp** %7, align 8
  %112 = load %struct.mtk_aes_rec*, %struct.mtk_aes_rec** %8, align 8
  %113 = load i64, i64* %11, align 8
  %114 = call i32 @mtk_aes_gcm_info_init(%struct.mtk_cryp* %111, %struct.mtk_aes_rec* %112, i64 %113)
  %115 = load %struct.mtk_cryp*, %struct.mtk_cryp** %7, align 8
  %116 = load %struct.mtk_aes_rec*, %struct.mtk_aes_rec** %8, align 8
  %117 = call i32 @mtk_aes_map(%struct.mtk_cryp* %115, %struct.mtk_aes_rec* %116)
  store i32 %117, i32* %6, align 4
  br label %118

118:                                              ; preds = %110, %53
  %119 = load i32, i32* %6, align 4
  ret i32 %119
}

declare dso_local i32 @mtk_aes_check_aligned(%struct.scatterlist*, i64, %struct.TYPE_2__*) #1

declare dso_local i32 @mtk_aes_complete(%struct.mtk_cryp*, %struct.mtk_aes_rec*, i32) #1

declare dso_local i32 @sg_copy_to_buffer(%struct.scatterlist*, i32, i32, i64) #1

declare dso_local i32 @sg_nents(%struct.scatterlist*) #1

declare dso_local i32 @sg_init_table(%struct.scatterlist*, i32) #1

declare dso_local i32 @sg_set_buf(%struct.scatterlist*, i32, i64) #1

declare dso_local i32 @mtk_aes_gcm_info_init(%struct.mtk_cryp*, %struct.mtk_aes_rec*, i64) #1

declare dso_local i32 @mtk_aes_map(%struct.mtk_cryp*, %struct.mtk_aes_rec*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
