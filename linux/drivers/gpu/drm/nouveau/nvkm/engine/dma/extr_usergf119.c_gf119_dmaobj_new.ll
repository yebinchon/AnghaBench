; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/engine/dma/extr_usergf119.c_gf119_dmaobj_new.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/engine/dma/extr_usergf119.c_gf119_dmaobj_new.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvkm_dma = type { i32 }
%struct.nvkm_oclass = type { %struct.nvkm_object* }
%struct.nvkm_object = type { i32 }
%struct.nvkm_dmaobj = type { i32 }
%union.anon = type { %struct.gf119_dma_v0 }
%struct.gf119_dma_v0 = type { i32, i32, i32 }
%struct.gf119_dmaobj = type { i32, %struct.nvkm_dmaobj }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@gf119_dmaobj_func = common dso_local global i32 0, align 4
@ENOSYS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"create gf119 dma size %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [44 x i8] c"create gf100 dma vers %d page %d kind %02x\0A\00", align 1
@GF119_DMA_V0_KIND_PITCH = common dso_local global i32 0, align 4
@GF119_DMA_V0_PAGE_SP = common dso_local global i32 0, align 4
@GF119_DMA_V0_KIND_VM = common dso_local global i32 0, align 4
@GF119_DMA_V0_PAGE_LP = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @gf119_dmaobj_new(%struct.nvkm_dma* %0, %struct.nvkm_oclass* %1, i8* %2, i32 %3, %struct.nvkm_dmaobj** %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.nvkm_dma*, align 8
  %8 = alloca %struct.nvkm_oclass*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.nvkm_dmaobj**, align 8
  %12 = alloca %union.anon*, align 8
  %13 = alloca %struct.nvkm_object*, align 8
  %14 = alloca %struct.gf119_dmaobj*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca { i64, i32 }, align 4
  store %struct.nvkm_dma* %0, %struct.nvkm_dma** %7, align 8
  store %struct.nvkm_oclass* %1, %struct.nvkm_oclass** %8, align 8
  store i8* %2, i8** %9, align 8
  store i32 %3, i32* %10, align 4
  store %struct.nvkm_dmaobj** %4, %struct.nvkm_dmaobj*** %11, align 8
  %19 = load %struct.nvkm_oclass*, %struct.nvkm_oclass** %8, align 8
  %20 = getelementptr inbounds %struct.nvkm_oclass, %struct.nvkm_oclass* %19, i32 0, i32 0
  %21 = load %struct.nvkm_object*, %struct.nvkm_object** %20, align 8
  store %struct.nvkm_object* %21, %struct.nvkm_object** %13, align 8
  %22 = load i32, i32* @GFP_KERNEL, align 4
  %23 = call %struct.gf119_dmaobj* @kzalloc(i32 8, i32 %22)
  store %struct.gf119_dmaobj* %23, %struct.gf119_dmaobj** %14, align 8
  %24 = icmp ne %struct.gf119_dmaobj* %23, null
  br i1 %24, label %28, label %25

25:                                               ; preds = %5
  %26 = load i32, i32* @ENOMEM, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %6, align 4
  br label %130

28:                                               ; preds = %5
  %29 = load %struct.gf119_dmaobj*, %struct.gf119_dmaobj** %14, align 8
  %30 = getelementptr inbounds %struct.gf119_dmaobj, %struct.gf119_dmaobj* %29, i32 0, i32 1
  %31 = load %struct.nvkm_dmaobj**, %struct.nvkm_dmaobj*** %11, align 8
  store %struct.nvkm_dmaobj* %30, %struct.nvkm_dmaobj** %31, align 8
  %32 = load %struct.nvkm_dma*, %struct.nvkm_dma** %7, align 8
  %33 = load %struct.nvkm_oclass*, %struct.nvkm_oclass** %8, align 8
  %34 = load %struct.gf119_dmaobj*, %struct.gf119_dmaobj** %14, align 8
  %35 = getelementptr inbounds %struct.gf119_dmaobj, %struct.gf119_dmaobj* %34, i32 0, i32 1
  %36 = call i32 @nvkm_dmaobj_ctor(i32* @gf119_dmaobj_func, %struct.nvkm_dma* %32, %struct.nvkm_oclass* %33, i8** %9, i32* %10, %struct.nvkm_dmaobj* %35)
  store i32 %36, i32* %17, align 4
  %37 = load i32, i32* %17, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %41

39:                                               ; preds = %28
  %40 = load i32, i32* %17, align 4
  store i32 %40, i32* %6, align 4
  br label %130

41:                                               ; preds = %28
  %42 = load i32, i32* @ENOSYS, align 4
  %43 = sub nsw i32 0, %42
  store i32 %43, i32* %17, align 4
  %44 = load i8*, i8** %9, align 8
  %45 = bitcast i8* %44 to %union.anon*
  store %union.anon* %45, %union.anon** %12, align 8
  %46 = load %struct.nvkm_object*, %struct.nvkm_object** %13, align 8
  %47 = load i32, i32* %10, align 4
  %48 = call i32 (%struct.nvkm_object*, i8*, i32, ...) @nvif_ioctl(%struct.nvkm_object* %46, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i32 %47)
  %49 = load i32, i32* %17, align 4
  %50 = load %union.anon*, %union.anon** %12, align 8
  %51 = bitcast %union.anon* %50 to %struct.gf119_dma_v0*
  %52 = bitcast { i64, i32 }* %18 to i8*
  %53 = bitcast %struct.gf119_dma_v0* %51 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %52, i8* align 4 %53, i64 12, i1 false)
  %54 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %18, i32 0, i32 0
  %55 = load i64, i64* %54, align 4
  %56 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %18, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  %58 = call i32 @nvif_unpack(i32 %49, i8** %9, i32* %10, i64 %55, i32 %57, i32 0, i32 0, i32 0)
  store i32 %58, i32* %17, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %83, label %60

