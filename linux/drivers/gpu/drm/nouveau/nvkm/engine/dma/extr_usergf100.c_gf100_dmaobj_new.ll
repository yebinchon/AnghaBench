; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/engine/dma/extr_usergf100.c_gf100_dmaobj_new.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/engine/dma/extr_usergf100.c_gf100_dmaobj_new.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvkm_dma = type { i32 }
%struct.nvkm_oclass = type { %struct.TYPE_2__, %struct.nvkm_object* }
%struct.TYPE_2__ = type { i32 }
%struct.nvkm_object = type { i32 }
%struct.nvkm_dmaobj = type { i32, i32 }
%union.anon = type { %struct.gf100_dma_v0 }
%struct.gf100_dma_v0 = type { i32, i32, i32 }
%struct.gf100_dmaobj = type { i32, i32, %struct.nvkm_dmaobj }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@gf100_dmaobj_func = common dso_local global i32 0, align 4
@ENOSYS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"create gf100 dma size %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [44 x i8] c"create gf100 dma vers %d priv %d kind %02x\0A\00", align 1
@GF100_DMA_V0_KIND_PITCH = common dso_local global i32 0, align 4
@GF100_DMA_V0_PRIV_US = common dso_local global i32 0, align 4
@GF100_DMA_V0_KIND_VM = common dso_local global i32 0, align 4
@GF100_DMA_V0_PRIV_VM = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @gf100_dmaobj_new(%struct.nvkm_dma* %0, %struct.nvkm_oclass* %1, i8* %2, i32 %3, %struct.nvkm_dmaobj** %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.nvkm_dma*, align 8
  %8 = alloca %struct.nvkm_oclass*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.nvkm_dmaobj**, align 8
  %12 = alloca %union.anon*, align 8
  %13 = alloca %struct.nvkm_object*, align 8
  %14 = alloca %struct.gf100_dmaobj*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca { i64, i32 }, align 4
  store %struct.nvkm_dma* %0, %struct.nvkm_dma** %7, align 8
  store %struct.nvkm_oclass* %1, %struct.nvkm_oclass** %8, align 8
  store i8* %2, i8** %9, align 8
  store i32 %3, i32* %10, align 4
  store %struct.nvkm_dmaobj** %4, %struct.nvkm_dmaobj*** %11, align 8
  %20 = load %struct.nvkm_oclass*, %struct.nvkm_oclass** %8, align 8
  %21 = getelementptr inbounds %struct.nvkm_oclass, %struct.nvkm_oclass* %20, i32 0, i32 1
  %22 = load %struct.nvkm_object*, %struct.nvkm_object** %21, align 8
  store %struct.nvkm_object* %22, %struct.nvkm_object** %13, align 8
  %23 = load i32, i32* @GFP_KERNEL, align 4
  %24 = call %struct.gf100_dmaobj* @kzalloc(i32 16, i32 %23)
  store %struct.gf100_dmaobj* %24, %struct.gf100_dmaobj** %14, align 8
  %25 = icmp ne %struct.gf100_dmaobj* %24, null
  br i1 %25, label %29, label %26

26:                                               ; preds = %5
  %27 = load i32, i32* @ENOMEM, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %6, align 4
  br label %173

29:                                               ; preds = %5
  %30 = load %struct.gf100_dmaobj*, %struct.gf100_dmaobj** %14, align 8
  %31 = getelementptr inbounds %struct.gf100_dmaobj, %struct.gf100_dmaobj* %30, i32 0, i32 2
  %32 = load %struct.nvkm_dmaobj**, %struct.nvkm_dmaobj*** %11, align 8
  store %struct.nvkm_dmaobj* %31, %struct.nvkm_dmaobj** %32, align 8
  %33 = load %struct.nvkm_dma*, %struct.nvkm_dma** %7, align 8
  %34 = load %struct.nvkm_oclass*, %struct.nvkm_oclass** %8, align 8
  %35 = load %struct.gf100_dmaobj*, %struct.gf100_dmaobj** %14, align 8
  %36 = getelementptr inbounds %struct.gf100_dmaobj, %struct.gf100_dmaobj* %35, i32 0, i32 2
  %37 = call i32 @nvkm_dmaobj_ctor(i32* @gf100_dmaobj_func, %struct.nvkm_dma* %33, %struct.nvkm_oclass* %34, i8** %9, i32* %10, %struct.nvkm_dmaobj* %36)
  store i32 %37, i32* %18, align 4
  %38 = load i32, i32* %18, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %42

40:                                               ; preds = %29
  %41 = load i32, i32* %18, align 4
  store i32 %41, i32* %6, align 4
  br label %173

42:                                               ; preds = %29
  %43 = load i32, i32* @ENOSYS, align 4
  %44 = sub nsw i32 0, %43
  store i32 %44, i32* %18, align 4
  %45 = load i8*, i8** %9, align 8
  %46 = bitcast i8* %45 to %union.anon*
  store %union.anon* %46, %union.anon** %12, align 8
  %47 = load %struct.nvkm_object*, %struct.nvkm_object** %13, align 8
  %48 = load i32, i32* %10, align 4
  %49 = call i32 (%struct.nvkm_object*, i8*, i32, ...) @nvif_ioctl(%struct.nvkm_object* %47, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i32 %48)
  %50 = load i32, i32* %18, align 4
  %51 = load %union.anon*, %union.anon** %12, align 8
  %52 = bitcast %union.anon* %51 to %struct.gf100_dma_v0*
  %53 = bitcast { i64, i32 }* %19 to i8*
  %54 = bitcast %struct.gf100_dma_v0* %52 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %53, i8* align 4 %54, i64 12, i1 false)
  %55 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %19, i32 0, i32 0
  %56 = load i64, i64* %55, align 4
  %57 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %19, i32 0, i32 1
  %58 = load i32, i32* %57, align 4
  %59 = call i32 @nvif_unpack(i32 %50, i8** %9, i32* %10, i64 %56, i32 %58, i32 0, i32 0, i32 0)
  store i32 %59, i32* %18, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %84, label %61

