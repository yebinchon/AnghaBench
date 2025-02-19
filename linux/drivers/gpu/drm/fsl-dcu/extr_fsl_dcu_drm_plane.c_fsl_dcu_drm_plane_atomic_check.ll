; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/fsl-dcu/extr_fsl_dcu_drm_plane.c_fsl_dcu_drm_plane_atomic_check.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/fsl-dcu/extr_fsl_dcu_drm_plane.c_fsl_dcu_drm_plane_atomic_check.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_plane = type { i32 }
%struct.drm_plane_state = type { i32, %struct.drm_framebuffer* }
%struct.drm_framebuffer = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.drm_plane*, %struct.drm_plane_state*)* @fsl_dcu_drm_plane_atomic_check to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fsl_dcu_drm_plane_atomic_check(%struct.drm_plane* %0, %struct.drm_plane_state* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.drm_plane*, align 8
  %5 = alloca %struct.drm_plane_state*, align 8
  %6 = alloca %struct.drm_framebuffer*, align 8
  store %struct.drm_plane* %0, %struct.drm_plane** %4, align 8
  store %struct.drm_plane_state* %1, %struct.drm_plane_state** %5, align 8
  %7 = load %struct.drm_plane_state*, %struct.drm_plane_state** %5, align 8
  %8 = getelementptr inbounds %struct.drm_plane_state, %struct.drm_plane_state* %7, i32 0, i32 1
  %9 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %8, align 8
  store %struct.drm_framebuffer* %9, %struct.drm_framebuffer** %6, align 8
  %10 = load %struct.drm_plane_state*, %struct.drm_plane_state** %5, align 8
  %11 = getelementptr inbounds %struct.drm_plane_state, %struct.drm_plane_state* %10, i32 0, i32 1
  %12 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %11, align 8
  %13 = icmp ne %struct.drm_framebuffer* %12, null
  br i1 %13, label %14, label %19

14:                                               ; preds = %2
  %15 = load %struct.drm_plane_state*, %struct.drm_plane_state** %5, align 8
  %16 = getelementptr inbounds %struct.drm_plane_state, %struct.drm_plane_state* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %20, label %19

19:                                               ; preds = %14, %2
  store i32 0, i32* %3, align 4
  br label %30

20:                                               ; preds = %14
  %21 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %6, align 8
  %22 = getelementptr inbounds %struct.drm_framebuffer, %struct.drm_framebuffer* %21, i32 0, i32 0
  %23 = load %struct.TYPE_2__*, %struct.TYPE_2__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  switch i32 %25, label %27 [
    i32 133, label %26
    i32 132, label %26
    i32 129, label %26
    i32 134, label %26
    i32 130, label %26
    i32 135, label %26
    i32 131, label %26
    i32 136, label %26
    i32 128, label %26
  ]

26:                                               ; preds = %20, %20, %20, %20, %20, %20, %20, %20, %20
  store i32 0, i32* %3, align 4
  br label %30

27:                                               ; preds = %20
  %28 = load i32, i32* @EINVAL, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %3, align 4
  br label %30

30:                                               ; preds = %27, %26, %19
  %31 = load i32, i32* %3, align 4
  ret i32 %31
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
