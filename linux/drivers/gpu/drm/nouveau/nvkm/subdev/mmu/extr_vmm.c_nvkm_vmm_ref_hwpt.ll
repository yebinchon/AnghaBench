; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/subdev/mmu/extr_vmm.c_nvkm_vmm_ref_hwpt.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/subdev/mmu/extr_vmm.c_nvkm_vmm_ref_hwpt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvkm_vmm_iter = type { i32, %struct.nvkm_vmm*, %struct.nvkm_vmm_desc* }
%struct.nvkm_vmm = type { %struct.nvkm_mmu* }
%struct.nvkm_mmu = type { i32 }
%struct.nvkm_vmm_desc = type { i32, i64, %struct.TYPE_2__*, i32, i32 }
%struct.TYPE_2__ = type { i32 (%struct.nvkm_vmm*, %struct.nvkm_vmm_pt*, i64)*, i32 (%struct.nvkm_vmm*, %struct.nvkm_mmu_pt*, i64, i64)*, i32 (%struct.nvkm_vmm*, %struct.nvkm_mmu_pt*, i64, i64)*, i32 (%struct.nvkm_vmm*, %struct.nvkm_mmu_pt*, i64, i64)* }
%struct.nvkm_mmu_pt = type { i32 }
%struct.nvkm_vmm_pt = type { i32*, i64, i64*, %struct.nvkm_mmu_pt**, %struct.nvkm_vmm_pt** }

@SPT = common dso_local global i32 0, align 4
@LPT = common dso_local global i32 0, align 4
@NVKM_VMM_PTE_SPTES = common dso_local global i32 0, align 4
@NVKM_VMM_PTE_VALID = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [13 x i8] c"PDE write %s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nvkm_vmm_iter*, %struct.nvkm_vmm_pt*, i64)* @nvkm_vmm_ref_hwpt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nvkm_vmm_ref_hwpt(%struct.nvkm_vmm_iter* %0, %struct.nvkm_vmm_pt* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.nvkm_vmm_iter*, align 8
  %6 = alloca %struct.nvkm_vmm_pt*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.nvkm_vmm_desc*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.nvkm_vmm_pt*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.nvkm_vmm*, align 8
  %13 = alloca %struct.nvkm_mmu*, align 8
  %14 = alloca %struct.nvkm_mmu_pt*, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  %19 = alloca i64, align 8
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  store %struct.nvkm_vmm_iter* %0, %struct.nvkm_vmm_iter** %5, align 8
  store %struct.nvkm_vmm_pt* %1, %struct.nvkm_vmm_pt** %6, align 8
  store i64 %2, i64* %7, align 8
  %22 = load %struct.nvkm_vmm_iter*, %struct.nvkm_vmm_iter** %5, align 8
  %23 = getelementptr inbounds %struct.nvkm_vmm_iter, %struct.nvkm_vmm_iter* %22, i32 0, i32 2
  %24 = load %struct.nvkm_vmm_desc*, %struct.nvkm_vmm_desc** %23, align 8
  %25 = load %struct.nvkm_vmm_iter*, %struct.nvkm_vmm_iter** %5, align 8
  %26 = getelementptr inbounds %struct.nvkm_vmm_iter, %struct.nvkm_vmm_iter* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = sub nsw i32 %27, 1
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds %struct.nvkm_vmm_desc, %struct.nvkm_vmm_desc* %24, i64 %29
  store %struct.nvkm_vmm_desc* %30, %struct.nvkm_vmm_desc** %8, align 8
  %31 = load %struct.nvkm_vmm_desc*, %struct.nvkm_vmm_desc** %8, align 8
  %32 = getelementptr inbounds %struct.nvkm_vmm_desc, %struct.nvkm_vmm_desc* %31, i32 0, i32 3
  %33 = load i32, i32* %32, align 8
  %34 = load i32, i32* @SPT, align 4
  %35 = icmp eq i32 %33, %34
  %36 = zext i1 %35 to i32
  store i32 %36, i32* %9, align 4
  %37 = load %struct.nvkm_vmm_pt*, %struct.nvkm_vmm_pt** %6, align 8
  %38 = getelementptr inbounds %struct.nvkm_vmm_pt, %struct.nvkm_vmm_pt* %37, i32 0, i32 4
  %39 = load %struct.nvkm_vmm_pt**, %struct.nvkm_vmm_pt*** %38, align 8
  %40 = load i64, i64* %7, align 8
  %41 = getelementptr inbounds %struct.nvkm_vmm_pt*, %struct.nvkm_vmm_pt** %39, i64 %40
  %42 = load %struct.nvkm_vmm_pt*, %struct.nvkm_vmm_pt** %41, align 8
  store %struct.nvkm_vmm_pt* %42, %struct.nvkm_vmm_pt** %10, align 8
  %43 = load %struct.nvkm_vmm_pt*, %struct.nvkm_vmm_pt** %10, align 8
  %44 = getelementptr inbounds %struct.nvkm_vmm_pt, %struct.nvkm_vmm_pt* %43, i32 0, i32 1
  %45 = load i64, i64* %44, align 8
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %55, label %47

