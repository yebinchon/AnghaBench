; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvif/extr_mmu.c_nvif_mmu_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvif/extr_mmu.c_nvif_mmu_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvif_mclass = type { i32, i32, i32 }
%struct.nvif_object = type { i32 }
%struct.nvif_mmu = type { i32, i32, i32, i32*, i32, %struct.TYPE_4__*, %struct.TYPE_3__*, i32, i32 }
%struct.TYPE_4__ = type { i32, i32 }
%struct.TYPE_3__ = type { i32 }
%struct.nvif_mmu_v0 = type { i32, i32, i32, i32, i64 }
%struct.nvif_mmu_heap_v0 = type { i32, i32, i32, i64, i32, i64, i64, i64, i64, i64, i64, i64, i64, i32 }
%struct.nvif_mmu_type_v0 = type { i32, i32, i32, i64, i32, i64, i64, i64, i64, i64, i64, i64, i64, i32 }
%struct.nvif_mmu_kind_v0 = type { i32, i32, i32, i64, i32, i64, i64, i64, i64, i64, i64, i64, i64, i32 }

@nvif_mmu_init.mems = internal constant [4 x %struct.nvif_mclass] [%struct.nvif_mclass { i32 130, i32 -1, i32 0 }, %struct.nvif_mclass { i32 128, i32 -1, i32 0 }, %struct.nvif_mclass { i32 129, i32 -1, i32 0 }, %struct.nvif_mclass zeroinitializer], align 16
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@NVIF_MMU_V0_HEAP = common dso_local global i32 0, align 4
@NVIF_MMU_V0_TYPE = common dso_local global i32 0, align 4
@NVIF_MEM_VRAM = common dso_local global i32 0, align 4
@NVIF_MEM_HOST = common dso_local global i32 0, align 4
@NVIF_MEM_COMP = common dso_local global i32 0, align 4
@NVIF_MEM_DISP = common dso_local global i32 0, align 4
@NVIF_MEM_KIND = common dso_local global i32 0, align 4
@NVIF_MEM_MAPPABLE = common dso_local global i32 0, align 4
@NVIF_MEM_COHERENT = common dso_local global i32 0, align 4
@NVIF_MEM_UNCACHED = common dso_local global i32 0, align 4
@data = common dso_local global i32 0, align 4
@NVIF_MMU_V0_KIND = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nvif_mmu_init(%struct.nvif_object* %0, i32 %1, %struct.nvif_mmu* %2) #0 {
  %4 = alloca %struct.nvif_object*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.nvif_mmu*, align 8
  %7 = alloca %struct.nvif_mmu_v0, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.nvif_mmu_heap_v0, align 8
  %11 = alloca %struct.nvif_mmu_type_v0, align 8
  %12 = alloca %struct.nvif_mmu_kind_v0*, align 8
  %13 = alloca i64, align 8
  store %struct.nvif_object* %0, %struct.nvif_object** %4, align 8
  store i32 %1, i32* %5, align 4
  store %struct.nvif_mmu* %2, %struct.nvif_mmu** %6, align 8
  %14 = getelementptr inbounds %struct.nvif_mmu_v0, %struct.nvif_mmu_v0* %7, i32 0, i32 4
  store i64 0, i64* %14, align 8
  %15 = load %struct.nvif_mmu*, %struct.nvif_mmu** %6, align 8
  %16 = getelementptr inbounds %struct.nvif_mmu, %struct.nvif_mmu* %15, i32 0, i32 6
  store %struct.TYPE_3__* null, %struct.TYPE_3__** %16, align 8
  %17 = load %struct.nvif_mmu*, %struct.nvif_mmu** %6, align 8
  %18 = getelementptr inbounds %struct.nvif_mmu, %struct.nvif_mmu* %17, i32 0, i32 5
  store %struct.TYPE_4__* null, %struct.TYPE_4__** %18, align 8
  %19 = load %struct.nvif_mmu*, %struct.nvif_mmu** %6, align 8
  %20 = getelementptr inbounds %struct.nvif_mmu, %struct.nvif_mmu* %19, i32 0, i32 3
  store i32* null, i32** %20, align 8
  %21 = load %struct.nvif_object*, %struct.nvif_object** %4, align 8
  %22 = load i32, i32* %5, align 4
  %23 = load %struct.nvif_mmu*, %struct.nvif_mmu** %6, align 8
  %24 = getelementptr inbounds %struct.nvif_mmu, %struct.nvif_mmu* %23, i32 0, i32 4
  %25 = call i32 @nvif_object_init(%struct.nvif_object* %21, i32 0, i32 %22, %struct.nvif_mmu_v0* %7, i32 24, i32* %24)
  store i32 %25, i32* %8, align 4
  %26 = load i32, i32* %8, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %3
  br label %355

