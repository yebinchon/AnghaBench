; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/subdev/mmu/extr_vmm.c_nvkm_vmm_ref_sptes.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/subdev/mmu/extr_vmm.c_nvkm_vmm_ref_sptes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvkm_vmm_iter = type { %struct.nvkm_vmm*, %struct.TYPE_3__* }
%struct.nvkm_vmm = type { i32 }
%struct.TYPE_3__ = type { %struct.nvkm_vmm_desc* }
%struct.nvkm_vmm_pt = type { i32*, i32*, i32* }
%struct.nvkm_vmm_desc = type { i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 (%struct.nvkm_vmm*, i32, i32, i32)*, i64, i32 (%struct.nvkm_vmm*, i32, i32, i32)* }

@NVKM_VMM_PTE_VALID = common dso_local global i32 0, align 4
@NVKM_VMM_PTE_SPARSE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"SPTE %05x: U -> S %d PTEs\00", align 1
@.str.1 = private unnamed_addr constant [26 x i8] c"LPTE %05x: S -> U %d PTEs\00", align 1
@.str.2 = private unnamed_addr constant [26 x i8] c"LPTE %05x: I -> U %d PTEs\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nvkm_vmm_iter*, %struct.nvkm_vmm_pt*, %struct.nvkm_vmm_desc*, i32, i32)* @nvkm_vmm_ref_sptes to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nvkm_vmm_ref_sptes(%struct.nvkm_vmm_iter* %0, %struct.nvkm_vmm_pt* %1, %struct.nvkm_vmm_desc* %2, i32 %3, i32 %4) #0 {
  %6 = alloca %struct.nvkm_vmm_iter*, align 8
  %7 = alloca %struct.nvkm_vmm_pt*, align 8
  %8 = alloca %struct.nvkm_vmm_desc*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.nvkm_vmm_desc*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.nvkm_vmm*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  store %struct.nvkm_vmm_iter* %0, %struct.nvkm_vmm_iter** %6, align 8
  store %struct.nvkm_vmm_pt* %1, %struct.nvkm_vmm_pt** %7, align 8
  store %struct.nvkm_vmm_desc* %2, %struct.nvkm_vmm_desc** %8, align 8
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %21 = load %struct.nvkm_vmm_iter*, %struct.nvkm_vmm_iter** %6, align 8
  %22 = getelementptr inbounds %struct.nvkm_vmm_iter, %struct.nvkm_vmm_iter* %21, i32 0, i32 1
  %23 = load %struct.TYPE_3__*, %struct.TYPE_3__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i64 -1
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 0
  %26 = load %struct.nvkm_vmm_desc*, %struct.nvkm_vmm_desc** %25, align 8
  store %struct.nvkm_vmm_desc* %26, %struct.nvkm_vmm_desc** %11, align 8
  %27 = load %struct.nvkm_vmm_desc*, %struct.nvkm_vmm_desc** %8, align 8
  %28 = getelementptr inbounds %struct.nvkm_vmm_desc, %struct.nvkm_vmm_desc* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = load %struct.nvkm_vmm_desc*, %struct.nvkm_vmm_desc** %11, align 8
  %31 = getelementptr inbounds %struct.nvkm_vmm_desc, %struct.nvkm_vmm_desc* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = sub nsw i32 %29, %32
  store i32 %33, i32* %12, align 4
  %34 = load i32, i32* %12, align 4
  %35 = shl i32 1, %34
  store i32 %35, i32* %13, align 4
  %36 = load %struct.nvkm_vmm_iter*, %struct.nvkm_vmm_iter** %6, align 8
  %37 = getelementptr inbounds %struct.nvkm_vmm_iter, %struct.nvkm_vmm_iter* %36, i32 0, i32 0
  %38 = load %struct.nvkm_vmm*, %struct.nvkm_vmm** %37, align 8
  store %struct.nvkm_vmm* %38, %struct.nvkm_vmm** %14, align 8
  %39 = load i32, i32* %9, align 4
  %40 = load i32, i32* %13, align 4
  %41 = sub nsw i32 %40, 1
  %42 = and i32 %39, %41
  store i32 %42, i32* %15, align 4
  %43 = load i32, i32* %9, align 4
  %44 = load i32, i32* %12, align 4
  %45 = ashr i32 %43, %44
  store i32 %45, i32* %16, align 4
  br label %46

