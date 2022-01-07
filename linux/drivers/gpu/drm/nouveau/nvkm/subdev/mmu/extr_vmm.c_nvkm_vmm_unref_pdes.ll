; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/subdev/mmu/extr_vmm.c_nvkm_vmm_unref_pdes.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/subdev/mmu/extr_vmm.c_nvkm_vmm_unref_pdes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvkm_vmm_iter = type { i64, i64*, %struct.nvkm_vmm*, %struct.nvkm_vmm_pt**, %struct.nvkm_vmm_desc* }
%struct.nvkm_vmm = type { i32, i32 }
%struct.nvkm_vmm_pt = type { i64*, i32**, %struct.nvkm_mmu_pt**, i64 }
%struct.nvkm_mmu_pt = type { i32 }
%struct.nvkm_vmm_desc = type { %struct.nvkm_vmm_desc_func*, i32 }
%struct.nvkm_vmm_desc_func = type { i32 (%struct.nvkm_vmm*, %struct.nvkm_vmm_pt*, i64)*, i32 (%struct.nvkm_vmm*, %struct.nvkm_mmu_pt*, i64, i32)*, i32 (%struct.nvkm_vmm*, %struct.nvkm_mmu_pt*, i64, i32)* }

@SPT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [13 x i8] c"PDE unmap %s\00", align 1
@NVKM_VMM_PDE_SPARSE = common dso_local global i32* null, align 8
@.str.1 = private unnamed_addr constant [12 x i8] c"PDE free %s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nvkm_vmm_iter*)* @nvkm_vmm_unref_pdes to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nvkm_vmm_unref_pdes(%struct.nvkm_vmm_iter* %0) #0 {
  %2 = alloca %struct.nvkm_vmm_iter*, align 8
  %3 = alloca %struct.nvkm_vmm_desc*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.nvkm_vmm_pt*, align 8
  %6 = alloca %struct.nvkm_vmm_pt*, align 8
  %7 = alloca %struct.nvkm_mmu_pt*, align 8
  %8 = alloca %struct.nvkm_vmm*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.nvkm_vmm_desc_func*, align 8
  store %struct.nvkm_vmm_iter* %0, %struct.nvkm_vmm_iter** %2, align 8
  %11 = load %struct.nvkm_vmm_iter*, %struct.nvkm_vmm_iter** %2, align 8
  %12 = getelementptr inbounds %struct.nvkm_vmm_iter, %struct.nvkm_vmm_iter* %11, i32 0, i32 4
  %13 = load %struct.nvkm_vmm_desc*, %struct.nvkm_vmm_desc** %12, align 8
  store %struct.nvkm_vmm_desc* %13, %struct.nvkm_vmm_desc** %3, align 8
  %14 = load %struct.nvkm_vmm_desc*, %struct.nvkm_vmm_desc** %3, align 8
  %15 = load %struct.nvkm_vmm_iter*, %struct.nvkm_vmm_iter** %2, align 8
  %16 = getelementptr inbounds %struct.nvkm_vmm_iter, %struct.nvkm_vmm_iter* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = getelementptr inbounds %struct.nvkm_vmm_desc, %struct.nvkm_vmm_desc* %14, i64 %17
  %19 = getelementptr inbounds %struct.nvkm_vmm_desc, %struct.nvkm_vmm_desc* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 8
  %21 = load i32, i32* @SPT, align 4
  %22 = icmp eq i32 %20, %21
  %23 = zext i1 %22 to i32
  store i32 %23, i32* %4, align 4
  %24 = load %struct.nvkm_vmm_iter*, %struct.nvkm_vmm_iter** %2, align 8
  %25 = getelementptr inbounds %struct.nvkm_vmm_iter, %struct.nvkm_vmm_iter* %24, i32 0, i32 3
  %26 = load %struct.nvkm_vmm_pt**, %struct.nvkm_vmm_pt*** %25, align 8
  %27 = load %struct.nvkm_vmm_iter*, %struct.nvkm_vmm_iter** %2, align 8
  %28 = getelementptr inbounds %struct.nvkm_vmm_iter, %struct.nvkm_vmm_iter* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = add i64 %29, 1
  %31 = getelementptr inbounds %struct.nvkm_vmm_pt*, %struct.nvkm_vmm_pt** %26, i64 %30
  %32 = load %struct.nvkm_vmm_pt*, %struct.nvkm_vmm_pt** %31, align 8
  store %struct.nvkm_vmm_pt* %32, %struct.nvkm_vmm_pt** %5, align 8
  %33 = load %struct.nvkm_vmm_iter*, %struct.nvkm_vmm_iter** %2, align 8
  %34 = getelementptr inbounds %struct.nvkm_vmm_iter, %struct.nvkm_vmm_iter* %33, i32 0, i32 3
  %35 = load %struct.nvkm_vmm_pt**, %struct.nvkm_vmm_pt*** %34, align 8
  %36 = load %struct.nvkm_vmm_iter*, %struct.nvkm_vmm_iter** %2, align 8
  %37 = getelementptr inbounds %struct.nvkm_vmm_iter, %struct.nvkm_vmm_iter* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = getelementptr inbounds %struct.nvkm_vmm_pt*, %struct.nvkm_vmm_pt** %35, i64 %38
  %40 = load %struct.nvkm_vmm_pt*, %struct.nvkm_vmm_pt** %39, align 8
  store %struct.nvkm_vmm_pt* %40, %struct.nvkm_vmm_pt** %6, align 8
  %41 = load %struct.nvkm_vmm_pt*, %struct.nvkm_vmm_pt** %6, align 8
  %42 = getelementptr inbounds %struct.nvkm_vmm_pt, %struct.nvkm_vmm_pt* %41, i32 0, i32 2
  %43 = load %struct.nvkm_mmu_pt**, %struct.nvkm_mmu_pt*** %42, align 8
  %44 = load i32, i32* %4, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds %struct.nvkm_mmu_pt*, %struct.nvkm_mmu_pt** %43, i64 %45
  %47 = load %struct.nvkm_mmu_pt*, %struct.nvkm_mmu_pt** %46, align 8
  store %struct.nvkm_mmu_pt* %47, %struct.nvkm_mmu_pt** %7, align 8
  %48 = load %struct.nvkm_vmm_iter*, %struct.nvkm_vmm_iter** %2, align 8
  %49 = getelementptr inbounds %struct.nvkm_vmm_iter, %struct.nvkm_vmm_iter* %48, i32 0, i32 2
  %50 = load %struct.nvkm_vmm*, %struct.nvkm_vmm** %49, align 8
  store %struct.nvkm_vmm* %50, %struct.nvkm_vmm** %8, align 8
  %51 = load %struct.nvkm_vmm_iter*, %struct.nvkm_vmm_iter** %2, align 8
  %52 = getelementptr inbounds %struct.nvkm_vmm_iter, %struct.nvkm_vmm_iter* %51, i32 0, i32 1
  %53 = load i64*, i64** %52, align 8
  %54 = load %struct.nvkm_vmm_iter*, %struct.nvkm_vmm_iter** %2, align 8
  %55 = getelementptr inbounds %struct.nvkm_vmm_iter, %struct.nvkm_vmm_iter* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = add i64 %56, 1
  %58 = getelementptr inbounds i64, i64* %53, i64 %57
  %59 = load i64, i64* %58, align 8
  store i64 %59, i64* %9, align 8
  %60 = load %struct.nvkm_vmm_iter*, %struct.nvkm_vmm_iter** %2, align 8
  %61 = getelementptr inbounds %struct.nvkm_vmm_iter, %struct.nvkm_vmm_iter* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = add i64 %62, 1
  store i64 %63, i64* %61, align 8
  %64 = load %struct.nvkm_vmm_pt*, %struct.nvkm_vmm_pt** %5, align 8
  %65 = getelementptr inbounds %struct.nvkm_vmm_pt, %struct.nvkm_vmm_pt* %64, i32 0, i32 0
  %66 = load i64*, i64** %65, align 8
  %67 = getelementptr inbounds i64, i64* %66, i64 0
  %68 = load i64, i64* %67, align 8
  %69 = add nsw i64 %68, -1
  store i64 %69, i64* %67, align 8
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %180

