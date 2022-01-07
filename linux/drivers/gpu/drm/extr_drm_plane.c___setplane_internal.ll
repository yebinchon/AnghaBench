; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/extr_drm_plane.c___setplane_internal.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/extr_drm_plane.c___setplane_internal.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_plane = type { %struct.drm_framebuffer*, %struct.drm_framebuffer*, %struct.drm_crtc*, %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32 (%struct.drm_plane*, %struct.drm_modeset_acquire_ctx*)*, {}* }
%struct.drm_crtc = type { i32 }
%struct.drm_framebuffer = type { i32 }
%struct.drm_modeset_acquire_ctx = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.drm_plane*, %struct.drm_crtc*, %struct.drm_framebuffer*, i32, i32, i32, i32, i32, i32, i32, i32, %struct.drm_modeset_acquire_ctx*)* @__setplane_internal to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__setplane_internal(%struct.drm_plane* %0, %struct.drm_crtc* %1, %struct.drm_framebuffer* %2, i32 %3, i32 %4, i32 %5, i32 %6, i32 %7, i32 %8, i32 %9, i32 %10, %struct.drm_modeset_acquire_ctx* %11) #0 {
  %13 = alloca %struct.drm_plane*, align 8
  %14 = alloca %struct.drm_crtc*, align 8
  %15 = alloca %struct.drm_framebuffer*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca %struct.drm_modeset_acquire_ctx*, align 8
  %25 = alloca i32, align 4
  store %struct.drm_plane* %0, %struct.drm_plane** %13, align 8
  store %struct.drm_crtc* %1, %struct.drm_crtc** %14, align 8
  store %struct.drm_framebuffer* %2, %struct.drm_framebuffer** %15, align 8
  store i32 %3, i32* %16, align 4
  store i32 %4, i32* %17, align 4
  store i32 %5, i32* %18, align 4
  store i32 %6, i32* %19, align 4
  store i32 %7, i32* %20, align 4
  store i32 %8, i32* %21, align 4
  store i32 %9, i32* %22, align 4
  store i32 %10, i32* %23, align 4
  store %struct.drm_modeset_acquire_ctx* %11, %struct.drm_modeset_acquire_ctx** %24, align 8
  store i32 0, i32* %25, align 4
  %26 = load %struct.drm_plane*, %struct.drm_plane** %13, align 8
  %27 = getelementptr inbounds %struct.drm_plane, %struct.drm_plane* %26, i32 0, i32 4
  %28 = load i32, i32* %27, align 8
  %29 = call i32 @drm_drv_uses_atomic_modeset(i32 %28)
  %30 = call i32 @WARN_ON(i32 %29)
  %31 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %15, align 8
  %32 = icmp ne %struct.drm_framebuffer* %31, null
  br i1 %32, label %58, label %33

33:                                               ; preds = %12
  %34 = load %struct.drm_plane*, %struct.drm_plane** %13, align 8
  %35 = getelementptr inbounds %struct.drm_plane, %struct.drm_plane* %34, i32 0, i32 1
  %36 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %35, align 8
  %37 = load %struct.drm_plane*, %struct.drm_plane** %13, align 8
  %38 = getelementptr inbounds %struct.drm_plane, %struct.drm_plane* %37, i32 0, i32 0
  store %struct.drm_framebuffer* %36, %struct.drm_framebuffer** %38, align 8
  %39 = load %struct.drm_plane*, %struct.drm_plane** %13, align 8
  %40 = getelementptr inbounds %struct.drm_plane, %struct.drm_plane* %39, i32 0, i32 3
  %41 = load %struct.TYPE_2__*, %struct.TYPE_2__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 0
  %43 = load i32 (%struct.drm_plane*, %struct.drm_modeset_acquire_ctx*)*, i32 (%struct.drm_plane*, %struct.drm_modeset_acquire_ctx*)** %42, align 8
  %44 = load %struct.drm_plane*, %struct.drm_plane** %13, align 8
  %45 = load %struct.drm_modeset_acquire_ctx*, %struct.drm_modeset_acquire_ctx** %24, align 8
  %46 = call i32 %43(%struct.drm_plane* %44, %struct.drm_modeset_acquire_ctx* %45)
  store i32 %46, i32* %25, align 4
  %47 = load i32, i32* %25, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %54, label %49

