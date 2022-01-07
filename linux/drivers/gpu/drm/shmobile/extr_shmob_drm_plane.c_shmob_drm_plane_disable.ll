; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/shmobile/extr_shmob_drm_plane.c_shmob_drm_plane_disable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/shmobile/extr_shmob_drm_plane.c_shmob_drm_plane_disable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_plane = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.shmob_drm_device* }
%struct.shmob_drm_device = type { i32 }
%struct.drm_modeset_acquire_ctx = type { i32 }
%struct.shmob_drm_plane = type { i32, i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.drm_plane*, %struct.drm_modeset_acquire_ctx*)* @shmob_drm_plane_disable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @shmob_drm_plane_disable(%struct.drm_plane* %0, %struct.drm_modeset_acquire_ctx* %1) #0 {
  %3 = alloca %struct.drm_plane*, align 8
  %4 = alloca %struct.drm_modeset_acquire_ctx*, align 8
  %5 = alloca %struct.shmob_drm_plane*, align 8
  %6 = alloca %struct.shmob_drm_device*, align 8
  store %struct.drm_plane* %0, %struct.drm_plane** %3, align 8
  store %struct.drm_modeset_acquire_ctx* %1, %struct.drm_modeset_acquire_ctx** %4, align 8
  %7 = load %struct.drm_plane*, %struct.drm_plane** %3, align 8
  %8 = call %struct.shmob_drm_plane* @to_shmob_plane(%struct.drm_plane* %7)
  store %struct.shmob_drm_plane* %8, %struct.shmob_drm_plane** %5, align 8
  %9 = load %struct.drm_plane*, %struct.drm_plane** %3, align 8
  %10 = getelementptr inbounds %struct.drm_plane, %struct.drm_plane* %9, i32 0, i32 0
  %11 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = load %struct.shmob_drm_device*, %struct.shmob_drm_device** %12, align 8
  store %struct.shmob_drm_device* %13, %struct.shmob_drm_device** %6, align 8
  %14 = load %struct.shmob_drm_plane*, %struct.shmob_drm_plane** %5, align 8
  %15 = getelementptr inbounds %struct.shmob_drm_plane, %struct.shmob_drm_plane* %14, i32 0, i32 1
  store i32* null, i32** %15, align 8
  %16 = load %struct.shmob_drm_device*, %struct.shmob_drm_device** %6, align 8
  %17 = load %struct.shmob_drm_plane*, %struct.shmob_drm_plane** %5, align 8
  %18 = getelementptr inbounds %struct.shmob_drm_plane, %struct.shmob_drm_plane* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = call i32 @LDBnBSIFR(i32 %19)
  %21 = call i32 @lcdc_write(%struct.shmob_drm_device* %16, i32 %20, i32 0)
  ret i32 0
}

declare dso_local %struct.shmob_drm_plane* @to_shmob_plane(%struct.drm_plane*) #1

declare dso_local i32 @lcdc_write(%struct.shmob_drm_device*, i32, i32) #1

declare dso_local i32 @LDBnBSIFR(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
