; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/hns/extr_hns_roce_mr.c_hns_roce_mhop_free.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/hns/extr_hns_roce_mr.c_hns_roce_mhop_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hns_roce_dev = type { %struct.TYPE_2__, %struct.device* }
%struct.TYPE_2__ = type { i32, i32 }
%struct.device = type { i32 }
%struct.hns_roce_mr = type { i32, i64, i32, i32, i32*, i32*, i32*, i32*, i32, i32, i32, i32 }

@PAGE_SHIFT = common dso_local global i32 0, align 4
@MR_TYPE_FRMR = common dso_local global i64 0, align 8
@HNS_ROCE_HOP_NUM_0 = common dso_local global i32 0, align 4
@BA_BYTE_LEN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hns_roce_dev*, %struct.hns_roce_mr*)* @hns_roce_mhop_free to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hns_roce_mhop_free(%struct.hns_roce_dev* %0, %struct.hns_roce_mr* %1) #0 {
  %3 = alloca %struct.hns_roce_dev*, align 8
  %4 = alloca %struct.hns_roce_mr*, align 8
  %5 = alloca %struct.device*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.hns_roce_dev* %0, %struct.hns_roce_dev** %3, align 8
  store %struct.hns_roce_mr* %1, %struct.hns_roce_mr** %4, align 8
  %13 = load %struct.hns_roce_dev*, %struct.hns_roce_dev** %3, align 8
  %14 = getelementptr inbounds %struct.hns_roce_dev, %struct.hns_roce_dev* %13, i32 0, i32 1
  %15 = load %struct.device*, %struct.device** %14, align 8
  store %struct.device* %15, %struct.device** %5, align 8
  %16 = load %struct.hns_roce_mr*, %struct.hns_roce_mr** %4, align 8
  %17 = getelementptr inbounds %struct.hns_roce_mr, %struct.hns_roce_mr* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  store i32 %18, i32* %7, align 4
  %19 = load %struct.hns_roce_dev*, %struct.hns_roce_dev** %3, align 8
  %20 = getelementptr inbounds %struct.hns_roce_dev, %struct.hns_roce_dev* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = load i32, i32* @PAGE_SHIFT, align 4
  %24 = add nsw i32 %22, %23
  %25 = shl i32 1, %24
  store i32 %25, i32* %10, align 4
  %26 = load %struct.hns_roce_mr*, %struct.hns_roce_mr** %4, align 8
  %27 = getelementptr inbounds %struct.hns_roce_mr, %struct.hns_roce_mr* %26, i32 0, i32 1
  %28 = load i64, i64* %27, align 8
  %29 = load i64, i64* @MR_TYPE_FRMR, align 8
  %30 = icmp eq i64 %28, %29
  br i1 %30, label %31, label %32

31:                                               ; preds = %2
  br label %37

32:                                               ; preds = %2
  %33 = load %struct.hns_roce_dev*, %struct.hns_roce_dev** %3, align 8
  %34 = getelementptr inbounds %struct.hns_roce_dev, %struct.hns_roce_dev* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  br label %37

37:                                               ; preds = %32, %31
  %38 = phi i32 [ 1, %31 ], [ %36, %32 ]
  store i32 %38, i32* %11, align 4
  %39 = load i32, i32* %11, align 4
  %40 = load i32, i32* @HNS_ROCE_HOP_NUM_0, align 4
  %41 = icmp eq i32 %39, %40
  br i1 %41, label %42, label %43

42:                                               ; preds = %37
  br label %270

43:                                               ; preds = %37
  %44 = load i32, i32* %11, align 4
  %45 = icmp eq i32 %44, 1
  br i1 %45, label %46, label %58