61:                                               ; preds = %42
  %62 = load %struct.nvkm_object*, %struct.nvkm_object** %13, align 8
  %63 = load %union.anon*, %union.anon** %12, align 8
  %64 = bitcast %union.anon* %63 to %struct.gf100_dma_v0*
  %65 = getelementptr inbounds %struct.gf100_dma_v0, %struct.gf100_dma_v0* %64, i32 0, i32 2
  %66 = load i32, i32* %65, align 4
  %67 = load %union.anon*, %union.anon** %12, align 8
  %68 = bitcast %union.anon* %67 to %struct.gf100_dma_v0*
  %69 = getelementptr inbounds %struct.gf100_dma_v0, %struct.gf100_dma_v0* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = load %union.anon*, %union.anon** %12, align 8
  %72 = bitcast %union.anon* %71 to %struct.gf100_dma_v0*
  %73 = getelementptr inbounds %struct.gf100_dma_v0, %struct.gf100_dma_v0* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 4
  %75 = call i32 (%struct.nvkm_object*, i8*, i32, ...) @nvif_ioctl(%struct.nvkm_object* %62, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.1, i64 0, i64 0), i32 %66, i32 %70, i32 %74)
  %76 = load %union.anon*, %union.anon** %12, align 8
  %77 = bitcast %union.anon* %76 to %struct.gf100_dma_v0*
  %78 = getelementptr inbounds %struct.gf100_dma_v0, %struct.gf100_dma_v0* %77, i32 0, i32 1
  %79 = load i32, i32* %78, align 4
  store i32 %79, i32* %15, align 4
  %80 = load %union.anon*, %union.anon** %12, align 8
  %81 = bitcast %union.anon* %80 to %struct.gf100_dma_v0*
  %82 = getelementptr inbounds %struct.gf100_dma_v0, %struct.gf100_dma_v0* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 4
  store i32 %83, i32* %16, align 4
  store i32 0, i32* %17, align 4
  br label %103

84:                                               ; preds = %42
  %85 = load i32, i32* %10, align 4
  %86 = icmp eq i32 %85, 0
  br i1 %86, label %87, label %100

