; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/bnxt_re/extr_qplib_res.c_bnxt_qplib_alloc_init_hwq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/bnxt_re/extr_qplib_res.c_bnxt_qplib_alloc_init_hwq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_dev = type { i32 }
%struct.bnxt_qplib_hwq = type { i64, i32, i32, i32, i32*, %struct.TYPE_2__*, i64, i64, i64, i32, %struct.pci_dev* }
%struct.TYPE_2__ = type { i32*, i32, i64 }
%struct.bnxt_qplib_sg_info = type { i32, i32, %struct.scatterlist* }
%struct.scatterlist = type { i32 }

@PBL_LVL_MAX = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@MAX_PBL_LVL_0_PGS = common dso_local global i32 0, align 4
@PBL_LVL_0 = common dso_local global i64 0, align 8
@MAX_PBL_LVL_1_PGS = common dso_local global i32 0, align 4
@PBL_LVL_1 = common dso_local global i64 0, align 8
@MAX_PBL_LVL_1_PGS_FOR_LVL_2 = common dso_local global i32 0, align 4
@PTU_PDE_VALID = common dso_local global i32 0, align 4
@PBL_LVL_2 = common dso_local global i64 0, align 8
@PTU_PTE_VALID = common dso_local global i32 0, align 4
@HWQ_TYPE_QUEUE = common dso_local global i32 0, align 4
@PTU_PTE_LAST = common dso_local global i32 0, align 4
@PTU_PTE_NEXT_TO_LAST = common dso_local global i32 0, align 4
@HWQ_TYPE_L2_CMPL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @bnxt_qplib_alloc_init_hwq(%struct.pci_dev* %0, %struct.bnxt_qplib_hwq* %1, %struct.bnxt_qplib_sg_info* %2, i32* %3, i32 %4, i32 %5, i32 %6, i32 %7) #0 {
  %9 = alloca i32, align 4
  %10 = alloca %struct.pci_dev*, align 8
  %11 = alloca %struct.bnxt_qplib_hwq*, align 8
  %12 = alloca %struct.bnxt_qplib_sg_info*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32*, align 8
  %25 = alloca i32**, align 8
  %26 = alloca %struct.scatterlist*, align 8
  %27 = alloca i32, align 4
  %28 = alloca i32, align 4
  %29 = alloca i32, align 4
  store %struct.pci_dev* %0, %struct.pci_dev** %10, align 8
  store %struct.bnxt_qplib_hwq* %1, %struct.bnxt_qplib_hwq** %11, align 8
  store %struct.bnxt_qplib_sg_info* %2, %struct.bnxt_qplib_sg_info** %12, align 8
  store i32* %3, i32** %13, align 8
  store i32 %4, i32* %14, align 4
  store i32 %5, i32* %15, align 4
  store i32 %6, i32* %16, align 4
  store i32 %7, i32* %17, align 4
  store i32 0, i32* %22, align 4
  store i32 0, i32* %23, align 4
  store %struct.scatterlist* null, %struct.scatterlist** %26, align 8
  %30 = load i64, i64* @PBL_LVL_MAX, align 8
  %31 = load %struct.bnxt_qplib_hwq*, %struct.bnxt_qplib_hwq** %11, align 8
  %32 = getelementptr inbounds %struct.bnxt_qplib_hwq, %struct.bnxt_qplib_hwq* %31, i32 0, i32 0
  store i64 %30, i64* %32, align 8
  %33 = load i32*, i32** %13, align 8
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @roundup_pow_of_two(i32 %34)
  store i32 %35, i32* %20, align 4
  %36 = load i32, i32* %15, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %56

38:                                               ; preds = %8
  %39 = load i32, i32* %15, align 4
  %40 = call i32 @roundup_pow_of_two(i32 %39)
  store i32 %40, i32* %23, align 4
  %41 = load i32, i32* %20, align 4
  %42 = load i32, i32* %23, align 4
  %43 = mul nsw i32 %41, %42
  %44 = load i32, i32* %16, align 4
  %45 = sdiv i32 %43, %44
  store i32 %45, i32* %22, align 4
  %46 = load i32, i32* %20, align 4
  %47 = load i32, i32* %23, align 4
  %48 = mul nsw i32 %46, %47
  %49 = load i32, i32* %16, align 4
  %50 = srem i32 %48, %49
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %55

52:                                               ; preds = %38
  %53 = load i32, i32* %22, align 4
  %54 = add nsw i32 %53, 1
  store i32 %54, i32* %22, align 4
  br label %55

55:                                               ; preds = %52, %38
  br label %56

56:                                               ; preds = %55, %8
  %57 = load i32, i32* %14, align 4
  %58 = call i32 @roundup_pow_of_two(i32 %57)
  store i32 %58, i32* %21, align 4
  %59 = load %struct.bnxt_qplib_sg_info*, %struct.bnxt_qplib_sg_info** %12, align 8
  %60 = icmp ne %struct.bnxt_qplib_sg_info* %59, null
  br i1 %60, label %61, label %65