46:                                               ; preds = %67, %5
  %47 = load i32, i32* %10, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %70

49:                                               ; preds = %46
  %50 = load i32, i32* %13, align 4
  %51 = load i32, i32* %15, align 4
  %52 = sub nsw i32 %50, %51
  %53 = load i32, i32* %10, align 4
  %54 = call i32 @min(i32 %52, i32 %53)
  store i32 %54, i32* %18, align 4
  %55 = load i32, i32* %18, align 4
  %56 = load %struct.nvkm_vmm_pt*, %struct.nvkm_vmm_pt** %7, align 8
  %57 = getelementptr inbounds %struct.nvkm_vmm_pt, %struct.nvkm_vmm_pt* %56, i32 0, i32 0
  %58 = load i32*, i32** %57, align 8
  %59 = load i32, i32* %16, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds i32, i32* %58, i64 %60
  %62 = load i32, i32* %61, align 4
  %63 = add nsw i32 %62, %55
  store i32 %63, i32* %61, align 4
  %64 = load i32, i32* %18, align 4
  %65 = load i32, i32* %10, align 4
  %66 = sub nsw i32 %65, %64
  store i32 %66, i32* %10, align 4
  br label %67

67:                                               ; preds = %49
  store i32 0, i32* %15, align 4
  %68 = load i32, i32* %16, align 4
  %69 = add nsw i32 %68, 1
  store i32 %69, i32* %16, align 4
  br label %46

70:                                               ; preds = %46
  %71 = load %struct.nvkm_vmm_pt*, %struct.nvkm_vmm_pt** %7, align 8
  %72 = getelementptr inbounds %struct.nvkm_vmm_pt, %struct.nvkm_vmm_pt* %71, i32 0, i32 2
  %73 = load i32*, i32** %72, align 8
  %74 = getelementptr inbounds i32, i32* %73, i64 0
  %75 = load i32, i32* %74, align 4
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %78, label %77

77:                                               ; preds = %70
  br label %250

78:                                               ; preds = %70
  %79 = load i32, i32* %9, align 4
  %80 = load i32, i32* %12, align 4
  %81 = ashr i32 %79, %80
  store i32 %81, i32* %17, align 4
  store i32 %81, i32* %9, align 4
  br label %82

82:                                               ; preds = %248, %78
  %83 = load i32, i32* %9, align 4
  %84 = load i32, i32* %16, align 4
  %85 = icmp slt i32 %83, %84
  br i1 %85, label %86, label %250

86:                                               ; preds = %82
  %87 = load %struct.nvkm_vmm_pt*, %struct.nvkm_vmm_pt** %7, align 8
  %88 = getelementptr inbounds %struct.nvkm_vmm_pt, %struct.nvkm_vmm_pt* %87, i32 0, i32 0
  %89 = load i32*, i32** %88, align 8
  %90 = load i32, i32* %17, align 4
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds i32, i32* %89, i64 %91
  %93 = load i32, i32* %92, align 4
  %94 = load i32, i32* @NVKM_VMM_PTE_VALID, align 4
  %95 = and i32 %93, %94
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %97, label %123

97:                                               ; preds = %86
  store i32 1, i32* %10, align 4
  %98 = load i32, i32* %9, align 4
  %99 = add nsw i32 %98, 1
  store i32 %99, i32* %9, align 4
  br label %100