71:                                               ; preds = %1
  %72 = load %struct.nvkm_vmm_desc*, %struct.nvkm_vmm_desc** %3, align 8
  %73 = load %struct.nvkm_vmm_iter*, %struct.nvkm_vmm_iter** %2, align 8
  %74 = getelementptr inbounds %struct.nvkm_vmm_iter, %struct.nvkm_vmm_iter* %73, i32 0, i32 0
  %75 = load i64, i64* %74, align 8
  %76 = getelementptr inbounds %struct.nvkm_vmm_desc, %struct.nvkm_vmm_desc* %72, i64 %75
  %77 = getelementptr inbounds %struct.nvkm_vmm_desc, %struct.nvkm_vmm_desc* %76, i32 0, i32 0
  %78 = load %struct.nvkm_vmm_desc_func*, %struct.nvkm_vmm_desc_func** %77, align 8
  store %struct.nvkm_vmm_desc_func* %78, %struct.nvkm_vmm_desc_func** %10, align 8
  %79 = load %struct.nvkm_vmm_iter*, %struct.nvkm_vmm_iter** %2, align 8
  %80 = load %struct.nvkm_vmm_desc*, %struct.nvkm_vmm_desc** %3, align 8
  %81 = load %struct.nvkm_vmm_iter*, %struct.nvkm_vmm_iter** %2, align 8
  %82 = getelementptr inbounds %struct.nvkm_vmm_iter, %struct.nvkm_vmm_iter* %81, i32 0, i32 0
  %83 = load i64, i64* %82, align 8
  %84 = sub i64 %83, 1
  %85 = getelementptr inbounds %struct.nvkm_vmm_desc, %struct.nvkm_vmm_desc* %80, i64 %84
  %86 = call i32 @nvkm_vmm_desc_type(%struct.nvkm_vmm_desc* %85)
  %87 = call i32 @TRA(%struct.nvkm_vmm_iter* %79, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i32 %86)
  %88 = load %struct.nvkm_vmm_pt*, %struct.nvkm_vmm_pt** %6, align 8
  %89 = getelementptr inbounds %struct.nvkm_vmm_pt, %struct.nvkm_vmm_pt* %88, i32 0, i32 2
  %90 = load %struct.nvkm_mmu_pt**, %struct.nvkm_mmu_pt*** %89, align 8
  %91 = load i32, i32* %4, align 4
  %92 = sext i32 %91 to i64
  %93 = getelementptr inbounds %struct.nvkm_mmu_pt*, %struct.nvkm_mmu_pt** %90, i64 %92
  store %struct.nvkm_mmu_pt* null, %struct.nvkm_mmu_pt** %93, align 8
  %94 = load %struct.nvkm_vmm_pt*, %struct.nvkm_vmm_pt** %6, align 8
  %95 = getelementptr inbounds %struct.nvkm_vmm_pt, %struct.nvkm_vmm_pt* %94, i32 0, i32 0
  %96 = load i64*, i64** %95, align 8
  %97 = load i32, i32* %4, align 4
  %98 = icmp ne i32 %97, 0
  %99 = xor i1 %98, true
  %100 = zext i1 %99 to i32
  %101 = sext i32 %100 to i64
  %102 = getelementptr inbounds i64, i64* %96, i64 %101
  %103 = load i64, i64* %102, align 8
  %104 = icmp ne i64 %103, 0
  br i1 %104, label %167, label %105