29:                                               ; preds = %3
  %30 = getelementptr inbounds %struct.nvif_mmu_v0, %struct.nvif_mmu_v0* %7, i32 0, i32 3
  %31 = load i32, i32* %30, align 4
  %32 = load %struct.nvif_mmu*, %struct.nvif_mmu** %6, align 8
  %33 = getelementptr inbounds %struct.nvif_mmu, %struct.nvif_mmu* %32, i32 0, i32 8
  store i32 %31, i32* %33, align 4
  %34 = getelementptr inbounds %struct.nvif_mmu_v0, %struct.nvif_mmu_v0* %7, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = load %struct.nvif_mmu*, %struct.nvif_mmu** %6, align 8
  %37 = getelementptr inbounds %struct.nvif_mmu, %struct.nvif_mmu* %36, i32 0, i32 0
  store i32 %35, i32* %37, align 8
  %38 = getelementptr inbounds %struct.nvif_mmu_v0, %struct.nvif_mmu_v0* %7, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = load %struct.nvif_mmu*, %struct.nvif_mmu** %6, align 8
  %41 = getelementptr inbounds %struct.nvif_mmu, %struct.nvif_mmu* %40, i32 0, i32 1
  store i32 %39, i32* %41, align 4
  %42 = getelementptr inbounds %struct.nvif_mmu_v0, %struct.nvif_mmu_v0* %7, i32 0, i32 2
  %43 = load i32, i32* %42, align 8
  %44 = load %struct.nvif_mmu*, %struct.nvif_mmu** %6, align 8
  %45 = getelementptr inbounds %struct.nvif_mmu, %struct.nvif_mmu* %44, i32 0, i32 2
  store i32 %43, i32* %45, align 8
  %46 = load %struct.nvif_mmu*, %struct.nvif_mmu** %6, align 8
  %47 = getelementptr inbounds %struct.nvif_mmu, %struct.nvif_mmu* %46, i32 0, i32 4
  %48 = call i32 @nvif_mclass(i32* %47, %struct.nvif_mclass* getelementptr inbounds ([4 x %struct.nvif_mclass], [4 x %struct.nvif_mclass]* @nvif_mmu_init.mems, i64 0, i64 0))
  store i32 %48, i32* %8, align 4
  %49 = load i32, i32* %8, align 4
  %50 = icmp slt i32 %49, 0
  br i1 %50, label %51, label %52

51:                                               ; preds = %29
  br label %355