46:                                               ; preds = %43
  %47 = load %struct.device*, %struct.device** %5, align 8
  %48 = load i32, i32* %7, align 4
  %49 = load i32, i32* @BA_BYTE_LEN, align 4
  %50 = mul nsw i32 %48, %49
  %51 = load %struct.hns_roce_mr*, %struct.hns_roce_mr** %4, align 8
  %52 = getelementptr inbounds %struct.hns_roce_mr, %struct.hns_roce_mr* %51, i32 0, i32 11
  %53 = load i32, i32* %52, align 4
  %54 = load %struct.hns_roce_mr*, %struct.hns_roce_mr** %4, align 8
  %55 = getelementptr inbounds %struct.hns_roce_mr, %struct.hns_roce_mr* %54, i32 0, i32 10
  %56 = load i32, i32* %55, align 8
  %57 = call i32 @dma_free_coherent(%struct.device* %47, i32 %50, i32 %53, i32 %56)
  br label %270

58:                                               ; preds = %43
  %59 = load %struct.device*, %struct.device** %5, align 8
  %60 = load i32, i32* %10, align 4
  %61 = load %struct.hns_roce_mr*, %struct.hns_roce_mr** %4, align 8
  %62 = getelementptr inbounds %struct.hns_roce_mr, %struct.hns_roce_mr* %61, i32 0, i32 9
  %63 = load i32, i32* %62, align 4
  %64 = load %struct.hns_roce_mr*, %struct.hns_roce_mr** %4, align 8
  %65 = getelementptr inbounds %struct.hns_roce_mr, %struct.hns_roce_mr* %64, i32 0, i32 8
  %66 = load i32, i32* %65, align 8
  %67 = call i32 @dma_free_coherent(%struct.device* %59, i32 %60, i32 %63, i32 %66)
  %68 = load i32, i32* %11, align 4
  %69 = icmp eq i32 %68, 2
  br i1 %69, label %70, label %133

70:                                               ; preds = %58
  store i32 0, i32* %8, align 4
  br label %71

71:                                               ; preds = %129, %70
  %72 = load i32, i32* %8, align 4
  %73 = load %struct.hns_roce_mr*, %struct.hns_roce_mr** %4, align 8
  %74 = getelementptr inbounds %struct.hns_roce_mr, %struct.hns_roce_mr* %73, i32 0, i32 2
  %75 = load i32, i32* %74, align 8
  %76 = icmp slt i32 %72, %75
  br i1 %76, label %77, label %132

77:                                               ; preds = %71
  %78 = load i32, i32* %8, align 4
  %79 = load %struct.hns_roce_mr*, %struct.hns_roce_mr** %4, align 8
  %80 = getelementptr inbounds %struct.hns_roce_mr, %struct.hns_roce_mr* %79, i32 0, i32 2
  %81 = load i32, i32* %80, align 8
  %82 = sub nsw i32 %81, 1
  %83 = icmp eq i32 %78, %82
  br i1 %83, label %84, label %111

84:                                               ; preds = %77
  %85 = load i32, i32* %8, align 4
  %86 = load i32, i32* %10, align 4
  %87 = load i32, i32* @BA_BYTE_LEN, align 4
  %88 = sdiv i32 %86, %87
  %89 = mul nsw i32 %85, %88
  store i32 %89, i32* %6, align 4
  %90 = load %struct.device*, %struct.device** %5, align 8
  %91 = load i32, i32* %7, align 4
  %92 = load i32, i32* %6, align 4
  %93 = sub nsw i32 %91, %92
  %94 = load i32, i32* @BA_BYTE_LEN, align 4
  %95 = mul nsw i32 %93, %94
  %96 = load %struct.hns_roce_mr*, %struct.hns_roce_mr** %4, align 8
  %97 = getelementptr inbounds %struct.hns_roce_mr, %struct.hns_roce_mr* %96, i32 0, i32 7
  %98 = load i32*, i32** %97, align 8
  %99 = load i32, i32* %8, align 4
  %100 = sext i32 %99 to i64
  %101 = getelementptr inbounds i32, i32* %98, i64 %100
  %102 = load i32, i32* %101, align 4
  %103 = load %struct.hns_roce_mr*, %struct.hns_roce_mr** %4, align 8
  %104 = getelementptr inbounds %struct.hns_roce_mr, %struct.hns_roce_mr* %103, i32 0, i32 6
  %105 = load i32*, i32** %104, align 8
  %106 = load i32, i32* %8, align 4
  %107 = sext i32 %106 to i64
  %108 = getelementptr inbounds i32, i32* %105, i64 %107
  %109 = load i32, i32* %108, align 4
  %110 = call i32 @dma_free_coherent(%struct.device* %90, i32 %95, i32 %102, i32 %109)
  br label %132

