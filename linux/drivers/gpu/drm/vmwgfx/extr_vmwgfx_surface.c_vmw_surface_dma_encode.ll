; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/vmwgfx/extr_vmwgfx_surface.c_vmw_surface_dma_encode.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/vmwgfx/extr_vmwgfx_surface.c_vmw_surface_dma_encode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vmw_surface = type { i64, %struct.TYPE_11__, %struct.drm_vmw_size*, %struct.vmw_surface_offset*, i32 }
%struct.TYPE_11__ = type { i32 }
%struct.drm_vmw_size = type { i32, i32, i32 }
%struct.vmw_surface_offset = type { i32, i32, i64 }
%struct.TYPE_15__ = type { i32 }
%struct.vmw_surface_dma = type { %struct.TYPE_17__, %struct.TYPE_16__, %struct.TYPE_18__, %struct.TYPE_19__ }
%struct.TYPE_17__ = type { i32, %struct.TYPE_14__, i32 }
%struct.TYPE_14__ = type { i64, i64, i64 }
%struct.TYPE_16__ = type { i32, i32, i32, i64, i64, i64, i64, i64, i64 }
%struct.TYPE_18__ = type { %struct.TYPE_13__, i32, %struct.TYPE_12__ }
%struct.TYPE_13__ = type { i32, %struct.TYPE_15__ }
%struct.TYPE_12__ = type { i32, i32, i32 }
%struct.TYPE_19__ = type { i32, i32 }
%struct.svga3d_surface_desc = type { i32 }

@SVGA_3D_CMD_SURFACE_DMA = common dso_local global i32 0, align 4
@SVGA3D_WRITE_HOST_VRAM = common dso_local global i32 0, align 4
@SVGA3D_READ_HOST_VRAM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.vmw_surface*, i8*, %struct.TYPE_15__*, i32)* @vmw_surface_dma_encode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vmw_surface_dma_encode(%struct.vmw_surface* %0, i8* %1, %struct.TYPE_15__* %2, i32 %3) #0 {
  %5 = alloca %struct.vmw_surface*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.TYPE_15__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca %struct.vmw_surface_dma*, align 8
  %11 = alloca %struct.svga3d_surface_desc*, align 8
  %12 = alloca %struct.TYPE_19__*, align 8
  %13 = alloca %struct.TYPE_18__*, align 8
  %14 = alloca %struct.TYPE_16__*, align 8
  %15 = alloca %struct.TYPE_17__*, align 8
  %16 = alloca %struct.vmw_surface_offset*, align 8
  %17 = alloca %struct.drm_vmw_size*, align 8
  store %struct.vmw_surface* %0, %struct.vmw_surface** %5, align 8
  store i8* %1, i8** %6, align 8
  store %struct.TYPE_15__* %2, %struct.TYPE_15__** %7, align 8
  store i32 %3, i32* %8, align 4
  %18 = load i8*, i8** %6, align 8
  %19 = bitcast i8* %18 to %struct.vmw_surface_dma*
  store %struct.vmw_surface_dma* %19, %struct.vmw_surface_dma** %10, align 8
  %20 = load %struct.vmw_surface*, %struct.vmw_surface** %5, align 8
  %21 = getelementptr inbounds %struct.vmw_surface, %struct.vmw_surface* %20, i32 0, i32 4
  %22 = load i32, i32* %21, align 8
  %23 = call %struct.svga3d_surface_desc* @svga3dsurface_get_desc(i32 %22)
  store %struct.svga3d_surface_desc* %23, %struct.svga3d_surface_desc** %11, align 8
  store i64 0, i64* %9, align 8
  br label %24

24:                                               ; preds = %155, %4
  %25 = load i64, i64* %9, align 8
  %26 = load %struct.vmw_surface*, %struct.vmw_surface** %5, align 8
  %27 = getelementptr inbounds %struct.vmw_surface, %struct.vmw_surface* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = icmp ult i64 %25, %28
  br i1 %29, label %30, label %158