105:                                              ; preds = %71
  %106 = load %struct.nvkm_vmm_pt*, %struct.nvkm_vmm_pt** %5, align 8
  %107 = getelementptr inbounds %struct.nvkm_vmm_pt, %struct.nvkm_vmm_pt* %106, i32 0, i32 2
  %108 = load %struct.nvkm_mmu_pt**, %struct.nvkm_mmu_pt*** %107, align 8
  %109 = getelementptr inbounds %struct.nvkm_mmu_pt*, %struct.nvkm_mmu_pt** %108, i64 0
  %110 = load %struct.nvkm_mmu_pt*, %struct.nvkm_mmu_pt** %109, align 8
  %111 = icmp ne %struct.nvkm_mmu_pt* %110, null
  br i1 %111, label %112, label %153

112:                                              ; preds = %105
  %113 = load %struct.nvkm_vmm_pt*, %struct.nvkm_vmm_pt** %6, align 8
  %114 = getelementptr inbounds %struct.nvkm_vmm_pt, %struct.nvkm_vmm_pt* %113, i32 0, i32 3
  %115 = load i64, i64* %114, align 8
  %116 = icmp ne i64 %115, 0
  br i1 %116, label %117, label %135

117:                                              ; preds = %112
  %118 = load %struct.nvkm_vmm_desc_func*, %struct.nvkm_vmm_desc_func** %10, align 8
  %119 = getelementptr inbounds %struct.nvkm_vmm_desc_func, %struct.nvkm_vmm_desc_func* %118, i32 0, i32 2
  %120 = load i32 (%struct.nvkm_vmm*, %struct.nvkm_mmu_pt*, i64, i32)*, i32 (%struct.nvkm_vmm*, %struct.nvkm_mmu_pt*, i64, i32)** %119, align 8
  %121 = load %struct.nvkm_vmm*, %struct.nvkm_vmm** %8, align 8
  %122 = load %struct.nvkm_vmm_pt*, %struct.nvkm_vmm_pt** %5, align 8
  %123 = getelementptr inbounds %struct.nvkm_vmm_pt, %struct.nvkm_vmm_pt* %122, i32 0, i32 2
  %124 = load %struct.nvkm_mmu_pt**, %struct.nvkm_mmu_pt*** %123, align 8
  %125 = getelementptr inbounds %struct.nvkm_mmu_pt*, %struct.nvkm_mmu_pt** %124, i64 0
  %126 = load %struct.nvkm_mmu_pt*, %struct.nvkm_mmu_pt** %125, align 8
  %127 = load i64, i64* %9, align 8
  %128 = call i32 %120(%struct.nvkm_vmm* %121, %struct.nvkm_mmu_pt* %126, i64 %127, i32 1)
  %129 = load i32*, i32** @NVKM_VMM_PDE_SPARSE, align 8
  %130 = load %struct.nvkm_vmm_pt*, %struct.nvkm_vmm_pt** %5, align 8
  %131 = getelementptr inbounds %struct.nvkm_vmm_pt, %struct.nvkm_vmm_pt* %130, i32 0, i32 1
  %132 = load i32**, i32*** %131, align 8
  %133 = load i64, i64* %9, align 8
  %134 = getelementptr inbounds i32*, i32** %132, i64 %133
  store i32* %129, i32** %134, align 8
  br label %152