111:                                              ; preds = %77
  %112 = load %struct.device*, %struct.device** %5, align 8
  %113 = load i32, i32* %10, align 4
  %114 = load %struct.hns_roce_mr*, %struct.hns_roce_mr** %4, align 8
  %115 = getelementptr inbounds %struct.hns_roce_mr, %struct.hns_roce_mr* %114, i32 0, i32 7
  %116 = load i32*, i32** %115, align 8
  %117 = load i32, i32* %8, align 4
  %118 = sext i32 %117 to i64
  %119 = getelementptr inbounds i32, i32* %116, i64 %118
  %120 = load i32, i32* %119, align 4
  %121 = load %struct.hns_roce_mr*, %struct.hns_roce_mr** %4, align 8
  %122 = getelementptr inbounds %struct.hns_roce_mr, %struct.hns_roce_mr* %121, i32 0, i32 6
  %123 = load i32*, i32** %122, align 8
  %124 = load i32, i32* %8, align 4
  %125 = sext i32 %124 to i64
  %126 = getelementptr inbounds i32, i32* %123, i64 %125
  %127 = load i32, i32* %126, align 4
  %128 = call i32 @dma_free_coherent(%struct.device* %112, i32 %113, i32 %120, i32 %127)
  br label %129

129:                                              ; preds = %111
  %130 = load i32, i32* %8, align 4
  %131 = add nsw i32 %130, 1
  store i32 %131, i32* %8, align 4
  br label %71

132:                                              ; preds = %84, %71
  br label %242

133:                                              ; preds = %58
  %134 = load i32, i32* %11, align 4
  %135 = icmp eq i32 %134, 3
  br i1 %135, label %136, label %241

136:                                              ; preds = %133
  store i32 0, i32* %8, align 4
  br label %137

137:                                              ; preds = %237, %136
  %138 = load i32, i32* %8, align 4
  %139 = load %struct.hns_roce_mr*, %struct.hns_roce_mr** %4, align 8
  %140 = getelementptr inbounds %struct.hns_roce_mr, %struct.hns_roce_mr* %139, i32 0, i32 2
  %141 = load i32, i32* %140, align 8
  %142 = icmp slt i32 %138, %141
  br i1 %142, label %143, label %240

143:                                              ; preds = %137
  %144 = load %struct.device*, %struct.device** %5, align 8
  %145 = load i32, i32* %10, align 4
  %146 = load %struct.hns_roce_mr*, %struct.hns_roce_mr** %4, align 8
  %147 = getelementptr inbounds %struct.hns_roce_mr, %struct.hns_roce_mr* %146, i32 0, i32 7
  %148 = load i32*, i32** %147, align 8
  %149 = load i32, i32* %8, align 4
  %150 = sext i32 %149 to i64
  %151 = getelementptr inbounds i32, i32* %148, i64 %150
  %152 = load i32, i32* %151, align 4
  %153 = load %struct.hns_roce_mr*, %struct.hns_roce_mr** %4, align 8
  %154 = getelementptr inbounds %struct.hns_roce_mr, %struct.hns_roce_mr* %153, i32 0, i32 6
  %155 = load i32*, i32** %154, align 8
  %156 = load i32, i32* %8, align 4
  %157 = sext i32 %156 to i64
  %158 = getelementptr inbounds i32, i32* %155, i64 %157
  %159 = load i32, i32* %158, align 4
  %160 = call i32 @dma_free_coherent(%struct.device* %144, i32 %145, i32 %152, i32 %159)
  store i32 0, i32* %9, align 4
  br label %161