61:                                               ; preds = %56
  %62 = load %struct.bnxt_qplib_sg_info*, %struct.bnxt_qplib_sg_info** %12, align 8
  %63 = getelementptr inbounds %struct.bnxt_qplib_sg_info, %struct.bnxt_qplib_sg_info* %62, i32 0, i32 2
  %64 = load %struct.scatterlist*, %struct.scatterlist** %63, align 8
  store %struct.scatterlist* %64, %struct.scatterlist** %26, align 8
  br label %65

65:                                               ; preds = %61, %56
  %66 = load %struct.scatterlist*, %struct.scatterlist** %26, align 8
  %67 = icmp ne %struct.scatterlist* %66, null
  br i1 %67, label %94, label %68

68:                                               ; preds = %65
  %69 = load %struct.bnxt_qplib_hwq*, %struct.bnxt_qplib_hwq** %11, align 8
  %70 = getelementptr inbounds %struct.bnxt_qplib_hwq, %struct.bnxt_qplib_hwq* %69, i32 0, i32 1
  store i32 0, i32* %70, align 8
  %71 = load i32, i32* %20, align 4
  %72 = load i32, i32* %21, align 4
  %73 = mul nsw i32 %71, %72
  %74 = load i32, i32* %16, align 4
  %75 = sdiv i32 %73, %74
  %76 = load i32, i32* %22, align 4
  %77 = add nsw i32 %75, %76
  store i32 %77, i32* %18, align 4
  %78 = load i32, i32* %20, align 4
  %79 = load i32, i32* %21, align 4
  %80 = mul nsw i32 %78, %79
  %81 = load i32, i32* %16, align 4
  %82 = srem i32 %80, %81
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %87

84:                                               ; preds = %68
  %85 = load i32, i32* %18, align 4
  %86 = add nsw i32 %85, 1
  store i32 %86, i32* %18, align 4
  br label %87

87:                                               ; preds = %84, %68
  %88 = load i32, i32* %18, align 4
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %93, label %90

90:                                               ; preds = %87
  %91 = load i32, i32* @EINVAL, align 4
  %92 = sub nsw i32 0, %91
  store i32 %92, i32* %9, align 4
  br label %474

93:                                               ; preds = %87
  store i32 0, i32* %19, align 4
  br label %103

94:                                               ; preds = %65
  %95 = load %struct.bnxt_qplib_hwq*, %struct.bnxt_qplib_hwq** %11, align 8
  %96 = getelementptr inbounds %struct.bnxt_qplib_hwq, %struct.bnxt_qplib_hwq* %95, i32 0, i32 1
  store i32 1, i32* %96, align 8
  %97 = load %struct.bnxt_qplib_sg_info*, %struct.bnxt_qplib_sg_info** %12, align 8
  %98 = getelementptr inbounds %struct.bnxt_qplib_sg_info, %struct.bnxt_qplib_sg_info* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 8
  store i32 %99, i32* %18, align 4
  %100 = load %struct.bnxt_qplib_sg_info*, %struct.bnxt_qplib_sg_info** %12, align 8
  %101 = getelementptr inbounds %struct.bnxt_qplib_sg_info, %struct.bnxt_qplib_sg_info* %100, i32 0, i32 1
  %102 = load i32, i32* %101, align 4
  store i32 %102, i32* %19, align 4
  br label %103

103:                                              ; preds = %94, %93
  %104 = load %struct.scatterlist*, %struct.scatterlist** %26, align 8
  %105 = icmp ne %struct.scatterlist* %104, null
  br i1 %105, label %106, label %122

106:                                              ; preds = %103
  %107 = load i32, i32* %18, align 4
  %108 = load i32, i32* @MAX_PBL_LVL_0_PGS, align 4
  %109 = icmp eq i32 %107, %108
  br i1 %109, label %110, label %122

110:                                              ; preds = %106
  %111 = load %struct.pci_dev*, %struct.pci_dev** %10, align 8
  %112 = load %struct.bnxt_qplib_hwq*, %struct.bnxt_qplib_hwq** %11, align 8
  %113 = getelementptr inbounds %struct.bnxt_qplib_hwq, %struct.bnxt_qplib_hwq* %112, i32 0, i32 5
  %114 = load %struct.TYPE_2__*, %struct.TYPE_2__** %113, align 8
  %115 = load i64, i64* @PBL_LVL_0, align 8
  %116 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %114, i64 %115
  %117 = load %struct.scatterlist*, %struct.scatterlist** %26, align 8
  %118 = load i32, i32* %18, align 4
  %119 = load i32, i32* %19, align 4
  %120 = load i32, i32* %16, align 4
  %121 = call i32 @__alloc_pbl(%struct.pci_dev* %111, %struct.TYPE_2__* %116, %struct.scatterlist* %117, i32 %118, i32 %119, i32 %120)
  store i32 %121, i32* %28, align 4
  br label %131