100:                                              ; preds = %117, %97
  %101 = load i32, i32* %9, align 4
  %102 = load i32, i32* %16, align 4
  %103 = icmp slt i32 %101, %102
  br i1 %103, label %104, label %122

104:                                              ; preds = %100
  %105 = load %struct.nvkm_vmm_pt*, %struct.nvkm_vmm_pt** %7, align 8
  %106 = getelementptr inbounds %struct.nvkm_vmm_pt, %struct.nvkm_vmm_pt* %105, i32 0, i32 0
  %107 = load i32*, i32** %106, align 8
  %108 = load i32, i32* %9, align 4
  %109 = sext i32 %108 to i64
  %110 = getelementptr inbounds i32, i32* %107, i64 %109
  %111 = load i32, i32* %110, align 4
  %112 = load i32, i32* @NVKM_VMM_PTE_VALID, align 4
  %113 = and i32 %111, %112
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %116, label %115

115:                                              ; preds = %104
  br label %122

116:                                              ; preds = %104
  br label %117

117:                                              ; preds = %116
  %118 = load i32, i32* %10, align 4
  %119 = add nsw i32 %118, 1
  store i32 %119, i32* %10, align 4
  %120 = load i32, i32* %9, align 4
  %121 = add nsw i32 %120, 1
  store i32 %121, i32* %9, align 4
  br label %100

122:                                              ; preds = %115, %100
  br label %248

123:                                              ; preds = %86
  %124 = load i32, i32* @NVKM_VMM_PTE_VALID, align 4
  %125 = load %struct.nvkm_vmm_pt*, %struct.nvkm_vmm_pt** %7, align 8
  %126 = getelementptr inbounds %struct.nvkm_vmm_pt, %struct.nvkm_vmm_pt* %125, i32 0, i32 0
  %127 = load i32*, i32** %126, align 8
  %128 = load i32, i32* %9, align 4
  %129 = sext i32 %128 to i64
  %130 = getelementptr inbounds i32, i32* %127, i64 %129
  %131 = load i32, i32* %130, align 4
  %132 = or i32 %131, %124
  store i32 %132, i32* %130, align 4
  store i32 1, i32* %10, align 4
  %133 = load i32, i32* %9, align 4
  %134 = add nsw i32 %133, 1
  store i32 %134, i32* %9, align 4
  br label %135

135:                                              ; preds = %161, %123
  %136 = load i32, i32* %9, align 4
  %137 = load i32, i32* %16, align 4
  %138 = icmp slt i32 %136, %137
  br i1 %138, label %139, label %166

139:                                              ; preds = %135
  %140 = load %struct.nvkm_vmm_pt*, %struct.nvkm_vmm_pt** %7, align 8
  %141 = getelementptr inbounds %struct.nvkm_vmm_pt, %struct.nvkm_vmm_pt* %140, i32 0, i32 0
  %142 = load i32*, i32** %141, align 8
  %143 = load i32, i32* %9, align 4
  %144 = sext i32 %143 to i64
  %145 = getelementptr inbounds i32, i32* %142, i64 %144
  %146 = load i32, i32* %145, align 4
  %147 = load i32, i32* @NVKM_VMM_PTE_VALID, align 4
  %148 = and i32 %146, %147
  %149 = icmp ne i32 %148, 0
  br i1 %149, label %150, label %151

150:                                              ; preds = %139
  br label %166

151:                                              ; preds = %139
  %152 = load i32, i32* @NVKM_VMM_PTE_VALID, align 4
  %153 = load %struct.nvkm_vmm_pt*, %struct.nvkm_vmm_pt** %7, align 8
  %154 = getelementptr inbounds %struct.nvkm_vmm_pt, %struct.nvkm_vmm_pt* %153, i32 0, i32 0
  %155 = load i32*, i32** %154, align 8
  %156 = load i32, i32* %9, align 4
  %157 = sext i32 %156 to i64
  %158 = getelementptr inbounds i32, i32* %155, i64 %157
  %159 = load i32, i32* %158, align 4
  %160 = or i32 %159, %152
  store i32 %160, i32* %158, align 4
  br label %161

