; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/extr_drm_atomic_helper.c_init_commit.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/extr_drm_atomic_helper.c_init_commit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_crtc_commit = type { %struct.drm_crtc*, i32, i32, i32, i32, i32 }
%struct.drm_crtc = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.drm_crtc_commit*, %struct.drm_crtc*)* @init_commit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @init_commit(%struct.drm_crtc_commit* %0, %struct.drm_crtc* %1) #0 {
  %3 = alloca %struct.drm_crtc_commit*, align 8
  %4 = alloca %struct.drm_crtc*, align 8
  store %struct.drm_crtc_commit* %0, %struct.drm_crtc_commit** %3, align 8
  store %struct.drm_crtc* %1, %struct.drm_crtc** %4, align 8
  %5 = load %struct.drm_crtc_commit*, %struct.drm_crtc_commit** %3, align 8
  %6 = getelementptr inbounds %struct.drm_crtc_commit, %struct.drm_crtc_commit* %5, i32 0, i32 5
  %7 = call i32 @init_completion(i32* %6)
  %8 = load %struct.drm_crtc_commit*, %struct.drm_crtc_commit** %3, align 8
  %9 = getelementptr inbounds %struct.drm_crtc_commit, %struct.drm_crtc_commit* %8, i32 0, i32 4
  %10 = call i32 @init_completion(i32* %9)
  %11 = load %struct.drm_crtc_commit*, %struct.drm_crtc_commit** %3, align 8
  %12 = getelementptr inbounds %struct.drm_crtc_commit, %struct.drm_crtc_commit* %11, i32 0, i32 3
  %13 = call i32 @init_completion(i32* %12)
  %14 = load %struct.drm_crtc_commit*, %struct.drm_crtc_commit** %3, align 8
  %15 = getelementptr inbounds %struct.drm_crtc_commit, %struct.drm_crtc_commit* %14, i32 0, i32 2
  %16 = call i32 @INIT_LIST_HEAD(i32* %15)
  %17 = load %struct.drm_crtc_commit*, %struct.drm_crtc_commit** %3, align 8
  %18 = getelementptr inbounds %struct.drm_crtc_commit, %struct.drm_crtc_commit* %17, i32 0, i32 1
  %19 = call i32 @kref_init(i32* %18)
  %20 = load %struct.drm_crtc*, %struct.drm_crtc** %4, align 8
  %21 = load %struct.drm_crtc_commit*, %struct.drm_crtc_commit** %3, align 8
  %22 = getelementptr inbounds %struct.drm_crtc_commit, %struct.drm_crtc_commit* %21, i32 0, i32 0
  store %struct.drm_crtc* %20, %struct.drm_crtc** %22, align 8
  ret void
}

declare dso_local i32 @init_completion(i32*) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @kref_init(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