122:                                              ; preds = %106, %103
  %123 = load %struct.pci_dev*, %struct.pci_dev** %10, align 8
  %124 = load %struct.bnxt_qplib_hwq*, %struct.bnxt_qplib_hwq** %11, align 8
  %125 = getelementptr inbounds %struct.bnxt_qplib_hwq, %struct.bnxt_qplib_hwq* %124, i32 0, i32 5
  %126 = load %struct.TYPE_2__*, %struct.TYPE_2__** %125, align 8
  %127 = load i64, i64* @PBL_LVL_0, align 8
  %128 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %126, i64 %127
  %129 = load i32, i32* %16, align 4
  %130 = call i32 @__alloc_pbl(%struct.pci_dev* %123, %struct.TYPE_2__* %128, %struct.scatterlist* null, i32 1, i32 0, i32 %129)
  store i32 %130, i32* %28, align 4
  br label %131

131:                                              ; preds = %122, %110
  %132 = load i32, i32* %28, align 4
  %133 = icmp ne i32 %132, 0
  br i1 %133, label %134, label %135

134:                                              ; preds = %131
  br label %468

135:                                              ; preds = %131
  %136 = load i64, i64* @PBL_LVL_0, align 8
  %137 = load %struct.bnxt_qplib_hwq*, %struct.bnxt_qplib_hwq** %11, align 8
  %138 = getelementptr inbounds %struct.bnxt_qplib_hwq, %struct.bnxt_qplib_hwq* %137, i32 0, i32 0
  store i64 %136, i64* %138, align 8
  %139 = load i32, i32* %18, align 4
  %140 = load i32, i32* @MAX_PBL_LVL_0_PGS, align 4
  %141 = icmp sgt i32 %139, %140
  br i1 %141, label %142, label %428

142:                                              ; preds = %135
  %143 = load i32, i32* %18, align 4
  %144 = load i32, i32* @MAX_PBL_LVL_1_PGS, align 4
  %145 = icmp sgt i32 %143, %144
  br i1 %145, label %146, label %313

146:                                              ; preds = %142
  %147 = load %struct.pci_dev*, %struct.pci_dev** %10, align 8
  %148 = load %struct.bnxt_qplib_hwq*, %struct.bnxt_qplib_hwq** %11, align 8
  %149 = getelementptr inbounds %struct.bnxt_qplib_hwq, %struct.bnxt_qplib_hwq* %148, i32 0, i32 5
  %150 = load %struct.TYPE_2__*, %struct.TYPE_2__** %149, align 8
  %151 = load i64, i64* @PBL_LVL_1, align 8
  %152 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %150, i64 %151
  %153 = load i32, i32* @MAX_PBL_LVL_1_PGS_FOR_LVL_2, align 4
  %154 = load i32, i32* %16, align 4
  %155 = call i32 @__alloc_pbl(%struct.pci_dev* %147, %struct.TYPE_2__* %152, %struct.scatterlist* null, i32 %153, i32 0, i32 %154)
  store i32 %155, i32* %28, align 4
  %156 = load i32, i32* %28, align 4
  %157 = icmp ne i32 %156, 0
  br i1 %157, label %158, label %159

158:                                              ; preds = %146
  br label %468

159:                                              ; preds = %146
  %160 = load %struct.bnxt_qplib_hwq*, %struct.bnxt_qplib_hwq** %11, align 8
  %161 = getelementptr inbounds %struct.bnxt_qplib_hwq, %struct.bnxt_qplib_hwq* %160, i32 0, i32 5
  %162 = load %struct.TYPE_2__*, %struct.TYPE_2__** %161, align 8
  %163 = load i64, i64* @PBL_LVL_0, align 8
  %164 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %162, i64 %163
  %165 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %164, i32 0, i32 2
  %166 = load i64, i64* %165, align 8
  %167 = inttoptr i64 %166 to i32**
  store i32** %167, i32*** %25, align 8
  %168 = load %struct.bnxt_qplib_hwq*, %struct.bnxt_qplib_hwq** %11, align 8
  %169 = getelementptr inbounds %struct.bnxt_qplib_hwq, %struct.bnxt_qplib_hwq* %168, i32 0, i32 5
  %170 = load %struct.TYPE_2__*, %struct.TYPE_2__** %169, align 8
  %171 = load i64, i64* @PBL_LVL_1, align 8
  %172 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %170, i64 %171
  %173 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %172, i32 0, i32 0
  %174 = load i32*, i32** %173, align 8
  store i32* %174, i32** %24, align 8
  store i32 0, i32* %27, align 4
  br label %175