161:                                              ; preds = %151
  %162 = load i32, i32* %10, align 4
  %163 = add nsw i32 %162, 1
  store i32 %163, i32* %10, align 4
  %164 = load i32, i32* %9, align 4
  %165 = add nsw i32 %164, 1
  store i32 %165, i32* %9, align 4
  br label %135

166:                                              ; preds = %150, %135
  %167 = load %struct.nvkm_vmm_pt*, %struct.nvkm_vmm_pt** %7, align 8
  %168 = getelementptr inbounds %struct.nvkm_vmm_pt, %struct.nvkm_vmm_pt* %167, i32 0, i32 0
  %169 = load i32*, i32** %168, align 8
  %170 = load i32, i32* %17, align 4
  %171 = sext i32 %170 to i64
  %172 = getelementptr inbounds i32, i32* %169, i64 %171
  %173 = load i32, i32* %172, align 4
  %174 = load i32, i32* @NVKM_VMM_PTE_SPARSE, align 4
  %175 = and i32 %173, %174
  %176 = icmp ne i32 %175, 0
  br i1 %176, label %177, label %220

177:                                              ; preds = %166
  %178 = load i32, i32* %17, align 4
  %179 = load i32, i32* %13, align 4
  %180 = mul nsw i32 %178, %179
  store i32 %180, i32* %19, align 4
  %181 = load i32, i32* %10, align 4
  %182 = load i32, i32* %13, align 4
  %183 = mul nsw i32 %181, %182
  store i32 %183, i32* %20, align 4
  %184 = load %struct.nvkm_vmm_iter*, %struct.nvkm_vmm_iter** %6, align 8
  %185 = load i32, i32* %19, align 4
  %186 = load i32, i32* %20, align 4
  %187 = call i32 @TRA(%struct.nvkm_vmm_iter* %184, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i32 %185, i32 %186)
  %188 = load %struct.nvkm_vmm_desc*, %struct.nvkm_vmm_desc** %8, align 8
  %189 = getelementptr inbounds %struct.nvkm_vmm_desc, %struct.nvkm_vmm_desc* %188, i32 0, i32 1
  %190 = load %struct.TYPE_4__*, %struct.TYPE_4__** %189, align 8
  %191 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %190, i32 0, i32 2
  %192 = load i32 (%struct.nvkm_vmm*, i32, i32, i32)*, i32 (%struct.nvkm_vmm*, i32, i32, i32)** %191, align 8
  %193 = load %struct.nvkm_vmm*, %struct.nvkm_vmm** %14, align 8
  %194 = load %struct.nvkm_vmm_pt*, %struct.nvkm_vmm_pt** %7, align 8
  %195 = getelementptr inbounds %struct.nvkm_vmm_pt, %struct.nvkm_vmm_pt* %194, i32 0, i32 1
  %196 = load i32*, i32** %195, align 8
  %197 = getelementptr inbounds i32, i32* %196, i64 1
  %198 = load i32, i32* %197, align 4
  %199 = load i32, i32* %19, align 4
  %200 = load i32, i32* %20, align 4
  %201 = call i32 %192(%struct.nvkm_vmm* %193, i32 %198, i32 %199, i32 %200)
  %202 = load %struct.nvkm_vmm_iter*, %struct.nvkm_vmm_iter** %6, align 8
  %203 = load i32, i32* %17, align 4
  %204 = load i32, i32* %10, align 4
  %205 = call i32 @TRA(%struct.nvkm_vmm_iter* %202, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0), i32 %203, i32 %204)
  %206 = load %struct.nvkm_vmm_desc*, %struct.nvkm_vmm_desc** %11, align 8
  %207 = getelementptr inbounds %struct.nvkm_vmm_desc, %struct.nvkm_vmm_desc* %206, i32 0, i32 1
  %208 = load %struct.TYPE_4__*, %struct.TYPE_4__** %207, align 8
  %209 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %208, i32 0, i32 0
  %210 = load i32 (%struct.nvkm_vmm*, i32, i32, i32)*, i32 (%struct.nvkm_vmm*, i32, i32, i32)** %209, align 8
  %211 = load %struct.nvkm_vmm*, %struct.nvkm_vmm** %14, align 8
  %212 = load %struct.nvkm_vmm_pt*, %struct.nvkm_vmm_pt** %7, align 8
  %213 = getelementptr inbounds %struct.nvkm_vmm_pt, %struct.nvkm_vmm_pt* %212, i32 0, i32 1
  %214 = load i32*, i32** %213, align 8
  %215 = getelementptr inbounds i32, i32* %214, i64 0
  %216 = load i32, i32* %215, align 4
  %217 = load i32, i32* %17, align 4
  %218 = load i32, i32* %10, align 4
  %219 = call i32 %210(%struct.nvkm_vmm* %211, i32 %216, i32 %217, i32 %218)
  br label %247