49:                                               ; preds = %33
  %50 = load %struct.drm_plane*, %struct.drm_plane** %13, align 8
  %51 = getelementptr inbounds %struct.drm_plane, %struct.drm_plane* %50, i32 0, i32 2
  store %struct.drm_crtc* null, %struct.drm_crtc** %51, align 8
  %52 = load %struct.drm_plane*, %struct.drm_plane** %13, align 8
  %53 = getelementptr inbounds %struct.drm_plane, %struct.drm_plane* %52, i32 0, i32 1
  store %struct.drm_framebuffer* null, %struct.drm_framebuffer** %53, align 8
  br label %57

54:                                               ; preds = %33
  %55 = load %struct.drm_plane*, %struct.drm_plane** %13, align 8
  %56 = getelementptr inbounds %struct.drm_plane, %struct.drm_plane* %55, i32 0, i32 0
  store %struct.drm_framebuffer* null, %struct.drm_framebuffer** %56, align 8
  br label %57

57:                                               ; preds = %54, %49
  br label %116

58:                                               ; preds = %12
  %59 = load %struct.drm_plane*, %struct.drm_plane** %13, align 8
  %60 = load %struct.drm_crtc*, %struct.drm_crtc** %14, align 8
  %61 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %15, align 8
  %62 = load i32, i32* %16, align 4
  %63 = load i32, i32* %17, align 4
  %64 = load i32, i32* %18, align 4
  %65 = load i32, i32* %19, align 4
  %66 = load i32, i32* %20, align 4
  %67 = load i32, i32* %21, align 4
  %68 = load i32, i32* %22, align 4
  %69 = load i32, i32* %23, align 4
  %70 = call i32 @__setplane_check(%struct.drm_plane* %59, %struct.drm_crtc* %60, %struct.drm_framebuffer* %61, i32 %62, i32 %63, i32 %64, i32 %65, i32 %66, i32 %67, i32 %68, i32 %69)
  store i32 %70, i32* %25, align 4
  %71 = load i32, i32* %25, align 4
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %74

73:                                               ; preds = %58
  br label %116

74:                                               ; preds = %58
  %75 = load %struct.drm_plane*, %struct.drm_plane** %13, align 8
  %76 = getelementptr inbounds %struct.drm_plane, %struct.drm_plane* %75, i32 0, i32 1
  %77 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %76, align 8
  %78 = load %struct.drm_plane*, %struct.drm_plane** %13, align 8
  %79 = getelementptr inbounds %struct.drm_plane, %struct.drm_plane* %78, i32 0, i32 0
  store %struct.drm_framebuffer* %77, %struct.drm_framebuffer** %79, align 8
  %80 = load %struct.drm_plane*, %struct.drm_plane** %13, align 8
  %81 = getelementptr inbounds %struct.drm_plane, %struct.drm_plane* %80, i32 0, i32 3
  %82 = load %struct.TYPE_2__*, %struct.TYPE_2__** %81, align 8
  %83 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %82, i32 0, i32 1
  %84 = bitcast {}** %83 to i32 (%struct.drm_plane*, %struct.drm_crtc*, %struct.drm_framebuffer*, i32, i32, i32, i32, i32, i32, i32, i32, %struct.drm_modeset_acquire_ctx*)**
  %85 = load i32 (%struct.drm_plane*, %struct.drm_crtc*, %struct.drm_framebuffer*, i32, i32, i32, i32, i32, i32, i32, i32, %struct.drm_modeset_acquire_ctx*)*, i32 (%struct.drm_plane*, %struct.drm_crtc*, %struct.drm_framebuffer*, i32, i32, i32, i32, i32, i32, i32, i32, %struct.drm_modeset_acquire_ctx*)** %84, align 8
  %86 = load %struct.drm_plane*, %struct.drm_plane** %13, align 8
  %87 = load %struct.drm_crtc*, %struct.drm_crtc** %14, align 8
  %88 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %15, align 8
  %89 = load i32, i32* %16, align 4
  %90 = load i32, i32* %17, align 4
  %91 = load i32, i32* %18, align 4
  %92 = load i32, i32* %19, align 4
  %93 = load i32, i32* %20, align 4
  %94 = load i32, i32* %21, align 4
  %95 = load i32, i32* %22, align 4
  %96 = load i32, i32* %23, align 4
  %97 = load %struct.drm_modeset_acquire_ctx*, %struct.drm_modeset_acquire_ctx** %24, align 8
  %98 = call i32 %85(%struct.drm_plane* %86, %struct.drm_crtc* %87, %struct.drm_framebuffer* %88, i32 %89, i32 %90, i32 %91, i32 %92, i32 %93, i32 %94, i32 %95, i32 %96, %struct.drm_modeset_acquire_ctx* %97)
  store i32 %98, i32* %25, align 4
  %99 = load i32, i32* %25, align 4
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %112, label %101

