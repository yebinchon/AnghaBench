; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/extr_drm_plane_helper.c_drm_plane_helper_check_update.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/extr_drm_plane_helper.c_drm_plane_helper_check_update.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_plane = type { i32 }
%struct.drm_crtc = type { i32, i32 }
%struct.drm_framebuffer = type { i32 }
%struct.drm_rect = type { i32, i32 }
%struct.drm_plane_state = type { i32, i32, %struct.drm_rect, %struct.drm_rect, i32, i32, i32, i32, i32, i32, i32, i32, %struct.drm_framebuffer*, %struct.drm_crtc*, %struct.drm_plane* }
%struct.drm_crtc_state = type { i32, i32, %struct.drm_crtc* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.drm_plane*, %struct.drm_crtc*, %struct.drm_framebuffer*, %struct.drm_rect*, %struct.drm_rect*, i32, i32, i32, i32, i32, i32*)* @drm_plane_helper_check_update to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @drm_plane_helper_check_update(%struct.drm_plane* %0, %struct.drm_crtc* %1, %struct.drm_framebuffer* %2, %struct.drm_rect* %3, %struct.drm_rect* %4, i32 %5, i32 %6, i32 %7, i32 %8, i32 %9, i32* %10) #0 {
  %12 = alloca i32, align 4
  %13 = alloca %struct.drm_plane*, align 8
  %14 = alloca %struct.drm_crtc*, align 8
  %15 = alloca %struct.drm_framebuffer*, align 8
  %16 = alloca %struct.drm_rect*, align 8
  %17 = alloca %struct.drm_rect*, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32*, align 8
  %24 = alloca %struct.drm_plane_state, align 8
  %25 = alloca %struct.drm_crtc_state, align 8
  %26 = alloca i32, align 4
  store %struct.drm_plane* %0, %struct.drm_plane** %13, align 8
  store %struct.drm_crtc* %1, %struct.drm_crtc** %14, align 8
  store %struct.drm_framebuffer* %2, %struct.drm_framebuffer** %15, align 8
  store %struct.drm_rect* %3, %struct.drm_rect** %16, align 8
  store %struct.drm_rect* %4, %struct.drm_rect** %17, align 8
  store i32 %5, i32* %18, align 4
  store i32 %6, i32* %19, align 4
  store i32 %7, i32* %20, align 4
  store i32 %8, i32* %21, align 4
  store i32 %9, i32* %22, align 4
  store i32* %10, i32** %23, align 8
  %27 = getelementptr inbounds %struct.drm_plane_state, %struct.drm_plane_state* %24, i32 0, i32 0
  %28 = load i32, i32* %18, align 4
  store i32 %28, i32* %27, align 8
  %29 = getelementptr inbounds %struct.drm_plane_state, %struct.drm_plane_state* %24, i32 0, i32 1
  %30 = load i32*, i32** %23, align 8
  %31 = load i32, i32* %30, align 4
  store i32 %31, i32* %29, align 4
  %32 = getelementptr inbounds %struct.drm_plane_state, %struct.drm_plane_state* %24, i32 0, i32 2
  %33 = bitcast %struct.drm_rect* %32 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %33, i8 0, i64 8, i1 false)
  %34 = getelementptr inbounds %struct.drm_plane_state, %struct.drm_plane_state* %24, i32 0, i32 3
  %35 = bitcast %struct.drm_rect* %34 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %35, i8 0, i64 8, i1 false)
  %36 = getelementptr inbounds %struct.drm_plane_state, %struct.drm_plane_state* %24, i32 0, i32 4
  %37 = load %struct.drm_rect*, %struct.drm_rect** %17, align 8
  %38 = call i32 @drm_rect_height(%struct.drm_rect* %37)
  store i32 %38, i32* %36, align 8
  %39 = getelementptr inbounds %struct.drm_plane_state, %struct.drm_plane_state* %24, i32 0, i32 5
  %40 = load %struct.drm_rect*, %struct.drm_rect** %17, align 8
  %41 = call i32 @drm_rect_width(%struct.drm_rect* %40)
  store i32 %41, i32* %39, align 4
  %42 = getelementptr inbounds %struct.drm_plane_state, %struct.drm_plane_state* %24, i32 0, i32 6
  %43 = load %struct.drm_rect*, %struct.drm_rect** %17, align 8
  %44 = getelementptr inbounds %struct.drm_rect, %struct.drm_rect* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  store i32 %45, i32* %42, align 8
  %46 = getelementptr inbounds %struct.drm_plane_state, %struct.drm_plane_state* %24, i32 0, i32 7
  %47 = load %struct.drm_rect*, %struct.drm_rect** %17, align 8
  %48 = getelementptr inbounds %struct.drm_rect, %struct.drm_rect* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  store i32 %49, i32* %46, align 4
  %50 = getelementptr inbounds %struct.drm_plane_state, %struct.drm_plane_state* %24, i32 0, i32 8
  %51 = load %struct.drm_rect*, %struct.drm_rect** %16, align 8
  %52 = call i32 @drm_rect_height(%struct.drm_rect* %51)
  store i32 %52, i32* %50, align 8
  %53 = getelementptr inbounds %struct.drm_plane_state, %struct.drm_plane_state* %24, i32 0, i32 9
  %54 = load %struct.drm_rect*, %struct.drm_rect** %16, align 8
  %55 = call i32 @drm_rect_width(%struct.drm_rect* %54)
  store i32 %55, i32* %53, align 4
  %56 = getelementptr inbounds %struct.drm_plane_state, %struct.drm_plane_state* %24, i32 0, i32 10
  %57 = load %struct.drm_rect*, %struct.drm_rect** %16, align 8
  %58 = getelementptr inbounds %struct.drm_rect, %struct.drm_rect* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  store i32 %59, i32* %56, align 8
  %60 = getelementptr inbounds %struct.drm_plane_state, %struct.drm_plane_state* %24, i32 0, i32 11
  %61 = load %struct.drm_rect*, %struct.drm_rect** %16, align 8
  %62 = getelementptr inbounds %struct.drm_rect, %struct.drm_rect* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 4
  store i32 %63, i32* %60, align 4
  %64 = getelementptr inbounds %struct.drm_plane_state, %struct.drm_plane_state* %24, i32 0, i32 12
  %65 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %15, align 8
  store %struct.drm_framebuffer* %65, %struct.drm_framebuffer** %64, align 8
  %66 = getelementptr inbounds %struct.drm_plane_state, %struct.drm_plane_state* %24, i32 0, i32 13
  %67 = load %struct.drm_crtc*, %struct.drm_crtc** %14, align 8
  store %struct.drm_crtc* %67, %struct.drm_crtc** %66, align 8
  %68 = getelementptr inbounds %struct.drm_plane_state, %struct.drm_plane_state* %24, i32 0, i32 14
  %69 = load %struct.drm_plane*, %struct.drm_plane** %13, align 8
  store %struct.drm_plane* %69, %struct.drm_plane** %68, align 8
  %70 = getelementptr inbounds %struct.drm_crtc_state, %struct.drm_crtc_state* %25, i32 0, i32 0
  %71 = load %struct.drm_crtc*, %struct.drm_crtc** %14, align 8
  %72 = getelementptr inbounds %struct.drm_crtc, %struct.drm_crtc* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  store i32 %73, i32* %70, align 8
  %74 = getelementptr inbounds %struct.drm_crtc_state, %struct.drm_crtc_state* %25, i32 0, i32 1
  %75 = load %struct.drm_crtc*, %struct.drm_crtc** %14, align 8
  %76 = getelementptr inbounds %struct.drm_crtc, %struct.drm_crtc* %75, i32 0, i32 1
  %77 = load i32, i32* %76, align 4
  store i32 %77, i32* %74, align 4
  %78 = getelementptr inbounds %struct.drm_crtc_state, %struct.drm_crtc_state* %25, i32 0, i32 2
  %79 = load %struct.drm_crtc*, %struct.drm_crtc** %14, align 8
  store %struct.drm_crtc* %79, %struct.drm_crtc** %78, align 8
  %80 = load i32, i32* %19, align 4
  %81 = load i32, i32* %20, align 4
  %82 = load i32, i32* %21, align 4
  %83 = load i32, i32* %22, align 4
  %84 = call i32 @drm_atomic_helper_check_plane_state(%struct.drm_plane_state* %24, %struct.drm_crtc_state* %25, i32 %80, i32 %81, i32 %82, i32 %83)
  store i32 %84, i32* %26, align 4
  %85 = load i32, i32* %26, align 4
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %89

