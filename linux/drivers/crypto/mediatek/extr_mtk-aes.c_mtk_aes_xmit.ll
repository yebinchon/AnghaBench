; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/mediatek/extr_mtk-aes.c_mtk_aes_xmit.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/mediatek/extr_mtk-aes.c_mtk_aes_xmit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mtk_cryp = type { %struct.mtk_ring** }
%struct.mtk_ring = type { %struct.mtk_desc*, %struct.mtk_desc*, %struct.mtk_desc*, %struct.mtk_desc*, %struct.mtk_desc* }
%struct.mtk_desc = type { i32, i8*, i8*, i32, i8* }
%struct.mtk_aes_rec = type { i64, i32, %struct.TYPE_6__*, %struct.TYPE_5__, %struct.TYPE_4__ }
%struct.TYPE_6__ = type { i32, i32, i32, i32 }
%struct.TYPE_5__ = type { i32, %struct.scatterlist* }
%struct.scatterlist = type { i32 }
%struct.TYPE_4__ = type { i32, %struct.scatterlist* }

@MTK_DESC_FIRST = common dso_local global i32 0, align 4
@MTK_DESC_NUM = common dso_local global i32 0, align 4
@MTK_DESC_LAST = common dso_local global i32 0, align 4
@AES_FLAGS_GCM = common dso_local global i32 0, align 4
@AES_BLOCK_SIZE = common dso_local global i64 0, align 8
@EINPROGRESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mtk_cryp*, %struct.mtk_aes_rec*)* @mtk_aes_xmit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mtk_aes_xmit(%struct.mtk_cryp* %0, %struct.mtk_aes_rec* %1) #0 {
  %3 = alloca %struct.mtk_cryp*, align 8
  %4 = alloca %struct.mtk_aes_rec*, align 8
  %5 = alloca %struct.mtk_ring*, align 8
  %6 = alloca %struct.mtk_desc*, align 8
  %7 = alloca %struct.mtk_desc*, align 8
  %8 = alloca %struct.scatterlist*, align 8
  %9 = alloca %struct.scatterlist*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.mtk_cryp* %0, %struct.mtk_cryp** %3, align 8
  store %struct.mtk_aes_rec* %1, %struct.mtk_aes_rec** %4, align 8
  %13 = load %struct.mtk_cryp*, %struct.mtk_cryp** %3, align 8
  %14 = getelementptr inbounds %struct.mtk_cryp, %struct.mtk_cryp* %13, i32 0, i32 0
  %15 = load %struct.mtk_ring**, %struct.mtk_ring*** %14, align 8
  %16 = load %struct.mtk_aes_rec*, %struct.mtk_aes_rec** %4, align 8
  %17 = getelementptr inbounds %struct.mtk_aes_rec, %struct.mtk_aes_rec* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = getelementptr inbounds %struct.mtk_ring*, %struct.mtk_ring** %15, i64 %18
  %20 = load %struct.mtk_ring*, %struct.mtk_ring** %19, align 8
  store %struct.mtk_ring* %20, %struct.mtk_ring** %5, align 8
  store %struct.mtk_desc* null, %struct.mtk_desc** %6, align 8
  store %struct.mtk_desc* null, %struct.mtk_desc** %7, align 8
  %21 = load %struct.mtk_aes_rec*, %struct.mtk_aes_rec** %4, align 8
  %22 = getelementptr inbounds %struct.mtk_aes_rec, %struct.mtk_aes_rec* %21, i32 0, i32 4
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 1
  %24 = load %struct.scatterlist*, %struct.scatterlist** %23, align 8
  store %struct.scatterlist* %24, %struct.scatterlist** %8, align 8
  %25 = load %struct.mtk_aes_rec*, %struct.mtk_aes_rec** %4, align 8
  %26 = getelementptr inbounds %struct.mtk_aes_rec, %struct.mtk_aes_rec* %25, i32 0, i32 3
  %27 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %26, i32 0, i32 1
  %28 = load %struct.scatterlist*, %struct.scatterlist** %27, align 8
  store %struct.scatterlist* %28, %struct.scatterlist** %9, align 8
  %29 = load %struct.mtk_aes_rec*, %struct.mtk_aes_rec** %4, align 8
  %30 = getelementptr inbounds %struct.mtk_aes_rec, %struct.mtk_aes_rec* %29, i32 0, i32 4
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  store i32 %32, i32* %10, align 4
  %33 = load %struct.mtk_aes_rec*, %struct.mtk_aes_rec** %4, align 8
  %34 = getelementptr inbounds %struct.mtk_aes_rec, %struct.mtk_aes_rec* %33, i32 0, i32 3
  %35 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  store i32 %36, i32* %11, align 4
  store i32 0, i32* %12, align 4
  br label %37