30:                                               ; preds = %24
  %31 = load %struct.vmw_surface_dma*, %struct.vmw_surface_dma** %10, align 8
  %32 = getelementptr inbounds %struct.vmw_surface_dma, %struct.vmw_surface_dma* %31, i32 0, i32 3
  store %struct.TYPE_19__* %32, %struct.TYPE_19__** %12, align 8
  %33 = load %struct.vmw_surface_dma*, %struct.vmw_surface_dma** %10, align 8
  %34 = getelementptr inbounds %struct.vmw_surface_dma, %struct.vmw_surface_dma* %33, i32 0, i32 2
  store %struct.TYPE_18__* %34, %struct.TYPE_18__** %13, align 8
  %35 = load %struct.vmw_surface_dma*, %struct.vmw_surface_dma** %10, align 8
  %36 = getelementptr inbounds %struct.vmw_surface_dma, %struct.vmw_surface_dma* %35, i32 0, i32 1
  store %struct.TYPE_16__* %36, %struct.TYPE_16__** %14, align 8
  %37 = load %struct.vmw_surface_dma*, %struct.vmw_surface_dma** %10, align 8
  %38 = getelementptr inbounds %struct.vmw_surface_dma, %struct.vmw_surface_dma* %37, i32 0, i32 0
  store %struct.TYPE_17__* %38, %struct.TYPE_17__** %15, align 8
  %39 = load %struct.vmw_surface*, %struct.vmw_surface** %5, align 8
  %40 = getelementptr inbounds %struct.vmw_surface, %struct.vmw_surface* %39, i32 0, i32 3
  %41 = load %struct.vmw_surface_offset*, %struct.vmw_surface_offset** %40, align 8
  %42 = load i64, i64* %9, align 8
  %43 = getelementptr inbounds %struct.vmw_surface_offset, %struct.vmw_surface_offset* %41, i64 %42
  store %struct.vmw_surface_offset* %43, %struct.vmw_surface_offset** %16, align 8
  %44 = load %struct.vmw_surface*, %struct.vmw_surface** %5, align 8
  %45 = getelementptr inbounds %struct.vmw_surface, %struct.vmw_surface* %44, i32 0, i32 2
  %46 = load %struct.drm_vmw_size*, %struct.drm_vmw_size** %45, align 8
  %47 = load i64, i64* %9, align 8
  %48 = getelementptr inbounds %struct.drm_vmw_size, %struct.drm_vmw_size* %46, i64 %47
  store %struct.drm_vmw_size* %48, %struct.drm_vmw_size** %17, align 8
  %49 = load i32, i32* @SVGA_3D_CMD_SURFACE_DMA, align 4
  %50 = load %struct.TYPE_19__*, %struct.TYPE_19__** %12, align 8
  %51 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %50, i32 0, i32 1
  store i32 %49, i32* %51, align 4
  %52 = load %struct.TYPE_19__*, %struct.TYPE_19__** %12, align 8
  %53 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %52, i32 0, i32 0
  store i32 128, i32* %53, align 4
  %54 = load %struct.TYPE_18__*, %struct.TYPE_18__** %13, align 8
  %55 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %55, i32 0, i32 1
  %57 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %58 = bitcast %struct.TYPE_15__* %56 to i8*
  %59 = bitcast %struct.TYPE_15__* %57 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %58, i8* align 4 %59, i64 4, i1 false)
  %60 = load %struct.vmw_surface_offset*, %struct.vmw_surface_offset** %16, align 8
  %61 = getelementptr inbounds %struct.vmw_surface_offset, %struct.vmw_surface_offset* %60, i32 0, i32 2
  %62 = load i64, i64* %61, align 8
  %63 = load %struct.TYPE_18__*, %struct.TYPE_18__** %13, align 8
  %64 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %63, i32 0, i32 0
  %65 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %64, i32 0, i32 1
  %66 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = sext i32 %67 to i64
  %69 = add nsw i64 %68, %62
  %70 = trunc i64 %69 to i32
  store i32 %70, i32* %66, align 4
  %71 = load %struct.svga3d_surface_desc*, %struct.svga3d_surface_desc** %11, align 8
  %72 = load %struct.drm_vmw_size*, %struct.drm_vmw_size** %17, align 8
  %73 = call i32 @svga3dsurface_calculate_pitch(%struct.svga3d_surface_desc* %71, %struct.drm_vmw_size* %72)
  %74 = load %struct.TYPE_18__*, %struct.TYPE_18__** %13, align 8
  %75 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %74, i32 0, i32 0
  %76 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %75, i32 0, i32 0
  store i32 %73, i32* %76, align 4
  %77 = load %struct.vmw_surface*, %struct.vmw_surface** %5, align 8
  %78 = getelementptr inbounds %struct.vmw_surface, %struct.vmw_surface* %77, i32 0, i32 1
  %79 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 8
  %81 = load %struct.TYPE_18__*, %struct.TYPE_18__** %13, align 8
  %82 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %81, i32 0, i32 2
  %83 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %82, i32 0, i32 2
  store i32 %80, i32* %83, align 4
  %84 = load %struct.vmw_surface_offset*, %struct.vmw_surface_offset** %16, align 8
  %85 = getelementptr inbounds %struct.vmw_surface_offset, %struct.vmw_surface_offset* %84, i32 0, i32 1
  %86 = load i32, i32* %85, align 4
  %87 = load %struct.TYPE_18__*, %struct.TYPE_18__** %13, align 8
  %88 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %87, i32 0, i32 2
  %89 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %88, i32 0, i32 1
  store i32 %86, i32* %89, align 4
  %90 = load %struct.vmw_surface_offset*, %struct.vmw_surface_offset** %16, align 8
  %91 = getelementptr inbounds %struct.vmw_surface_offset, %struct.vmw_surface_offset* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 8
  %93 = load %struct.TYPE_18__*, %struct.TYPE_18__** %13, align 8
  %94 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %93, i32 0, i32 2
  %95 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %94, i32 0, i32 0
  store i32 %92, i32* %95, align 4
  %96 = load i32, i32* %8, align 4
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %98, label %100