87:                                               ; preds = %84
  %88 = load %struct.gf100_dmaobj*, %struct.gf100_dmaobj** %14, align 8
  %89 = getelementptr inbounds %struct.gf100_dmaobj, %struct.gf100_dmaobj* %88, i32 0, i32 2
  %90 = getelementptr inbounds %struct.nvkm_dmaobj, %struct.nvkm_dmaobj* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 4
  %92 = icmp ne i32 %91, 129
  br i1 %92, label %93, label %96

93:                                               ; preds = %87
  %94 = load i32, i32* @GF100_DMA_V0_KIND_PITCH, align 4
  store i32 %94, i32* %15, align 4
  %95 = load i32, i32* @GF100_DMA_V0_PRIV_US, align 4
  store i32 %95, i32* %16, align 4
  store i32 2, i32* %17, align 4
  br label %99

96:                                               ; preds = %87
  %97 = load i32, i32* @GF100_DMA_V0_KIND_VM, align 4
  store i32 %97, i32* %15, align 4
  %98 = load i32, i32* @GF100_DMA_V0_PRIV_VM, align 4
  store i32 %98, i32* %16, align 4
  store i32 0, i32* %17, align 4
  br label %99

99:                                               ; preds = %96, %93
  br label %102

100:                                              ; preds = %84
  %101 = load i32, i32* %18, align 4
  store i32 %101, i32* %6, align 4
  br label %173

102:                                              ; preds = %99
  br label %103

103:                                              ; preds = %102, %61
  %104 = load i32, i32* %16, align 4
  %105 = icmp sgt i32 %104, 2
  br i1 %105, label %106, label %109

106:                                              ; preds = %103
  %107 = load i32, i32* @EINVAL, align 4
  %108 = sub nsw i32 0, %107
  store i32 %108, i32* %6, align 4
  br label %173

109:                                              ; preds = %103
  %110 = load i32, i32* %15, align 4
  %111 = shl i32 %110, 22
  %112 = load i32, i32* %16, align 4
  %113 = shl i32 %112, 20
  %114 = or i32 %111, %113
  %115 = load %struct.nvkm_oclass*, %struct.nvkm_oclass** %8, align 8
  %116 = getelementptr inbounds %struct.nvkm_oclass, %struct.nvkm_oclass* %115, i32 0, i32 0
  %117 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %116, i32 0, i32 0
  %118 = load i32, i32* %117, align 8
  %119 = or i32 %114, %118
  %120 = load %struct.gf100_dmaobj*, %struct.gf100_dmaobj** %14, align 8
  %121 = getelementptr inbounds %struct.gf100_dmaobj, %struct.gf100_dmaobj* %120, i32 0, i32 0
  %122 = load i32, i32* %121, align 4
  %123 = or i32 %122, %119
  store i32 %123, i32* %121, align 4
  %124 = load i32, i32* %17, align 4
  %125 = shl i32 %124, 16
  %126 = load %struct.gf100_dmaobj*, %struct.gf100_dmaobj** %14, align 8
  %127 = getelementptr inbounds %struct.gf100_dmaobj, %struct.gf100_dmaobj* %126, i32 0, i32 1
  %128 = load i32, i32* %127, align 4
  %129 = or i32 %128, %125
  store i32 %129, i32* %127, align 4
  %130 = load %struct.gf100_dmaobj*, %struct.gf100_dmaobj** %14, align 8
  %131 = getelementptr inbounds %struct.gf100_dmaobj, %struct.gf100_dmaobj* %130, i32 0, i32 2
  %132 = getelementptr inbounds %struct.nvkm_dmaobj, %struct.nvkm_dmaobj* %131, i32 0, i32 0
  %133 = load i32, i32* %132, align 4
  switch i32 %133, label %153 [
    i32 129, label %134
    i32 128, label %138
    i32 131, label %143
    i32 130, label %148
  ]