60:                                               ; preds = %41
  %61 = load %struct.nvkm_object*, %struct.nvkm_object** %13, align 8
  %62 = load %union.anon*, %union.anon** %12, align 8
  %63 = bitcast %union.anon* %62 to %struct.gf119_dma_v0*
  %64 = getelementptr inbounds %struct.gf119_dma_v0, %struct.gf119_dma_v0* %63, i32 0, i32 2
  %65 = load i32, i32* %64, align 4
  %66 = load %union.anon*, %union.anon** %12, align 8
  %67 = bitcast %union.anon* %66 to %struct.gf119_dma_v0*
  %68 = getelementptr inbounds %struct.gf119_dma_v0, %struct.gf119_dma_v0* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = load %union.anon*, %union.anon** %12, align 8
  %71 = bitcast %union.anon* %70 to %struct.gf119_dma_v0*
  %72 = getelementptr inbounds %struct.gf119_dma_v0, %struct.gf119_dma_v0* %71, i32 0, i32 1
  %73 = load i32, i32* %72, align 4
  %74 = call i32 (%struct.nvkm_object*, i8*, i32, ...) @nvif_ioctl(%struct.nvkm_object* %61, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.1, i64 0, i64 0), i32 %65, i32 %69, i32 %73)
  %75 = load %union.anon*, %union.anon** %12, align 8
  %76 = bitcast %union.anon* %75 to %struct.gf119_dma_v0*
  %77 = getelementptr inbounds %struct.gf119_dma_v0, %struct.gf119_dma_v0* %76, i32 0, i32 1
  %78 = load i32, i32* %77, align 4
  store i32 %78, i32* %15, align 4
  %79 = load %union.anon*, %union.anon** %12, align 8
  %80 = bitcast %union.anon* %79 to %struct.gf119_dma_v0*
  %81 = getelementptr inbounds %struct.gf119_dma_v0, %struct.gf119_dma_v0* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 4
  store i32 %82, i32* %16, align 4
  br label %102