37:                                               ; preds = %114, %2
  %38 = load i32, i32* %12, align 4
  %39 = load i32, i32* %10, align 4
  %40 = icmp slt i32 %38, %39
  br i1 %40, label %41, label %119

41:                                               ; preds = %37
  %42 = load %struct.mtk_ring*, %struct.mtk_ring** %5, align 8
  %43 = getelementptr inbounds %struct.mtk_ring, %struct.mtk_ring* %42, i32 0, i32 4
  %44 = load %struct.mtk_desc*, %struct.mtk_desc** %43, align 8
  store %struct.mtk_desc* %44, %struct.mtk_desc** %6, align 8
  %45 = load %struct.scatterlist*, %struct.scatterlist** %8, align 8
  %46 = getelementptr inbounds %struct.scatterlist, %struct.scatterlist* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = call i8* @MTK_DESC_BUF_LEN(i32 %47)
  %49 = ptrtoint i8* %48 to i32
  %50 = load %struct.mtk_desc*, %struct.mtk_desc** %6, align 8
  %51 = getelementptr inbounds %struct.mtk_desc, %struct.mtk_desc* %50, i32 0, i32 0
  store i32 %49, i32* %51, align 8
  %52 = load %struct.scatterlist*, %struct.scatterlist** %8, align 8
  %53 = call i32 @sg_dma_address(%struct.scatterlist* %52)
  %54 = call i8* @cpu_to_le32(i32 %53)
  %55 = load %struct.mtk_desc*, %struct.mtk_desc** %6, align 8
  %56 = getelementptr inbounds %struct.mtk_desc, %struct.mtk_desc* %55, i32 0, i32 1
  store i8* %54, i8** %56, align 8
  %57 = load i32, i32* %12, align 4
  %58 = icmp eq i32 %57, 0
  br i1 %58, label %59, label %95

59:                                               ; preds = %41
  %60 = load i32, i32* @MTK_DESC_FIRST, align 4
  %61 = load %struct.mtk_aes_rec*, %struct.mtk_aes_rec** %4, align 8
  %62 = getelementptr inbounds %struct.mtk_aes_rec, %struct.mtk_aes_rec* %61, i32 0, i32 2
  %63 = load %struct.TYPE_6__*, %struct.TYPE_6__** %62, align 8
  %64 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %63, i32 0, i32 3
  %65 = load i32, i32* %64, align 4
  %66 = call i32 @MTK_DESC_CT_LEN(i32 %65)
  %67 = or i32 %60, %66
  %68 = load %struct.mtk_desc*, %struct.mtk_desc** %6, align 8
  %69 = getelementptr inbounds %struct.mtk_desc, %struct.mtk_desc* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 8
  %71 = or i32 %70, %67
  store i32 %71, i32* %69, align 8
  %72 = load %struct.mtk_aes_rec*, %struct.mtk_aes_rec** %4, align 8
  %73 = getelementptr inbounds %struct.mtk_aes_rec, %struct.mtk_aes_rec* %72, i32 0, i32 2
  %74 = load %struct.TYPE_6__*, %struct.TYPE_6__** %73, align 8
  %75 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %74, i32 0, i32 2
  %76 = load i32, i32* %75, align 4
  %77 = call i8* @cpu_to_le32(i32 %76)
  %78 = load %struct.mtk_desc*, %struct.mtk_desc** %6, align 8
  %79 = getelementptr inbounds %struct.mtk_desc, %struct.mtk_desc* %78, i32 0, i32 4
  store i8* %77, i8** %79, align 8
  %80 = load %struct.mtk_aes_rec*, %struct.mtk_aes_rec** %4, align 8
  %81 = getelementptr inbounds %struct.mtk_aes_rec, %struct.mtk_aes_rec* %80, i32 0, i32 2
  %82 = load %struct.TYPE_6__*, %struct.TYPE_6__** %81, align 8
  %83 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %82, i32 0, i32 1
  %84 = load i32, i32* %83, align 4
  %85 = load %struct.mtk_desc*, %struct.mtk_desc** %6, align 8
  %86 = getelementptr inbounds %struct.mtk_desc, %struct.mtk_desc* %85, i32 0, i32 3
  store i32 %84, i32* %86, align 8
  %87 = load %struct.mtk_aes_rec*, %struct.mtk_aes_rec** %4, align 8
  %88 = getelementptr inbounds %struct.mtk_aes_rec, %struct.mtk_aes_rec* %87, i32 0, i32 2
  %89 = load %struct.TYPE_6__*, %struct.TYPE_6__** %88, align 8
  %90 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 4
  %92 = call i8* @cpu_to_le32(i32 %91)
  %93 = load %struct.mtk_desc*, %struct.mtk_desc** %6, align 8
  %94 = getelementptr inbounds %struct.mtk_desc, %struct.mtk_desc* %93, i32 0, i32 2
  store i8* %92, i8** %94, align 8
  br label %95