47:                                               ; preds = %3
  %48 = load %struct.nvkm_vmm_desc*, %struct.nvkm_vmm_desc** %8, align 8
  %49 = getelementptr inbounds %struct.nvkm_vmm_desc, %struct.nvkm_vmm_desc* %48, i32 0, i32 2
  %50 = load %struct.TYPE_2__*, %struct.TYPE_2__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %50, i32 0, i32 1
  %52 = load i32 (%struct.nvkm_vmm*, %struct.nvkm_mmu_pt*, i64, i64)*, i32 (%struct.nvkm_vmm*, %struct.nvkm_mmu_pt*, i64, i64)** %51, align 8
  %53 = icmp ne i32 (%struct.nvkm_vmm*, %struct.nvkm_mmu_pt*, i64, i64)* %52, null
  %54 = xor i1 %53, true
  br label %55

55:                                               ; preds = %47, %3
  %56 = phi i1 [ false, %3 ], [ %54, %47 ]
  %57 = zext i1 %56 to i32
  store i32 %57, i32* %11, align 4
  %58 = load %struct.nvkm_vmm_iter*, %struct.nvkm_vmm_iter** %5, align 8
  %59 = getelementptr inbounds %struct.nvkm_vmm_iter, %struct.nvkm_vmm_iter* %58, i32 0, i32 1
  %60 = load %struct.nvkm_vmm*, %struct.nvkm_vmm** %59, align 8
  store %struct.nvkm_vmm* %60, %struct.nvkm_vmm** %12, align 8
  %61 = load %struct.nvkm_vmm*, %struct.nvkm_vmm** %12, align 8
  %62 = getelementptr inbounds %struct.nvkm_vmm, %struct.nvkm_vmm* %61, i32 0, i32 0
  %63 = load %struct.nvkm_mmu*, %struct.nvkm_mmu** %62, align 8
  store %struct.nvkm_mmu* %63, %struct.nvkm_mmu** %13, align 8
  %64 = load %struct.nvkm_vmm_desc*, %struct.nvkm_vmm_desc** %8, align 8
  %65 = getelementptr inbounds %struct.nvkm_vmm_desc, %struct.nvkm_vmm_desc* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 8
  %67 = shl i32 1, %66
  %68 = sext i32 %67 to i64
  store i64 %68, i64* %15, align 8
  %69 = load %struct.nvkm_vmm_desc*, %struct.nvkm_vmm_desc** %8, align 8
  %70 = getelementptr inbounds %struct.nvkm_vmm_desc, %struct.nvkm_vmm_desc* %69, i32 0, i32 1
  %71 = load i64, i64* %70, align 8
  %72 = load i64, i64* %15, align 8
  %73 = mul i64 %71, %72
  store i64 %73, i64* %19, align 8
  %74 = load %struct.nvkm_vmm_pt*, %struct.nvkm_vmm_pt** %6, align 8
  %75 = getelementptr inbounds %struct.nvkm_vmm_pt, %struct.nvkm_vmm_pt* %74, i32 0, i32 2
  %76 = load i64*, i64** %75, align 8
  %77 = getelementptr inbounds i64, i64* %76, i64 0
  %78 = load i64, i64* %77, align 8
  %79 = add nsw i64 %78, 1
  store i64 %79, i64* %77, align 8
  %80 = load %struct.nvkm_mmu*, %struct.nvkm_mmu** %13, align 8
  %81 = load i64, i64* %19, align 8
  %82 = load %struct.nvkm_vmm_desc*, %struct.nvkm_vmm_desc** %8, align 8
  %83 = getelementptr inbounds %struct.nvkm_vmm_desc, %struct.nvkm_vmm_desc* %82, i32 0, i32 4
  %84 = load i32, i32* %83, align 4
  %85 = load i32, i32* %11, align 4
  %86 = call %struct.nvkm_mmu_pt* @nvkm_mmu_ptc_get(%struct.nvkm_mmu* %80, i64 %81, i32 %84, i32 %85)
  %87 = load %struct.nvkm_vmm_pt*, %struct.nvkm_vmm_pt** %10, align 8
  %88 = getelementptr inbounds %struct.nvkm_vmm_pt, %struct.nvkm_vmm_pt* %87, i32 0, i32 3
  %89 = load %struct.nvkm_mmu_pt**, %struct.nvkm_mmu_pt*** %88, align 8
  %90 = load i32, i32* %9, align 4
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds %struct.nvkm_mmu_pt*, %struct.nvkm_mmu_pt** %89, i64 %91
  store %struct.nvkm_mmu_pt* %86, %struct.nvkm_mmu_pt** %92, align 8
  %93 = load %struct.nvkm_vmm_pt*, %struct.nvkm_vmm_pt** %10, align 8
  %94 = getelementptr inbounds %struct.nvkm_vmm_pt, %struct.nvkm_vmm_pt* %93, i32 0, i32 3
  %95 = load %struct.nvkm_mmu_pt**, %struct.nvkm_mmu_pt*** %94, align 8
  %96 = load i32, i32* %9, align 4
  %97 = sext i32 %96 to i64
  %98 = getelementptr inbounds %struct.nvkm_mmu_pt*, %struct.nvkm_mmu_pt** %95, i64 %97
  %99 = load %struct.nvkm_mmu_pt*, %struct.nvkm_mmu_pt** %98, align 8
  %100 = icmp ne %struct.nvkm_mmu_pt* %99, null
  br i1 %100, label %108, label %101