83:                                               ; preds = %41
  %84 = load i32, i32* %10, align 4
  %85 = icmp eq i32 %84, 0
  br i1 %85, label %86, label %99

86:                                               ; preds = %83
  %87 = load %struct.gf119_dmaobj*, %struct.gf119_dmaobj** %14, align 8
  %88 = getelementptr inbounds %struct.gf119_dmaobj, %struct.gf119_dmaobj* %87, i32 0, i32 1
  %89 = getelementptr inbounds %struct.nvkm_dmaobj, %struct.nvkm_dmaobj* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 4
  %91 = icmp ne i32 %90, 129
  br i1 %91, label %92, label %95

92:                                               ; preds = %86
  %93 = load i32, i32* @GF119_DMA_V0_KIND_PITCH, align 4
  store i32 %93, i32* %15, align 4
  %94 = load i32, i32* @GF119_DMA_V0_PAGE_SP, align 4
  store i32 %94, i32* %16, align 4
  br label %98

95:                                               ; preds = %86
  %96 = load i32, i32* @GF119_DMA_V0_KIND_VM, align 4
  store i32 %96, i32* %15, align 4
  %97 = load i32, i32* @GF119_DMA_V0_PAGE_LP, align 4
  store i32 %97, i32* %16, align 4
  br label %98

98:                                               ; preds = %95, %92
  br label %101

99:                                               ; preds = %83
  %100 = load i32, i32* %17, align 4
  store i32 %100, i32* %6, align 4
  br label %130

101:                                              ; preds = %98
  br label %102

102:                                              ; preds = %101, %60
  %103 = load i32, i32* %16, align 4
  %104 = icmp sgt i32 %103, 1
  br i1 %104, label %105, label %108

105:                                              ; preds = %102
  %106 = load i32, i32* @EINVAL, align 4
  %107 = sub nsw i32 0, %106
  store i32 %107, i32* %6, align 4
  br label %130

108:                                              ; preds = %102
  %109 = load i32, i32* %15, align 4
  %110 = shl i32 %109, 20
  %111 = load i32, i32* %16, align 4
  %112 = shl i32 %111, 6
  %113 = or i32 %110, %112
  %114 = load %struct.gf119_dmaobj*, %struct.gf119_dmaobj** %14, align 8
  %115 = getelementptr inbounds %struct.gf119_dmaobj, %struct.gf119_dmaobj* %114, i32 0, i32 0
  store i32 %113, i32* %115, align 4
  %116 = load %struct.gf119_dmaobj*, %struct.gf119_dmaobj** %14, align 8
  %117 = getelementptr inbounds %struct.gf119_dmaobj, %struct.gf119_dmaobj* %116, i32 0, i32 1
  %118 = getelementptr inbounds %struct.nvkm_dmaobj, %struct.nvkm_dmaobj* %117, i32 0, i32 0
  %119 = load i32, i32* %118, align 4
  switch i32 %119, label %126 [
    i32 128, label %120
    i32 129, label %125
    i32 131, label %125
    i32 130, label %125
  ]

120:                                              ; preds = %108
  %121 = load %struct.gf119_dmaobj*, %struct.gf119_dmaobj** %14, align 8
  %122 = getelementptr inbounds %struct.gf119_dmaobj, %struct.gf119_dmaobj* %121, i32 0, i32 0
  %123 = load i32, i32* %122, align 4
  %124 = or i32 %123, 9
  store i32 %124, i32* %122, align 4
  br label %129

125:                                              ; preds = %108, %108, %108
  br label %129

126:                                              ; preds = %108
  %127 = load i32, i32* @EINVAL, align 4
  %128 = sub nsw i32 0, %127
  store i32 %128, i32* %6, align 4
  br label %130

129:                                              ; preds = %125, %120
  store i32 0, i32* %6, align 4
  br label %130

130:                                              ; preds = %129, %126, %105, %99, %39, %25
  %131 = load i32, i32* %6, align 4
  ret i32 %131
}

declare dso_local %struct.gf119_dmaobj* @kzalloc(i32, i32) #1

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
