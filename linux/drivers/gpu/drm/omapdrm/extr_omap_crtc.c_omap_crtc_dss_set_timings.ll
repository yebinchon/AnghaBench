; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/omapdrm/extr_omap_crtc.c_omap_crtc_dss_set_timings.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/omapdrm/extr_omap_crtc.c_omap_crtc_dss_set_timings.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.omap_drm_private = type { %struct.TYPE_2__** }
%struct.TYPE_2__ = type { %struct.drm_crtc* }
%struct.drm_crtc = type { i32 }
%struct.videomode = type { i32 }
%struct.omap_crtc = type { %struct.videomode, i32 }

@.str = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.omap_drm_private*, i32, %struct.videomode*)* @omap_crtc_dss_set_timings to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @omap_crtc_dss_set_timings(%struct.omap_drm_private* %0, i32 %1, %struct.videomode* %2) #0 {
  %4 = alloca %struct.omap_drm_private*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.videomode*, align 8
  %7 = alloca %struct.drm_crtc*, align 8
  %8 = alloca %struct.omap_crtc*, align 8
  store %struct.omap_drm_private* %0, %struct.omap_drm_private** %4, align 8
  store i32 %1, i32* %5, align 4
  store %struct.videomode* %2, %struct.videomode** %6, align 8
  %9 = load %struct.omap_drm_private*, %struct.omap_drm_private** %4, align 8
  %10 = getelementptr inbounds %struct.omap_drm_private, %struct.omap_drm_private* %9, i32 0, i32 0
  %11 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %10, align 8
  %12 = load i32, i32* %5, align 4
  %13 = zext i32 %12 to i64
  %14 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %11, i64 %13
  %15 = load %struct.TYPE_2__*, %struct.TYPE_2__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = load %struct.drm_crtc*, %struct.drm_crtc** %16, align 8
  store %struct.drm_crtc* %17, %struct.drm_crtc** %7, align 8
  %18 = load %struct.drm_crtc*, %struct.drm_crtc** %7, align 8
  %19 = call %struct.omap_crtc* @to_omap_crtc(%struct.drm_crtc* %18)
  store %struct.omap_crtc* %19, %struct.omap_crtc** %8, align 8
  %20 = load %struct.omap_crtc*, %struct.omap_crtc** %8, align 8
  %21 = getelementptr inbounds %struct.omap_crtc, %struct.omap_crtc* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @DBG(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32 %22)
  %24 = load %struct.omap_crtc*, %struct.omap_crtc** %8, align 8
  %25 = getelementptr inbounds %struct.omap_crtc, %struct.omap_crtc* %24, i32 0, i32 0
  %26 = load %struct.videomode*, %struct.videomode** %6, align 8
  %27 = bitcast %struct.videomode* %25 to i8*
  %28 = bitcast %struct.videomode* %26 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %27, i8* align 4 %28, i64 4, i1 false)
  ret void
}

declare dso_local %struct.omap_crtc* @to_omap_crtc(%struct.drm_crtc*) #1

declare dso_local i32 @DBG(i8*, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