175:                                              ; preds = %201, %159
  %176 = load i32, i32* %27, align 4
  %177 = load %struct.bnxt_qplib_hwq*, %struct.bnxt_qplib_hwq** %11, align 8
  %178 = getelementptr inbounds %struct.bnxt_qplib_hwq, %struct.bnxt_qplib_hwq* %177, i32 0, i32 5
  %179 = load %struct.TYPE_2__*, %struct.TYPE_2__** %178, align 8
  %180 = load i64, i64* @PBL_LVL_1, align 8
  %181 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %179, i64 %180
  %182 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %181, i32 0, i32 1
  %183 = load i32, i32* %182, align 8
  %184 = icmp slt i32 %176, %183
  br i1 %184, label %185, label %204

185:                                              ; preds = %175
  %186 = load i32*, i32** %24, align 8
  %187 = load i32, i32* %27, align 4
  %188 = sext i32 %187 to i64
  %189 = getelementptr inbounds i32, i32* %186, i64 %188
  %190 = load i32, i32* %189, align 4
  %191 = load i32, i32* @PTU_PDE_VALID, align 4
  %192 = or i32 %190, %191
  %193 = load i32**, i32*** %25, align 8
  %194 = load i32, i32* %27, align 4
  %195 = call i64 @PTR_PG(i32 %194)
  %196 = getelementptr inbounds i32*, i32** %193, i64 %195
  %197 = load i32*, i32** %196, align 8
  %198 = load i32, i32* %27, align 4
  %199 = call i64 @PTR_IDX(i32 %198)
  %200 = getelementptr inbounds i32, i32* %197, i64 %199
  store i32 %192, i32* %200, align 4
  br label %201

201:                                              ; preds = %185
  %202 = load i32, i32* %27, align 4
  %203 = add nsw i32 %202, 1
  store i32 %203, i32* %27, align 4
  br label %175

204:                                              ; preds = %175
  %205 = load i64, i64* @PBL_LVL_1, align 8
  %206 = load %struct.bnxt_qplib_hwq*, %struct.bnxt_qplib_hwq** %11, align 8
  %207 = getelementptr inbounds %struct.bnxt_qplib_hwq, %struct.bnxt_qplib_hwq* %206, i32 0, i32 0
  store i64 %205, i64* %207, align 8
  %208 = load %struct.pci_dev*, %struct.pci_dev** %10, align 8
  %209 = load %struct.bnxt_qplib_hwq*, %struct.bnxt_qplib_hwq** %11, align 8
  %210 = getelementptr inbounds %struct.bnxt_qplib_hwq, %struct.bnxt_qplib_hwq* %209, i32 0, i32 5
  %211 = load %struct.TYPE_2__*, %struct.TYPE_2__** %210, align 8
  %212 = load i64, i64* @PBL_LVL_2, align 8
  %213 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %211, i64 %212
  %214 = load %struct.scatterlist*, %struct.scatterlist** %26, align 8
  %215 = load i32, i32* %18, align 4
  %216 = load i32, i32* %19, align 4
  %217 = load i32, i32* %16, align 4
  %218 = call i32 @__alloc_pbl(%struct.pci_dev* %208, %struct.TYPE_2__* %213, %struct.scatterlist* %214, i32 %215, i32 %216, i32 %217)
  store i32 %218, i32* %28, align 4
  %219 = load i32, i32* %28, align 4
  %220 = icmp ne i32 %219, 0
  br i1 %220, label %221, label %222

221:                                              ; preds = %204
  br label %468

222:                                              ; preds = %204
  %223 = load %struct.bnxt_qplib_hwq*, %struct.bnxt_qplib_hwq** %11, align 8
  %224 = getelementptr inbounds %struct.bnxt_qplib_hwq, %struct.bnxt_qplib_hwq* %223, i32 0, i32 5
  %225 = load %struct.TYPE_2__*, %struct.TYPE_2__** %224, align 8
  %226 = load i64, i64* @PBL_LVL_1, align 8
  %227 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %225, i64 %226
  %228 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %227, i32 0, i32 2
  %229 = load i64, i64* %228, align 8
  %230 = inttoptr i64 %229 to i32**
  store i32** %230, i32*** %25, align 8
  %231 = load %struct.bnxt_qplib_hwq*, %struct.bnxt_qplib_hwq** %11, align 8
  %232 = getelementptr inbounds %struct.bnxt_qplib_hwq, %struct.bnxt_qplib_hwq* %231, i32 0, i32 5
  %233 = load %struct.TYPE_2__*, %struct.TYPE_2__** %232, align 8
  %234 = load i64, i64* @PBL_LVL_2, align 8
  %235 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %233, i64 %234
  %236 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %235, i32 0, i32 0
  %237 = load i32*, i32** %236, align 8
  store i32* %237, i32** %24, align 8
  store i32 0, i32* %27, align 4
  br label %238