135:                                              ; preds = %112
  %136 = load %struct.nvkm_vmm_desc_func*, %struct.nvkm_vmm_desc_func** %10, align 8
  %137 = getelementptr inbounds %struct.nvkm_vmm_desc_func, %struct.nvkm_vmm_desc_func* %136, i32 0, i32 1
  %138 = load i32 (%struct.nvkm_vmm*, %struct.nvkm_mmu_pt*, i64, i32)*, i32 (%struct.nvkm_vmm*, %struct.nvkm_mmu_pt*, i64, i32)** %137, align 8
  %139 = load %struct.nvkm_vmm*, %struct.nvkm_vmm** %8, align 8
  %140 = load %struct.nvkm_vmm_pt*, %struct.nvkm_vmm_pt** %5, align 8
  %141 = getelementptr inbounds %struct.nvkm_vmm_pt, %struct.nvkm_vmm_pt* %140, i32 0, i32 2
  %142 = load %struct.nvkm_mmu_pt**, %struct.nvkm_mmu_pt*** %141, align 8
  %143 = getelementptr inbounds %struct.nvkm_mmu_pt*, %struct.nvkm_mmu_pt** %142, i64 0
  %144 = load %struct.nvkm_mmu_pt*, %struct.nvkm_mmu_pt** %143, align 8
  %145 = load i64, i64* %9, align 8
  %146 = call i32 %138(%struct.nvkm_vmm* %139, %struct.nvkm_mmu_pt* %144, i64 %145, i32 1)
  %147 = load %struct.nvkm_vmm_pt*, %struct.nvkm_vmm_pt** %5, align 8
  %148 = getelementptr inbounds %struct.nvkm_vmm_pt, %struct.nvkm_vmm_pt* %147, i32 0, i32 1
  %149 = load i32**, i32*** %148, align 8
  %150 = load i64, i64* %9, align 8
  %151 = getelementptr inbounds i32*, i32** %149, i64 %150
  store i32* null, i32** %151, align 8
  br label %152