134:                                              ; preds = %109
  %135 = load %struct.gf100_dmaobj*, %struct.gf100_dmaobj** %14, align 8
  %136 = getelementptr inbounds %struct.gf100_dmaobj, %struct.gf100_dmaobj* %135, i32 0, i32 0
  %137 = load i32, i32* %136, align 4
  store i32 %137, i32* %136, align 4
  br label %156

138:                                              ; preds = %109
  %139 = load %struct.gf100_dmaobj*, %struct.gf100_dmaobj** %14, align 8
  %140 = getelementptr inbounds %struct.gf100_dmaobj, %struct.gf100_dmaobj* %139, i32 0, i32 0
  %141 = load i32, i32* %140, align 4
  %142 = or i32 %141, 65536
  store i32 %142, i32* %140, align 4
  br label %156

143:                                              ; preds = %109
  %144 = load %struct.gf100_dmaobj*, %struct.gf100_dmaobj** %14, align 8
  %145 = getelementptr inbounds %struct.gf100_dmaobj, %struct.gf100_dmaobj* %144, i32 0, i32 0
  %146 = load i32, i32* %145, align 4
  %147 = or i32 %146, 131072
  store i32 %147, i32* %145, align 4
  br label %156

148:                                              ; preds = %109
  %149 = load %struct.gf100_dmaobj*, %struct.gf100_dmaobj** %14, align 8
  %150 = getelementptr inbounds %struct.gf100_dmaobj, %struct.gf100_dmaobj* %149, i32 0, i32 0
  %151 = load i32, i32* %150, align 4
  %152 = or i32 %151, 196608
  store i32 %152, i32* %150, align 4
  br label %156

153:                                              ; preds = %109
  %154 = load i32, i32* @EINVAL, align 4
  %155 = sub nsw i32 0, %154
  store i32 %155, i32* %6, align 4
  br label %173

156:                                              ; preds = %148, %143, %138, %134
  %157 = load %struct.gf100_dmaobj*, %struct.gf100_dmaobj** %14, align 8
  %158 = getelementptr inbounds %struct.gf100_dmaobj, %struct.gf100_dmaobj* %157, i32 0, i32 2
  %159 = getelementptr inbounds %struct.nvkm_dmaobj, %struct.nvkm_dmaobj* %158, i32 0, i32 1
  %160 = load i32, i32* %159, align 4
  switch i32 %160, label %172 [
    i32 133, label %161
    i32 135, label %162
    i32 132, label %167
    i32 134, label %167
  ]

161:                                              ; preds = %156
  br label %172

162:                                              ; preds = %156
  %163 = load %struct.gf100_dmaobj*, %struct.gf100_dmaobj** %14, align 8
  %164 = getelementptr inbounds %struct.gf100_dmaobj, %struct.gf100_dmaobj* %163, i32 0, i32 0
  %165 = load i32, i32* %164, align 4
  %166 = or i32 %165, 262144
  store i32 %166, i32* %164, align 4
  br label %172

167:                                              ; preds = %156, %156
  %168 = load %struct.gf100_dmaobj*, %struct.gf100_dmaobj** %14, align 8
  %169 = getelementptr inbounds %struct.gf100_dmaobj, %struct.gf100_dmaobj* %168, i32 0, i32 0
  %170 = load i32, i32* %169, align 4
  %171 = or i32 %170, 524288
  store i32 %171, i32* %169, align 4
  br label %172

172:                                              ; preds = %156, %167, %162, %161
  store i32 0, i32* %6, align 4
  br label %173

173:                                              ; preds = %172, %153, %106, %100, %40, %26
  %174 = load i32, i32* %6, align 4
  ret i32 %174
}

declare dso_local %struct.gf100_dmaobj* @kzalloc(i32, i32) #1

declare dso_local i32 @nvkm_dmaobj_ctor(i32*, %struct.nvkm_dma*, %struct.nvkm_oclass*, i8**, i32*, %struct.nvkm_dmaobj*) #1

declare dso_local i32 @nvif_ioctl(%struct.nvkm_object*, i8*, i32, ...) #1

declare dso_local i32 @nvif_unpack(i32, i8**, i32*, i64, i32, i32, i32, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