52:                                               ; preds = %29
  %53 = load i32, i32* %8, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds [4 x %struct.nvif_mclass], [4 x %struct.nvif_mclass]* @nvif_mmu_init.mems, i64 0, i64 %54
  %56 = getelementptr inbounds %struct.nvif_mclass, %struct.nvif_mclass* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  %58 = load %struct.nvif_mmu*, %struct.nvif_mmu** %6, align 8
  %59 = getelementptr inbounds %struct.nvif_mmu, %struct.nvif_mmu* %58, i32 0, i32 7
  store i32 %57, i32* %59, align 8
  %60 = load %struct.nvif_mmu*, %struct.nvif_mmu** %6, align 8
  %61 = getelementptr inbounds %struct.nvif_mmu, %struct.nvif_mmu* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 8
  %63 = load i32, i32* @GFP_KERNEL, align 4
  %64 = call i8* @kmalloc_array(i32 %62, i32 4, i32 %63)
  %65 = bitcast i8* %64 to %struct.TYPE_3__*
  %66 = load %struct.nvif_mmu*, %struct.nvif_mmu** %6, align 8
  %67 = getelementptr inbounds %struct.nvif_mmu, %struct.nvif_mmu* %66, i32 0, i32 6
  store %struct.TYPE_3__* %65, %struct.TYPE_3__** %67, align 8
  %68 = load %struct.nvif_mmu*, %struct.nvif_mmu** %6, align 8
  %69 = getelementptr inbounds %struct.nvif_mmu, %struct.nvif_mmu* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 4
  %71 = load i32, i32* @GFP_KERNEL, align 4
  %72 = call i8* @kmalloc_array(i32 %70, i32 8, i32 %71)
  %73 = bitcast i8* %72 to %struct.TYPE_4__*
  %74 = load %struct.nvif_mmu*, %struct.nvif_mmu** %6, align 8
  %75 = getelementptr inbounds %struct.nvif_mmu, %struct.nvif_mmu* %74, i32 0, i32 5
  store %struct.TYPE_4__* %73, %struct.TYPE_4__** %75, align 8
  %76 = load i32, i32* @ENOMEM, align 4
  %77 = sub nsw i32 0, %76
  store i32 %77, i32* %8, align 4
  %78 = load %struct.nvif_mmu*, %struct.nvif_mmu** %6, align 8
  %79 = getelementptr inbounds %struct.nvif_mmu, %struct.nvif_mmu* %78, i32 0, i32 6
  %80 = load %struct.TYPE_3__*, %struct.TYPE_3__** %79, align 8
  %81 = icmp ne %struct.TYPE_3__* %80, null
  br i1 %81, label %82, label %88

82:                                               ; preds = %52
  %83 = load %struct.nvif_mmu*, %struct.nvif_mmu** %6, align 8
  %84 = getelementptr inbounds %struct.nvif_mmu, %struct.nvif_mmu* %83, i32 0, i32 5
  %85 = load %struct.TYPE_4__*, %struct.TYPE_4__** %84, align 8
  %86 = icmp ne %struct.TYPE_4__* %85, null
  %87 = xor i1 %86, true
  br label %88

88:                                               ; preds = %82, %52
  %89 = phi i1 [ true, %52 ], [ %87, %82 ]
  br i1 %89, label %90, label %91

90:                                               ; preds = %88
  br label %355

91:                                               ; preds = %88
  %92 = load %struct.nvif_mmu*, %struct.nvif_mmu** %6, align 8
  %93 = getelementptr inbounds %struct.nvif_mmu, %struct.nvif_mmu* %92, i32 0, i32 2
  %94 = load i32, i32* %93, align 8
  %95 = load i32, i32* @GFP_KERNEL, align 4
  %96 = call i8* @kmalloc_array(i32 %94, i32 4, i32 %95)
  %97 = bitcast i8* %96 to i32*
  %98 = load %struct.nvif_mmu*, %struct.nvif_mmu** %6, align 8
  %99 = getelementptr inbounds %struct.nvif_mmu, %struct.nvif_mmu* %98, i32 0, i32 3
  store i32* %97, i32** %99, align 8
  %100 = load %struct.nvif_mmu*, %struct.nvif_mmu** %6, align 8
  %101 = getelementptr inbounds %struct.nvif_mmu, %struct.nvif_mmu* %100, i32 0, i32 3
  %102 = load i32*, i32** %101, align 8
  %103 = icmp ne i32* %102, null
  br i1 %103, label %110, label %104

104:                                              ; preds = %91
  %105 = load %struct.nvif_mmu*, %struct.nvif_mmu** %6, align 8
  %106 = getelementptr inbounds %struct.nvif_mmu, %struct.nvif_mmu* %105, i32 0, i32 2
  %107 = load i32, i32* %106, align 8
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %109, label %110

109:                                              ; preds = %104
  br label %355

110:                                              ; preds = %104, %91
  store i32 0, i32* %9, align 4
  br label %111

111:                                              ; preds = %139, %110
  %112 = load i32, i32* %9, align 4
  %113 = load %struct.nvif_mmu*, %struct.nvif_mmu** %6, align 8
  %114 = getelementptr inbounds %struct.nvif_mmu, %struct.nvif_mmu* %113, i32 0, i32 0
  %115 = load i32, i32* %114, align 8
  %116 = icmp slt i32 %112, %115
  br i1 %116, label %117, label %142