98:                                               ; preds = %30
  %99 = load i32, i32* @SVGA3D_WRITE_HOST_VRAM, align 4
  br label %102

100:                                              ; preds = %30
  %101 = load i32, i32* @SVGA3D_READ_HOST_VRAM, align 4
  br label %102

102:                                              ; preds = %100, %98
  %103 = phi i32 [ %99, %98 ], [ %101, %100 ]
  %104 = load %struct.TYPE_18__*, %struct.TYPE_18__** %13, align 8
  %105 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %104, i32 0, i32 1
  store i32 %103, i32* %105, align 4
  %106 = load %struct.TYPE_16__*, %struct.TYPE_16__** %14, align 8
  %107 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %106, i32 0, i32 8
  store i64 0, i64* %107, align 8
  %108 = load %struct.TYPE_16__*, %struct.TYPE_16__** %14, align 8
  %109 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %108, i32 0, i32 7
  store i64 0, i64* %109, align 8
  %110 = load %struct.TYPE_16__*, %struct.TYPE_16__** %14, align 8
  %111 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %110, i32 0, i32 6
  store i64 0, i64* %111, align 8
  %112 = load %struct.TYPE_16__*, %struct.TYPE_16__** %14, align 8
  %113 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %112, i32 0, i32 5
  store i64 0, i64* %113, align 8
  %114 = load %struct.TYPE_16__*, %struct.TYPE_16__** %14, align 8
  %115 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %114, i32 0, i32 4
  store i64 0, i64* %115, align 8
  %116 = load %struct.TYPE_16__*, %struct.TYPE_16__** %14, align 8
  %117 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %116, i32 0, i32 3
  store i64 0, i64* %117, align 8
  %118 = load %struct.drm_vmw_size*, %struct.drm_vmw_size** %17, align 8
  %119 = getelementptr inbounds %struct.drm_vmw_size, %struct.drm_vmw_size* %118, i32 0, i32 2
  %120 = load i32, i32* %119, align 4
  %121 = load %struct.TYPE_16__*, %struct.TYPE_16__** %14, align 8
  %122 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %121, i32 0, i32 2
  store i32 %120, i32* %122, align 8
  %123 = load %struct.drm_vmw_size*, %struct.drm_vmw_size** %17, align 8
  %124 = getelementptr inbounds %struct.drm_vmw_size, %struct.drm_vmw_size* %123, i32 0, i32 1
  %125 = load i32, i32* %124, align 4
  %126 = load %struct.TYPE_16__*, %struct.TYPE_16__** %14, align 8
  %127 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %126, i32 0, i32 1
  store i32 %125, i32* %127, align 4
  %128 = load %struct.drm_vmw_size*, %struct.drm_vmw_size** %17, align 8
  %129 = getelementptr inbounds %struct.drm_vmw_size, %struct.drm_vmw_size* %128, i32 0, i32 0
  %130 = load i32, i32* %129, align 4
  %131 = load %struct.TYPE_16__*, %struct.TYPE_16__** %14, align 8
  %132 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %131, i32 0, i32 0
  store i32 %130, i32* %132, align 8
  %133 = load %struct.TYPE_17__*, %struct.TYPE_17__** %15, align 8
  %134 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %133, i32 0, i32 0
  store i32 40, i32* %134, align 8
  %135 = load %struct.svga3d_surface_desc*, %struct.svga3d_surface_desc** %11, align 8
  %136 = load %struct.drm_vmw_size*, %struct.drm_vmw_size** %17, align 8
  %137 = load %struct.TYPE_18__*, %struct.TYPE_18__** %13, align 8
  %138 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %137, i32 0, i32 0
  %139 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %138, i32 0, i32 0
  %140 = load i32, i32* %139, align 4
  %141 = call i32 @svga3dsurface_get_image_buffer_size(%struct.svga3d_surface_desc* %135, %struct.drm_vmw_size* %136, i32 %140)
  %142 = load %struct.TYPE_17__*, %struct.TYPE_17__** %15, align 8
  %143 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %142, i32 0, i32 2
  store i32 %141, i32* %143, align 8
  %144 = load %struct.TYPE_17__*, %struct.TYPE_17__** %15, align 8
  %145 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %144, i32 0, i32 1
  %146 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %145, i32 0, i32 2
  store i64 0, i64* %146, align 8
  %147 = load %struct.TYPE_17__*, %struct.TYPE_17__** %15, align 8
  %148 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %147, i32 0, i32 1
  %149 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %148, i32 0, i32 1
  store i64 0, i64* %149, align 8
  %150 = load %struct.TYPE_17__*, %struct.TYPE_17__** %15, align 8
  %151 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %150, i32 0, i32 1
  %152 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %151, i32 0, i32 0
  store i64 0, i64* %152, align 8
  %153 = load %struct.vmw_surface_dma*, %struct.vmw_surface_dma** %10, align 8
  %154 = getelementptr inbounds %struct.vmw_surface_dma, %struct.vmw_surface_dma* %153, i32 1
  store %struct.vmw_surface_dma* %154, %struct.vmw_surface_dma** %10, align 8
  br label %155

155:                                              ; preds = %102
  %156 = load i64, i64* %9, align 8
  %157 = add i64 %156, 1
  store i64 %157, i64* %9, align 8
  br label %24

158:                                              ; preds = %24
  ret void
}

declare dso_local %struct.svga3d_surface_desc* @svga3dsurface_get_desc(i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @svga3dsurface_calculate_pitch(%struct.svga3d_surface_desc*, %struct.drm_vmw_size*) #1

declare dso_local i32 @svga3dsurface_get_image_buffer_size(%struct.svga3d_surface_desc*, %struct.drm_vmw_size*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
