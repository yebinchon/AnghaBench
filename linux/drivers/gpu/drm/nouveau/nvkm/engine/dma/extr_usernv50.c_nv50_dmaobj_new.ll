; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/engine/dma/extr_usernv50.c_nv50_dmaobj_new.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/engine/dma/extr_usernv50.c_nv50_dmaobj_new.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvkm_dma = type { i32 }
%struct.nvkm_oclass = type { %struct.TYPE_2__, %struct.nvkm_object* }
%struct.TYPE_2__ = type { i32 }
%struct.nvkm_object = type { i32 }
%struct.nvkm_dmaobj = type { i32, i32 }
%union.anon = type { %struct.nv50_dma_v0 }
%struct.nv50_dma_v0 = type { i32, i32, i32, i32, i32 }
%struct.nv50_dmaobj = type { i32, i32, %struct.nvkm_dmaobj }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@nv50_dmaobj_func = common dso_local global i32 0, align 4
@ENOSYS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"create nv50 dma size %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [59 x i8] c"create nv50 dma vers %d priv %d part %d comp %d kind %02x\0A\00", align 1
@NV50_DMA_V0_PRIV_US = common dso_local global i32 0, align 4
@NV50_DMA_V0_PART_256 = common dso_local global i32 0, align 4
@NV50_DMA_V0_COMP_NONE = common dso_local global i32 0, align 4
@NV50_DMA_V0_KIND_PITCH = common dso_local global i32 0, align 4
@NV50_DMA_V0_PRIV_VM = common dso_local global i32 0, align 4
@NV50_DMA_V0_PART_VM = common dso_local global i32 0, align 4
@NV50_DMA_V0_COMP_VM = common dso_local global i32 0, align 4
@NV50_DMA_V0_KIND_VM = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nv50_dmaobj_new(%struct.nvkm_dma* %0, %struct.nvkm_oclass* %1, i8* %2, i32 %3, %struct.nvkm_dmaobj** %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.nvkm_dma*, align 8
  %8 = alloca %struct.nvkm_oclass*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.nvkm_dmaobj**, align 8
  %12 = alloca %union.anon*, align 8
  %13 = alloca %struct.nvkm_object*, align 8
  %14 = alloca %struct.nv50_dmaobj*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca %struct.nv50_dma_v0, align 8
  store %struct.nvkm_dma* %0, %struct.nvkm_dma** %7, align 8
  store %struct.nvkm_oclass* %1, %struct.nvkm_oclass** %8, align 8
  store i8* %2, i8** %9, align 8
  store i32 %3, i32* %10, align 4
  store %struct.nvkm_dmaobj** %4, %struct.nvkm_dmaobj*** %11, align 8
  %21 = load %struct.nvkm_oclass*, %struct.nvkm_oclass** %8, align 8
  %22 = getelementptr inbounds %struct.nvkm_oclass, %struct.nvkm_oclass* %21, i32 0, i32 1
  %23 = load %struct.nvkm_object*, %struct.nvkm_object** %22, align 8
  store %struct.nvkm_object* %23, %struct.nvkm_object** %13, align 8
  %24 = load i32, i32* @GFP_KERNEL, align 4
  %25 = call %struct.nv50_dmaobj* @kzalloc(i32 16, i32 %24)
  store %struct.nv50_dmaobj* %25, %struct.nv50_dmaobj** %14, align 8
  %26 = icmp ne %struct.nv50_dmaobj* %25, null
  br i1 %26, label %30, label %27

27:                                               ; preds = %5
  %28 = load i32, i32* @ENOMEM, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %6, align 4
  br label %201

30:                                               ; preds = %5
  %31 = load %struct.nv50_dmaobj*, %struct.nv50_dmaobj** %14, align 8
  %32 = getelementptr inbounds %struct.nv50_dmaobj, %struct.nv50_dmaobj* %31, i32 0, i32 2
  %33 = load %struct.nvkm_dmaobj**, %struct.nvkm_dmaobj*** %11, align 8
  store %struct.nvkm_dmaobj* %32, %struct.nvkm_dmaobj** %33, align 8
  %34 = load %struct.nvkm_dma*, %struct.nvkm_dma** %7, align 8
  %35 = load %struct.nvkm_oclass*, %struct.nvkm_oclass** %8, align 8
  %36 = load %struct.nv50_dmaobj*, %struct.nv50_dmaobj** %14, align 8
  %37 = getelementptr inbounds %struct.nv50_dmaobj, %struct.nv50_dmaobj* %36, i32 0, i32 2
  %38 = call i32 @nvkm_dmaobj_ctor(i32* @nv50_dmaobj_func, %struct.nvkm_dma* %34, %struct.nvkm_oclass* %35, i8** %9, i32* %10, %struct.nvkm_dmaobj* %37)
  store i32 %38, i32* %19, align 4
  %39 = load i32, i32* %19, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %43

41:                                               ; preds = %30
  %42 = load i32, i32* %19, align 4
  store i32 %42, i32* %6, align 4
  br label %201

43:                                               ; preds = %30
  %44 = load i32, i32* @ENOSYS, align 4
  %45 = sub nsw i32 0, %44
  store i32 %45, i32* %19, align 4
  %46 = load i8*, i8** %9, align 8
  %47 = bitcast i8* %46 to %union.anon*
  store %union.anon* %47, %union.anon** %12, align 8
  %48 = load %struct.nvkm_object*, %struct.nvkm_object** %13, align 8
  %49 = load i32, i32* %10, align 4
  %50 = call i32 (%struct.nvkm_object*, i8*, i32, ...) @nvif_ioctl(%struct.nvkm_object* %48, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 %49)
  %51 = load i32, i32* %19, align 4
  %52 = load %union.anon*, %union.anon** %12, align 8
  %53 = bitcast %union.anon* %52 to %struct.nv50_dma_v0*
  %54 = bitcast %struct.nv50_dma_v0* %20 to i8*
  %55 = bitcast %struct.nv50_dma_v0* %53 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %54, i8* align 4 %55, i64 20, i1 false)
  %56 = call i32 @nvif_unpack(i32 %51, i8** %9, i32* %10, %struct.nv50_dma_v0* byval(%struct.nv50_dma_v0) align 8 %20, i32 0, i32 0, i32 0)
  store i32 %56, i32* %19, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %97, label %58