152:                                              ; preds = %135, %117
  br label %166

153:                                              ; preds = %105
  %154 = load %struct.nvkm_vmm_desc_func*, %struct.nvkm_vmm_desc_func** %10, align 8
  %155 = getelementptr inbounds %struct.nvkm_vmm_desc_func, %struct.nvkm_vmm_desc_func* %154, i32 0, i32 0
  %156 = load i32 (%struct.nvkm_vmm*, %struct.nvkm_vmm_pt*, i64)*, i32 (%struct.nvkm_vmm*, %struct.nvkm_vmm_pt*, i64)** %155, align 8
  %157 = load %struct.nvkm_vmm*, %struct.nvkm_vmm** %8, align 8
  %158 = load %struct.nvkm_vmm_pt*, %struct.nvkm_vmm_pt** %5, align 8
  %159 = load i64, i64* %9, align 8
  %160 = call i32 %156(%struct.nvkm_vmm* %157, %struct.nvkm_vmm_pt* %158, i64 %159)
  %161 = load %struct.nvkm_vmm_pt*, %struct.nvkm_vmm_pt** %5, align 8
  %162 = getelementptr inbounds %struct.nvkm_vmm_pt, %struct.nvkm_vmm_pt* %161, i32 0, i32 1
  %163 = load i32**, i32*** %162, align 8
  %164 = load i64, i64* %9, align 8
  %165 = getelementptr inbounds i32*, i32** %163, i64 %164
  store i32* null, i32** %165, align 8
  br label %166

166:                                              ; preds = %153, %152
  br label %175

167:                                              ; preds = %71
  %168 = load %struct.nvkm_vmm_desc_func*, %struct.nvkm_vmm_desc_func** %10, align 8
  %169 = getelementptr inbounds %struct.nvkm_vmm_desc_func, %struct.nvkm_vmm_desc_func* %168, i32 0, i32 0
  %170 = load i32 (%struct.nvkm_vmm*, %struct.nvkm_vmm_pt*, i64)*, i32 (%struct.nvkm_vmm*, %struct.nvkm_vmm_pt*, i64)** %169, align 8
  %171 = load %struct.nvkm_vmm*, %struct.nvkm_vmm** %8, align 8
  %172 = load %struct.nvkm_vmm_pt*, %struct.nvkm_vmm_pt** %5, align 8
  %173 = load i64, i64* %9, align 8
  %174 = call i32 %170(%struct.nvkm_vmm* %171, %struct.nvkm_vmm_pt* %172, i64 %173)
  br label %175

175:                                              ; preds = %167, %166
  %176 = load %struct.nvkm_vmm_iter*, %struct.nvkm_vmm_iter** %2, align 8
  %177 = call i32 @nvkm_vmm_flush_mark(%struct.nvkm_vmm_iter* %176)
  %178 = load %struct.nvkm_vmm_iter*, %struct.nvkm_vmm_iter** %2, align 8
  %179 = call i32 @nvkm_vmm_flush(%struct.nvkm_vmm_iter* %178)
  br label %182