238:                                              ; preds = %264, %222
  %239 = load i32, i32* %27, align 4
  %240 = load %struct.bnxt_qplib_hwq*, %struct.bnxt_qplib_hwq** %11, align 8
  %241 = getelementptr inbounds %struct.bnxt_qplib_hwq, %struct.bnxt_qplib_hwq* %240, i32 0, i32 5
  %242 = load %struct.TYPE_2__*, %struct.TYPE_2__** %241, align 8
  %243 = load i64, i64* @PBL_LVL_2, align 8
  %244 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %242, i64 %243
  %245 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %244, i32 0, i32 1
  %246 = load i32, i32* %245, align 8
  %247 = icmp slt i32 %239, %246
  br i1 %247, label %248, label %267

248:                                              ; preds = %238
  %249 = load i32*, i32** %24, align 8
  %250 = load i32, i32* %27, align 4
  %251 = sext i32 %250 to i64
  %252 = getelementptr inbounds i32, i32* %249, i64 %251
  %253 = load i32, i32* %252, align 4
  %254 = load i32, i32* @PTU_PTE_VALID, align 4
  %255 = or i32 %253, %254
  %256 = load i32**, i32*** %25, align 8
  %257 = load i32, i32* %27, align 4
  %258 = call i64 @PTR_PG(i32 %257)
  %259 = getelementptr inbounds i32*, i32** %256, i64 %258
  %260 = load i32*, i32** %259, align 8
  %261 = load i32, i32* %27, align 4
  %262 = call i64 @PTR_IDX(i32 %261)
  %263 = getelementptr inbounds i32, i32* %260, i64 %262
  store i32 %255, i32* %263, align 4
  br label %264

264:                                              ; preds = %248
  %265 = load i32, i32* %27, align 4
  %266 = add nsw i32 %265, 1
  store i32 %266, i32* %27, align 4
  br label %238

267:                                              ; preds = %238
  %268 = load i32, i32* %17, align 4
  %269 = load i32, i32* @HWQ_TYPE_QUEUE, align 4
  %270 = icmp eq i32 %268, %269
  br i1 %270, label %271, label %309

271:                                              ; preds = %267
  %272 = load %struct.bnxt_qplib_hwq*, %struct.bnxt_qplib_hwq** %11, align 8
  %273 = getelementptr inbounds %struct.bnxt_qplib_hwq, %struct.bnxt_qplib_hwq* %272, i32 0, i32 5
  %274 = load %struct.TYPE_2__*, %struct.TYPE_2__** %273, align 8
  %275 = load i64, i64* @PBL_LVL_2, align 8
  %276 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %274, i64 %275
  %277 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %276, i32 0, i32 1
  %278 = load i32, i32* %277, align 8
  store i32 %278, i32* %27, align 4
  %279 = load i32, i32* @PTU_PTE_LAST, align 4
  %280 = load i32**, i32*** %25, align 8
  %281 = load i32, i32* %27, align 4
  %282 = sub nsw i32 %281, 1
  %283 = call i64 @PTR_PG(i32 %282)
  %284 = getelementptr inbounds i32*, i32** %280, i64 %283
  %285 = load i32*, i32** %284, align 8
  %286 = load i32, i32* %27, align 4
  %287 = sub nsw i32 %286, 1
  %288 = call i64 @PTR_IDX(i32 %287)
  %289 = getelementptr inbounds i32, i32* %285, i64 %288
  %290 = load i32, i32* %289, align 4
  %291 = or i32 %290, %279
  store i32 %291, i32* %289, align 4
  %292 = load i32, i32* %27, align 4
  %293 = icmp sgt i32 %292, 1
  br i1 %293, label %294, label %308

294:                                              ; preds = %271
  %295 = load i32, i32* @PTU_PTE_NEXT_TO_LAST, align 4
  %296 = load i32**, i32*** %25, align 8
  %297 = load i32, i32* %27, align 4
  %298 = sub nsw i32 %297, 2
  %299 = call i64 @PTR_PG(i32 %298)
  %300 = getelementptr inbounds i32*, i32** %296, i64 %299
  %301 = load i32*, i32** %300, align 8
  %302 = load i32, i32* %27, align 4
  %303 = sub nsw i32 %302, 2
  %304 = call i64 @PTR_IDX(i32 %303)
  %305 = getelementptr inbounds i32, i32* %301, i64 %304
  %306 = load i32, i32* %305, align 4
  %307 = or i32 %306, %295
  store i32 %307, i32* %305, align 4
  br label %308

308:                                              ; preds = %294, %271
  br label %309