58:                                               ; preds = %43
  %59 = load %struct.nvkm_object*, %struct.nvkm_object** %13, align 8
  %60 = load %union.anon*, %union.anon** %12, align 8
  %61 = bitcast %union.anon* %60 to %struct.nv50_dma_v0*
  %62 = getelementptr inbounds %struct.nv50_dma_v0, %struct.nv50_dma_v0* %61, i32 0, i32 4
  %63 = load i32, i32* %62, align 4
  %64 = load %union.anon*, %union.anon** %12, align 8
  %65 = bitcast %union.anon* %64 to %struct.nv50_dma_v0*
  %66 = getelementptr inbounds %struct.nv50_dma_v0, %struct.nv50_dma_v0* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = load %union.anon*, %union.anon** %12, align 8
  %69 = bitcast %union.anon* %68 to %struct.nv50_dma_v0*
  %70 = getelementptr inbounds %struct.nv50_dma_v0, %struct.nv50_dma_v0* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 4
  %72 = load %union.anon*, %union.anon** %12, align 8
  %73 = bitcast %union.anon* %72 to %struct.nv50_dma_v0*
  %74 = getelementptr inbounds %struct.nv50_dma_v0, %struct.nv50_dma_v0* %73, i32 0, i32 2
  %75 = load i32, i32* %74, align 4
  %76 = load %union.anon*, %union.anon** %12, align 8
  %77 = bitcast %union.anon* %76 to %struct.nv50_dma_v0*
  %78 = getelementptr inbounds %struct.nv50_dma_v0, %struct.nv50_dma_v0* %77, i32 0, i32 3
  %79 = load i32, i32* %78, align 4
  %80 = call i32 (%struct.nvkm_object*, i8*, i32, ...) @nvif_ioctl(%struct.nvkm_object* %59, i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.1, i64 0, i64 0), i32 %63, i32 %67, i32 %71, i32 %75, i32 %79)
  %81 = load %union.anon*, %union.anon** %12, align 8
  %82 = bitcast %union.anon* %81 to %struct.nv50_dma_v0*
  %83 = getelementptr inbounds %struct.nv50_dma_v0, %struct.nv50_dma_v0* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 4
  store i32 %84, i32* %15, align 4
  %85 = load %union.anon*, %union.anon** %12, align 8
  %86 = bitcast %union.anon* %85 to %struct.nv50_dma_v0*
  %87 = getelementptr inbounds %struct.nv50_dma_v0, %struct.nv50_dma_v0* %86, i32 0, i32 1
  %88 = load i32, i32* %87, align 4
  store i32 %88, i32* %16, align 4
  %89 = load %union.anon*, %union.anon** %12, align 8
  %90 = bitcast %union.anon* %89 to %struct.nv50_dma_v0*
  %91 = getelementptr inbounds %struct.nv50_dma_v0, %struct.nv50_dma_v0* %90, i32 0, i32 2
  %92 = load i32, i32* %91, align 4
  store i32 %92, i32* %17, align 4
  %93 = load %union.anon*, %union.anon** %12, align 8
  %94 = bitcast %union.anon* %93 to %struct.nv50_dma_v0*
  %95 = getelementptr inbounds %struct.nv50_dma_v0, %struct.nv50_dma_v0* %94, i32 0, i32 3
  %96 = load i32, i32* %95, align 4
  store i32 %96, i32* %18, align 4
  br label %120

