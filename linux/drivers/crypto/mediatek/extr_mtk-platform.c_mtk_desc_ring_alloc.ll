; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/mediatek/extr_mtk-platform.c_mtk_desc_ring_alloc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/mediatek/extr_mtk-platform.c_mtk_desc_ring_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mtk_cryp = type { i32, %struct.mtk_ring** }
%struct.mtk_ring = type { i32, i8*, i32, i8*, i8*, i8* }

@ENOMEM = common dso_local global i32 0, align 4
@MTK_RING_MAX = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@MTK_DESC_RING_SZ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mtk_cryp*)* @mtk_desc_ring_alloc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mtk_desc_ring_alloc(%struct.mtk_cryp* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.mtk_cryp*, align 8
  %4 = alloca %struct.mtk_ring**, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.mtk_cryp* %0, %struct.mtk_cryp** %3, align 8
  %7 = load %struct.mtk_cryp*, %struct.mtk_cryp** %3, align 8
  %8 = getelementptr inbounds %struct.mtk_cryp, %struct.mtk_cryp* %7, i32 0, i32 1
  %9 = load %struct.mtk_ring**, %struct.mtk_ring*** %8, align 8
  store %struct.mtk_ring** %9, %struct.mtk_ring*** %4, align 8
  %10 = load i32, i32* @ENOMEM, align 4
  store i32 %10, i32* %6, align 4
  store i32 0, i32* %5, align 4
  br label %11

11:                                               ; preds = %112, %1
  %12 = load i32, i32* %5, align 4
  %13 = load i32, i32* @MTK_RING_MAX, align 4
  %14 = icmp slt i32 %12, %13
  br i1 %14, label %15, label %115

15:                                               ; preds = %11
  %16 = load i32, i32* @GFP_KERNEL, align 4
  %17 = call %struct.mtk_ring* @kzalloc(i32 48, i32 %16)
  %18 = load %struct.mtk_ring**, %struct.mtk_ring*** %4, align 8
  %19 = load i32, i32* %5, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds %struct.mtk_ring*, %struct.mtk_ring** %18, i64 %20
  store %struct.mtk_ring* %17, %struct.mtk_ring** %21, align 8
  %22 = load %struct.mtk_ring**, %struct.mtk_ring*** %4, align 8
  %23 = load i32, i32* %5, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds %struct.mtk_ring*, %struct.mtk_ring** %22, i64 %24
  %26 = load %struct.mtk_ring*, %struct.mtk_ring** %25, align 8
  %27 = icmp ne %struct.mtk_ring* %26, null
  br i1 %27, label %29, label %28

28:                                               ; preds = %15
  br label %116

29:                                               ; preds = %15
  %30 = load %struct.mtk_cryp*, %struct.mtk_cryp** %3, align 8
  %31 = getelementptr inbounds %struct.mtk_cryp, %struct.mtk_cryp* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = load i32, i32* @MTK_DESC_RING_SZ, align 4
  %34 = load %struct.mtk_ring**, %struct.mtk_ring*** %4, align 8
  %35 = load i32, i32* %5, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds %struct.mtk_ring*, %struct.mtk_ring** %34, i64 %36
  %38 = load %struct.mtk_ring*, %struct.mtk_ring** %37, align 8
  %39 = getelementptr inbounds %struct.mtk_ring, %struct.mtk_ring* %38, i32 0, i32 0
  %40 = load i32, i32* @GFP_KERNEL, align 4
  %41 = call i8* @dma_alloc_coherent(i32 %32, i32 %33, i32* %39, i32 %40)
  %42 = load %struct.mtk_ring**, %struct.mtk_ring*** %4, align 8
  %43 = load i32, i32* %5, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds %struct.mtk_ring*, %struct.mtk_ring** %42, i64 %44
  %46 = load %struct.mtk_ring*, %struct.mtk_ring** %45, align 8
  %47 = getelementptr inbounds %struct.mtk_ring, %struct.mtk_ring* %46, i32 0, i32 1
  store i8* %41, i8** %47, align 8
  %48 = load %struct.mtk_ring**, %struct.mtk_ring*** %4, align 8
  %49 = load i32, i32* %5, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds %struct.mtk_ring*, %struct.mtk_ring** %48, i64 %50
  %52 = load %struct.mtk_ring*, %struct.mtk_ring** %51, align 8
  %53 = getelementptr inbounds %struct.mtk_ring, %struct.mtk_ring* %52, i32 0, i32 1
  %54 = load i8*, i8** %53, align 8
  %55 = icmp ne i8* %54, null
  br i1 %55, label %57, label %56

56:                                               ; preds = %29
  br label %116

57:                                               ; preds = %29
  %58 = load %struct.mtk_cryp*, %struct.mtk_cryp** %3, align 8
  %59 = getelementptr inbounds %struct.mtk_cryp, %struct.mtk_cryp* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = load i32, i32* @MTK_DESC_RING_SZ, align 4
  %62 = load %struct.mtk_ring**, %struct.mtk_ring*** %4, align 8
  %63 = load i32, i32* %5, align 4
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds %struct.mtk_ring*, %struct.mtk_ring** %62, i64 %64
  %66 = load %struct.mtk_ring*, %struct.mtk_ring** %65, align 8
  %67 = getelementptr inbounds %struct.mtk_ring, %struct.mtk_ring* %66, i32 0, i32 2
  %68 = load i32, i32* @GFP_KERNEL, align 4
  %69 = call i8* @dma_alloc_coherent(i32 %60, i32 %61, i32* %67, i32 %68)
  %70 = load %struct.mtk_ring**, %struct.mtk_ring*** %4, align 8
  %71 = load i32, i32* %5, align 4
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds %struct.mtk_ring*, %struct.mtk_ring** %70, i64 %72
  %74 = load %struct.mtk_ring*, %struct.mtk_ring** %73, align 8
  %75 = getelementptr inbounds %struct.mtk_ring, %struct.mtk_ring* %74, i32 0, i32 3
  store i8* %69, i8** %75, align 8
  %76 = load %struct.mtk_ring**, %struct.mtk_ring*** %4, align 8
  %77 = load i32, i32* %5, align 4
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds %struct.mtk_ring*, %struct.mtk_ring** %76, i64 %78
  %80 = load %struct.mtk_ring*, %struct.mtk_ring** %79, align 8
  %81 = getelementptr inbounds %struct.mtk_ring, %struct.mtk_ring* %80, i32 0, i32 3
  %82 = load i8*, i8** %81, align 8
  %83 = icmp ne i8* %82, null
  br i1 %83, label %85, label %84

84:                                               ; preds = %57
  br label %116

85:                                               ; preds = %57
  %86 = load %struct.mtk_ring**, %struct.mtk_ring*** %4, align 8
  %87 = load i32, i32* %5, align 4
  %88 = sext i32 %87 to i64
  %89 = getelementptr inbounds %struct.mtk_ring*, %struct.mtk_ring** %86, i64 %88
  %90 = load %struct.mtk_ring*, %struct.mtk_ring** %89, align 8
  %91 = getelementptr inbounds %struct.mtk_ring, %struct.mtk_ring* %90, i32 0, i32 1
  %92 = load i8*, i8** %91, align 8
  %93 = load %struct.mtk_ring**, %struct.mtk_ring*** %4, align 8
  %94 = load i32, i32* %5, align 4
  %95 = sext i32 %94 to i64
  %96 = getelementptr inbounds %struct.mtk_ring*, %struct.mtk_ring** %93, i64 %95
  %97 = load %struct.mtk_ring*, %struct.mtk_ring** %96, align 8
  %98 = getelementptr inbounds %struct.mtk_ring, %struct.mtk_ring* %97, i32 0, i32 5
  store i8* %92, i8** %98, align 8
  %99 = load %struct.mtk_ring**, %struct.mtk_ring*** %4, align 8
  %100 = load i32, i32* %5, align 4
  %101 = sext i32 %100 to i64
  %102 = getelementptr inbounds %struct.mtk_ring*, %struct.mtk_ring** %99, i64 %101
  %103 = load %struct.mtk_ring*, %struct.mtk_ring** %102, align 8
  %104 = getelementptr inbounds %struct.mtk_ring, %struct.mtk_ring* %103, i32 0, i32 3
  %105 = load i8*, i8** %104, align 8
  %106 = load %struct.mtk_ring**, %struct.mtk_ring*** %4, align 8
  %107 = load i32, i32* %5, align 4
  %108 = sext i32 %107 to i64
  %109 = getelementptr inbounds %struct.mtk_ring*, %struct.mtk_ring** %106, i64 %108
  %110 = load %struct.mtk_ring*, %struct.mtk_ring** %109, align 8
  %111 = getelementptr inbounds %struct.mtk_ring, %struct.mtk_ring* %110, i32 0, i32 4
  store i8* %105, i8** %111, align 8
  br label %112

112:                                              ; preds = %85
  %113 = load i32, i32* %5, align 4
  %114 = add nsw i32 %113, 1
  store i32 %114, i32* %5, align 4
  br label %11

115:                                              ; preds = %11
  store i32 0, i32* %2, align 4
  br label %168

116:                                              ; preds = %84, %56, %28
  br label %117

117:                                              ; preds = %121, %116
  %118 = load i32, i32* %5, align 4
  %119 = add nsw i32 %118, -1
  store i32 %119, i32* %5, align 4
  %120 = icmp ne i32 %118, 0
  br i1 %120, label %121, label %166

121:                                              ; preds = %117
  %122 = load %struct.mtk_cryp*, %struct.mtk_cryp** %3, align 8
  %123 = getelementptr inbounds %struct.mtk_cryp, %struct.mtk_cryp* %122, i32 0, i32 0
  %124 = load i32, i32* %123, align 8
  %125 = load i32, i32* @MTK_DESC_RING_SZ, align 4
  %126 = load %struct.mtk_ring**, %struct.mtk_ring*** %4, align 8
  %127 = load i32, i32* %5, align 4
  %128 = sext i32 %127 to i64
  %129 = getelementptr inbounds %struct.mtk_ring*, %struct.mtk_ring** %126, i64 %128
  %130 = load %struct.mtk_ring*, %struct.mtk_ring** %129, align 8
  %131 = getelementptr inbounds %struct.mtk_ring, %struct.mtk_ring* %130, i32 0, i32 3
  %132 = load i8*, i8** %131, align 8
  %133 = load %struct.mtk_ring**, %struct.mtk_ring*** %4, align 8
  %134 = load i32, i32* %5, align 4
  %135 = sext i32 %134 to i64
  %136 = getelementptr inbounds %struct.mtk_ring*, %struct.mtk_ring** %133, i64 %135
  %137 = load %struct.mtk_ring*, %struct.mtk_ring** %136, align 8
  %138 = getelementptr inbounds %struct.mtk_ring, %struct.mtk_ring* %137, i32 0, i32 2
  %139 = load i32, i32* %138, align 8
  %140 = call i32 @dma_free_coherent(i32 %124, i32 %125, i8* %132, i32 %139)
  %141 = load %struct.mtk_cryp*, %struct.mtk_cryp** %3, align 8
  %142 = getelementptr inbounds %struct.mtk_cryp, %struct.mtk_cryp* %141, i32 0, i32 0
  %143 = load i32, i32* %142, align 8
  %144 = load i32, i32* @MTK_DESC_RING_SZ, align 4
  %145 = load %struct.mtk_ring**, %struct.mtk_ring*** %4, align 8
  %146 = load i32, i32* %5, align 4
  %147 = sext i32 %146 to i64
  %148 = getelementptr inbounds %struct.mtk_ring*, %struct.mtk_ring** %145, i64 %147
  %149 = load %struct.mtk_ring*, %struct.mtk_ring** %148, align 8
  %150 = getelementptr inbounds %struct.mtk_ring, %struct.mtk_ring* %149, i32 0, i32 1
  %151 = load i8*, i8** %150, align 8
  %152 = load %struct.mtk_ring**, %struct.mtk_ring*** %4, align 8
  %153 = load i32, i32* %5, align 4
  %154 = sext i32 %153 to i64
  %155 = getelementptr inbounds %struct.mtk_ring*, %struct.mtk_ring** %152, i64 %154
  %156 = load %struct.mtk_ring*, %struct.mtk_ring** %155, align 8
  %157 = getelementptr inbounds %struct.mtk_ring, %struct.mtk_ring* %156, i32 0, i32 0
  %158 = load i32, i32* %157, align 8
  %159 = call i32 @dma_free_coherent(i32 %143, i32 %144, i8* %151, i32 %158)
  %160 = load %struct.mtk_ring**, %struct.mtk_ring*** %4, align 8
  %161 = load i32, i32* %5, align 4
  %162 = sext i32 %161 to i64
  %163 = getelementptr inbounds %struct.mtk_ring*, %struct.mtk_ring** %160, i64 %162
  %164 = load %struct.mtk_ring*, %struct.mtk_ring** %163, align 8
  %165 = call i32 @kfree(%struct.mtk_ring* %164)
  br label %117

166:                                              ; preds = %117
  %167 = load i32, i32* %6, align 4
  store i32 %167, i32* %2, align 4
  br label %168

168:                                              ; preds = %166, %115
  %169 = load i32, i32* %2, align 4
  ret i32 %169
}

declare dso_local %struct.mtk_ring* @kzalloc(i32, i32) #1

declare dso_local i8* @dma_alloc_coherent(i32, i32, i32*, i32) #1

declare dso_local i32 @dma_free_coherent(i32, i32, i8*, i32) #1

declare dso_local i32 @kfree(%struct.mtk_ring*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