180:                                              ; preds = %1
  %181 = load %struct.nvkm_vmm_iter*, %struct.nvkm_vmm_iter** %2, align 8
  call void @nvkm_vmm_unref_pdes(%struct.nvkm_vmm_iter* %181)
  br label %182

182:                                              ; preds = %180, %175
  %183 = load %struct.nvkm_vmm_iter*, %struct.nvkm_vmm_iter** %2, align 8
  %184 = load %struct.nvkm_vmm_desc*, %struct.nvkm_vmm_desc** %3, align 8
  %185 = load %struct.nvkm_vmm_iter*, %struct.nvkm_vmm_iter** %2, align 8
  %186 = getelementptr inbounds %struct.nvkm_vmm_iter, %struct.nvkm_vmm_iter* %185, i32 0, i32 0
  %187 = load i64, i64* %186, align 8
  %188 = sub i64 %187, 1
  %189 = getelementptr inbounds %struct.nvkm_vmm_desc, %struct.nvkm_vmm_desc* %184, i64 %188
  %190 = call i32 @nvkm_vmm_desc_type(%struct.nvkm_vmm_desc* %189)
  %191 = call i32 @TRA(%struct.nvkm_vmm_iter* %183, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0), i32 %190)
  %192 = load %struct.nvkm_vmm*, %struct.nvkm_vmm** %8, align 8
  %193 = getelementptr inbounds %struct.nvkm_vmm, %struct.nvkm_vmm* %192, i32 0, i32 1
  %194 = load i32, i32* %193, align 4
  %195 = load %struct.nvkm_vmm*, %struct.nvkm_vmm** %8, align 8
  %196 = getelementptr inbounds %struct.nvkm_vmm, %struct.nvkm_vmm* %195, i32 0, i32 0
  %197 = load i32, i32* %196, align 4
  %198 = call i32 @nvkm_mmu_ptc_put(i32 %194, i32 %197, %struct.nvkm_mmu_pt** %7)
  %199 = load %struct.nvkm_vmm_pt*, %struct.nvkm_vmm_pt** %6, align 8
  %200 = getelementptr inbounds %struct.nvkm_vmm_pt, %struct.nvkm_vmm_pt* %199, i32 0, i32 0
  %201 = load i64*, i64** %200, align 8
  %202 = load i32, i32* %4, align 4
  %203 = icmp ne i32 %202, 0
  %204 = xor i1 %203, true
  %205 = zext i1 %204 to i32
  %206 = sext i32 %205 to i64
  %207 = getelementptr inbounds i64, i64* %201, i64 %206
  %208 = load i64, i64* %207, align 8
  %209 = icmp ne i64 %208, 0
  br i1 %209, label %212, label %210

210:                                              ; preds = %182
  %211 = call i32 @nvkm_vmm_pt_del(%struct.nvkm_vmm_pt** %6)
  br label %212

212:                                              ; preds = %210, %182
  %213 = load %struct.nvkm_vmm_iter*, %struct.nvkm_vmm_iter** %2, align 8
  %214 = getelementptr inbounds %struct.nvkm_vmm_iter, %struct.nvkm_vmm_iter* %213, i32 0, i32 0
  %215 = load i64, i64* %214, align 8
  %216 = add i64 %215, -1
  store i64 %216, i64* %214, align 8
  ret void
}

declare dso_local i32 @TRA(%struct.nvkm_vmm_iter*, i8*, i32) #1

declare dso_local i32 @nvkm_vmm_desc_type(%struct.nvkm_vmm_desc*) #1

declare dso_local i32 @nvkm_vmm_flush_mark(%struct.nvkm_vmm_iter*) #1

declare dso_local i32 @nvkm_vmm_flush(%struct.nvkm_vmm_iter*) #1

declare dso_local i32 @nvkm_mmu_ptc_put(i32, i32, %struct.nvkm_mmu_pt**) #1

declare dso_local i32 @nvkm_vmm_pt_del(%struct.nvkm_vmm_pt**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