97:                                               ; preds = %43
  %98 = load i32, i32* %10, align 4
  %99 = icmp eq i32 %98, 0
  br i1 %99, label %100, label %117

100:                                              ; preds = %97
  %101 = load %struct.nv50_dmaobj*, %struct.nv50_dmaobj** %14, align 8
  %102 = getelementptr inbounds %struct.nv50_dmaobj, %struct.nv50_dmaobj* %101, i32 0, i32 2
  %103 = getelementptr inbounds %struct.nvkm_dmaobj, %struct.nvkm_dmaobj* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 4
  %105 = icmp ne i32 %104, 129
  br i1 %105, label %106, label %111

106:                                              ; preds = %100
  %107 = load i32, i32* @NV50_DMA_V0_PRIV_US, align 4
  store i32 %107, i32* %15, align 4
  %108 = load i32, i32* @NV50_DMA_V0_PART_256, align 4
  store i32 %108, i32* %16, align 4
  %109 = load i32, i32* @NV50_DMA_V0_COMP_NONE, align 4
  store i32 %109, i32* %17, align 4
  %110 = load i32, i32* @NV50_DMA_V0_KIND_PITCH, align 4
  store i32 %110, i32* %18, align 4
  br label %116

111:                                              ; preds = %100
  %112 = load i32, i32* @NV50_DMA_V0_PRIV_VM, align 4
  store i32 %112, i32* %15, align 4
  %113 = load i32, i32* @NV50_DMA_V0_PART_VM, align 4
  store i32 %113, i32* %16, align 4
  %114 = load i32, i32* @NV50_DMA_V0_COMP_VM, align 4
  store i32 %114, i32* %17, align 4
  %115 = load i32, i32* @NV50_DMA_V0_KIND_VM, align 4
  store i32 %115, i32* %18, align 4
  br label %116

116:                                              ; preds = %111, %106
  br label %119

117:                                              ; preds = %97
  %118 = load i32, i32* %19, align 4
  store i32 %118, i32* %6, align 4
  br label %201

119:                                              ; preds = %116
  br label %120

120:                                              ; preds = %119, %58
  %121 = load i32, i32* %15, align 4
  %122 = icmp sgt i32 %121, 2
  br i1 %122, label %132, label %123

123:                                              ; preds = %120
  %124 = load i32, i32* %16, align 4
  %125 = icmp sgt i32 %124, 2
  br i1 %125, label %132, label %126

126:                                              ; preds = %123
  %127 = load i32, i32* %17, align 4
  %128 = icmp sgt i32 %127, 3
  br i1 %128, label %132, label %129

129:                                              ; preds = %126
  %130 = load i32, i32* %18, align 4
  %131 = icmp sgt i32 %130, 127
  br i1 %131, label %132, label %135

132:                                              ; preds = %129, %126, %123, %120
  %133 = load i32, i32* @EINVAL, align 4
  %134 = sub nsw i32 0, %133
  store i32 %134, i32* %6, align 4
  br label %201

135:                                              ; preds = %129
  %136 = load i32, i32* %17, align 4
  %137 = shl i32 %136, 29
  %138 = load i32, i32* %18, align 4
  %139 = shl i32 %138, 22
  %140 = or i32 %137, %139
  %141 = load i32, i32* %15, align 4
  %142 = shl i32 %141, 20
  %143 = or i32 %140, %142
  %144 = load %struct.nvkm_oclass*, %struct.nvkm_oclass** %8, align 8
  %145 = getelementptr inbounds %struct.nvkm_oclass, %struct.nvkm_oclass* %144, i32 0, i32 0
  %146 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %145, i32 0, i32 0
  %147 = load i32, i32* %146, align 8
  %148 = or i32 %143, %147
  %149 = load %struct.nv50_dmaobj*, %struct.nv50_dmaobj** %14, align 8
  %150 = getelementptr inbounds %struct.nv50_dmaobj, %struct.nv50_dmaobj* %149, i32 0, i32 0
  store i32 %148, i32* %150, align 4
  %151 = load i32, i32* %16, align 4
  %152 = shl i32 %151, 16
  %153 = load %struct.nv50_dmaobj*, %struct.nv50_dmaobj** %14, align 8
  %154 = getelementptr inbounds %struct.nv50_dmaobj, %struct.nv50_dmaobj* %153, i32 0, i32 1
  store i32 %152, i32* %154, align 4
  %155 = load %struct.nv50_dmaobj*, %struct.nv50_dmaobj** %14, align 8
  %156 = getelementptr inbounds %struct.nv50_dmaobj, %struct.nv50_dmaobj* %155, i32 0, i32 2
  %157 = getelementptr inbounds %struct.nvkm_dmaobj, %struct.nvkm_dmaobj* %156, i32 0, i32 0
  %158 = load i32, i32* %157, align 4
  switch i32 %158, label %178 [
    i32 129, label %159
    i32 128, label %163
    i32 131, label %168
    i32 130, label %173
  ]