220:                                              ; preds = %166
  %221 = load %struct.nvkm_vmm_desc*, %struct.nvkm_vmm_desc** %11, align 8
  %222 = getelementptr inbounds %struct.nvkm_vmm_desc, %struct.nvkm_vmm_desc* %221, i32 0, i32 1
  %223 = load %struct.TYPE_4__*, %struct.TYPE_4__** %222, align 8
  %224 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %223, i32 0, i32 1
  %225 = load i64, i64* %224, align 8
  %226 = icmp ne i64 %225, 0
  br i1 %226, label %227, label %246

227:                                              ; preds = %220
  %228 = load %struct.nvkm_vmm_iter*, %struct.nvkm_vmm_iter** %6, align 8
  %229 = load i32, i32* %17, align 4
  %230 = load i32, i32* %10, align 4
  %231 = call i32 @TRA(%struct.nvkm_vmm_iter* %228, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0), i32 %229, i32 %230)
  %232 = load %struct.nvkm_vmm_desc*, %struct.nvkm_vmm_desc** %11, align 8
  %233 = getelementptr inbounds %struct.nvkm_vmm_desc, %struct.nvkm_vmm_desc* %232, i32 0, i32 1
  %234 = load %struct.TYPE_4__*, %struct.TYPE_4__** %233, align 8
  %235 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %234, i32 0, i32 0
  %236 = load i32 (%struct.nvkm_vmm*, i32, i32, i32)*, i32 (%struct.nvkm_vmm*, i32, i32, i32)** %235, align 8
  %237 = load %struct.nvkm_vmm*, %struct.nvkm_vmm** %14, align 8
  %238 = load %struct.nvkm_vmm_pt*, %struct.nvkm_vmm_pt** %7, align 8
  %239 = getelementptr inbounds %struct.nvkm_vmm_pt, %struct.nvkm_vmm_pt* %238, i32 0, i32 1
  %240 = load i32*, i32** %239, align 8
  %241 = getelementptr inbounds i32, i32* %240, i64 0
  %242 = load i32, i32* %241, align 4
  %243 = load i32, i32* %17, align 4
  %244 = load i32, i32* %10, align 4
  %245 = call i32 %236(%struct.nvkm_vmm* %237, i32 %242, i32 %243, i32 %244)
  br label %246

246:                                              ; preds = %227, %220
  br label %247

247:                                              ; preds = %246, %177
  br label %248

248:                                              ; preds = %247, %122
  %249 = load i32, i32* %9, align 4
  store i32 %249, i32* %17, align 4
  br label %82

250:                                              ; preds = %77, %82
  ret void
}

declare dso_local i32 @min(i32, i32) #1

declare dso_local i32 @TRA(%struct.nvkm_vmm_iter*, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