117:                                              ; preds = %111
  %118 = bitcast %struct.nvif_mmu_heap_v0* %10 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %118, i8 0, i64 104, i1 false)
  %119 = getelementptr inbounds %struct.nvif_mmu_heap_v0, %struct.nvif_mmu_heap_v0* %10, i32 0, i32 0
  %120 = load i32, i32* %9, align 4
  store i32 %120, i32* %119, align 8
  %121 = load %struct.nvif_mmu*, %struct.nvif_mmu** %6, align 8
  %122 = getelementptr inbounds %struct.nvif_mmu, %struct.nvif_mmu* %121, i32 0, i32 4
  %123 = load i32, i32* @NVIF_MMU_V0_HEAP, align 4
  %124 = bitcast %struct.nvif_mmu_heap_v0* %10 to %struct.nvif_mmu_type_v0*
  %125 = call i32 @nvif_object_mthd(i32* %122, i32 %123, %struct.nvif_mmu_type_v0* %124, i64 104)
  store i32 %125, i32* %8, align 4
  %126 = load i32, i32* %8, align 4
  %127 = icmp ne i32 %126, 0
  br i1 %127, label %128, label %129

128:                                              ; preds = %117
  br label %355

129:                                              ; preds = %117
  %130 = getelementptr inbounds %struct.nvif_mmu_heap_v0, %struct.nvif_mmu_heap_v0* %10, i32 0, i32 13
  %131 = load i32, i32* %130, align 8
  %132 = load %struct.nvif_mmu*, %struct.nvif_mmu** %6, align 8
  %133 = getelementptr inbounds %struct.nvif_mmu, %struct.nvif_mmu* %132, i32 0, i32 6
  %134 = load %struct.TYPE_3__*, %struct.TYPE_3__** %133, align 8
  %135 = load i32, i32* %9, align 4
  %136 = sext i32 %135 to i64
  %137 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %134, i64 %136
  %138 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %137, i32 0, i32 0
  store i32 %131, i32* %138, align 4
  br label %139

139:                                              ; preds = %129
  %140 = load i32, i32* %9, align 4
  %141 = add nsw i32 %140, 1
  store i32 %141, i32* %9, align 4
  br label %111

142:                                              ; preds = %111
  store i32 0, i32* %9, align 4
  br label %143

143:                                              ; preds = %297, %142
  %144 = load i32, i32* %9, align 4
  %145 = load %struct.nvif_mmu*, %struct.nvif_mmu** %6, align 8
  %146 = getelementptr inbounds %struct.nvif_mmu, %struct.nvif_mmu* %145, i32 0, i32 1
  %147 = load i32, i32* %146, align 4
  %148 = icmp slt i32 %144, %147
  br i1 %148, label %149, label %300

149:                                              ; preds = %143
  %150 = bitcast %struct.nvif_mmu_type_v0* %11 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %150, i8 0, i64 104, i1 false)
  %151 = getelementptr inbounds %struct.nvif_mmu_type_v0, %struct.nvif_mmu_type_v0* %11, i32 0, i32 0
  %152 = load i32, i32* %9, align 4
  store i32 %152, i32* %151, align 8
  %153 = load %struct.nvif_mmu*, %struct.nvif_mmu** %6, align 8
  %154 = getelementptr inbounds %struct.nvif_mmu, %struct.nvif_mmu* %153, i32 0, i32 4
  %155 = load i32, i32* @NVIF_MMU_V0_TYPE, align 4
  %156 = call i32 @nvif_object_mthd(i32* %154, i32 %155, %struct.nvif_mmu_type_v0* %11, i64 104)
  store i32 %156, i32* %8, align 4
  %157 = load i32, i32* %8, align 4
  %158 = icmp ne i32 %157, 0
  br i1 %158, label %159, label %160

159:                                              ; preds = %149
  br label %355