95:                                               ; preds = %59, %41
  %96 = load %struct.mtk_ring*, %struct.mtk_ring** %5, align 8
  %97 = getelementptr inbounds %struct.mtk_ring, %struct.mtk_ring* %96, i32 0, i32 4
  %98 = load %struct.mtk_desc*, %struct.mtk_desc** %97, align 8
  %99 = getelementptr inbounds %struct.mtk_desc, %struct.mtk_desc* %98, i32 1
  store %struct.mtk_desc* %99, %struct.mtk_desc** %97, align 8
  %100 = load %struct.mtk_ring*, %struct.mtk_ring** %5, align 8
  %101 = getelementptr inbounds %struct.mtk_ring, %struct.mtk_ring* %100, i32 0, i32 3
  %102 = load %struct.mtk_desc*, %struct.mtk_desc** %101, align 8
  %103 = load i32, i32* @MTK_DESC_NUM, align 4
  %104 = sext i32 %103 to i64
  %105 = getelementptr inbounds %struct.mtk_desc, %struct.mtk_desc* %102, i64 %104
  %106 = icmp eq %struct.mtk_desc* %99, %105
  br i1 %106, label %107, label %113

107:                                              ; preds = %95
  %108 = load %struct.mtk_ring*, %struct.mtk_ring** %5, align 8
  %109 = getelementptr inbounds %struct.mtk_ring, %struct.mtk_ring* %108, i32 0, i32 3
  %110 = load %struct.mtk_desc*, %struct.mtk_desc** %109, align 8
  %111 = load %struct.mtk_ring*, %struct.mtk_ring** %5, align 8
  %112 = getelementptr inbounds %struct.mtk_ring, %struct.mtk_ring* %111, i32 0, i32 4
  store %struct.mtk_desc* %110, %struct.mtk_desc** %112, align 8
  br label %113

113:                                              ; preds = %107, %95
  br label %114

114:                                              ; preds = %113
  %115 = load i32, i32* %12, align 4
  %116 = add nsw i32 %115, 1
  store i32 %116, i32* %12, align 4
  %117 = load %struct.scatterlist*, %struct.scatterlist** %8, align 8
  %118 = call %struct.scatterlist* @sg_next(%struct.scatterlist* %117)
  store %struct.scatterlist* %118, %struct.scatterlist** %8, align 8
  br label %37

119:                                              ; preds = %37
  %120 = load i32, i32* @MTK_DESC_LAST, align 4
  %121 = load %struct.mtk_desc*, %struct.mtk_desc** %6, align 8
  %122 = getelementptr inbounds %struct.mtk_desc, %struct.mtk_desc* %121, i32 0, i32 0
  %123 = load i32, i32* %122, align 8
  %124 = or i32 %123, %120
  store i32 %124, i32* %122, align 8
  store i32 0, i32* %12, align 4
  br label %125

125:                                              ; preds = %172, %119
  %126 = load i32, i32* %12, align 4
  %127 = load i32, i32* %11, align 4
  %128 = icmp slt i32 %126, %127
  br i1 %128, label %129, label %177

