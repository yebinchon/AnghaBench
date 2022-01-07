; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/extr_drm_fb_cma_helper.c_drm_fb_cma_get_gem_addr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/extr_drm_fb_cma_helper.c_drm_fb_cma_get_gem_addr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_framebuffer = type { i32*, %struct.TYPE_3__*, i64* }
%struct.TYPE_3__ = type { i32*, i32, i32 }
%struct.drm_plane_state = type { i32, i32 }
%struct.drm_gem_cma_object = type { i64 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @drm_fb_cma_get_gem_addr(%struct.drm_framebuffer* %0, %struct.drm_plane_state* %1, i32 %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca %struct.drm_framebuffer*, align 8
  %6 = alloca %struct.drm_plane_state*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.drm_gem_cma_object*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  store %struct.drm_framebuffer* %0, %struct.drm_framebuffer** %5, align 8
  store %struct.drm_plane_state* %1, %struct.drm_plane_state** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 1, i32* %10, align 4
  store i32 1, i32* %11, align 4
  %19 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %5, align 8
  %20 = getelementptr inbounds %struct.drm_framebuffer, %struct.drm_framebuffer* %19, i32 0, i32 1
  %21 = load %struct.TYPE_3__*, %struct.TYPE_3__** %20, align 8
  %22 = load i32, i32* %7, align 4
  %23 = call i32 @drm_format_info_block_width(%struct.TYPE_3__* %21, i32 %22)
  store i32 %23, i32* %12, align 4
  %24 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %5, align 8
  %25 = getelementptr inbounds %struct.drm_framebuffer, %struct.drm_framebuffer* %24, i32 0, i32 1
  %26 = load %struct.TYPE_3__*, %struct.TYPE_3__** %25, align 8
  %27 = load i32, i32* %7, align 4
  %28 = call i32 @drm_format_info_block_height(%struct.TYPE_3__* %26, i32 %27)
  store i32 %28, i32* %13, align 4
  %29 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %5, align 8
  %30 = getelementptr inbounds %struct.drm_framebuffer, %struct.drm_framebuffer* %29, i32 0, i32 1
  %31 = load %struct.TYPE_3__*, %struct.TYPE_3__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i32 0, i32 0
  %33 = load i32*, i32** %32, align 8
  %34 = load i32, i32* %7, align 4
  %35 = zext i32 %34 to i64
  %36 = getelementptr inbounds i32, i32* %33, i64 %35
  %37 = load i32, i32* %36, align 4
  store i32 %37, i32* %14, align 4
  %38 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %5, align 8
  %39 = load i32, i32* %7, align 4
  %40 = call %struct.drm_gem_cma_object* @drm_fb_cma_get_gem_obj(%struct.drm_framebuffer* %38, i32 %39)
  store %struct.drm_gem_cma_object* %40, %struct.drm_gem_cma_object** %8, align 8
  %41 = load %struct.drm_gem_cma_object*, %struct.drm_gem_cma_object** %8, align 8
  %42 = icmp ne %struct.drm_gem_cma_object* %41, null
  br i1 %42, label %44, label %43

43:                                               ; preds = %3
  store i64 0, i64* %4, align 8
  br label %109

44:                                               ; preds = %3
  %45 = load %struct.drm_gem_cma_object*, %struct.drm_gem_cma_object** %8, align 8
  %46 = getelementptr inbounds %struct.drm_gem_cma_object, %struct.drm_gem_cma_object* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %5, align 8
  %49 = getelementptr inbounds %struct.drm_framebuffer, %struct.drm_framebuffer* %48, i32 0, i32 2
  %50 = load i64*, i64** %49, align 8
  %51 = load i32, i32* %7, align 4
  %52 = zext i32 %51 to i64
  %53 = getelementptr inbounds i64, i64* %50, i64 %52
  %54 = load i64, i64* %53, align 8
  %55 = add nsw i64 %47, %54
  store i64 %55, i64* %9, align 8
  %56 = load i32, i32* %7, align 4
  %57 = icmp ugt i32 %56, 0
  br i1 %57, label %58, label %69

58:                                               ; preds = %44
  %59 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %5, align 8
  %60 = getelementptr inbounds %struct.drm_framebuffer, %struct.drm_framebuffer* %59, i32 0, i32 1
  %61 = load %struct.TYPE_3__*, %struct.TYPE_3__** %60, align 8
  %62 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 8
  store i32 %63, i32* %10, align 4
  %64 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %5, align 8
  %65 = getelementptr inbounds %struct.drm_framebuffer, %struct.drm_framebuffer* %64, i32 0, i32 1
  %66 = load %struct.TYPE_3__*, %struct.TYPE_3__** %65, align 8
  %67 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %66, i32 0, i32 2
  %68 = load i32, i32* %67, align 4
  store i32 %68, i32* %11, align 4
  br label %69

69:                                               ; preds = %58, %44
  %70 = load %struct.drm_plane_state*, %struct.drm_plane_state** %6, align 8
  %71 = getelementptr inbounds %struct.drm_plane_state, %struct.drm_plane_state* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = ashr i32 %72, 16
  %74 = load i32, i32* %10, align 4
  %75 = sdiv i32 %73, %74
  store i32 %75, i32* %15, align 4
  %76 = load %struct.drm_plane_state*, %struct.drm_plane_state** %6, align 8
  %77 = getelementptr inbounds %struct.drm_plane_state, %struct.drm_plane_state* %76, i32 0, i32 1
  %78 = load i32, i32* %77, align 4
  %79 = ashr i32 %78, 16
  %80 = load i32, i32* %11, align 4
  %81 = sdiv i32 %79, %80
  store i32 %81, i32* %16, align 4
  %82 = load i32, i32* %16, align 4
  %83 = load i32, i32* %13, align 4
  %84 = sdiv i32 %82, %83
  %85 = load i32, i32* %13, align 4
  %86 = mul nsw i32 %84, %85
  store i32 %86, i32* %17, align 4
  %87 = load i32, i32* %15, align 4
  %88 = load i32, i32* %12, align 4
  %89 = sdiv i32 %87, %88
  store i32 %89, i32* %18, align 4
  %90 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %5, align 8
  %91 = getelementptr inbounds %struct.drm_framebuffer, %struct.drm_framebuffer* %90, i32 0, i32 0
  %92 = load i32*, i32** %91, align 8
  %93 = load i32, i32* %7, align 4
  %94 = zext i32 %93 to i64
  %95 = getelementptr inbounds i32, i32* %92, i64 %94
  %96 = load i32, i32* %95, align 4
  %97 = load i32, i32* %17, align 4
  %98 = mul nsw i32 %96, %97
  %99 = sext i32 %98 to i64
  %100 = load i64, i64* %9, align 8
  %101 = add nsw i64 %100, %99
  store i64 %101, i64* %9, align 8
  %102 = load i32, i32* %14, align 4
  %103 = load i32, i32* %18, align 4
  %104 = mul nsw i32 %102, %103
  %105 = sext i32 %104 to i64
  %106 = load i64, i64* %9, align 8
  %107 = add nsw i64 %106, %105
  store i64 %107, i64* %9, align 8
  %108 = load i64, i64* %9, align 8
  store i64 %108, i64* %4, align 8
  br label %109

109:                                              ; preds = %69, %43
  %110 = load i64, i64* %4, align 8
  ret i64 %110
}

declare dso_local i32 @drm_format_info_block_width(%struct.TYPE_3__*, i32) #1

declare dso_local i32 @drm_format_info_block_height(%struct.TYPE_3__*, i32) #1

declare dso_local %struct.drm_gem_cma_object* @drm_fb_cma_get_gem_obj(%struct.drm_framebuffer*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
