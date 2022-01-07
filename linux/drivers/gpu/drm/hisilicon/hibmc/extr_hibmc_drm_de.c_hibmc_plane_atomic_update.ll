; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/hisilicon/hibmc/extr_hibmc_drm_de.c_hibmc_plane_atomic_update.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/hisilicon/hibmc/extr_hibmc_drm_de.c_hibmc_plane_atomic_update.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_plane = type { %struct.TYPE_4__*, %struct.drm_plane_state* }
%struct.TYPE_4__ = type { %struct.hibmc_drm_private* }
%struct.hibmc_drm_private = type { i64 }
%struct.drm_plane_state = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32* }
%struct.hibmc_framebuffer = type { i32 }
%struct.drm_gem_vram_object = type { i32 }

@DRM_GEM_VRAM_PL_FLAG_VRAM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"failed to pin bo: %d\00", align 1
@HIBMC_CRT_FB_ADDRESS = common dso_local global i64 0, align 8
@HIBMC_CRT_FB_WIDTH_WIDTH = common dso_local global i32 0, align 4
@HIBMC_CRT_FB_WIDTH_OFFS = common dso_local global i32 0, align 4
@HIBMC_CRT_FB_WIDTH = common dso_local global i64 0, align 8
@HIBMC_CRT_DISP_CTL = common dso_local global i64 0, align 8
@HIBMC_CRT_DISP_CTL_FORMAT_MASK = common dso_local global i32 0, align 4
@HIBMC_CRT_DISP_CTL_FORMAT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.drm_plane*, %struct.drm_plane_state*)* @hibmc_plane_atomic_update to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hibmc_plane_atomic_update(%struct.drm_plane* %0, %struct.drm_plane_state* %1) #0 {
  %3 = alloca %struct.drm_plane*, align 8
  %4 = alloca %struct.drm_plane_state*, align 8
  %5 = alloca %struct.drm_plane_state*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.hibmc_drm_private*, align 8
  %11 = alloca %struct.hibmc_framebuffer*, align 8
  %12 = alloca %struct.drm_gem_vram_object*, align 8
  store %struct.drm_plane* %0, %struct.drm_plane** %3, align 8
  store %struct.drm_plane_state* %1, %struct.drm_plane_state** %4, align 8
  %13 = load %struct.drm_plane*, %struct.drm_plane** %3, align 8
  %14 = getelementptr inbounds %struct.drm_plane, %struct.drm_plane* %13, i32 0, i32 1
  %15 = load %struct.drm_plane_state*, %struct.drm_plane_state** %14, align 8
  store %struct.drm_plane_state* %15, %struct.drm_plane_state** %5, align 8
  store i64 0, i64* %8, align 8
  %16 = load %struct.drm_plane*, %struct.drm_plane** %3, align 8
  %17 = getelementptr inbounds %struct.drm_plane, %struct.drm_plane* %16, i32 0, i32 0
  %18 = load %struct.TYPE_4__*, %struct.TYPE_4__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 0
  %20 = load %struct.hibmc_drm_private*, %struct.hibmc_drm_private** %19, align 8
  store %struct.hibmc_drm_private* %20, %struct.hibmc_drm_private** %10, align 8
  %21 = load %struct.drm_plane_state*, %struct.drm_plane_state** %5, align 8
  %22 = getelementptr inbounds %struct.drm_plane_state, %struct.drm_plane_state* %21, i32 0, i32 0
  %23 = load %struct.TYPE_6__*, %struct.TYPE_6__** %22, align 8
  %24 = icmp ne %struct.TYPE_6__* %23, null
  br i1 %24, label %26, label %25

25:                                               ; preds = %2
  br label %141

26:                                               ; preds = %2
  %27 = load %struct.drm_plane_state*, %struct.drm_plane_state** %5, align 8
  %28 = getelementptr inbounds %struct.drm_plane_state, %struct.drm_plane_state* %27, i32 0, i32 0
  %29 = load %struct.TYPE_6__*, %struct.TYPE_6__** %28, align 8
  %30 = call %struct.hibmc_framebuffer* @to_hibmc_framebuffer(%struct.TYPE_6__* %29)
  store %struct.hibmc_framebuffer* %30, %struct.hibmc_framebuffer** %11, align 8
  %31 = load %struct.hibmc_framebuffer*, %struct.hibmc_framebuffer** %11, align 8
  %32 = getelementptr inbounds %struct.hibmc_framebuffer, %struct.hibmc_framebuffer* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = call %struct.drm_gem_vram_object* @drm_gem_vram_of_gem(i32 %33)
  store %struct.drm_gem_vram_object* %34, %struct.drm_gem_vram_object** %12, align 8
  %35 = load %struct.drm_gem_vram_object*, %struct.drm_gem_vram_object** %12, align 8
  %36 = load i32, i32* @DRM_GEM_VRAM_PL_FLAG_VRAM, align 4
  %37 = call i32 @drm_gem_vram_pin(%struct.drm_gem_vram_object* %35, i32 %36)
  store i32 %37, i32* %7, align 4
  %38 = load i32, i32* %7, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %43