101:                                              ; preds = %74
  %102 = load %struct.drm_crtc*, %struct.drm_crtc** %14, align 8
  %103 = load %struct.drm_plane*, %struct.drm_plane** %13, align 8
  %104 = getelementptr inbounds %struct.drm_plane, %struct.drm_plane* %103, i32 0, i32 2
  store %struct.drm_crtc* %102, %struct.drm_crtc** %104, align 8
  %105 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %15, align 8
  %106 = load %struct.drm_plane*, %struct.drm_plane** %13, align 8
  %107 = getelementptr inbounds %struct.drm_plane, %struct.drm_plane* %106, i32 0, i32 1
  store %struct.drm_framebuffer* %105, %struct.drm_framebuffer** %107, align 8
  %108 = load %struct.drm_plane*, %struct.drm_plane** %13, align 8
  %109 = getelementptr inbounds %struct.drm_plane, %struct.drm_plane* %108, i32 0, i32 1
  %110 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %109, align 8
  %111 = call i32 @drm_framebuffer_get(%struct.drm_framebuffer* %110)
  br label %115

112:                                              ; preds = %74
  %113 = load %struct.drm_plane*, %struct.drm_plane** %13, align 8
  %114 = getelementptr inbounds %struct.drm_plane, %struct.drm_plane* %113, i32 0, i32 0
  store %struct.drm_framebuffer* null, %struct.drm_framebuffer** %114, align 8
  br label %115

115:                                              ; preds = %112, %101
  br label %116

116:                                              ; preds = %115, %73, %57
  %117 = load %struct.drm_plane*, %struct.drm_plane** %13, align 8
  %118 = getelementptr inbounds %struct.drm_plane, %struct.drm_plane* %117, i32 0, i32 0
  %119 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %118, align 8
  %120 = icmp ne %struct.drm_framebuffer* %119, null
  br i1 %120, label %121, label %126

121:                                              ; preds = %116
  %122 = load %struct.drm_plane*, %struct.drm_plane** %13, align 8
  %123 = getelementptr inbounds %struct.drm_plane, %struct.drm_plane* %122, i32 0, i32 0
  %124 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %123, align 8
  %125 = call i32 @drm_framebuffer_put(%struct.drm_framebuffer* %124)
  br label %126

126:                                              ; preds = %121, %116
  %127 = load %struct.drm_plane*, %struct.drm_plane** %13, align 8
  %128 = getelementptr inbounds %struct.drm_plane, %struct.drm_plane* %127, i32 0, i32 0
  store %struct.drm_framebuffer* null, %struct.drm_framebuffer** %128, align 8
  %129 = load i32, i32* %25, align 4
  ret i32 %129
}

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @drm_drv_uses_atomic_modeset(i32) #1

declare dso_local i32 @__setplane_check(%struct.drm_plane*, %struct.drm_crtc*, %struct.drm_framebuffer*, i32, i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @drm_framebuffer_get(%struct.drm_framebuffer*) #1

declare dso_local i32 @drm_framebuffer_put(%struct.drm_framebuffer*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