309:                                              ; preds = %308, %267
  %310 = load i64, i64* @PBL_LVL_2, align 8
  %311 = load %struct.bnxt_qplib_hwq*, %struct.bnxt_qplib_hwq** %11, align 8
  %312 = getelementptr inbounds %struct.bnxt_qplib_hwq, %struct.bnxt_qplib_hwq* %311, i32 0, i32 0
  store i64 %310, i64* %312, align 8
  br label %427

313:                                              ; preds = %142
  %314 = load i32, i32* %17, align 4
  %315 = load i32, i32* @HWQ_TYPE_L2_CMPL, align 4
  %316 = icmp eq i32 %314, %315
  br i1 %316, label %317, label %318

317:                                              ; preds = %313
  br label %320

318:                                              ; preds = %313
  %319 = load i32, i32* @PTU_PTE_VALID, align 4
  br label %320

320:                                              ; preds = %318, %317
  %321 = phi i32 [ 0, %317 ], [ %319, %318 ]
  store i32 %321, i32* %29, align 4
  %322 = load %struct.pci_dev*, %struct.pci_dev** %10, align 8
  %323 = load %struct.bnxt_qplib_hwq*, %struct.bnxt_qplib_hwq** %11, align 8
  %324 = getelementptr inbounds %struct.bnxt_qplib_hwq, %struct.bnxt_qplib_hwq* %323, i32 0, i32 5
  %325 = load %struct.TYPE_2__*, %struct.TYPE_2__** %324, align 8
  %326 = load i64, i64* @PBL_LVL_1, align 8
  %327 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %325, i64 %326
  %328 = load %struct.scatterlist*, %struct.scatterlist** %26, align 8
  %329 = load i32, i32* %18, align 4
  %330 = load i32, i32* %19, align 4
  %331 = load i32, i32* %16, align 4
  %332 = call i32 @__alloc_pbl(%struct.pci_dev* %322, %struct.TYPE_2__* %327, %struct.scatterlist* %328, i32 %329, i32 %330, i32 %331)
  store i32 %332, i32* %28, align 4
  %333 = load i32, i32* %28, align 4
  %334 = icmp ne i32 %333, 0
  br i1 %334, label %335, label %336

335:                                              ; preds = %320
  br label %468

336:                                              ; preds = %320
  %337 = load %struct.bnxt_qplib_hwq*, %struct.bnxt_qplib_hwq** %11, align 8
  %338 = getelementptr inbounds %struct.bnxt_qplib_hwq, %struct.bnxt_qplib_hwq* %337, i32 0, i32 5
  %339 = load %struct.TYPE_2__*, %struct.TYPE_2__** %338, align 8
  %340 = load i64, i64* @PBL_LVL_0, align 8
  %341 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %339, i64 %340
  %342 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %341, i32 0, i32 2
  %343 = load i64, i64* %342, align 8
  %344 = inttoptr i64 %343 to i32**
  store i32** %344, i32*** %25, align 8
  %345 = load %struct.bnxt_qplib_hwq*, %struct.bnxt_qplib_hwq** %11, align 8
  %346 = getelementptr inbounds %struct.bnxt_qplib_hwq, %struct.bnxt_qplib_hwq* %345, i32 0, i32 5
  %347 = load %struct.TYPE_2__*, %struct.TYPE_2__** %346, align 8
  %348 = load i64, i64* @PBL_LVL_1, align 8
  %349 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %347, i64 %348
  %350 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %349, i32 0, i32 0
  %351 = load i32*, i32** %350, align 8
  store i32* %351, i32** %24, align 8
  store i32 0, i32* %27, align 4
  br label %352

352:                                              ; preds = %378, %336
  %353 = load i32, i32* %27, align 4
  %354 = load %struct.bnxt_qplib_hwq*, %struct.bnxt_qplib_hwq** %11, align 8
  %355 = getelementptr inbounds %struct.bnxt_qplib_hwq, %struct.bnxt_qplib_hwq* %354, i32 0, i32 5
  %356 = load %struct.TYPE_2__*, %struct.TYPE_2__** %355, align 8
  %357 = load i64, i64* @PBL_LVL_1, align 8
  %358 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %356, i64 %357
  %359 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %358, i32 0, i32 1
  %360 = load i32, i32* %359, align 8
  %361 = icmp slt i32 %353, %360
  br i1 %361, label %362, label %381

362:                                              ; preds = %352
  %363 = load i32*, i32** %24, align 8
  %364 = load i32, i32* %27, align 4
  %365 = sext i32 %364 to i64
  %366 = getelementptr inbounds i32, i32* %363, i64 %365
  %367 = load i32, i32* %366, align 4
  %368 = load i32, i32* %29, align 4
  %369 = or i32 %367, %368
  %370 = load i32**, i32*** %25, align 8
  %371 = load i32, i32* %27, align 4
  %372 = call i64 @PTR_PG(i32 %371)
  %373 = getelementptr inbounds i32*, i32** %370, i64 %372
  %374 = load i32*, i32** %373, align 8
  %375 = load i32, i32* %27, align 4
  %376 = call i64 @PTR_IDX(i32 %375)
  %377 = getelementptr inbounds i32, i32* %374, i64 %376
  store i32 %369, i32* %377, align 4
  br label %378