129:                                              ; preds = %125
  %130 = load %struct.mtk_ring*, %struct.mtk_ring** %5, align 8
  %131 = getelementptr inbounds %struct.mtk_ring, %struct.mtk_ring* %130, i32 0, i32 2
  %132 = load %struct.mtk_desc*, %struct.mtk_desc** %131, align 8
  store %struct.mtk_desc* %132, %struct.mtk_desc** %7, align 8
  %133 = load %struct.scatterlist*, %struct.scatterlist** %9, align 8
  %134 = getelementptr inbounds %struct.scatterlist, %struct.scatterlist* %133, i32 0, i32 0
  %135 = load i32, i32* %134, align 4
  %136 = call i8* @MTK_DESC_BUF_LEN(i32 %135)
  %137 = ptrtoint i8* %136 to i32
  %138 = load %struct.mtk_desc*, %struct.mtk_desc** %7, align 8
  %139 = getelementptr inbounds %struct.mtk_desc, %struct.mtk_desc* %138, i32 0, i32 0
  store i32 %137, i32* %139, align 8
  %140 = load %struct.scatterlist*, %struct.scatterlist** %9, align 8
  %141 = call i32 @sg_dma_address(%struct.scatterlist* %140)
  %142 = call i8* @cpu_to_le32(i32 %141)
  %143 = load %struct.mtk_desc*, %struct.mtk_desc** %7, align 8
  %144 = getelementptr inbounds %struct.mtk_desc, %struct.mtk_desc* %143, i32 0, i32 1
  store i8* %142, i8** %144, align 8
  %145 = load i32, i32* %12, align 4
  %146 = icmp eq i32 %145, 0
  br i1 %146, label %147, label %153

147:                                              ; preds = %129
  %148 = load i32, i32* @MTK_DESC_FIRST, align 4
  %149 = load %struct.mtk_desc*, %struct.mtk_desc** %7, align 8
  %150 = getelementptr inbounds %struct.mtk_desc, %struct.mtk_desc* %149, i32 0, i32 0
  %151 = load i32, i32* %150, align 8
  %152 = or i32 %151, %148
  store i32 %152, i32* %150, align 8
  br label %153

153:                                              ; preds = %147, %129
  %154 = load %struct.mtk_ring*, %struct.mtk_ring** %5, align 8
  %155 = getelementptr inbounds %struct.mtk_ring, %struct.mtk_ring* %154, i32 0, i32 2
  %156 = load %struct.mtk_desc*, %struct.mtk_desc** %155, align 8
  %157 = getelementptr inbounds %struct.mtk_desc, %struct.mtk_desc* %156, i32 1
  store %struct.mtk_desc* %157, %struct.mtk_desc** %155, align 8
  %158 = load %struct.mtk_ring*, %struct.mtk_ring** %5, align 8
  %159 = getelementptr inbounds %struct.mtk_ring, %struct.mtk_ring* %158, i32 0, i32 1
  %160 = load %struct.mtk_desc*, %struct.mtk_desc** %159, align 8
  %161 = load i32, i32* @MTK_DESC_NUM, align 4
  %162 = sext i32 %161 to i64
  %163 = getelementptr inbounds %struct.mtk_desc, %struct.mtk_desc* %160, i64 %162
  %164 = icmp eq %struct.mtk_desc* %157, %163
  br i1 %164, label %165, label %171

165:                                              ; preds = %153
  %166 = load %struct.mtk_ring*, %struct.mtk_ring** %5, align 8
  %167 = getelementptr inbounds %struct.mtk_ring, %struct.mtk_ring* %166, i32 0, i32 1
  %168 = load %struct.mtk_desc*, %struct.mtk_desc** %167, align 8
  %169 = load %struct.mtk_ring*, %struct.mtk_ring** %5, align 8
  %170 = getelementptr inbounds %struct.mtk_ring, %struct.mtk_ring* %169, i32 0, i32 2
  store %struct.mtk_desc* %168, %struct.mtk_desc** %170, align 8
  br label %171

171:                                              ; preds = %165, %153
  br label %172

172:                                              ; preds = %171
  %173 = load i32, i32* %12, align 4
  %174 = add nsw i32 %173, 1
  store i32 %174, i32* %12, align 4
  %175 = load %struct.scatterlist*, %struct.scatterlist** %9, align 8
  %176 = call %struct.scatterlist* @sg_next(%struct.scatterlist* %175)
  store %struct.scatterlist* %176, %struct.scatterlist** %9, align 8
  br label %125

