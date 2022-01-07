; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/dispnv50/extr_core507d.c_core507d_new_.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/dispnv50/extr_core507d.c_core507d_new_.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nv50_core_func = type { i32 }
%struct.nouveau_drm = type { %struct.TYPE_5__, i32 }
%struct.TYPE_5__ = type { i32 }
%struct.nv50_core = type { i32, %struct.nv50_core_func* }
%struct.nv50_disp_core_channel_dma_v0 = type { i32 }
%struct.nv50_disp = type { %struct.TYPE_8__*, %struct.TYPE_6__* }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_6__ = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"core%04x allocation failed: %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @core507d_new_(%struct.nv50_core_func* %0, %struct.nouveau_drm* %1, i32 %2, %struct.nv50_core** %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.nv50_core_func*, align 8
  %7 = alloca %struct.nouveau_drm*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.nv50_core**, align 8
  %10 = alloca %struct.nv50_disp_core_channel_dma_v0, align 4
  %11 = alloca %struct.nv50_disp*, align 8
  %12 = alloca %struct.nv50_core*, align 8
  %13 = alloca i32, align 4
  store %struct.nv50_core_func* %0, %struct.nv50_core_func** %6, align 8
  store %struct.nouveau_drm* %1, %struct.nouveau_drm** %7, align 8
  store i32 %2, i32* %8, align 4
  store %struct.nv50_core** %3, %struct.nv50_core*** %9, align 8
  %14 = bitcast %struct.nv50_disp_core_channel_dma_v0* %10 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %14, i8 0, i64 4, i1 false)
  %15 = load %struct.nouveau_drm*, %struct.nouveau_drm** %7, align 8
  %16 = getelementptr inbounds %struct.nouveau_drm, %struct.nouveau_drm* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = call %struct.nv50_disp* @nv50_disp(i32 %17)
  store %struct.nv50_disp* %18, %struct.nv50_disp** %11, align 8
  %19 = load i32, i32* @GFP_KERNEL, align 4
  %20 = call %struct.nv50_core* @kzalloc(i32 16, i32 %19)
  %21 = load %struct.nv50_core**, %struct.nv50_core*** %9, align 8
  store %struct.nv50_core* %20, %struct.nv50_core** %21, align 8
  store %struct.nv50_core* %20, %struct.nv50_core** %12, align 8
  %22 = icmp ne %struct.nv50_core* %20, null
  br i1 %22, label %26, label %23

23:                                               ; preds = %4
  %24 = load i32, i32* @ENOMEM, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %5, align 4
  br label %55

26:                                               ; preds = %4
  %27 = load %struct.nv50_core_func*, %struct.nv50_core_func** %6, align 8
  %28 = load %struct.nv50_core*, %struct.nv50_core** %12, align 8
  %29 = getelementptr inbounds %struct.nv50_core, %struct.nv50_core* %28, i32 0, i32 1
  store %struct.nv50_core_func* %27, %struct.nv50_core_func** %29, align 8
  %30 = load %struct.nouveau_drm*, %struct.nouveau_drm** %7, align 8
  %31 = getelementptr inbounds %struct.nouveau_drm, %struct.nouveau_drm* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %31, i32 0, i32 0
  %33 = load %struct.nv50_disp*, %struct.nv50_disp** %11, align 8
  %34 = getelementptr inbounds %struct.nv50_disp, %struct.nv50_disp* %33, i32 0, i32 1
  %35 = load %struct.TYPE_6__*, %struct.TYPE_6__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %35, i32 0, i32 0
  %37 = load %struct.nv50_disp*, %struct.nv50_disp** %11, align 8
  %38 = getelementptr inbounds %struct.nv50_disp, %struct.nv50_disp* %37, i32 0, i32 0
  %39 = load %struct.TYPE_8__*, %struct.TYPE_8__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = load %struct.nv50_core*, %struct.nv50_core** %12, align 8
  %44 = getelementptr inbounds %struct.nv50_core, %struct.nv50_core* %43, i32 0, i32 0
  %45 = call i32 @nv50_dmac_create(i32* %32, i32* %36, i32* %8, i32 0, %struct.nv50_disp_core_channel_dma_v0* %10, i32 4, i32 %42, i32* %44)
  store i32 %45, i32* %13, align 4
  %46 = load i32, i32* %13, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %54

48:                                               ; preds = %26
  %49 = load %struct.nouveau_drm*, %struct.nouveau_drm** %7, align 8
  %50 = load i32, i32* %8, align 4
  %51 = load i32, i32* %13, align 4
  %52 = call i32 @NV_ERROR(%struct.nouveau_drm* %49, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i32 %50, i32 %51)
  %53 = load i32, i32* %13, align 4
  store i32 %53, i32* %5, align 4
  br label %55

54:                                               ; preds = %26
  store i32 0, i32* %5, align 4
  br label %55

55:                                               ; preds = %54, %48, %23
  %56 = load i32, i32* %5, align 4
  ret i32 %56
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local %struct.nv50_disp* @nv50_disp(i32) #2

declare dso_local %struct.nv50_core* @kzalloc(i32, i32) #2

declare dso_local i32 @nv50_dmac_create(i32*, i32*, i32*, i32, %struct.nv50_disp_core_channel_dma_v0*, i32, i32, i32*) #2

declare dso_local i32 @NV_ERROR(%struct.nouveau_drm*, i8*, i32, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