159:                                              ; preds = %135
  %160 = load %struct.nv50_dmaobj*, %struct.nv50_dmaobj** %14, align 8
  %161 = getelementptr inbounds %struct.nv50_dmaobj, %struct.nv50_dmaobj* %160, i32 0, i32 0
  %162 = load i32, i32* %161, align 4
  store i32 %162, i32* %161, align 4
  br label %181

163:                                              ; preds = %135
  %164 = load %struct.nv50_dmaobj*, %struct.nv50_dmaobj** %14, align 8
  %165 = getelementptr inbounds %struct.nv50_dmaobj, %struct.nv50_dmaobj* %164, i32 0, i32 0
  %166 = load i32, i32* %165, align 4
  %167 = or i32 %166, 65536
  store i32 %167, i32* %165, align 4
  br label %181

168:                                              ; preds = %135
  %169 = load %struct.nv50_dmaobj*, %struct.nv50_dmaobj** %14, align 8
  %170 = getelementptr inbounds %struct.nv50_dmaobj, %struct.nv50_dmaobj* %169, i32 0, i32 0
  %171 = load i32, i32* %170, align 4
  %172 = or i32 %171, 131072
  store i32 %172, i32* %170, align 4
  br label %181

173:                                              ; preds = %135
  %174 = load %struct.nv50_dmaobj*, %struct.nv50_dmaobj** %14, align 8
  %175 = getelementptr inbounds %struct.nv50_dmaobj, %struct.nv50_dmaobj* %174, i32 0, i32 0
  %176 = load i32, i32* %175, align 4
  %177 = or i32 %176, 196608
  store i32 %177, i32* %175, align 4
  br label %181

178:                                              ; preds = %135
  %179 = load i32, i32* @EINVAL, align 4
  %180 = sub nsw i32 0, %179
  store i32 %180, i32* %6, align 4
  br label %201

181:                                              ; preds = %173, %168, %163, %159
  %182 = load %struct.nv50_dmaobj*, %struct.nv50_dmaobj** %14, align 8
  %183 = getelementptr inbounds %struct.nv50_dmaobj, %struct.nv50_dmaobj* %182, i32 0, i32 2
  %184 = getelementptr inbounds %struct.nvkm_dmaobj, %struct.nvkm_dmaobj* %183, i32 0, i32 1
  %185 = load i32, i32* %184, align 4
  switch i32 %185, label %197 [
    i32 133, label %186
    i32 135, label %187
    i32 132, label %192
    i32 134, label %192
  ]

186:                                              ; preds = %181
  br label %200

187:                                              ; preds = %181
  %188 = load %struct.nv50_dmaobj*, %struct.nv50_dmaobj** %14, align 8
  %189 = getelementptr inbounds %struct.nv50_dmaobj, %struct.nv50_dmaobj* %188, i32 0, i32 0
  %190 = load i32, i32* %189, align 4
  %191 = or i32 %190, 262144
  store i32 %191, i32* %189, align 4
  br label %200

192:                                              ; preds = %181, %181
  %193 = load %struct.nv50_dmaobj*, %struct.nv50_dmaobj** %14, align 8
  %194 = getelementptr inbounds %struct.nv50_dmaobj, %struct.nv50_dmaobj* %193, i32 0, i32 0
  %195 = load i32, i32* %194, align 4
  %196 = or i32 %195, 524288
  store i32 %196, i32* %194, align 4
  br label %200

197:                                              ; preds = %181
  %198 = load i32, i32* @EINVAL, align 4
  %199 = sub nsw i32 0, %198
  store i32 %199, i32* %6, align 4
  br label %201

200:                                              ; preds = %192, %187, %186
  store i32 0, i32* %6, align 4
  br label %201

201:                                              ; preds = %200, %197, %178, %132, %117, %41, %27
  %202 = load i32, i32* %6, align 4
  ret i32 %202
}

declare dso_local %struct.nv50_dmaobj* @kzalloc(i32, i32) #1

declare dso_local i32 @nvkm_dmaobj_ctor(i32*, %struct.nvkm_dma*, %struct.nvkm_oclass*, i8**, i32*, %struct.nvkm_dmaobj*) #1

declare dso_local i32 @nvif_ioctl(%struct.nvkm_object*, i8*, i32, ...) #1

declare dso_local i32 @nvif_unpack(i32, i8**, i32*, %struct.nv50_dma_v0* byval(%struct.nv50_dma_v0) align 8, i32, i32, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