101:                                              ; preds = %55
  %102 = load %struct.nvkm_vmm_iter*, %struct.nvkm_vmm_iter** %5, align 8
  %103 = getelementptr inbounds %struct.nvkm_vmm_iter, %struct.nvkm_vmm_iter* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 8
  %105 = add nsw i32 %104, -1
  store i32 %105, i32* %103, align 8
  %106 = load %struct.nvkm_vmm_iter*, %struct.nvkm_vmm_iter** %5, align 8
  %107 = call i32 @nvkm_vmm_unref_pdes(%struct.nvkm_vmm_iter* %106)
  store i32 0, i32* %4, align 4
  br label %295

108:                                              ; preds = %55
  %109 = load i32, i32* %11, align 4
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %111, label %112

111:                                              ; preds = %108
  br label %270

112:                                              ; preds = %108
  %113 = load %struct.nvkm_vmm_pt*, %struct.nvkm_vmm_pt** %10, align 8
  %114 = getelementptr inbounds %struct.nvkm_vmm_pt, %struct.nvkm_vmm_pt* %113, i32 0, i32 3
  %115 = load %struct.nvkm_mmu_pt**, %struct.nvkm_mmu_pt*** %114, align 8
  %116 = load i32, i32* %9, align 4
  %117 = sext i32 %116 to i64
  %118 = getelementptr inbounds %struct.nvkm_mmu_pt*, %struct.nvkm_mmu_pt** %115, i64 %117
  %119 = load %struct.nvkm_mmu_pt*, %struct.nvkm_mmu_pt** %118, align 8
  store %struct.nvkm_mmu_pt* %119, %struct.nvkm_mmu_pt** %14, align 8
  %120 = load %struct.nvkm_vmm_desc*, %struct.nvkm_vmm_desc** %8, align 8
  %121 = getelementptr inbounds %struct.nvkm_vmm_desc, %struct.nvkm_vmm_desc* %120, i32 0, i32 3
  %122 = load i32, i32* %121, align 8
  %123 = load i32, i32* @LPT, align 4
  %124 = icmp eq i32 %122, %123
  br i1 %124, label %125, label %239