161:                                              ; preds = %233, %143
  %162 = load i32, i32* %9, align 4
  %163 = load i32, i32* %10, align 4
  %164 = load i32, i32* @BA_BYTE_LEN, align 4
  %165 = sdiv i32 %163, %164
  %166 = icmp slt i32 %162, %165
  br i1 %166, label %167, label %236

167:                                              ; preds = %161
  %168 = load i32, i32* %8, align 4
  %169 = load i32, i32* %10, align 4
  %170 = load i32, i32* @BA_BYTE_LEN, align 4
  %171 = sdiv i32 %169, %170
  %172 = mul nsw i32 %168, %171
  %173 = load i32, i32* %9, align 4
  %174 = add nsw i32 %172, %173
  store i32 %174, i32* %12, align 4
  %175 = load i32, i32* %8, align 4
  %176 = load %struct.hns_roce_mr*, %struct.hns_roce_mr** %4, align 8
  %177 = getelementptr inbounds %struct.hns_roce_mr, %struct.hns_roce_mr* %176, i32 0, i32 2
  %178 = load i32, i32* %177, align 8
  %179 = sub nsw i32 %178, 1
  %180 = icmp eq i32 %175, %179
  br i1 %180, label %181, label %215

181:                                              ; preds = %167
  %182 = load i32, i32* %9, align 4
  %183 = load %struct.hns_roce_mr*, %struct.hns_roce_mr** %4, align 8
  %184 = getelementptr inbounds %struct.hns_roce_mr, %struct.hns_roce_mr* %183, i32 0, i32 3
  %185 = load i32, i32* %184, align 4
  %186 = sub nsw i32 %185, 1
  %187 = icmp eq i32 %182, %186
  br i1 %187, label %188, label %215

188:                                              ; preds = %181
  %189 = load i32, i32* %12, align 4
  %190 = load i32, i32* %10, align 4
  %191 = load i32, i32* @BA_BYTE_LEN, align 4
  %192 = sdiv i32 %190, %191
  %193 = mul nsw i32 %189, %192
  store i32 %193, i32* %6, align 4
  %194 = load %struct.device*, %struct.device** %5, align 8
  %195 = load i32, i32* %7, align 4
  %196 = load i32, i32* %6, align 4
  %197 = sub nsw i32 %195, %196
  %198 = load i32, i32* @BA_BYTE_LEN, align 4
  %199 = mul nsw i32 %197, %198
  %200 = load %struct.hns_roce_mr*, %struct.hns_roce_mr** %4, align 8
  %201 = getelementptr inbounds %struct.hns_roce_mr, %struct.hns_roce_mr* %200, i32 0, i32 5
  %202 = load i32*, i32** %201, align 8
  %203 = load i32, i32* %12, align 4
  %204 = sext i32 %203 to i64
  %205 = getelementptr inbounds i32, i32* %202, i64 %204
  %206 = load i32, i32* %205, align 4
  %207 = load %struct.hns_roce_mr*, %struct.hns_roce_mr** %4, align 8
  %208 = getelementptr inbounds %struct.hns_roce_mr, %struct.hns_roce_mr* %207, i32 0, i32 4
  %209 = load i32*, i32** %208, align 8
  %210 = load i32, i32* %12, align 4
  %211 = sext i32 %210 to i64
  %212 = getelementptr inbounds i32, i32* %209, i64 %211
  %213 = load i32, i32* %212, align 4
  %214 = call i32 @dma_free_coherent(%struct.device* %194, i32 %199, i32 %206, i32 %213)
  br label %236

215:                                              ; preds = %181, %167
  %216 = load %struct.device*, %struct.device** %5, align 8
  %217 = load i32, i32* %10, align 4
  %218 = load %struct.hns_roce_mr*, %struct.hns_roce_mr** %4, align 8
  %219 = getelementptr inbounds %struct.hns_roce_mr, %struct.hns_roce_mr* %218, i32 0, i32 5
  %220 = load i32*, i32** %219, align 8
  %221 = load i32, i32* %12, align 4
  %222 = sext i32 %221 to i64
  %223 = getelementptr inbounds i32, i32* %220, i64 %222
  %224 = load i32, i32* %223, align 4
  %225 = load %struct.hns_roce_mr*, %struct.hns_roce_mr** %4, align 8
  %226 = getelementptr inbounds %struct.hns_roce_mr, %struct.hns_roce_mr* %225, i32 0, i32 4
  %227 = load i32*, i32** %226, align 8
  %228 = load i32, i32* %12, align 4
  %229 = sext i32 %228 to i64
  %230 = getelementptr inbounds i32, i32* %227, i64 %229
  %231 = load i32, i32* %230, align 4
  %232 = call i32 @dma_free_coherent(%struct.device* %216, i32 %217, i32 %224, i32 %231)
  br label %233

