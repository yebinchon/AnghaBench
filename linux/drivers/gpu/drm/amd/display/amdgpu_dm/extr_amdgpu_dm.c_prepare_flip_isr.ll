; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/amdgpu_dm/extr_amdgpu_dm.c_prepare_flip_isr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/amdgpu_dm/extr_amdgpu_dm.c_prepare_flip_isr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.amdgpu_crtc = type { i32, %struct.TYPE_6__, i32, i32* }
%struct.TYPE_6__ = type { %struct.TYPE_5__*, %struct.TYPE_4__* }
%struct.TYPE_5__ = type { i32* }
%struct.TYPE_4__ = type { i32 }

@AMDGPU_FLIP_SUBMITTED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [43 x i8] c"crtc:%d, pflip_stat:AMDGPU_FLIP_SUBMITTED\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.amdgpu_crtc*)* @prepare_flip_isr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @prepare_flip_isr(%struct.amdgpu_crtc* %0) #0 {
  %2 = alloca %struct.amdgpu_crtc*, align 8
  store %struct.amdgpu_crtc* %0, %struct.amdgpu_crtc** %2, align 8
  %3 = load %struct.amdgpu_crtc*, %struct.amdgpu_crtc** %2, align 8
  %4 = getelementptr inbounds %struct.amdgpu_crtc, %struct.amdgpu_crtc* %3, i32 0, i32 1
  %5 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %4, i32 0, i32 1
  %6 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %7 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %6, i32 0, i32 0
  %8 = call i32 @assert_spin_locked(i32* %7)
  %9 = load %struct.amdgpu_crtc*, %struct.amdgpu_crtc** %2, align 8
  %10 = getelementptr inbounds %struct.amdgpu_crtc, %struct.amdgpu_crtc* %9, i32 0, i32 3
  %11 = load i32*, i32** %10, align 8
  %12 = call i32 @WARN_ON(i32* %11)
  %13 = load %struct.amdgpu_crtc*, %struct.amdgpu_crtc** %2, align 8
  %14 = getelementptr inbounds %struct.amdgpu_crtc, %struct.amdgpu_crtc* %13, i32 0, i32 1
  %15 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %14, i32 0, i32 0
  %16 = load %struct.TYPE_5__*, %struct.TYPE_5__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %16, i32 0, i32 0
  %18 = load i32*, i32** %17, align 8
  %19 = load %struct.amdgpu_crtc*, %struct.amdgpu_crtc** %2, align 8
  %20 = getelementptr inbounds %struct.amdgpu_crtc, %struct.amdgpu_crtc* %19, i32 0, i32 3
  store i32* %18, i32** %20, align 8
  %21 = load i32, i32* @AMDGPU_FLIP_SUBMITTED, align 4
  %22 = load %struct.amdgpu_crtc*, %struct.amdgpu_crtc** %2, align 8
  %23 = getelementptr inbounds %struct.amdgpu_crtc, %struct.amdgpu_crtc* %22, i32 0, i32 2
  store i32 %21, i32* %23, align 8
  %24 = load %struct.amdgpu_crtc*, %struct.amdgpu_crtc** %2, align 8
  %25 = getelementptr inbounds %struct.amdgpu_crtc, %struct.amdgpu_crtc* %24, i32 0, i32 1
  %26 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %25, i32 0, i32 0
  %27 = load %struct.TYPE_5__*, %struct.TYPE_5__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %27, i32 0, i32 0
  store i32* null, i32** %28, align 8
  %29 = load %struct.amdgpu_crtc*, %struct.amdgpu_crtc** %2, align 8
  %30 = getelementptr inbounds %struct.amdgpu_crtc, %struct.amdgpu_crtc* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = call i32 @DRM_DEBUG_DRIVER(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0), i32 %31)
  ret void
}

declare dso_local i32 @assert_spin_locked(i32*) #1

declare dso_local i32 @WARN_ON(i32*) #1

declare dso_local i32 @DRM_DEBUG_DRIVER(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