125:                                              ; preds = %112
  %126 = load %struct.nvkm_vmm_pt*, %struct.nvkm_vmm_pt** %10, align 8
  %127 = getelementptr inbounds %struct.nvkm_vmm_pt, %struct.nvkm_vmm_pt* %126, i32 0, i32 2
  %128 = load i64*, i64** %127, align 8
  %129 = getelementptr inbounds i64, i64* %128, i64 1
  %130 = load i64, i64* %129, align 8
  %131 = icmp ne i64 %130, 0
  br i1 %131, label %132, label %239

132:                                              ; preds = %125
  store i64 0, i64* %16, align 8
  store i64 0, i64* %17, align 8
  br label %133

133:                                              ; preds = %236, %132
  %134 = load i64, i64* %17, align 8
  %135 = load i64, i64* %15, align 8
  %136 = icmp ult i64 %134, %135
  br i1 %136, label %137, label %238

137:                                              ; preds = %133
  %138 = load %struct.nvkm_vmm_pt*, %struct.nvkm_vmm_pt** %10, align 8
  %139 = getelementptr inbounds %struct.nvkm_vmm_pt, %struct.nvkm_vmm_pt* %138, i32 0, i32 0
  %140 = load i32*, i32** %139, align 8
  %141 = load i64, i64* %17, align 8
  %142 = getelementptr inbounds i32, i32* %140, i64 %141
  %143 = load i32, i32* %142, align 4
  %144 = load i32, i32* @NVKM_VMM_PTE_SPTES, align 4
  %145 = and i32 %143, %144
  store i32 %145, i32* %20, align 4
  store i64 1, i64* %18, align 8
  %146 = load i64, i64* %17, align 8
  %147 = add i64 %146, 1
  store i64 %147, i64* %17, align 8
  br label %148

148:                                              ; preds = %166, %137
  %149 = load i64, i64* %17, align 8
  %150 = load i64, i64* %15, align 8
  %151 = icmp ult i64 %149, %150
  br i1 %151, label %152, label %171

152:                                              ; preds = %148
  %153 = load %struct.nvkm_vmm_pt*, %struct.nvkm_vmm_pt** %10, align 8
  %154 = getelementptr inbounds %struct.nvkm_vmm_pt, %struct.nvkm_vmm_pt* %153, i32 0, i32 0
  %155 = load i32*, i32** %154, align 8
  %156 = load i64, i64* %17, align 8
  %157 = getelementptr inbounds i32, i32* %155, i64 %156
  %158 = load i32, i32* %157, align 4
  %159 = load i32, i32* @NVKM_VMM_PTE_SPTES, align 4
  %160 = and i32 %158, %159
  store i32 %160, i32* %21, align 4
  %161 = load i32, i32* %20, align 4
  %162 = load i32, i32* %21, align 4
  %163 = icmp ne i32 %161, %162
  br i1 %163, label %164, label %165

164:                                              ; preds = %152
  br label %171

165:                                              ; preds = %152
  br label %166

166:                                              ; preds = %165
  %167 = load i64, i64* %18, align 8
  %168 = add i64 %167, 1
  store i64 %168, i64* %18, align 8
  %169 = load i64, i64* %17, align 8
  %170 = add i64 %169, 1
  store i64 %170, i64* %17, align 8
  br label %148

171:                                              ; preds = %164, %148
  %172 = load i32, i32* %20, align 4
  %173 = icmp ne i32 %172, 0
  br i1 %173, label %209, label %174

174:                                              ; preds = %171
  %175 = load %struct.nvkm_vmm_pt*, %struct.nvkm_vmm_pt** %10, align 8
  %176 = getelementptr inbounds %struct.nvkm_vmm_pt, %struct.nvkm_vmm_pt* %175, i32 0, i32 1
  %177 = load i64, i64* %176, align 8
  %178 = icmp ne i64 %177, 0
  br i1 %178, label %179, label %190

