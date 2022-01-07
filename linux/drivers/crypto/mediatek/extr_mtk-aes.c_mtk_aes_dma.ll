; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/mediatek/extr_mtk-aes.c_mtk_aes_dma.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/mediatek/extr_mtk-aes.c_mtk_aes_dma.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mtk_cryp = type { i32 }
%struct.mtk_aes_rec = type { i64, i32, %struct.scatterlist, %struct.TYPE_2__, %struct.TYPE_2__, %struct.scatterlist* }
%struct.scatterlist = type { i32 }
%struct.TYPE_2__ = type { i32, i64, %struct.scatterlist* }

@AES_BUF_SIZE = common dso_local global i64 0, align 8
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mtk_cryp*, %struct.mtk_aes_rec*, %struct.scatterlist*, %struct.scatterlist*, i64)* @mtk_aes_dma to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mtk_aes_dma(%struct.mtk_cryp* %0, %struct.mtk_aes_rec* %1, %struct.scatterlist* %2, %struct.scatterlist* %3, i64 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.mtk_cryp*, align 8
  %8 = alloca %struct.mtk_aes_rec*, align 8
  %9 = alloca %struct.scatterlist*, align 8
  %10 = alloca %struct.scatterlist*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.mtk_cryp* %0, %struct.mtk_cryp** %7, align 8
  store %struct.mtk_aes_rec* %1, %struct.mtk_aes_rec** %8, align 8
  store %struct.scatterlist* %2, %struct.scatterlist** %9, align 8
  store %struct.scatterlist* %3, %struct.scatterlist** %10, align 8
  store i64 %4, i64* %11, align 8
  store i64 0, i64* %12, align 8
  %15 = load i64, i64* %11, align 8
  %16 = load %struct.mtk_aes_rec*, %struct.mtk_aes_rec** %8, align 8
  %17 = getelementptr inbounds %struct.mtk_aes_rec, %struct.mtk_aes_rec* %16, i32 0, i32 0
  store i64 %15, i64* %17, align 8
  %18 = load %struct.scatterlist*, %struct.scatterlist** %9, align 8
  %19 = load %struct.mtk_aes_rec*, %struct.mtk_aes_rec** %8, align 8
  %20 = getelementptr inbounds %struct.mtk_aes_rec, %struct.mtk_aes_rec* %19, i32 0, i32 4
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 2
  store %struct.scatterlist* %18, %struct.scatterlist** %21, align 8
  %22 = load %struct.scatterlist*, %struct.scatterlist** %10, align 8
  %23 = load %struct.mtk_aes_rec*, %struct.mtk_aes_rec** %8, align 8
  %24 = getelementptr inbounds %struct.mtk_aes_rec, %struct.mtk_aes_rec* %23, i32 0, i32 3
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 2
  store %struct.scatterlist* %22, %struct.scatterlist** %25, align 8
  %26 = load %struct.scatterlist*, %struct.scatterlist** %10, align 8
  %27 = load %struct.mtk_aes_rec*, %struct.mtk_aes_rec** %8, align 8
  %28 = getelementptr inbounds %struct.mtk_aes_rec, %struct.mtk_aes_rec* %27, i32 0, i32 5
  store %struct.scatterlist* %26, %struct.scatterlist** %28, align 8
  %29 = load %struct.scatterlist*, %struct.scatterlist** %9, align 8
  %30 = load i64, i64* %11, align 8
  %31 = load %struct.mtk_aes_rec*, %struct.mtk_aes_rec** %8, align 8
  %32 = getelementptr inbounds %struct.mtk_aes_rec, %struct.mtk_aes_rec* %31, i32 0, i32 4
  %33 = call i32 @mtk_aes_check_aligned(%struct.scatterlist* %29, i64 %30, %struct.TYPE_2__* %32)
  store i32 %33, i32* %13, align 4
  %34 = load %struct.scatterlist*, %struct.scatterlist** %9, align 8
  %35 = load %struct.scatterlist*, %struct.scatterlist** %10, align 8
  %36 = icmp eq %struct.scatterlist* %34, %35
  br i1 %36, label %37, label %39

37:                                               ; preds = %5
  %38 = load i32, i32* %13, align 4
  store i32 %38, i32* %14, align 4
  br label %45

39:                                               ; preds = %5
  %40 = load %struct.scatterlist*, %struct.scatterlist** %10, align 8
  %41 = load i64, i64* %11, align 8
  %42 = load %struct.mtk_aes_rec*, %struct.mtk_aes_rec** %8, align 8
  %43 = getelementptr inbounds %struct.mtk_aes_rec, %struct.mtk_aes_rec* %42, i32 0, i32 3
  %44 = call i32 @mtk_aes_check_aligned(%struct.scatterlist* %40, i64 %41, %struct.TYPE_2__* %43)
  store i32 %44, i32* %14, align 4
  br label %45

45:                                               ; preds = %39, %37
  %46 = load i32, i32* %13, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %51

48:                                               ; preds = %45
  %49 = load i32, i32* %14, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %116, label %51

51:                                               ; preds = %48, %45
  %52 = load i64, i64* %11, align 8
  %53 = call i64 @mtk_aes_padlen(i64 %52)
  store i64 %53, i64* %12, align 8
  %54 = load i64, i64* %11, align 8
  %55 = load i64, i64* %12, align 8
  %56 = add i64 %54, %55
  %57 = load i64, i64* @AES_BUF_SIZE, align 8
  %58 = icmp ugt i64 %56, %57
  br i1 %58, label %59, label %65

59:                                               ; preds = %51
  %60 = load %struct.mtk_cryp*, %struct.mtk_cryp** %7, align 8
  %61 = load %struct.mtk_aes_rec*, %struct.mtk_aes_rec** %8, align 8
  %62 = load i32, i32* @ENOMEM, align 4
  %63 = sub nsw i32 0, %62
  %64 = call i32 @mtk_aes_complete(%struct.mtk_cryp* %60, %struct.mtk_aes_rec* %61, i32 %63)
  store i32 %64, i32* %6, align 4
  br label %126

65:                                               ; preds = %51
  %66 = load i32, i32* %13, align 4
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %88, label %68

68:                                               ; preds = %65
  %69 = load %struct.scatterlist*, %struct.scatterlist** %9, align 8
  %70 = load %struct.scatterlist*, %struct.scatterlist** %9, align 8
  %71 = call i32 @sg_nents(%struct.scatterlist* %70)
  %72 = load %struct.mtk_aes_rec*, %struct.mtk_aes_rec** %8, align 8
  %73 = getelementptr inbounds %struct.mtk_aes_rec, %struct.mtk_aes_rec* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 8
  %75 = load i64, i64* %11, align 8
  %76 = call i32 @sg_copy_to_buffer(%struct.scatterlist* %69, i32 %71, i32 %74, i64 %75)
  %77 = load %struct.mtk_aes_rec*, %struct.mtk_aes_rec** %8, align 8
  %78 = getelementptr inbounds %struct.mtk_aes_rec, %struct.mtk_aes_rec* %77, i32 0, i32 2
  %79 = load %struct.mtk_aes_rec*, %struct.mtk_aes_rec** %8, align 8
  %80 = getelementptr inbounds %struct.mtk_aes_rec, %struct.mtk_aes_rec* %79, i32 0, i32 4
  %81 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %80, i32 0, i32 2
  store %struct.scatterlist* %78, %struct.scatterlist** %81, align 8
  %82 = load %struct.mtk_aes_rec*, %struct.mtk_aes_rec** %8, align 8
  %83 = getelementptr inbounds %struct.mtk_aes_rec, %struct.mtk_aes_rec* %82, i32 0, i32 4
  %84 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %83, i32 0, i32 0
  store i32 1, i32* %84, align 8
  %85 = load %struct.mtk_aes_rec*, %struct.mtk_aes_rec** %8, align 8
  %86 = getelementptr inbounds %struct.mtk_aes_rec, %struct.mtk_aes_rec* %85, i32 0, i32 4
  %87 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %86, i32 0, i32 1
  store i64 0, i64* %87, align 8
  br label %88

88:                                               ; preds = %68, %65
  %89 = load i32, i32* %14, align 4
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %103, label %91

91:                                               ; preds = %88
  %92 = load %struct.mtk_aes_rec*, %struct.mtk_aes_rec** %8, align 8
  %93 = getelementptr inbounds %struct.mtk_aes_rec, %struct.mtk_aes_rec* %92, i32 0, i32 2
  %94 = load %struct.mtk_aes_rec*, %struct.mtk_aes_rec** %8, align 8
  %95 = getelementptr inbounds %struct.mtk_aes_rec, %struct.mtk_aes_rec* %94, i32 0, i32 3
  %96 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %95, i32 0, i32 2
  store %struct.scatterlist* %93, %struct.scatterlist** %96, align 8
  %97 = load %struct.mtk_aes_rec*, %struct.mtk_aes_rec** %8, align 8
  %98 = getelementptr inbounds %struct.mtk_aes_rec, %struct.mtk_aes_rec* %97, i32 0, i32 3
  %99 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %98, i32 0, i32 0
  store i32 1, i32* %99, align 8
  %100 = load %struct.mtk_aes_rec*, %struct.mtk_aes_rec** %8, align 8
  %101 = getelementptr inbounds %struct.mtk_aes_rec, %struct.mtk_aes_rec* %100, i32 0, i32 3
  %102 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %101, i32 0, i32 1
  store i64 0, i64* %102, align 8
  br label %103

103:                                              ; preds = %91, %88
  %104 = load %struct.mtk_aes_rec*, %struct.mtk_aes_rec** %8, align 8
  %105 = getelementptr inbounds %struct.mtk_aes_rec, %struct.mtk_aes_rec* %104, i32 0, i32 2
  %106 = call i32 @sg_init_table(%struct.scatterlist* %105, i32 1)
  %107 = load %struct.mtk_aes_rec*, %struct.mtk_aes_rec** %8, align 8
  %108 = getelementptr inbounds %struct.mtk_aes_rec, %struct.mtk_aes_rec* %107, i32 0, i32 2
  %109 = load %struct.mtk_aes_rec*, %struct.mtk_aes_rec** %8, align 8
  %110 = getelementptr inbounds %struct.mtk_aes_rec, %struct.mtk_aes_rec* %109, i32 0, i32 1
  %111 = load i32, i32* %110, align 8
  %112 = load i64, i64* %11, align 8
  %113 = load i64, i64* %12, align 8
  %114 = add i64 %112, %113
  %115 = call i32 @sg_set_buf(%struct.scatterlist* %108, i32 %111, i64 %114)
  br label %116

116:                                              ; preds = %103, %48
  %117 = load %struct.mtk_cryp*, %struct.mtk_cryp** %7, align 8
  %118 = load %struct.mtk_aes_rec*, %struct.mtk_aes_rec** %8, align 8
  %119 = load i64, i64* %11, align 8
  %120 = load i64, i64* %12, align 8
  %121 = add i64 %119, %120
  %122 = call i32 @mtk_aes_info_init(%struct.mtk_cryp* %117, %struct.mtk_aes_rec* %118, i64 %121)
  %123 = load %struct.mtk_cryp*, %struct.mtk_cryp** %7, align 8
  %124 = load %struct.mtk_aes_rec*, %struct.mtk_aes_rec** %8, align 8
  %125 = call i32 @mtk_aes_map(%struct.mtk_cryp* %123, %struct.mtk_aes_rec* %124)
  store i32 %125, i32* %6, align 4
  br label %126

126:                                              ; preds = %116, %59
  %127 = load i32, i32* %6, align 4
  ret i32 %127
}

declare dso_local i32 @mtk_aes_check_aligned(%struct.scatterlist*, i64, %struct.TYPE_2__*) #1

declare dso_local i64 @mtk_aes_padlen(i64) #1

declare dso_local i32 @mtk_aes_complete(%struct.mtk_cryp*, %struct.mtk_aes_rec*, i32) #1

declare dso_local i32 @sg_copy_to_buffer(%struct.scatterlist*, i32, i32, i64) #1

declare dso_local i32 @sg_nents(%struct.scatterlist*) #1

declare dso_local i32 @sg_init_table(%struct.scatterlist*, i32) #1

declare dso_local i32 @sg_set_buf(%struct.scatterlist*, i32, i64) #1

declare dso_local i32 @mtk_aes_info_init(%struct.mtk_cryp*, %struct.mtk_aes_rec*, i64) #1

declare dso_local i32 @mtk_aes_map(%struct.mtk_cryp*, %struct.mtk_aes_rec*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