378:                                              ; preds = %362
  %379 = load i32, i32* %27, align 4
  %380 = add nsw i32 %379, 1
  store i32 %380, i32* %27, align 4
  br label %352

381:                                              ; preds = %352
  %382 = load i32, i32* %17, align 4
  %383 = load i32, i32* @HWQ_TYPE_QUEUE, align 4
  %384 = icmp eq i32 %382, %383
  br i1 %384, label %385, label %423

385:                                              ; preds = %381
  %386 = load %struct.bnxt_qplib_hwq*, %struct.bnxt_qplib_hwq** %11, align 8
  %387 = getelementptr inbounds %struct.bnxt_qplib_hwq, %struct.bnxt_qplib_hwq* %386, i32 0, i32 5
  %388 = load %struct.TYPE_2__*, %struct.TYPE_2__** %387, align 8
  %389 = load i64, i64* @PBL_LVL_1, align 8
  %390 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %388, i64 %389
  %391 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %390, i32 0, i32 1
  %392 = load i32, i32* %391, align 8
  store i32 %392, i32* %27, align 4
  %393 = load i32, i32* @PTU_PTE_LAST, align 4
  %394 = load i32**, i32*** %25, align 8
  %395 = load i32, i32* %27, align 4
  %396 = sub nsw i32 %395, 1
  %397 = call i64 @PTR_PG(i32 %396)
  %398 = getelementptr inbounds i32*, i32** %394, i64 %397
  %399 = load i32*, i32** %398, align 8
  %400 = load i32, i32* %27, align 4
  %401 = sub nsw i32 %400, 1
  %402 = call i64 @PTR_IDX(i32 %401)
  %403 = getelementptr inbounds i32, i32* %399, i64 %402
  %404 = load i32, i32* %403, align 4
  %405 = or i32 %404, %393
  store i32 %405, i32* %403, align 4
  %406 = load i32, i32* %27, align 4
  %407 = icmp sgt i32 %406, 1
  br i1 %407, label %408, label %422

408:                                              ; preds = %385
  %409 = load i32, i32* @PTU_PTE_NEXT_TO_LAST, align 4
  %410 = load i32**, i32*** %25, align 8
  %411 = load i32, i32* %27, align 4
  %412 = sub nsw i32 %411, 2
  %413 = call i64 @PTR_PG(i32 %412)
  %414 = getelementptr inbounds i32*, i32** %410, i64 %413
  %415 = load i32*, i32** %414, align 8
  %416 = load i32, i32* %27, align 4
  %417 = sub nsw i32 %416, 2
  %418 = call i64 @PTR_IDX(i32 %417)
  %419 = getelementptr inbounds i32, i32* %415, i64 %418
  %420 = load i32, i32* %419, align 4
  %421 = or i32 %420, %409
  store i32 %421, i32* %419, align 4
  br label %422

422:                                              ; preds = %408, %385
  br label %423

423:                                              ; preds = %422, %381
  %424 = load i64, i64* @PBL_LVL_1, align 8
  %425 = load %struct.bnxt_qplib_hwq*, %struct.bnxt_qplib_hwq** %11, align 8
  %426 = getelementptr inbounds %struct.bnxt_qplib_hwq, %struct.bnxt_qplib_hwq* %425, i32 0, i32 0
  store i64 %424, i64* %426, align 8
  br label %427

427:                                              ; preds = %423, %309
  br label %428