40:                                               ; preds = %26
  %41 = load i32, i32* %7, align 4
  %42 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 %41)
  br label %141

43:                                               ; preds = %26
  %44 = load %struct.drm_gem_vram_object*, %struct.drm_gem_vram_object** %12, align 8
  %45 = call i64 @drm_gem_vram_offset(%struct.drm_gem_vram_object* %44)
  store i64 %45, i64* %8, align 8
  %46 = load i64, i64* %8, align 8
  %47 = icmp slt i64 %46, 0
  br i1 %47, label %48, label %51

48:                                               ; preds = %43
  %49 = load %struct.drm_gem_vram_object*, %struct.drm_gem_vram_object** %12, align 8
  %50 = call i32 @drm_gem_vram_unpin(%struct.drm_gem_vram_object* %49)
  br label %141

51:                                               ; preds = %43
  %52 = load i64, i64* %8, align 8
  %53 = trunc i64 %52 to i32
  %54 = load %struct.hibmc_drm_private*, %struct.hibmc_drm_private** %10, align 8
  %55 = getelementptr inbounds %struct.hibmc_drm_private, %struct.hibmc_drm_private* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = load i64, i64* @HIBMC_CRT_FB_ADDRESS, align 8
  %58 = add nsw i64 %56, %57
  %59 = call i32 @writel(i32 %53, i64 %58)
  %60 = load %struct.drm_plane_state*, %struct.drm_plane_state** %5, align 8
  %61 = getelementptr inbounds %struct.drm_plane_state, %struct.drm_plane_state* %60, i32 0, i32 0
  %62 = load %struct.TYPE_6__*, %struct.TYPE_6__** %61, align 8
  %63 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  %65 = load %struct.drm_plane_state*, %struct.drm_plane_state** %5, align 8
  %66 = getelementptr inbounds %struct.drm_plane_state, %struct.drm_plane_state* %65, i32 0, i32 0
  %67 = load %struct.TYPE_6__*, %struct.TYPE_6__** %66, align 8
  %68 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %67, i32 0, i32 1
  %69 = load %struct.TYPE_5__*, %struct.TYPE_5__** %68, align 8
  %70 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %69, i32 0, i32 0
  %71 = load i32*, i32** %70, align 8
  %72 = getelementptr inbounds i32, i32* %71, i64 0
  %73 = load i32, i32* %72, align 4
  %74 = mul nsw i32 %64, %73
  store i32 %74, i32* %6, align 4
  %75 = load i32, i32* %6, align 4
  %76 = call i8* @PADDING(i32 16, i32 %75)
  %77 = ptrtoint i8* %76 to i32
  store i32 %77, i32* %6, align 4
  %78 = load %struct.drm_plane_state*, %struct.drm_plane_state** %5, align 8
  %79 = getelementptr inbounds %struct.drm_plane_state, %struct.drm_plane_state* %78, i32 0, i32 0
  %80 = load %struct.TYPE_6__*, %struct.TYPE_6__** %79, align 8
  %81 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 8
  %83 = load %struct.drm_plane_state*, %struct.drm_plane_state** %5, align 8
  %84 = getelementptr inbounds %struct.drm_plane_state, %struct.drm_plane_state* %83, i32 0, i32 0
  %85 = load %struct.TYPE_6__*, %struct.TYPE_6__** %84, align 8
  %86 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %85, i32 0, i32 1
  %87 = load %struct.TYPE_5__*, %struct.TYPE_5__** %86, align 8
  %88 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %87, i32 0, i32 0
  %89 = load i32*, i32** %88, align 8
  %90 = getelementptr inbounds i32, i32* %89, i64 0
  %91 = load i32, i32* %90, align 4
  %92 = mul nsw i32 %82, %91
  store i32 %92, i32* %9, align 4
  %93 = load i32, i32* %9, align 4
  %94 = call i8* @PADDING(i32 16, i32 %93)
  %95 = ptrtoint i8* %94 to i32
  store i32 %95, i32* %9, align 4
  %96 = load i32, i32* @HIBMC_CRT_FB_WIDTH_WIDTH, align 4
  %97 = load i32, i32* %6, align 4
  %98 = call i32 @HIBMC_FIELD(i32 %96, i32 %97)
  %99 = load i32, i32* @HIBMC_CRT_FB_WIDTH_OFFS, align 4
  %100 = load i32, i32* %9, align 4
  %101 = call i32 @HIBMC_FIELD(i32 %99, i32 %100)
  %102 = or i32 %98, %101
  %103 = load %struct.hibmc_drm_private*, %struct.hibmc_drm_private** %10, align 8
  %104 = getelementptr inbounds %struct.hibmc_drm_private, %struct.hibmc_drm_private* %103, i32 0, i32 0
  %105 = load i64, i64* %104, align 8
  %106 = load i64, i64* @HIBMC_CRT_FB_WIDTH, align 8
  %107 = add nsw i64 %105, %106
  %108 = call i32 @writel(i32 %102, i64 %107)
  %109 = load %struct.hibmc_drm_private*, %struct.hibmc_drm_private** %10, align 8
  %110 = getelementptr inbounds %struct.hibmc_drm_private, %struct.hibmc_drm_private* %109, i32 0, i32 0
  %111 = load i64, i64* %110, align 8
  %112 = load i64, i64* @HIBMC_CRT_DISP_CTL, align 8
  %113 = add nsw i64 %111, %112
  %114 = call i32 @readl(i64 %113)
  store i32 %114, i32* %6, align 4
  %115 = load i32, i32* @HIBMC_CRT_DISP_CTL_FORMAT_MASK, align 4
  %116 = xor i32 %115, -1
  %117 = load i32, i32* %6, align 4
  %118 = and i32 %117, %116
  store i32 %118, i32* %6, align 4
  %119 = load i32, i32* @HIBMC_CRT_DISP_CTL_FORMAT, align 4
  %120 = load %struct.drm_plane_state*, %struct.drm_plane_state** %5, align 8
  %121 = getelementptr inbounds %struct.drm_plane_state, %struct.drm_plane_state* %120, i32 0, i32 0
  %122 = load %struct.TYPE_6__*, %struct.TYPE_6__** %121, align 8
  %123 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %122, i32 0, i32 1
  %124 = load %struct.TYPE_5__*, %struct.TYPE_5__** %123, align 8
  %125 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %124, i32 0, i32 0
  %126 = load i32*, i32** %125, align 8
  %127 = getelementptr inbounds i32, i32* %126, i64 0
  %128 = load i32, i32* %127, align 4
  %129 = mul nsw i32 %128, 8
  %130 = sdiv i32 %129, 16
  %131 = call i32 @HIBMC_FIELD(i32 %119, i32 %130)
  %132 = load i32, i32* %6, align 4
  %133 = or i32 %132, %131
  store i32 %133, i32* %6, align 4
  %134 = load i32, i32* %6, align 4
  %135 = load %struct.hibmc_drm_private*, %struct.hibmc_drm_private** %10, align 8
  %136 = getelementptr inbounds %struct.hibmc_drm_private, %struct.hibmc_drm_private* %135, i32 0, i32 0
  %137 = load i64, i64* %136, align 8
  %138 = load i64, i64* @HIBMC_CRT_DISP_CTL, align 8
  %139 = add nsw i64 %137, %138
  %140 = call i32 @writel(i32 %134, i64 %139)
  br label %141

141:                                              ; preds = %51, %48, %40, %25
  ret void
}

declare dso_local %struct.hibmc_framebuffer* @to_hibmc_framebuffer(%struct.TYPE_6__*) #1

declare dso_local %struct.drm_gem_vram_object* @drm_gem_vram_of_gem(i32) #1

declare dso_local i32 @drm_gem_vram_pin(%struct.drm_gem_vram_object*, i32) #1

declare dso_local i32 @DRM_ERROR(i8*, i32) #1

declare dso_local i64 @drm_gem_vram_offset(%struct.drm_gem_vram_object*) #1

declare dso_local i32 @drm_gem_vram_unpin(%struct.drm_gem_vram_object*) #1

declare dso_local i32 @writel(i32, i64) #1

declare dso_local i8* @PADDING(i32, i32) #1

declare dso_local i32 @HIBMC_FIELD(i32, i32) #1

declare dso_local i32 @readl(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