179:                                              ; preds = %174
  %180 = load %struct.nvkm_vmm_desc*, %struct.nvkm_vmm_desc** %8, align 8
  %181 = getelementptr inbounds %struct.nvkm_vmm_desc, %struct.nvkm_vmm_desc* %180, i32 0, i32 2
  %182 = load %struct.TYPE_2__*, %struct.TYPE_2__** %181, align 8
  %183 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %182, i32 0, i32 2
  %184 = load i32 (%struct.nvkm_vmm*, %struct.nvkm_mmu_pt*, i64, i64)*, i32 (%struct.nvkm_vmm*, %struct.nvkm_mmu_pt*, i64, i64)** %183, align 8
  %185 = load %struct.nvkm_vmm*, %struct.nvkm_vmm** %12, align 8
  %186 = load %struct.nvkm_mmu_pt*, %struct.nvkm_mmu_pt** %14, align 8
  %187 = load i64, i64* %16, align 8
  %188 = load i64, i64* %18, align 8
  %189 = call i32 %184(%struct.nvkm_vmm* %185, %struct.nvkm_mmu_pt* %186, i64 %187, i64 %188)
  br label %201

190:                                              ; preds = %174
  %191 = load %struct.nvkm_vmm_desc*, %struct.nvkm_vmm_desc** %8, align 8
  %192 = getelementptr inbounds %struct.nvkm_vmm_desc, %struct.nvkm_vmm_desc* %191, i32 0, i32 2
  %193 = load %struct.TYPE_2__*, %struct.TYPE_2__** %192, align 8
  %194 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %193, i32 0, i32 1
  %195 = load i32 (%struct.nvkm_vmm*, %struct.nvkm_mmu_pt*, i64, i64)*, i32 (%struct.nvkm_vmm*, %struct.nvkm_mmu_pt*, i64, i64)** %194, align 8
  %196 = load %struct.nvkm_vmm*, %struct.nvkm_vmm** %12, align 8
  %197 = load %struct.nvkm_mmu_pt*, %struct.nvkm_mmu_pt** %14, align 8
  %198 = load i64, i64* %16, align 8
  %199 = load i64, i64* %18, align 8
  %200 = call i32 %195(%struct.nvkm_vmm* %196, %struct.nvkm_mmu_pt* %197, i64 %198, i64 %199)
  br label %201

201:                                              ; preds = %190, %179
  %202 = load %struct.nvkm_vmm_pt*, %struct.nvkm_vmm_pt** %10, align 8
  %203 = getelementptr inbounds %struct.nvkm_vmm_pt, %struct.nvkm_vmm_pt* %202, i32 0, i32 0
  %204 = load i32*, i32** %203, align 8
  %205 = load i64, i64* %16, align 8
  %206 = getelementptr inbounds i32, i32* %204, i64 %205
  %207 = load i64, i64* %18, align 8
  %208 = call i32 @memset(i32* %206, i32 0, i64 %207)
  br label %235

209:                                              ; preds = %171
  %210 = load %struct.nvkm_vmm_desc*, %struct.nvkm_vmm_desc** %8, align 8
  %211 = getelementptr inbounds %struct.nvkm_vmm_desc, %struct.nvkm_vmm_desc* %210, i32 0, i32 2
  %212 = load %struct.TYPE_2__*, %struct.TYPE_2__** %211, align 8
  %213 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %212, i32 0, i32 3
  %214 = load i32 (%struct.nvkm_vmm*, %struct.nvkm_mmu_pt*, i64, i64)*, i32 (%struct.nvkm_vmm*, %struct.nvkm_mmu_pt*, i64, i64)** %213, align 8
  %215 = load %struct.nvkm_vmm*, %struct.nvkm_vmm** %12, align 8
  %216 = load %struct.nvkm_mmu_pt*, %struct.nvkm_mmu_pt** %14, align 8
  %217 = load i64, i64* %16, align 8
  %218 = load i64, i64* %18, align 8
  %219 = call i32 %214(%struct.nvkm_vmm* %215, %struct.nvkm_mmu_pt* %216, i64 %217, i64 %218)
  br label %220