428:                                              ; preds = %427, %135
  %429 = load %struct.pci_dev*, %struct.pci_dev** %10, align 8
  %430 = load %struct.bnxt_qplib_hwq*, %struct.bnxt_qplib_hwq** %11, align 8
  %431 = getelementptr inbounds %struct.bnxt_qplib_hwq, %struct.bnxt_qplib_hwq* %430, i32 0, i32 10
  store %struct.pci_dev* %429, %struct.pci_dev** %431, align 8
  %432 = load %struct.bnxt_qplib_hwq*, %struct.bnxt_qplib_hwq** %11, align 8
  %433 = getelementptr inbounds %struct.bnxt_qplib_hwq, %struct.bnxt_qplib_hwq* %432, i32 0, i32 9
  %434 = call i32 @spin_lock_init(i32* %433)
  %435 = load %struct.bnxt_qplib_hwq*, %struct.bnxt_qplib_hwq** %11, align 8
  %436 = getelementptr inbounds %struct.bnxt_qplib_hwq, %struct.bnxt_qplib_hwq* %435, i32 0, i32 8
  store i64 0, i64* %436, align 8
  %437 = load %struct.bnxt_qplib_hwq*, %struct.bnxt_qplib_hwq** %11, align 8
  %438 = getelementptr inbounds %struct.bnxt_qplib_hwq, %struct.bnxt_qplib_hwq* %437, i32 0, i32 7
  store i64 0, i64* %438, align 8
  %439 = load i32, i32* %20, align 4
  %440 = load %struct.bnxt_qplib_hwq*, %struct.bnxt_qplib_hwq** %11, align 8
  %441 = getelementptr inbounds %struct.bnxt_qplib_hwq, %struct.bnxt_qplib_hwq* %440, i32 0, i32 2
  store i32 %439, i32* %441, align 4
  %442 = load i32*, i32** %13, align 8
  store i32 %439, i32* %442, align 4
  %443 = load i32, i32* %21, align 4
  %444 = load %struct.bnxt_qplib_hwq*, %struct.bnxt_qplib_hwq** %11, align 8
  %445 = getelementptr inbounds %struct.bnxt_qplib_hwq, %struct.bnxt_qplib_hwq* %444, i32 0, i32 3
  store i32 %443, i32* %445, align 8
  %446 = load %struct.bnxt_qplib_hwq*, %struct.bnxt_qplib_hwq** %11, align 8
  %447 = getelementptr inbounds %struct.bnxt_qplib_hwq, %struct.bnxt_qplib_hwq* %446, i32 0, i32 5
  %448 = load %struct.TYPE_2__*, %struct.TYPE_2__** %447, align 8
  %449 = load %struct.bnxt_qplib_hwq*, %struct.bnxt_qplib_hwq** %11, align 8
  %450 = getelementptr inbounds %struct.bnxt_qplib_hwq, %struct.bnxt_qplib_hwq* %449, i32 0, i32 0
  %451 = load i64, i64* %450, align 8
  %452 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %448, i64 %451
  %453 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %452, i32 0, i32 2
  %454 = load i64, i64* %453, align 8
  %455 = load %struct.bnxt_qplib_hwq*, %struct.bnxt_qplib_hwq** %11, align 8
  %456 = getelementptr inbounds %struct.bnxt_qplib_hwq, %struct.bnxt_qplib_hwq* %455, i32 0, i32 6
  store i64 %454, i64* %456, align 8
  %457 = load %struct.bnxt_qplib_hwq*, %struct.bnxt_qplib_hwq** %11, align 8
  %458 = getelementptr inbounds %struct.bnxt_qplib_hwq, %struct.bnxt_qplib_hwq* %457, i32 0, i32 5
  %459 = load %struct.TYPE_2__*, %struct.TYPE_2__** %458, align 8
  %460 = load %struct.bnxt_qplib_hwq*, %struct.bnxt_qplib_hwq** %11, align 8
  %461 = getelementptr inbounds %struct.bnxt_qplib_hwq, %struct.bnxt_qplib_hwq* %460, i32 0, i32 0
  %462 = load i64, i64* %461, align 8
  %463 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %459, i64 %462
  %464 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %463, i32 0, i32 0
  %465 = load i32*, i32** %464, align 8
  %466 = load %struct.bnxt_qplib_hwq*, %struct.bnxt_qplib_hwq** %11, align 8
  %467 = getelementptr inbounds %struct.bnxt_qplib_hwq, %struct.bnxt_qplib_hwq* %466, i32 0, i32 4
  store i32* %465, i32** %467, align 8
  store i32 0, i32* %9, align 4
  br label %474

468:                                              ; preds = %335, %221, %158, %134
  %469 = load %struct.pci_dev*, %struct.pci_dev** %10, align 8
  %470 = load %struct.bnxt_qplib_hwq*, %struct.bnxt_qplib_hwq** %11, align 8
  %471 = call i32 @bnxt_qplib_free_hwq(%struct.pci_dev* %469, %struct.bnxt_qplib_hwq* %470)
  %472 = load i32, i32* @ENOMEM, align 4
  %473 = sub nsw i32 0, %472
  store i32 %473, i32* %9, align 4
  br label %474

474:                                              ; preds = %468, %428, %90
  %475 = load i32, i32* %9, align 4
  ret i32 %475
}

declare dso_local i32 @roundup_pow_of_two(i32) #1

declare dso_local i32 @__alloc_pbl(%struct.pci_dev*, %struct.TYPE_2__*, %struct.scatterlist*, i32, i32, i32) #1

declare dso_local i64 @PTR_PG(i32) #1

declare dso_local i64 @PTR_IDX(i32) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @bnxt_qplib_free_hwq(%struct.pci_dev*, %struct.bnxt_qplib_hwq*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