177:                                              ; preds = %125
  %178 = load i32, i32* @MTK_DESC_LAST, align 4
  %179 = load %struct.mtk_desc*, %struct.mtk_desc** %7, align 8
  %180 = getelementptr inbounds %struct.mtk_desc, %struct.mtk_desc* %179, i32 0, i32 0
  %181 = load i32, i32* %180, align 8
  %182 = or i32 %181, %178
  store i32 %182, i32* %180, align 8
  %183 = load %struct.mtk_desc*, %struct.mtk_desc** %7, align 8
  %184 = load %struct.mtk_ring*, %struct.mtk_ring** %5, align 8
  %185 = getelementptr inbounds %struct.mtk_ring, %struct.mtk_ring* %184, i32 0, i32 0
  store %struct.mtk_desc* %183, %struct.mtk_desc** %185, align 8
  %186 = load %struct.mtk_aes_rec*, %struct.mtk_aes_rec** %4, align 8
  %187 = getelementptr inbounds %struct.mtk_aes_rec, %struct.mtk_aes_rec* %186, i32 0, i32 1
  %188 = load i32, i32* %187, align 8
  %189 = load i32, i32* @AES_FLAGS_GCM, align 4
  %190 = and i32 %188, %189
  %191 = icmp ne i32 %190, 0
  br i1 %191, label %192, label %200

192:                                              ; preds = %177
  %193 = load i64, i64* @AES_BLOCK_SIZE, align 8
  %194 = load %struct.mtk_desc*, %struct.mtk_desc** %7, align 8
  %195 = getelementptr inbounds %struct.mtk_desc, %struct.mtk_desc* %194, i32 0, i32 0
  %196 = load i32, i32* %195, align 8
  %197 = sext i32 %196 to i64
  %198 = add nsw i64 %197, %193
  %199 = trunc i64 %198 to i32
  store i32 %199, i32* %195, align 8
  br label %200

200:                                              ; preds = %192, %177
  %201 = call i32 (...) @wmb()
  %202 = load %struct.mtk_cryp*, %struct.mtk_cryp** %3, align 8
  %203 = load %struct.mtk_aes_rec*, %struct.mtk_aes_rec** %4, align 8
  %204 = getelementptr inbounds %struct.mtk_aes_rec, %struct.mtk_aes_rec* %203, i32 0, i32 0
  %205 = load i64, i64* %204, align 8
  %206 = call i32 @RDR_PREP_COUNT(i64 %205)
  %207 = load i32, i32* %11, align 4
  %208 = call i32 @MTK_DESC_CNT(i32 %207)
  %209 = call i32 @mtk_aes_write(%struct.mtk_cryp* %202, i32 %206, i32 %208)
  %210 = load %struct.mtk_cryp*, %struct.mtk_cryp** %3, align 8
  %211 = load %struct.mtk_aes_rec*, %struct.mtk_aes_rec** %4, align 8
  %212 = getelementptr inbounds %struct.mtk_aes_rec, %struct.mtk_aes_rec* %211, i32 0, i32 0
  %213 = load i64, i64* %212, align 8
  %214 = call i32 @CDR_PREP_COUNT(i64 %213)
  %215 = load i32, i32* %10, align 4
  %216 = call i32 @MTK_DESC_CNT(i32 %215)
  %217 = call i32 @mtk_aes_write(%struct.mtk_cryp* %210, i32 %214, i32 %216)
  %218 = load i32, i32* @EINPROGRESS, align 4
  %219 = sub nsw i32 0, %218
  ret i32 %219
}

declare dso_local i8* @MTK_DESC_BUF_LEN(i32) #1

declare dso_local i8* @cpu_to_le32(i32) #1

declare dso_local i32 @sg_dma_address(%struct.scatterlist*) #1

declare dso_local i32 @MTK_DESC_CT_LEN(i32) #1

declare dso_local %struct.scatterlist* @sg_next(%struct.scatterlist*) #1

declare dso_local i32 @wmb(...) #1

declare dso_local i32 @mtk_aes_write(%struct.mtk_cryp*, i32, i32) #1

declare dso_local i32 @RDR_PREP_COUNT(i64) #1

declare dso_local i32 @MTK_DESC_CNT(i32) #1

declare dso_local i32 @CDR_PREP_COUNT(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