220:                                              ; preds = %224, %209
  %221 = load i64, i64* %18, align 8
  %222 = add i64 %221, -1
  store i64 %222, i64* %18, align 8
  %223 = icmp ne i64 %221, 0
  br i1 %223, label %224, label %234

224:                                              ; preds = %220
  %225 = load i32, i32* @NVKM_VMM_PTE_VALID, align 4
  %226 = load %struct.nvkm_vmm_pt*, %struct.nvkm_vmm_pt** %10, align 8
  %227 = getelementptr inbounds %struct.nvkm_vmm_pt, %struct.nvkm_vmm_pt* %226, i32 0, i32 0
  %228 = load i32*, i32** %227, align 8
  %229 = load i64, i64* %16, align 8
  %230 = add i64 %229, 1
  store i64 %230, i64* %16, align 8
  %231 = getelementptr inbounds i32, i32* %228, i64 %229
  %232 = load i32, i32* %231, align 4
  %233 = or i32 %232, %225
  store i32 %233, i32* %231, align 4
  br label %220

234:                                              ; preds = %220
  br label %235

235:                                              ; preds = %234, %201
  br label %236

236:                                              ; preds = %235
  %237 = load i64, i64* %17, align 8
  store i64 %237, i64* %16, align 8
  br label %133

238:                                              ; preds = %133
  br label %269

239:                                              ; preds = %125, %112
  %240 = load %struct.nvkm_vmm_pt*, %struct.nvkm_vmm_pt** %10, align 8
  %241 = getelementptr inbounds %struct.nvkm_vmm_pt, %struct.nvkm_vmm_pt* %240, i32 0, i32 1
  %242 = load i64, i64* %241, align 8
  %243 = icmp ne i64 %242, 0
  br i1 %243, label %244, label %258

244:                                              ; preds = %239
  %245 = load %struct.nvkm_vmm_desc*, %struct.nvkm_vmm_desc** %8, align 8
  %246 = load %struct.nvkm_vmm_pt*, %struct.nvkm_vmm_pt** %10, align 8
  %247 = load i64, i64* %15, align 8
  %248 = call i32 @nvkm_vmm_sparse_ptes(%struct.nvkm_vmm_desc* %245, %struct.nvkm_vmm_pt* %246, i32 0, i64 %247)
  %249 = load %struct.nvkm_vmm_desc*, %struct.nvkm_vmm_desc** %8, align 8
  %250 = getelementptr inbounds %struct.nvkm_vmm_desc, %struct.nvkm_vmm_desc* %249, i32 0, i32 2
  %251 = load %struct.TYPE_2__*, %struct.TYPE_2__** %250, align 8
  %252 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %251, i32 0, i32 2
  %253 = load i32 (%struct.nvkm_vmm*, %struct.nvkm_mmu_pt*, i64, i64)*, i32 (%struct.nvkm_vmm*, %struct.nvkm_mmu_pt*, i64, i64)** %252, align 8
  %254 = load %struct.nvkm_vmm*, %struct.nvkm_vmm** %12, align 8
  %255 = load %struct.nvkm_mmu_pt*, %struct.nvkm_mmu_pt** %14, align 8
  %256 = load i64, i64* %15, align 8
  %257 = call i32 %253(%struct.nvkm_vmm* %254, %struct.nvkm_mmu_pt* %255, i64 0, i64 %256)
  br label %268

258:                                              ; preds = %239
  %259 = load %struct.nvkm_vmm_desc*, %struct.nvkm_vmm_desc** %8, align 8
  %260 = getelementptr inbounds %struct.nvkm_vmm_desc, %struct.nvkm_vmm_desc* %259, i32 0, i32 2
  %261 = load %struct.TYPE_2__*, %struct.TYPE_2__** %260, align 8
  %262 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %261, i32 0, i32 1
  %263 = load i32 (%struct.nvkm_vmm*, %struct.nvkm_mmu_pt*, i64, i64)*, i32 (%struct.nvkm_vmm*, %struct.nvkm_mmu_pt*, i64, i64)** %262, align 8
  %264 = load %struct.nvkm_vmm*, %struct.nvkm_vmm** %12, align 8
  %265 = load %struct.nvkm_mmu_pt*, %struct.nvkm_mmu_pt** %14, align 8
  %266 = load i64, i64* %15, align 8
  %267 = call i32 %263(%struct.nvkm_vmm* %264, %struct.nvkm_mmu_pt* %265, i64 0, i64 %266)
  br label %268