160:                                              ; preds = %149
  %161 = load %struct.nvif_mmu*, %struct.nvif_mmu** %6, align 8
  %162 = getelementptr inbounds %struct.nvif_mmu, %struct.nvif_mmu* %161, i32 0, i32 5
  %163 = load %struct.TYPE_4__*, %struct.TYPE_4__** %162, align 8
  %164 = load i32, i32* %9, align 4
  %165 = sext i32 %164 to i64
  %166 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %163, i64 %165
  %167 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %166, i32 0, i32 1
  store i32 0, i32* %167, align 4
  %168 = getelementptr inbounds %struct.nvif_mmu_type_v0, %struct.nvif_mmu_type_v0* %11, i32 0, i32 12
  %169 = load i64, i64* %168, align 8
  %170 = icmp ne i64 %169, 0
  br i1 %170, label %171, label %182

171:                                              ; preds = %160
  %172 = load i32, i32* @NVIF_MEM_VRAM, align 4
  %173 = load %struct.nvif_mmu*, %struct.nvif_mmu** %6, align 8
  %174 = getelementptr inbounds %struct.nvif_mmu, %struct.nvif_mmu* %173, i32 0, i32 5
  %175 = load %struct.TYPE_4__*, %struct.TYPE_4__** %174, align 8
  %176 = load i32, i32* %9, align 4
  %177 = sext i32 %176 to i64
  %178 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %175, i64 %177
  %179 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %178, i32 0, i32 1
  %180 = load i32, i32* %179, align 4
  %181 = or i32 %180, %172
  store i32 %181, i32* %179, align 4
  br label %182

182:                                              ; preds = %171, %160
  %183 = getelementptr inbounds %struct.nvif_mmu_type_v0, %struct.nvif_mmu_type_v0* %11, i32 0, i32 11
  %184 = load i64, i64* %183, align 8
  %185 = icmp ne i64 %184, 0
  br i1 %185, label %186, label %197

186:                                              ; preds = %182
  %187 = load i32, i32* @NVIF_MEM_HOST, align 4
  %188 = load %struct.nvif_mmu*, %struct.nvif_mmu** %6, align 8
  %189 = getelementptr inbounds %struct.nvif_mmu, %struct.nvif_mmu* %188, i32 0, i32 5
  %190 = load %struct.TYPE_4__*, %struct.TYPE_4__** %189, align 8
  %191 = load i32, i32* %9, align 4
  %192 = sext i32 %191 to i64
  %193 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %190, i64 %192
  %194 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %193, i32 0, i32 1
  %195 = load i32, i32* %194, align 4
  %196 = or i32 %195, %187
  store i32 %196, i32* %194, align 4
  br label %197

197:                                              ; preds = %186, %182
  %198 = getelementptr inbounds %struct.nvif_mmu_type_v0, %struct.nvif_mmu_type_v0* %11, i32 0, i32 10
  %199 = load i64, i64* %198, align 8
  %200 = icmp ne i64 %199, 0
  br i1 %200, label %201, label %212

201:                                              ; preds = %197
  %202 = load i32, i32* @NVIF_MEM_COMP, align 4
  %203 = load %struct.nvif_mmu*, %struct.nvif_mmu** %6, align 8
  %204 = getelementptr inbounds %struct.nvif_mmu, %struct.nvif_mmu* %203, i32 0, i32 5
  %205 = load %struct.TYPE_4__*, %struct.TYPE_4__** %204, align 8
  %206 = load i32, i32* %9, align 4
  %207 = sext i32 %206 to i64
  %208 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %205, i64 %207
  %209 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %208, i32 0, i32 1
  %210 = load i32, i32* %209, align 4
  %211 = or i32 %210, %202
  store i32 %211, i32* %209, align 4
  br label %212

212:                                              ; preds = %201, %197
  %213 = getelementptr inbounds %struct.nvif_mmu_type_v0, %struct.nvif_mmu_type_v0* %11, i32 0, i32 9
  %214 = load i64, i64* %213, align 8
  %215 = icmp ne i64 %214, 0
  br i1 %215, label %216, label %227

216:                                              ; preds = %212
  %217 = load i32, i32* @NVIF_MEM_DISP, align 4
  %218 = load %struct.nvif_mmu*, %struct.nvif_mmu** %6, align 8
  %219 = getelementptr inbounds %struct.nvif_mmu, %struct.nvif_mmu* %218, i32 0, i32 5
  %220 = load %struct.TYPE_4__*, %struct.TYPE_4__** %219, align 8
  %221 = load i32, i32* %9, align 4
  %222 = sext i32 %221 to i64
  %223 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %220, i64 %222
  %224 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %223, i32 0, i32 1
  %225 = load i32, i32* %224, align 4
  %226 = or i32 %225, %217
  store i32 %226, i32* %224, align 4
  br label %227