87:                                               ; preds = %11
  %88 = load i32, i32* %26, align 4
  store i32 %88, i32* %12, align 4
  br label %101

89:                                               ; preds = %11
  %90 = load %struct.drm_rect*, %struct.drm_rect** %16, align 8
  %91 = getelementptr inbounds %struct.drm_plane_state, %struct.drm_plane_state* %24, i32 0, i32 3
  %92 = bitcast %struct.drm_rect* %90 to i8*
  %93 = bitcast %struct.drm_rect* %91 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %92, i8* align 8 %93, i64 8, i1 false)
  %94 = load %struct.drm_rect*, %struct.drm_rect** %17, align 8
  %95 = getelementptr inbounds %struct.drm_plane_state, %struct.drm_plane_state* %24, i32 0, i32 2
  %96 = bitcast %struct.drm_rect* %94 to i8*
  %97 = bitcast %struct.drm_rect* %95 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %96, i8* align 8 %97, i64 8, i1 false)
  %98 = getelementptr inbounds %struct.drm_plane_state, %struct.drm_plane_state* %24, i32 0, i32 1
  %99 = load i32, i32* %98, align 4
  %100 = load i32*, i32** %23, align 8
  store i32 %99, i32* %100, align 4
  store i32 0, i32* %12, align 4
  br label %101

101:                                              ; preds = %89, %87
  %102 = load i32, i32* %12, align 4
  ret i32 %102
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @drm_rect_height(%struct.drm_rect*) #2

declare dso_local i32 @drm_rect_width(%struct.drm_rect*) #2

declare dso_local i32 @drm_atomic_helper_check_plane_state(%struct.drm_plane_state*, %struct.drm_crtc_state*, i32, i32, i32, i32) #2

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