233:                                              ; preds = %215
  %234 = load i32, i32* %9, align 4
  %235 = add nsw i32 %234, 1
  store i32 %235, i32* %9, align 4
  br label %161

236:                                              ; preds = %188, %161
  br label %237

237:                                              ; preds = %236
  %238 = load i32, i32* %8, align 4
  %239 = add nsw i32 %238, 1
  store i32 %239, i32* %8, align 4
  br label %137

240:                                              ; preds = %137
  br label %241

241:                                              ; preds = %240, %133
  br label %242

242:                                              ; preds = %241, %132
  %243 = load %struct.hns_roce_mr*, %struct.hns_roce_mr** %4, align 8
  %244 = getelementptr inbounds %struct.hns_roce_mr, %struct.hns_roce_mr* %243, i32 0, i32 7
  %245 = load i32*, i32** %244, align 8
  %246 = call i32 @kfree(i32* %245)
  %247 = load %struct.hns_roce_mr*, %struct.hns_roce_mr** %4, align 8
  %248 = getelementptr inbounds %struct.hns_roce_mr, %struct.hns_roce_mr* %247, i32 0, i32 6
  %249 = load i32*, i32** %248, align 8
  %250 = call i32 @kfree(i32* %249)
  %251 = load %struct.hns_roce_mr*, %struct.hns_roce_mr** %4, align 8
  %252 = getelementptr inbounds %struct.hns_roce_mr, %struct.hns_roce_mr* %251, i32 0, i32 7
  store i32* null, i32** %252, align 8
  %253 = load %struct.hns_roce_mr*, %struct.hns_roce_mr** %4, align 8
  %254 = getelementptr inbounds %struct.hns_roce_mr, %struct.hns_roce_mr* %253, i32 0, i32 6
  store i32* null, i32** %254, align 8
  %255 = load i32, i32* %11, align 4
  %256 = icmp eq i32 %255, 3
  br i1 %256, label %257, label %270

257:                                              ; preds = %242
  %258 = load %struct.hns_roce_mr*, %struct.hns_roce_mr** %4, align 8
  %259 = getelementptr inbounds %struct.hns_roce_mr, %struct.hns_roce_mr* %258, i32 0, i32 5
  %260 = load i32*, i32** %259, align 8
  %261 = call i32 @kfree(i32* %260)
  %262 = load %struct.hns_roce_mr*, %struct.hns_roce_mr** %4, align 8
  %263 = getelementptr inbounds %struct.hns_roce_mr, %struct.hns_roce_mr* %262, i32 0, i32 4
  %264 = load i32*, i32** %263, align 8
  %265 = call i32 @kfree(i32* %264)
  %266 = load %struct.hns_roce_mr*, %struct.hns_roce_mr** %4, align 8
  %267 = getelementptr inbounds %struct.hns_roce_mr, %struct.hns_roce_mr* %266, i32 0, i32 5
  store i32* null, i32** %267, align 8
  %268 = load %struct.hns_roce_mr*, %struct.hns_roce_mr** %4, align 8
  %269 = getelementptr inbounds %struct.hns_roce_mr, %struct.hns_roce_mr* %268, i32 0, i32 4
  store i32* null, i32** %269, align 8
  br label %270

270:                                              ; preds = %42, %46, %257, %242
  ret void
}

declare dso_local i32 @dma_free_coherent(%struct.device*, i32, i32, i32) #1

declare dso_local i32 @kfree(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