227:                                              ; preds = %216, %212
  %228 = getelementptr inbounds %struct.nvif_mmu_type_v0, %struct.nvif_mmu_type_v0* %11, i32 0, i32 8
  %229 = load i64, i64* %228, align 8
  %230 = icmp ne i64 %229, 0
  br i1 %230, label %231, label %242

231:                                              ; preds = %227
  %232 = load i32, i32* @NVIF_MEM_KIND, align 4
  %233 = load %struct.nvif_mmu*, %struct.nvif_mmu** %6, align 8
  %234 = getelementptr inbounds %struct.nvif_mmu, %struct.nvif_mmu* %233, i32 0, i32 5
  %235 = load %struct.TYPE_4__*, %struct.TYPE_4__** %234, align 8
  %236 = load i32, i32* %9, align 4
  %237 = sext i32 %236 to i64
  %238 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %235, i64 %237
  %239 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %238, i32 0, i32 1
  %240 = load i32, i32* %239, align 4
  %241 = or i32 %240, %232
  store i32 %241, i32* %239, align 4
  br label %242

242:                                              ; preds = %231, %227
  %243 = getelementptr inbounds %struct.nvif_mmu_type_v0, %struct.nvif_mmu_type_v0* %11, i32 0, i32 7
  %244 = load i64, i64* %243, align 8
  %245 = icmp ne i64 %244, 0
  br i1 %245, label %246, label %257

246:                                              ; preds = %242
  %247 = load i32, i32* @NVIF_MEM_MAPPABLE, align 4
  %248 = load %struct.nvif_mmu*, %struct.nvif_mmu** %6, align 8
  %249 = getelementptr inbounds %struct.nvif_mmu, %struct.nvif_mmu* %248, i32 0, i32 5
  %250 = load %struct.TYPE_4__*, %struct.TYPE_4__** %249, align 8
  %251 = load i32, i32* %9, align 4
  %252 = sext i32 %251 to i64
  %253 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %250, i64 %252
  %254 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %253, i32 0, i32 1
  %255 = load i32, i32* %254, align 4
  %256 = or i32 %255, %247
  store i32 %256, i32* %254, align 4
  br label %257

257:                                              ; preds = %246, %242
  %258 = getelementptr inbounds %struct.nvif_mmu_type_v0, %struct.nvif_mmu_type_v0* %11, i32 0, i32 6
  %259 = load i64, i64* %258, align 8
  %260 = icmp ne i64 %259, 0
  br i1 %260, label %261, label %272

261:                                              ; preds = %257
  %262 = load i32, i32* @NVIF_MEM_COHERENT, align 4
  %263 = load %struct.nvif_mmu*, %struct.nvif_mmu** %6, align 8
  %264 = getelementptr inbounds %struct.nvif_mmu, %struct.nvif_mmu* %263, i32 0, i32 5
  %265 = load %struct.TYPE_4__*, %struct.TYPE_4__** %264, align 8
  %266 = load i32, i32* %9, align 4
  %267 = sext i32 %266 to i64
  %268 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %265, i64 %267
  %269 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %268, i32 0, i32 1
  %270 = load i32, i32* %269, align 4
  %271 = or i32 %270, %262
  store i32 %271, i32* %269, align 4
  br label %272

272:                                              ; preds = %261, %257
  %273 = getelementptr inbounds %struct.nvif_mmu_type_v0, %struct.nvif_mmu_type_v0* %11, i32 0, i32 5
  %274 = load i64, i64* %273, align 8
  %275 = icmp ne i64 %274, 0
  br i1 %275, label %276, label %287