268:                                              ; preds = %258, %244
  br label %269

269:                                              ; preds = %268, %238
  br label %270

270:                                              ; preds = %269, %111
  %271 = load %struct.nvkm_vmm_iter*, %struct.nvkm_vmm_iter** %5, align 8
  %272 = load %struct.nvkm_vmm_desc*, %struct.nvkm_vmm_desc** %8, align 8
  %273 = call i32 @nvkm_vmm_desc_type(%struct.nvkm_vmm_desc* %272)
  %274 = call i32 @TRA(%struct.nvkm_vmm_iter* %271, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i32 %273)
  %275 = load %struct.nvkm_vmm_iter*, %struct.nvkm_vmm_iter** %5, align 8
  %276 = getelementptr inbounds %struct.nvkm_vmm_iter, %struct.nvkm_vmm_iter* %275, i32 0, i32 2
  %277 = load %struct.nvkm_vmm_desc*, %struct.nvkm_vmm_desc** %276, align 8
  %278 = load %struct.nvkm_vmm_iter*, %struct.nvkm_vmm_iter** %5, align 8
  %279 = getelementptr inbounds %struct.nvkm_vmm_iter, %struct.nvkm_vmm_iter* %278, i32 0, i32 0
  %280 = load i32, i32* %279, align 8
  %281 = sext i32 %280 to i64
  %282 = getelementptr inbounds %struct.nvkm_vmm_desc, %struct.nvkm_vmm_desc* %277, i64 %281
  %283 = getelementptr inbounds %struct.nvkm_vmm_desc, %struct.nvkm_vmm_desc* %282, i32 0, i32 2
  %284 = load %struct.TYPE_2__*, %struct.TYPE_2__** %283, align 8
  %285 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %284, i32 0, i32 0
  %286 = load i32 (%struct.nvkm_vmm*, %struct.nvkm_vmm_pt*, i64)*, i32 (%struct.nvkm_vmm*, %struct.nvkm_vmm_pt*, i64)** %285, align 8
  %287 = load %struct.nvkm_vmm_iter*, %struct.nvkm_vmm_iter** %5, align 8
  %288 = getelementptr inbounds %struct.nvkm_vmm_iter, %struct.nvkm_vmm_iter* %287, i32 0, i32 1
  %289 = load %struct.nvkm_vmm*, %struct.nvkm_vmm** %288, align 8
  %290 = load %struct.nvkm_vmm_pt*, %struct.nvkm_vmm_pt** %6, align 8
  %291 = load i64, i64* %7, align 8
  %292 = call i32 %286(%struct.nvkm_vmm* %289, %struct.nvkm_vmm_pt* %290, i64 %291)
  %293 = load %struct.nvkm_vmm_iter*, %struct.nvkm_vmm_iter** %5, align 8
  %294 = call i32 @nvkm_vmm_flush_mark(%struct.nvkm_vmm_iter* %293)
  store i32 1, i32* %4, align 4
  br label %295

295:                                              ; preds = %270, %101
  %296 = load i32, i32* %4, align 4
  ret i32 %296
}

declare dso_local %struct.nvkm_mmu_pt* @nvkm_mmu_ptc_get(%struct.nvkm_mmu*, i64, i32, i32) #1

declare dso_local i32 @nvkm_vmm_unref_pdes(%struct.nvkm_vmm_iter*) #1

declare dso_local i32 @memset(i32*, i32, i64) #1

declare dso_local i32 @nvkm_vmm_sparse_ptes(%struct.nvkm_vmm_desc*, %struct.nvkm_vmm_pt*, i32, i64) #1

declare dso_local i32 @TRA(%struct.nvkm_vmm_iter*, i8*, i32) #1

declare dso_local i32 @nvkm_vmm_desc_type(%struct.nvkm_vmm_desc*) #1

declare dso_local i32 @nvkm_vmm_flush_mark(%struct.nvkm_vmm_iter*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