276:                                              ; preds = %272
  %277 = load i32, i32* @NVIF_MEM_UNCACHED, align 4
  %278 = load %struct.nvif_mmu*, %struct.nvif_mmu** %6, align 8
  %279 = getelementptr inbounds %struct.nvif_mmu, %struct.nvif_mmu* %278, i32 0, i32 5
  %280 = load %struct.TYPE_4__*, %struct.TYPE_4__** %279, align 8
  %281 = load i32, i32* %9, align 4
  %282 = sext i32 %281 to i64
  %283 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %280, i64 %282
  %284 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %283, i32 0, i32 1
  %285 = load i32, i32* %284, align 4
  %286 = or i32 %285, %277
  store i32 %286, i32* %284, align 4
  br label %287

287:                                              ; preds = %276, %272
  %288 = getelementptr inbounds %struct.nvif_mmu_type_v0, %struct.nvif_mmu_type_v0* %11, i32 0, i32 4
  %289 = load i32, i32* %288, align 8
  %290 = load %struct.nvif_mmu*, %struct.nvif_mmu** %6, align 8
  %291 = getelementptr inbounds %struct.nvif_mmu, %struct.nvif_mmu* %290, i32 0, i32 5
  %292 = load %struct.TYPE_4__*, %struct.TYPE_4__** %291, align 8
  %293 = load i32, i32* %9, align 4
  %294 = sext i32 %293 to i64
  %295 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %292, i64 %294
  %296 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %295, i32 0, i32 0
  store i32 %289, i32* %296, align 4
  br label %297

297:                                              ; preds = %287
  %298 = load i32, i32* %9, align 4
  %299 = add nsw i32 %298, 1
  store i32 %299, i32* %9, align 4
  br label %143

300:                                              ; preds = %143
  %301 = load %struct.nvif_mmu*, %struct.nvif_mmu** %6, align 8
  %302 = getelementptr inbounds %struct.nvif_mmu, %struct.nvif_mmu* %301, i32 0, i32 2
  %303 = load i32, i32* %302, align 8
  %304 = icmp ne i32 %303, 0
  br i1 %304, label %305, label %354

305:                                              ; preds = %300
  %306 = load %struct.nvif_mmu_kind_v0*, %struct.nvif_mmu_kind_v0** %12, align 8
  %307 = bitcast %struct.nvif_mmu_kind_v0* %306 to %struct.nvif_mmu_type_v0*
  %308 = load i32, i32* @data, align 4
  %309 = load %struct.nvif_mmu*, %struct.nvif_mmu** %6, align 8
  %310 = getelementptr inbounds %struct.nvif_mmu, %struct.nvif_mmu* %309, i32 0, i32 2
  %311 = load i32, i32* %310, align 8
  %312 = call i64 @struct_size(%struct.nvif_mmu_type_v0* %307, i32 %308, i32 %311)
  store i64 %312, i64* %13, align 8
  %313 = load i32, i32* @ENOMEM, align 4
  %314 = sub nsw i32 0, %313
  store i32 %314, i32* %8, align 4
  %315 = load i64, i64* %13, align 8
  %316 = load i32, i32* @GFP_KERNEL, align 4
  %317 = call %struct.nvif_mmu_type_v0* @kmalloc(i64 %315, i32 %316)
  %318 = bitcast %struct.nvif_mmu_type_v0* %317 to %struct.nvif_mmu_kind_v0*
  store %struct.nvif_mmu_kind_v0* %318, %struct.nvif_mmu_kind_v0** %12, align 8
  %319 = icmp ne %struct.nvif_mmu_kind_v0* %318, null
  %320 = xor i1 %319, true
  br i1 %320, label %321, label %322

321:                                              ; preds = %305
  br label %355

322:                                              ; preds = %305
  %323 = load %struct.nvif_mmu_kind_v0*, %struct.nvif_mmu_kind_v0** %12, align 8
  %324 = getelementptr inbounds %struct.nvif_mmu_kind_v0, %struct.nvif_mmu_kind_v0* %323, i32 0, i32 3
  store i64 0, i64* %324, align 8
  %325 = load %struct.nvif_mmu*, %struct.nvif_mmu** %6, align 8
  %326 = getelementptr inbounds %struct.nvif_mmu, %struct.nvif_mmu* %325, i32 0, i32 2
  %327 = load i32, i32* %326, align 8
  %328 = load %struct.nvif_mmu_kind_v0*, %struct.nvif_mmu_kind_v0** %12, align 8
  %329 = getelementptr inbounds %struct.nvif_mmu_kind_v0, %struct.nvif_mmu_kind_v0* %328, i32 0, i32 1
  store i32 %327, i32* %329, align 4
  %330 = load %struct.nvif_mmu*, %struct.nvif_mmu** %6, align 8
  %331 = getelementptr inbounds %struct.nvif_mmu, %struct.nvif_mmu* %330, i32 0, i32 4
  %332 = load i32, i32* @NVIF_MMU_V0_KIND, align 4
  %333 = load %struct.nvif_mmu_kind_v0*, %struct.nvif_mmu_kind_v0** %12, align 8
  %334 = bitcast %struct.nvif_mmu_kind_v0* %333 to %struct.nvif_mmu_type_v0*
  %335 = load i64, i64* %13, align 8
  %336 = call i32 @nvif_object_mthd(i32* %331, i32 %332, %struct.nvif_mmu_type_v0* %334, i64 %335)
  store i32 %336, i32* %8, align 4
  %337 = load i32, i32* %8, align 4
  %338 = icmp eq i32 %337, 0
  br i1 %338, label %339, label %350

339:                                              ; preds = %322
  %340 = load %struct.nvif_mmu*, %struct.nvif_mmu** %6, align 8
  %341 = getelementptr inbounds %struct.nvif_mmu, %struct.nvif_mmu* %340, i32 0, i32 3
  %342 = load i32*, i32** %341, align 8
  %343 = load %struct.nvif_mmu_kind_v0*, %struct.nvif_mmu_kind_v0** %12, align 8
  %344 = getelementptr inbounds %struct.nvif_mmu_kind_v0, %struct.nvif_mmu_kind_v0* %343, i32 0, i32 2
  %345 = load i32, i32* %344, align 8
  %346 = load %struct.nvif_mmu_kind_v0*, %struct.nvif_mmu_kind_v0** %12, align 8
  %347 = getelementptr inbounds %struct.nvif_mmu_kind_v0, %struct.nvif_mmu_kind_v0* %346, i32 0, i32 1
  %348 = load i32, i32* %347, align 4
  %349 = call i32 @memcpy(i32* %342, i32 %345, i32 %348)
  br label %350

350:                                              ; preds = %339, %322
  %351 = load %struct.nvif_mmu_kind_v0*, %struct.nvif_mmu_kind_v0** %12, align 8
  %352 = bitcast %struct.nvif_mmu_kind_v0* %351 to %struct.nvif_mmu_type_v0*
  %353 = call i32 @kfree(%struct.nvif_mmu_type_v0* %352)
  br label %354

354:                                              ; preds = %350, %300
  br label %355

355:                                              ; preds = %354, %321, %159, %128, %109, %90, %51, %28
  %356 = load i32, i32* %8, align 4
  %357 = icmp ne i32 %356, 0
  br i1 %357, label %358, label %361

358:                                              ; preds = %355
  %359 = load %struct.nvif_mmu*, %struct.nvif_mmu** %6, align 8
  %360 = call i32 @nvif_mmu_fini(%struct.nvif_mmu* %359)
  br label %361

361:                                              ; preds = %358, %355
  %362 = load i32, i32* %8, align 4
  ret i32 %362
}

declare dso_local i32 @nvif_object_init(%struct.nvif_object*, i32, i32, %struct.nvif_mmu_v0*, i32, i32*) #1

declare dso_local i32 @nvif_mclass(i32*, %struct.nvif_mclass*) #1

declare dso_local i8* @kmalloc_array(i32, i32, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

declare dso_local i32 @nvif_object_mthd(i32*, i32, %struct.nvif_mmu_type_v0*, i64) #1

declare dso_local i64 @struct_size(%struct.nvif_mmu_type_v0*, i32, i32) #1

declare dso_local %struct.nvif_mmu_type_v0* @kmalloc(i64, i32) #1

declare dso_local i32 @memcpy(i32*, i32, i32) #1

declare dso_local i32 @kfree(%struct.nvif_mmu_type_v0*) #1

declare dso_local i32 @nvif_mmu_fini(%struct.nvif_mmu*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
